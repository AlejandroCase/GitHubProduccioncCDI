SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
SET IMPLICIT_TRANSACTIONS OFF
SET ANSI_NULLS ON  
SET QUOTED_IDENTIFIER ON 


 
/***************************************************************************************************
*         Desarrollo  Gustavo Méndez Ortega                                                        *
*  	      Funcion     Asignacion de Casilleros                 					                   *
*         Proyecto    CDI                                                                          *
*		  Fecha       25/Noviembre/2010 												           *	
****************************************************************************************************/


GO
/**************************************************************************************************/
/*                     Carga los datos de intelisis a aplicacion Casilleros                       */
/**************************************************************************************************/ 
IF OBJECT_ID('spInsertaParametrosIntel') IS NOT NULL
  DROP PROCEDURE spInsertaParametrosIntel
GO 
CREATE PROCEDURE spInsertaParametrosIntel 
 @Estacion  int         =NULL,               
 @Usuario   varchar(15) =NULL, 
 @Empresa   varchar(10) =NULL,
 @Sucursal  int         =NULL,
 @Acceso    bit 
 AS BEGIN 

  TRUNCATE TABLE ParametrosIntel 

   INSERT ParametrosIntel 
   SELECT @Estacion,@Usuario,@Empresa,@Sucursal,@Acceso
  RETURN  
 END


GO
/**************************************************************************************************/
/*                verifica si el cliente tiene adeudos sobre el casillero                         */
/**************************************************************************************************/ 
IF OBJECT_ID('CDIsp_CasilleroAdeudo') IS NOT NULL
  DROP PROCEDURE CDIsp_CasilleroAdeudo
GO 
CREATE PROCEDURE CDIsp_CasilleroAdeudo
  @IDCasillero int   
 AS BEGIN  
 DECLARE  
   @Saldo money   
  ,@ID    int  
  ,@ok    int  
  ,@Clave varchar(15)
    
  SELECT @ID=VentaID    
    FROM CDICasilleros   
   WHERE ID=@IDCasillero  

  IF @ID IS NOT NULL 
  BEGIN 
  SELECT @Saldo=ISNULL(Saldo,0.0)  
    FROM cxc    
   WHERE ID=@ID OR RamaID=@ID AND Estatus='PENDIENTE'  
   
    IF @Saldo=0  SET @ok=0   
     ELSE  SET @ok=1  
  END
   ELSE
     SET @ok=2   
   SELECT 'Ok'=@ok    
  RETURN   
 END
 
 
GO
/**************************************************************************************************/
/*      Genera la baja de el casillero seleccionado  cuando un casillero esta asignado            */
/**************************************************************************************************/ 
IF OBJECT_ID('CDIsp_CasilleroBajaMov') IS NOT NULL
  DROP PROCEDURE CDIsp_CasilleroBajaMov
GO 
CREATE PROCEDURE CDIsp_CasilleroBajaMov  
  @Usuario     varchar(10)
 ,@CasilleroID int
 AS BEGIN  
  DECLARE
   @ID int 
  
   SELECT @ID=venta.ID 
     FROM venta JOIN VentaD  ON Venta.ID=VentaD.ID 
                JOIN MovTipo ON Venta.Mov=MovTipo.Mov AND Modulo='VTAS'
    WHERE CDICasilleroID=@CasilleroID AND Estatus='PENDIENTE' AND Clave='VTAS.P'
  
   EXEC spAfectar 'VTAS',@ID, 'CANCELAR', 'Todo',NULL,@Usuario,1,0
   
   UPDATE CDICasilleros   
      SET EstatusA=4,  
          Cliente=NULL,  
          Membresia=NULL,  
          UltimoCambio=GETDATE(),  
          VentaID=NULL   
    WHERE ID=@CasilleroID

   SELECT 'Ok'    
   RETURN   
 END  
 
 
 
 GO
/**************************************************************************************************/
/*                        Genera la baja de el casillero seleccionado                             */
/**************************************************************************************************/         
IF OBJECT_ID('CDIsp_CasilleroBaja') IS NOT NULL
  DROP PROCEDURE CDIsp_CasilleroBaja
GO 
CREATE PROCEDURE CDIsp_CasilleroBaja
  @IDCasillero int 
 AS BEGIN

   UPDATE CDICasilleros 
      SET EstatusA=4,
          Cliente=NULL,
          Membresia=NULL,
          UltimoCambio=GETDATE(),
          VentaID=NULL 
    WHERE ID=@IDCasillero

   SELECT 'Ok'  
   RETURN 
 END
  

GO
/**************************************************************************************************/
/*                   Store Procedure Genera XML para Aplicacion de Casilleros                    */
/**************************************************************************************************/
IF OBJECT_ID('spGeneraXMLCDI') IS NOT NULL 
  DROP PROCEDURE spGeneraXMLCDI 
GO
CREATE PROCEDURE spGeneraXMLCDI 
   @Seccion   varchar(90)  =NULL,
   @Ubicacion varchar(50)  =NULL
 AS BEGIN 
  DECLARE 
   @X xml   
  ,@i smallint
  ,@j smallint 
  ,@A varchar(5)
  ,@C varchar(Max)
  ,@R int

  SET CONCAT_NULL_YIELDS_NULL ON  
  SET ANSI_NULLS ON    
  SET QUOTED_IDENTIFIER ON   
  SET ANSI_WARNINGS ON   
  SET ANSI_PADDING ON   
  SET NOCOUNT ON  

 IF @Seccion != NULL OR @Seccion != ''
  BEGIN
  
  SELECT ID INTO #Temp 
    FROM CasillerosXML  
   WHERE Seccion=@Seccion AND Ubicacion=@Ubicacion 

  IF @@ROWCOUNT = 0
  BEGIN
   SELECT @i=1,@C='<DocumentElement> ' 
    WHILE @i <=150
    BEGIN 
     SElECT @j=1,@C=+@C+'<ItemsCDI> '
      WHILE @j <=105
       BEGIN
        SET @A=@j
        SET @C=+@C+'<_'+@A+'>0</_'+@A+'>'
   	    SET @j=@j+1
	   END
     SELECT @i=@i+1,@C=+@C+'</ItemsCDI>'
    END 
   SET @C=+@C+'</DocumentElement>'
   SET @X=@C
  
  INSERT CasillerosXML
  SELECT @Seccion,@Ubicacion,0,0,0,0,@X
    
  SET @R=@@IDENTITY  
  END
  ELSE
  SET @R=0
 
  SELECT 'ID'=@R 
 END
END


GO
/**************************************************************************************************/
/*                   Store Procedure Asigna el casillero al socio                                 */
/**************************************************************************************************/
IF OBJECT_ID ('CDIsp_AsignaCasillero') IS NOT NULL 
 DROP PROCEDURE CDIsp_AsignaCasillero
GO 
CREATE PROCEDURE CDIsp_AsignaCasillero 
  @Estacion    int
 ,@Mov         varchar(10)
 ,@PlanoID     int
 ,@Usuario     varchar(10)
 ,@Cliente     varchar(10)
 ,@Empresa     varchar(10)
 ,@Tipo        varchar(10)  
 ,@CasilleroID int
 ,@Sucursal    int
 ,@Condicion   varchar(20) =NULL
AS BEGIN 
  DECLARE
    @IDGenerar    int
   ,@Ok           int
   ,@OkRef        varchar(100)
   ,@Fecha        DateTime
   ,@Membresia    varchar(10)
   ,@Socio        varchar(100)
   ,@Impuesto     float
   ,@PrecioLista  money
   ,@Unidad       varchar(10)
   ,@MovID        int
   ,@Casillero    varchar(10)
   ,@Articulo     varchar(20) 
   ,@Almacen      varchar(20) 
   ,@EstatusCTE   varchar(15)
   ,@CDIFacturarA varchar(10)
      
   TRUNCATE TABLE MensajeErrorCDI 
   BEGIN TRANSACTION 
  
   BEGIN TRY
    SET @Fecha=Convert(DateTime,FLOOR(Convert(float,GetDate())))

    SELECT @EstatusCTE=Estatus,@Membresia=Membresia,@Socio=Socio,@CDIFacturarA =CDIFacturarA
      FROM Cte  
     WHERE Cliente=@Cliente 
     
     SELECT @Almacen=ISNULL(AlmacenGarantias,'(TRANSITO)') 
       FROM EmpresaGral 
      WHERE Empresa=@Empresa
     
    SELECT @Articulo=Articulo,@Impuesto=Impuesto1,@PrecioLista=PrecioLista,@Unidad=Unidad
      FROM Art 
      WHERE Categoria='Casilleros' AND Grupo=@Tipo
         
    SELECT @Casillero=CasilleroTag 
      FROM CDICasilleros 
     WHERE ID=@CasilleroID
    
    UPDATE CDICasilleros 
       SET Cliente=@Cliente,Membresia=@Membresia,EstatusA=3
     WHERE ID=@CasilleroID 
     
     IF @Mov='Asigna'     
      UPDATE CDICasilleros SET VentaID=NULL WHERE ID=@CasilleroID  
                 
    END TRY 
    BEGIN CATCH
      ROLLBACK TRANSACTION 
      INSERT INTO MensajeErrorCDI
      SELECT ERROR_MESSAGE(),'ERROR'
      RETURN 
    END CATCH


	  INSERT Venta (Empresa,Mov,MovID,FechaEmision,UltimoCambio,Moneda,TipoCambio,Usuario,Estatus,Prioridad,RenglonID,Cliente,Almacen,
					FechaRequerida,Condicion,Vencimiento,OrigenTipo,ListaPreciosEsp,Sucursal,DesglosarImpuestos,SubModulo,SucursalVenta,CDISocio,CDIvisible,Proyecto,Concepto,CDIFacturarA,FormaPagoTipo,Referencia) 
	  SELECT        @Empresa,'Recibo',NULL,@Fecha,Getdate(),'Pesos',1,@Usuario,'SINAFECTAR','Normal',1,@Cliente,@Almacen,
					@Fecha,'CARGO RECURRENTE'/*@Condicion*/,@Fecha,'VTAS','(Precio Lista)',@Sucursal,@Sucursal,'VTAS',@Sucursal,@Socio,1,'Socios','Casilleros',@CDIFacturarA,'No Identificado','Casillero '+@Casillero
	 
	  SELECT @IDGenerar=@@IDENTITY

	  INSERT VentaD (ID,Renglon,RenglonSub,RenglonID,RenglonTipo,Cantidad,CantidadPendiente,Almacen,Articulo,Precio,PrecioSugerido,Impuesto1,Costo,
					 Unidad,Factor,FechaRequerida,Sucursal,SucursalOrigen,PrecioMoneda,PrecioTipoCambio,CDICasilleroID,CDICasillero,CDIPlanoID,CDIClavePresupuestal) 
	  SELECT         @IDGenerar,2048,0,1,'N',1,1,@Almacen,@Articulo,@PrecioLista,@PrecioLista,@Impuesto,0.00,
					 @Unidad,1,@Fecha,@Sucursal,@Sucursal,'Pesos',1,@CasilleroID,@Casillero,@PlanoID,'511-000-039-999-000'

       EXEC spAfectar 'VTAS',@IDGenerar, 'AFECTAR', 'Todo',NULL,@Usuario,1,0,@Ok OUTPUT 
       
       EXEC spAfectar 'VTAS',@IDGenerar, 'AFECTAR', 'Todo',NULL,@Usuario,1,0,@Ok OUTPUT
       
      
         IF @Ok =80030 OR @Ok IS NULL
         BEGIN
            INSERT INTO MensajeErrorCDI
            SELECT 'Se genero correctamente el Movimiento '+Mov+' '+MovID,'OK' FROM venta where ID=@IDGenerar
            COMMIT TRANSACTION 

          END            
          ELSE 
            BEGIN
             ROLLBACK TRANSACTION 
             INSERT INTO MensajeErrorCDI
             SELECT Descripcion,'ERROR' FROM MensajeLista WHERE Mensaje = @Ok
         END
  RETURN 
END 


GO
/**************************************************************************************************/
/*   Store Procedure AGenera endoso si es que el cliente tiene deudas al traspasar el casillero   */
/**************************************************************************************************/
IF OBJECT_ID ('CDIsp_GeneraEndoso') IS NOT NULL 
 DROP PROCEDURE CDIsp_GeneraEndoso
GO 
CREATE PROCEDURE CDIsp_GeneraEndoso  
  @Estacion    int
 ,@Usuario     varchar(10)
 ,@Empresa     varchar(10)
 ,@Sucursal    int
 ,@ClienteD    varchar(10)
 ,@ClienteA    varchar(10)
 ,@PlanoID     int
 ,@CasilleroID int
AS BEGIN 
  DECLARE
    @IDGenerar   int
   ,@Ok          int
   ,@OkRef       varchar(100)
   ,@Fecha       DateTime
   ,@Membresia   varchar(10)
   ,@Socio       varchar(100)
   ,@MovID       int
   ,@MovAplica   varchar(20)
   ,@MovAplicaID varchar(20)
   ,@Casillero   varchar(10)
   ,@Saldo       money 
   ,@Comentarios varchar(800)
   ,@Seccion     varchar(20)
   ,@Ubicacion   varchar(20)
      
   TRUNCATE TABLE MensajeErrorCDI 
   BEGIN TRANSACTION 
  
   BEGIN TRY
    SET @Fecha=Convert(DateTime,FLOOR(Convert(float,GetDate())))

    SELECT @Membresia=Membresia,@Socio=Socio
      FROM Cte  
     WHERE Cliente=@ClienteA 
         
    SELECT @Casillero=CasilleroTag,@MovID=VentaID 
      FROM CDICasilleros 
     WHERE ID=@CasilleroID
     
     SELECT @MovAplica=Mov,@MovAplicaID=MovID,@Saldo=Saldo 
       FROM Cxc  
      WHERE ID=@MovID
     
     SELECT @Seccion=Seccion,@Ubicacion=Ubicacion 
      FROM CasillerosXML 
     WHERE ID=@PlanoID
     
     UPDATE CDICasilleros SET VentaID=NULL WHERE ID=@CasilleroID  
 
     SET @Comentarios='EL endoso pertenece a la deuda del casillero '+@Casillero+'  de la seccion de '+@Seccion+'  Ubicacion '+@Ubicacion+' '           
                 
    END TRY 
    BEGIN CATCH
      ROLLBACK TRANSACTION 
      INSERT INTO MensajeErrorCDI
      SELECT ERROR_MESSAGE(),'ERROR'
      RETURN 
    END CATCH


    INSERT INTO Cxc(Empresa,Mov,FechaEmision,UltimoCambio,Concepto,Proyecto,Moneda,TipoCambio,Usuario,Referencia,Estatus,Cliente,ClienteMoneda,ClienteTipoCambio,
                    Condicion,Vencimiento,Importe,Impuestos,AplicaManual,ConDesglose,MovAplica,MovAplicaID,Saldo,GenerarPoliza,Ejercicio,Periodo,FechaRegistro,
                    AnticipoAplicaModulo,SubModulo,Comentarios,CDISocio,CDICasilleroID,CDICasillero,CDIPlanoID)
          VALUES   (@Empresa,'Endoso',@Fecha,@Fecha,'Casilleros','Socios','Pesos',1,@Usuario,@MovAplica+' '+@MovAplicaID,'SINAFECTAR',@ClienteA,'Pesos',1,
                   '(Fecha)',@Fecha+1,@Saldo,0.0,0,0,@MovAplica,@MovAplicaID,@Saldo,0,YEAR(GETDATE()),MONTH(GETDATE()),GETDATE(),
                  'VTAS','CXC',@Comentarios,@Socio,@CasilleroID,@Casillero,@PlanoID)
        
       SET @IDGenerar=@@IDENTITY           
       EXEC spAfectar 'CXC',@IDGenerar, 'AFECTAR', 'Todo',NULL,@Usuario,1,0,@Ok OUTPUT 


         IF @Ok =80030 OR @Ok IS NULL
         BEGIN
            INSERT INTO MensajeErrorCDI
            SELECT 'Se genero correctamente el Movimiento '+Mov+' '+MovID,'OK' FROM cxc where ID=@IDGenerar
            COMMIT TRANSACTION 

          END            
          ELSE 
            BEGIN
             ROLLBACK TRANSACTION 
             INSERT INTO MensajeErrorCDI
             SELECT Descripcion,'ERROR' FROM MensajeLista WHERE Mensaje = @Ok
         END
  RETURN 
END 
GO       

IF EXISTS (SELECT name FROM sysobjects  WHERE name = 'CDIspExisteCasillero' and type = 'P') 
DROP PROCEDURE CDIspExisteCasillero
GO
CREATE PROCEDURE CDIspExisteCasillero
	@Plano			INT,
	@Orden			INT,
	@X				INT,
	@Y				INT 				
AS BEGIN 
		DECLARE	@EstatusA INT 
		
	SELECT @EstatusA = ISNULL(EstatusA, 1) FROM CDICasilleros 

	WHERE PlanoID=@Plano AND  Orden=@Orden
	AND CoordenadaX =@X  AND CoordenadaY = @Y

	SELECT ISNULL(@EstatusA, 0)

RETURN 
END
GO

        