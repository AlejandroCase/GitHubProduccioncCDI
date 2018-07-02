SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 10071) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (10071,	'Se tiene un Rol Pendiente de Autorizar.',	'ERROR',	0)		
GO

---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 10554) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (10554,	'No se tiene Puntos. Tabla Vinculada (MYSQL).',	'ERROR',	0)		
GO


---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 10081) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (10081,	'No Corresponde ',	'ERROR',	0)		
GO


  -- Desarrollo. CATALOGO DE ROLES
  -- Cliente   . CDI
  -- Folio     . 4554
  -- Fecha     . 07 / 10 / 10
  -- Autor     . EDER MENDOZA


-------------------------------------
---- X P A N T E S A F E C T A R ----
-------------------------------------

IF EXISTS(SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.xpAntesAfectar') AND Type = 'P') DROP PROCEDURE dbo.xpAntesAfectar
GO
CREATE PROCEDURE xpAntesAfectar
		   @Modulo			char(5),
           @ID              int,
           @Accion			char(20),
		   @Base			char(20),
           @GenerarMov		char(20),
		   @Usuario			char(10),
		   @SincroFinal		bit,
           @EnSilencio	    bit,
    	   @Ok              int 			OUTPUT,
    	   @OkRef           varchar(255) 	OUTPUT,
		   @FechaRegistro	datetime
AS BEGIN
   DECLARE @Proveedor         varchar(10), 
           @Mov               varchar(20), 
           @Clave             varchar(20), 
           @CDIEstatusCompra  varchar(15),
           @MovCxp			  varchar(20),
           @MovID			  VARCHAR(20),
		   @Estatus			  VARCHAR(15),
		   @Condicion		  VARCHAR(50),
		   @Origen			VARCHAR(20),
		   @OrigenID		VARCHAR(20),
		   @OrigenTipo		VARCHAR(10),

   -- ..:: 07/06/2012 JPV     
		@Empresa				    varchar(5),
		@Cliente                    varchar(20),
		@ArtCfgEsp			        varchar(20),
		@Descripcion                varchar(50),    
        @Ejercicio INT,
        @FechaEmis                  datetime,
--        @FechaEmisionAnt            datetime,
        @MovAnt                     varchar(20),
        @MovIdAnt                   varchar(20)
   -- ...::: 07/06/2012 
		   
		   
   -----------------------------------------------------------------------------
   --- G A S T O   G A S T O   G A S T O   G A S T O  G A S T O   G A S T O  ---
   -----------------------------------------------------------------------------
   IF @Modulo IN ('GAS')
   BEGIN --- M O D U L O   G A S T O  
     SELECT @Proveedor = Acreedor, @Mov= Mov FROM Gasto WHERE ID = @ID
     
     SELECT @Clave = Clave FROM MovTipo WHERE Modulo = 'GAS' AND Mov = @Mov

     IF @Accion = 'AFECTAR' 
     BEGIN --- A C C I O N  A F E C T A R
       IF EXISTS(SELECT * FROM CDIRelacionesPendiente WHERE CatalogoNuevo ='Proveedor' AND PersonalNuevo = @Proveedor AND Estatus = 'PENDIENTE')
       SELECT @Ok = 10071

       IF ISNULL(@Ok,0) = 0 
         EXEC xpCDIAntesAfectarGas @Modulo,@ID,@Accion,@Base,@GenerarMov,@Usuario,@SincroFinal, @EnSilencio, @Ok  OUTPUT, @OkRef OUTPUT,  @Fecharegistro                  
     
       BEGIN  
		 DECLARE   
			@CLAVEPRESUPUESTAL	VARCHAR(50),  
			@RenglonGas			FLOAT,  
			@Renglon			FLOAT,  
			@Concepto			VARCHAR(50)         
     
		 DECLARE crClavepresup CURSOR FOR          
			SELECT gd.Renglon, gd.Concepto FROM gastod gd WHERE gd.id=@ID  
			OPEN crClavepresup          
			FETCH NEXT FROM crClavepresup INTO @Renglon, @Concepto    
			WHILE @@FETCH_STATUS = 0          
	   BEGIN    
              
			SELECT @CLAVEPRESUPUESTAL=ClavePresupuestal FROM GASTOD WHERE ID=@ID AND Renglon=@Renglon                      
			IF @CLAVEPRESUPUESTAL IN (NULL,'')  
	   BEGIN              
            SELECT @Ok=10010,@OkRef='Falta Registrar la Clave Presupuestal para el Concepto: ' + @Concepto  
	   END    
         
			FETCH NEXT FROM crClavepresup INTO @Renglon, @Concepto    
	   END          
			CLOSE crClavepresup          
			DEALLOCATE crClavepresup   
	   END
     
     
     IF @Clave  IN ('GAS.G')
		
		BEGIN
			
		 SELECT @OrigenTipo= g.OrigenTipo,@Origen= g.Origen, @OrigenID= g.OrigenID  
		   FROM Gasto g WHERE g.ID=@ID
		   
		  IF @Origen IN ( NULL,'') AND @OrigenID IN ( NULL,'') AND @OrigenTipo IN ( NULL,'')
				BEGIN
		  	
		  		SELECT @Ok=10065,@OkRef='El movimiento "' + @Mov + '" no puede generarse directamente, requiere una Solicitud o Solictud Efectivo'	
		  	
				END
					
		END
     
     
     END   --- A C C I O N  A F E C T A R
   
   END   --- M O D U L O   G A S T O  
   -------------------------------------------------------------------------------------
   --- C O M P R A S   C O M P R A S   C O M P R A S   C O M P R A S   C O M P R A S ---
   -------------------------------------------------------------------------------------
   IF @Modulo IN ('COMS')
   BEGIN --- M O D U L O   C O M P R A S
     SELECT @Proveedor = Proveedor, @Mov = Mov, @CDIEstatusCompra = CDIEstatusCompra FROM Compra WHERE ID = @ID
	 IF @Accion = 'AFECTAR' 
     BEGIN --- A C C I O N  A F E C T A R
       IF EXISTS(SELECT * FROM CDIRelacionesPendiente WHERE CatalogoNuevo ='Proveedor' AND PersonalNuevo = @Proveedor AND Estatus = 'PENDIENTE')
       SELECT @Ok = 10071               

       IF ISNULL(@Ok,0) = 0 
         EXEC xpCDIAntesAfectarComs @Modulo,@ID,@Accion,@Base,@GenerarMov,@Usuario,@SincroFinal, @EnSilencio, @Ok  OUTPUT, @OkRef OUTPUT,  @Fecharegistro
         
        BEGIN  
			DECLARE   
			@Articulo	VARCHAR(20)  
    
			DECLARE crClavepresup CURSOR FOR          
				SELECT CD.Renglon, Cd.Articulo  FROM COMPRAd Cd WHERE Cd.id=@ID  
				OPEN crClavepresup          
				FETCH NEXT FROM crClavepresup INTO @Renglon, @Articulo    
				WHILE @@FETCH_STATUS = 0          
			BEGIN    
              	SELECT @CLAVEPRESUPUESTAL=ClavePresupuestal FROM COMPRAD WHERE ID=@ID AND Renglon=@Renglon                      
				IF @CLAVEPRESUPUESTAL IN (NULL,'')  
				BEGIN              
					SELECT @Ok=10010,@OkRef='Falta Registrar la Clave Presupuestal para el Articulo: ' + @Articulo  
				END    
         		FETCH NEXT FROM crClavepresup INTO @Renglon, @Articulo    
			END          
				CLOSE crClavepresup          
				DEALLOCATE crClavepresup   
		END  
         
       --IF @Ok IS NULL
       --BEGIN
       --  SELECT @Clave = Clave FROM MovTipo WHERE Modulo = 'COMS' AND Mov = @Mov
         
       --  IF @Clave = 'COMS.D' AND ISNULL(@CDIEstatusCompra, '') = ''
       --    SELECT @Ok = 10060, @OkRef = 'El campo Estatus Compra debe tener valor'
       --END
      
      IF @Ok IS NULL
           BEGIN
			
			SELECT @Clave = Clave FROM MovTipo WHERE Modulo = 'COMS' AND Mov = @Mov
         
			IF @Clave = 'COMS.F' 
				
				BEGIN
					
				
				SELECT @OrigenTipo= c.OrigenTipo,@Origen= c.Origen, @OrigenID= c.OrigenID  
					FROM Compra c WHERE c.ID=@ID
		   
				IF @Origen IN ( NULL,'') OR @OrigenID IN ( NULL,'') OR @OrigenTipo IN ( NULL,'')
						BEGIN
		  	
		  				SELECT @Ok=10065,@OkRef='El movimiento  "' + @Mov + '" no puede generarse directamente, requiere una Orden de Compra'	
		  	
					END
				END
			
			IF @Clave = 'COMS.CA' 
				
				BEGIN
					
				
				SELECT @OrigenTipo= c.OrigenTipo,@Origen= c.Origen, @OrigenID= c.OrigenID  
					FROM Compra c WHERE c.ID=@ID
		   
				IF @Origen IN ( NULL,'') OR @OrigenID IN ( NULL,'') OR @OrigenTipo IN ( NULL,'')
						BEGIN
		  	
		  				SELECT @Ok=10065,@OkRef='El movimiento  "' + @Mov + '" no puede generarse directamente, requiere de Solicitud Cargo'	
		  	
					END
				END           
           END
      
     END   --- A C C I O N  A F E C T A R
  
   END   --- M O D U L O   C O M P R A S
   
   
   ------------------------------------------------------------------------------------------------------------
   --- I N V E N T A R I O S     I N V E N T A R I O S   I N V E N T A R I O S     I N V E N T A R I O S    ---
   ------------------------------------------------------------------------------------------------------------
IF @Modulo IN ('INV')
BEGIN --- M O D U L O   I N V E N T A R I O S    Valida que los articulos solcitados tengan disponible en el almacen
	IF @Accion = 'AFECTAR'
		BEGIN --- A C C I O N  A F E C T A R 
 			IF EXISTS(SELECT *FROM  Inv i WHERE i.Mov='Solicitud' AND i.Estatus='SINAFECTAR' AND i.ID= @ID)
				BEGIN
					EXEC SpCDIArticulosSinDisponible @ID,@Ok OUTPUT , @OkRef OUTPUT
				END	
		END --- A C C I O N  A F E C T A R 
		
END  --- M O D U L O   I N V E N T A R I O S

    
   -----------------------------------------------------------------------------------------
   --- V E N T A S   V E N T A S   V E N T A S   V E N T A S   V E N T A S   V E N T A S ---
   -----------------------------------------------------------------------------------------
   IF @Modulo IN ('VTAS')
   BEGIN --- M O D U L O   V E N T A S
		IF @Accion = 'AFECTAR' 
        BEGIN  
			SELECT @Articulo = NULL
			DECLARE crClavepresup CURSOR FOR          
				SELECT vd.Renglon, vd.Articulo  FROM VentaD vd WHERE vd.id=@ID  
				OPEN crClavepresup          
				FETCH NEXT FROM crClavepresup INTO @Renglon, @Articulo    
				WHILE @@FETCH_STATUS = 0          
			BEGIN    
              	SELECT @CLAVEPRESUPUESTAL=CDIClavePresupuestal FROM VentaD vd WHERE vd.ID=@ID AND vd.Renglon=@Renglon                      
				IF @CLAVEPRESUPUESTAL IN (NULL,'')  
				BEGIN              
					SELECT @Ok=10010,@OkRef='Falta Registrar la Clave Presupuestal para el Articulo: ' + @Articulo  
				END    
         		FETCH NEXT FROM crClavepresup INTO @Renglon, @Articulo    
			END          
				CLOSE crClavepresup          
				DEALLOCATE crClavepresup   
		END  		     
          
     SELECT @Proveedor = Proveedor FROM Compra WHERE ID = @ID
	 IF @Accion = 'CANCELAR' 
     BEGIN --- A C C I O N  C A N C E L A R
       EXEC xpCDIAntesAfectarSolPuntos @Modulo,@ID,@Accion,@Base,@GenerarMov,@Usuario,@SincroFinal, @EnSilencio, @Ok  OUTPUT, @OkRef OUTPUT,  @Fecharegistro
             
     END   --- A C C I O N  C A N C E L A R  
   END   --- M O D U L O   V E N T A S
   
   -- ..:: 07/06/2012      
IF @Modulo = 'VTAS'  
  BEGIN
     SELECT @Mov = Mov FROM Venta WHERE ID = @ID
     SELECT @Clave = Clave FROM MovTipo WHERE Modulo = 'VTAS' AND MOV = @MOV 
  END   
IF @Modulo = 'VTAS' AND @Clave IN('VTAS.F')  AND @Accion IN ('AFECTAR','VERIFICAR') --AND @Ok IS NULL
  BEGIN
    SELECT @ArtCfgEsp = CEArtCoberturaMedica FROM CDIEmpresaCfg 
    SELECT @Ejercicio  = YEAR(FechaEmision) From Venta where ID = @ID
    --SELECT @FechaEmisionAnt = DATENAME(YY, @FECHASERV)+'01'+'01'
    IF EXISTS(SELECT Articulo FROM VentaD WHERE ID = @ID AND Articulo = @ArtCfgEsp) 
        BEGIN
           SELECT @FechaEmis = FechaEmision, @Cliente = Cliente, @Empresa = Empresa FROM Venta WHERE ID = @ID  
           IF (SELECT COUNT(v.FechaEmision) FROM Venta v
                 LEFT JOIN VentaD d 
                   ON v.ID = d.ID
                WHERE v.Empresa = @Empresa
                  AND v.ID <> @ID
                  AND v.Cliente = @Cliente
                  AND d.Articulo = @ArtCfgEsp
                  AND Ejercicio = @Ejercicio   
                  AND v.Estatus IN ('CONCLUIDO')
              ) > 0
             BEGIN
                SELECT @MovAnt = ISNULL(Mov,''), @MovIdAnt = ISNULL(MovId,'') FROM Venta v
                  LEFT JOIN VentaD d 
                    ON v.ID = d.ID
                 WHERE v.Empresa = @Empresa
                   AND v.ID <> @ID
                   AND v.Cliente = @Cliente
                   AND d.Articulo = @ArtCfgEsp
                   AND Ejercicio = @Ejercicio
                   AND v.Estatus IN ('CONCLUIDO')
                   
                SELECT @Descripcion = ISNULL(Descripcion1,'') FROM Art where Articulo =  @ArtCfgEsp
                SELECT @Ok = 10530 
                SELECT @OkRef='Articulo: ' + @ArtCfgEsp + ', ' + @Descripcion +  ' ya existe un Movimiento Previo: ' + @MovAnt + ' - ' +  @MovIDAnt 
                RETURN
             END
                  
        END   
   
   END
 
-- ...::: 07/06/2012 

   
   ---------------------------------------------------------------------------------------
   --- C O N T R O L  P R E S U P U E S T A L  C O N T R O L  P R E S U P U E S T A L  ---
   ---------------------------------------------------------------------------------------
   IF @Modulo IN ('CP') 
   BEGIN --- M O D U L O   C O N T R O L  P R E S U P U E S T A L
     SELECT @Proveedor = Proveedor FROM Compra WHERE ID = @ID
	 IF @Accion = 'AFECTAR' 
     BEGIN --- A C C I O N  A F E C T A R
       EXEC xpCDIAntesAfectarCP @Modulo,@ID,@Accion,@Base,@GenerarMov,@Usuario,@SincroFinal, @EnSilencio, @Ok  OUTPUT, @OkRef OUTPUT,  @Fecharegistro
       		IF EXISTS(	SELECT * FROM  cp c 
       					left outer JOIN movtipo mt ON mt.Mov = c.Mov 
						WHERE mt.Clave IN ('CP.AP','CP.AS') AND c.Estatus='SINAFECTAR' AND c.ID= @ID)
       		    BEGIN
					exec SpCDIVerificarAsignacionPresupuesto @ID,@Ok OUTPUT, @OkRef OUTPUT				
       			END
      END   ---  A C C I O N  A F E C T A R
   END   --- M O D U L O   C O N T R O L  P R E S U P U E S T A L

   IF @Ok IS NULL AND @Accion IN ('AFECTAR', 'VERIFICAR', 'AUTORIZAR', 'GENERAR') 
      AND @Modulo IN ('VTAS', 'COMS', 'INV', 'CXC', 'CXP', 'GAS', 'DIN', 'CONT', 'RH', 'ASIS', 'NOM', 'SOC', 'AF', 'CE', 'CA')
     EXEC xpCDIVerificarFlujo @Modulo, @ID, @Accion, @Usuario, @Ok OUTPUT, @OkRef OUTPUT

   ----------------------------------------------------------------------------------------
   ---------- C U E N T A S  P O R  P A G A R    C U E N T A S  P O R  P A G A R ----------
   ----------------------------------------------------------------------------------------
	--SELECT @MovCxp = Mov FROM Cxp WHERE ID = @ID
	--SELECT @Estatus = Estatus FROM Cxp WHERE ID = @ID
           
	--IF @Modulo = 'CXP' AND @MovCxp = 'Contra Recibo' AND @Estatus = 'SINAFECTAR'
	
	--BEGIN
	--	SELECT @Condicion = Compra.Condicion FROM Cxp LEFT OUTER JOIN Compra ON Cxp.Origen = Compra.Mov AND Cxp.OrigenID = Compra.MovID WHERE Cxp.id = @ID
	--	UPDATE Cxp SET Condicion = @Condicion WHERE ID = @ID
		
	--END

   --------------------------------------------------------------------------------------------
   ---------- C U E N T A S  P O R  C O B R A R    C U E N T A S  P O R  C O B R A R ----------
   --------------------------------------------------------------------------------------------
 IF @Modulo  IN ('CXC')
	BEGIN
		IF @Accion = 'AFECTAR'   
		BEGIN    		
			SELECT @Concepto = c.Concepto, @Mov = c.Mov  
			FROM Cxc c WHERE c.ID=@ID
				IF @Concepto IN ( NULL,'')
				BEGIN
		  			SELECT @Ok=10065,@OkRef='El movimiento "' + @Mov + '" Falta Indicar el Concepto'	
				END
		END
	END

  RETURN
END
GO

