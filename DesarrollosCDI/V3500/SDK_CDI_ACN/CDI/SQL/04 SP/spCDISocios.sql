/* Configuracion MS SQL Server */
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

/**************** spCDISugerirCategoria ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDISugerirCategoria') and type = 'P') drop procedure dbo.spCDISugerirCategoria
GO             
CREATE PROCEDURE dbo.spCDISugerirCategoria
                @ID        int,                 
                @Categoria varchar(20) OUTPUT,
	            @Ok        int         OUTPUT   
AS 
BEGIN  
DECLARE 
	@Cantidad   int,
	@CantidadD  int,
	@CantidadA  int,
	@EdadD      int,
	@EdadA      int,
	@Sexo       varchar(20), 
	@Categoria1 varchar(20),
	@Bandera    int,
	@SexoM      int,
	@SexoF      int,
	@SexoTotal  varchar(20),
	@Orden      int 
	

	
CREATE TABLE #Membresia (Cliente    varchar(20),                          
                         Edad       int NULL, 
                         Sexo       varchar(20) NULL,
                         Cuenta     bit DEFAULT 0)


INSERT INTO #Membresia (Cliente)
SELECT c.Cliente FROM CDISocio c WHERE c.ID = @ID

INSERT INTO #Membresia (Cliente)
SELECT c.Cliente FROM CDISocioD c WHERE c.ID = @ID

UPDATE #Membresia SET Edad = datediff(year, c.FechaNacimiento, GETDATE()),
                      Sexo = c.Sexo
  FROM Cte c
 WHERE #Membresia.Cliente  = c.Cliente


DECLARE crDatos CURSOR LOCAL FOR			
 SELECT cc.Categoria, cc.CantidadD, cc.CantidadA, cc.EdadD, cc.EdadA, cc.Sexo, Orden = CASE cc.Sexo when 'Femenino' THEN 1 WHEN 'Masculino' THEN 2 ELSE 3  END 
   FROM CDICfgCategoria cc 
  WHERE cc.Sugerir = 'Si' --AND cc.CantidadD = cc.CantidadA 
  ORDER BY cc.CantidadD, cc.CantidadA, Orden
   OPEN crDatos
  FETCH NEXT FROM crDatos INTO @Categoria1, @CantidadD, @CantidadA, @EdadD, @EdadA, @Sexo, @Orden
  WHILE @@FETCH_STATUS <> -1 
  BEGIN
    IF @@FETCH_STATUS <> -2 
    BEGIN 
      SELECT @SexoM = 0, @SexoF = 0, @SexoTotal = NULL 	     
      UPDATE #Membresia SET Cuenta = 1 WHERE Edad >= @EdadD --BETWEEN @EdadD AND @EdadA 
           
      SELECT @Cantidad = count(*) FROM #Membresia WHERE Cuenta = 1
      
      SELECT @SexoM = count(*) FROM #Membresia WHERE Cuenta = 1 AND Sexo = 'Masculino'
      SELECT @SexoF = count(*) FROM #Membresia WHERE Cuenta = 1 AND Sexo = 'Femenino'
      IF @SexoM <> 0 AND @SexoF = 0
        SELECT @SexoTotal = 'Masculino'
      ELSE 
      IF @SexoM = 0 AND @SexoF <> 0
        SELECT @SexoTotal = 'Femenino'
      ELSE
      IF @SexoM <> 0 AND @SexoF <> 0
        SELECT @SexoTotal = 'Indistinto'
      	
      IF @Cantidad BETWEEN @CantidadD AND @CantidadA AND (@Sexo = @SexoTotal OR @Sexo = 'Indistinto')
      BEGIN 
      --	SELECT @Categoria1, @Cantidad
        SELECT @Categoria = @Categoria1
      END 
      UPDATE #Membresia SET Cuenta = 0
      FETCH NEXT FROM crDatos INTO @Categoria1, @CantidadD, @CantidadA, @EdadD, @EdadA, @Sexo, @Orden
      IF @Categoria IS NOT NULL
        break
    END
  END
CLOSE crDatos
DEALLOCATE crDatos        
RETURN 
END 
GO
--EXEC spCDISugerirCategoria '53732', NULL, NULL 
/**************** spCDIConsecutivo ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIConsecutivo') and type = 'P') drop procedure dbo.spCDIConsecutivo
GO             
CREATE PROCEDURE dbo.spCDIConsecutivo  
        @Modulo         varchar(5),  
        @Empresa        varchar(5),  
        @Sucursal       int,  
        @Mov            varchar(20),  
        @MovID          varchar(20)     OUTPUT,  
        @Ok             int             OUTPUT  
  
AS BEGIN  
  DECLARE  
    @Consecutivo        int,  
    @Prefijo            varchar(5)  
  
  IF @MovID IS NOT NULL  
    RETURN  
  
  SELECT @Consecutivo = ISNULL(Consecutivo, 0)   
    FROM CDISocioC cc  
   WHERE Empresa  = @Empresa   
     AND Sucursal = @Sucursal  
     AND Mov      = @Mov  
  
   SELECT @Prefijo = ISNULL(Prefijo, '') FROM Sucursal WHERE Sucursal = @Sucursal  
  
  SELECT @MovID = @Prefijo + CAST(ISNULL(@Consecutivo, 0) + 1 AS varchar)  
  
  RETURN  
END  
GO

/**************** spCDIConsecutivoAfectar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIConsecutivoAfectar') and type = 'P') drop procedure dbo.spCDIConsecutivoAfectar
GO             
CREATE PROCEDURE spCDIConsecutivoAfectar  
        @Modulo         varchar(5),  
        @Empresa        varchar(5),  
        @Sucursal       int,  
        @Mov            varchar(20),  
        @MovID          varchar(20),  
        @Ok             int             OUTPUT  
  
AS BEGIN  
  DECLARE  
    @Prefijo            varchar(5),  
    @Consecutivo        int,  
    @UltimoConsecutivo  int  
  
  SELECT @Prefijo = ISNULL(Prefijo, '') FROM Sucursal WHERE Sucursal = @Sucursal  
  SELECT @UltimoConsecutivo = ISNULL(Consecutivo, 0) FROM CDISocioC cc WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Mov = @Mov  
  SELECT @Consecutivo = SUBSTRING(@MovID, LEN(@Prefijo) + 1, LEN(@MovID))  
  
  IF @Consecutivo > ISNULL(@UltimoConsecutivo, 0)  
  BEGIN  
    UPDATE CDISocioC SET Consecutivo = @Consecutivo WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Mov = @Mov  
    IF @@ROWCOUNT <= 0  
      INSERT CDISocioC ( Empresa, Sucursal, Mov, Consecutivo) VALUES ( @Empresa, @Sucursal, @Mov, @Consecutivo)  
  
    IF @@ERROR <> 0  
      SELECT @Ok = 1  
  END  
    
  RETURN  
END  
GO


/**************** spCDIInsertaDocumentosCTA ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIInsertaDocumentosCTA') and type = 'P') drop procedure dbo.spCDIInsertaDocumentosCTA
GO             
CREATE PROCEDURE spCDIInsertaDocumentosCTA  
        @Cliente        varchar(10),  
        @Nacionalidad   varchar(30),
        @Tipo           varchar(20)  
  
AS BEGIN 
  
  SELECT * FROM CDIDocSocioCta WHERE Cliente = @Cliente

    SELECT                       @Cliente, Documento, Nacionalidad, Tipo, 'No' 
     FROM CDIDocSocio 
    WHERE Nacionalidad = CASE WHEN @Nacionalidad IN ('Mexicana', 'Mexicano') THEN 'Mexicano' ELSE 'Extranjero' END AND Tipo = @Tipo
  	
  IF NOT EXISTS (SELECT * FROM CDIDocSocioCta WHERE Cliente = @Cliente)
  BEGIN  	  	
  	INSERT INTO CDIDocSocioCta ( Cliente,  Documento, Nacionalidad, Tipo, Entregado )
    SELECT                       @Cliente, Documento, Nacionalidad, Tipo, 'No' 
     FROM CDIDocSocio 
    WHERE Nacionalidad = CASE WHEN @Nacionalidad IN ('Mexicana', 'Mexicano') THEN 'Mexicano' ELSE 'Extranjero' END AND Tipo = @Tipo
  END     
        
  RETURN  
END  
GO

/**************** spCDISocioCancelar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDISocioCancelar') and type = 'P') drop procedure dbo.spCDISocioCancelar
GO             
CREATE PROCEDURE spCDISocioCancelar  
      @ID               int,  
      @Accion           char(20),  
      @Empresa          char(5),  
      @Usuario          char(10),  
      @Modulo           char(5),  
      @Mov              char(20),  
      @MovID            varchar(20),  
      @MovTipo          char(20),  
      @FechaEmision     datetime,  
      @Estatus          char(15),  
      @MovFechaD        datetime,  
      @MovFechaA        datetime,  
      @OrigenTipo       char(10),  
      @Origen           char(20),  
      @OrigenID         varchar(20),  
      @OrigenMovTipo    char(20),  
      @Conexion         bit,  
      @SincroFinal      bit,  
      @Sucursal         int,  
      @Ok               int          OUTPUT,  
      @OkRef            varchar(255) OUTPUT

AS BEGIN 
	DECLARE 
		@Cliente            varchar(10),
		@EstatusCte         varchar(15),
		@Renglon            float,
        @Membresia          int,
        @BajaTotal          bit,
        @ClienteBaja        varchar(10),
        @SufijosSocios      varchar(2),
        @BloqueoDemandante  varchar(2),
        @BloqueoDemandado   varchar(2),
        @DemandanteTipo     varchar(20),
        @DemandadoTipo      varchar(20),
        @ClaveDemandante    varchar(10),
        @ClaveDemandado     varchar(10),
        @SubClave           varchar(20)
                 
  SELECT @SubClave = isnull(mt.SubClave, '') FROM MovTipo mt WHERE mt.Mov = @Mov     
  	
  IF @MovTipo IN ('SOC.ACEPTA', 'SOC.TEMPORAL', 'SOC.VERIFICA', 'SOC.SOL', 'SOC.RECHAZO', 'SOC.SUSPENDER') AND @Estatus IN ('PENDIENTE', 'CONCLUIDO')
  BEGIN  	
      SELECT @Cliente = c.Cliente FROM CDISocio c WHERE c.ID = @ID	      
  	  IF @MovTipo IN ('SOC.ACEPTA', 'SOC.TEMPORAL', 'SOC.RECHAZO', 'SOC.SUSPENDER')
  	    SELECT @EstatusCte = 'ASPIRANTE'
  	  ELSE 
 	  IF @MovTipo IN ('SOC.VERIFICA', 'SOC.SOL')
  	    SELECT @EstatusCte = 'CONFIRMAR'

      --UPDATE CDISocio    SET Estatus = 'PENDIENTE' WHERE ID = @ID
  	  UPDATE Cte SET Estatus = @EstatusCte, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cliente = @Cliente
  	  UPDATE CDISocio SET Estatus = 'PENDIENTE' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
  	  UPDATE CDISocio SET Estatus = 'CANCELADO' WHERE CDISocio.ID = @ID
  	    	
	  DECLARE crDatos CURSOR LOCAL FOR			
	   SELECT ID, Cliente, Renglon
	     FROM CDISocioD cd
		WHERE cd.ID = @ID
		  OPEN crDatos
      FETCH NEXT FROM crDatos INTO @ID, @Cliente, @Renglon
      WHILE @@FETCH_STATUS <> -1 
      BEGIN
        IF @@FETCH_STATUS <> -2 
        BEGIN        	
          UPDATE Cte SET                  
                 Estatus = @EstatusCte, 
                 Descripcion12 = CONVERT(varchar(15), GETDATE(), 103)
           WHERE Cliente = @Cliente                                 
          UPDATE CDISocioD SET  Estatus = @EstatusCte WHERE ID = @ID AND Renglon = @Renglon AND Cliente = @Cliente           
          FETCH NEXT FROM crDatos INTO @ID, @Cliente, @Renglon
        END
      END
    CLOSE crDatos
    DEALLOCATE crDatos       	  
  	
  END
  ELSE 
  	IF @MovTipo IN ('SOC.BAJA', 'SOC.SOLBAJA') AND @Estatus IN ('PENDIENTE', 'CONCLUIDO')
  	BEGIN
  	IF @SubClave = 'SOC.BAJADEF' 
    
    BEGIN
      SELECT @Cliente = isnull(c.Cliente, '') FROM CDISocio c WHERE c.ID = @ID

    	IF @Cliente <> ''
    	BEGIN
			UPDATE Cte SET Descripcion15 = '', Descripcion13='', Estatus = 'ALTA', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente IN (SELECT c.Cliente FROM CDISocioD c WHERE c.ID = @ID)

			DELETE CDIBajasDefuncion
			FROM CDIBajasDefuncion bd
			INNER JOIN CDISocioD sd ON bd.Socio = sd.Socio
			WHERE sd.ID = @ID
		END  
    END
  	
  	IF @MovTipo = 'SOC.BAJA' AND isnull(@SubClave, '') = ''
  	BEGIN 
  	  SELECT @Membresia = c.Membresia, @BajaTotal = c.BajaTotal, @ClienteBaja = isnull(c.ClienteAnt, ''), @Cliente = isnull(c.Cliente, '') FROM CDISocio c WHERE c.ID = @ID
      SELECT @SufijosSocios = p.SufijosSocios FROM Parentesco p WHERE p.Parentesco = (SELECT Parentesco FROM Cte WHERE Cliente = @Cliente)  	  
  	  SELECT @EstatusCte = 'ALTA'
  	  IF @BajaTotal = 1
  	    UPDATE Cte SET Estatus = 'ALTA', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Membresia = @Membresia
  	  ELSE IF @ClienteBaja = ''
  	  /**********************  ANTES MODIFICACION*********************************************************************/
  	    --UPDATE Cte SET Estatus = 'ALTA' WHERE Cte.Cliente IN (SELECT Cte.Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
  	    /**********************  DESPUES  MODIFICACION*********************************************************************/
  	    --se quito Cte.Cliente y se puso solo Cliente
  	    UPDATE Cte SET Estatus = 'ALTA', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103), Descripcion13 = 'No', Descripcion15 = '' WHERE Cte.Cliente IN (SELECT Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
  	    
  	  ELSE IF @ClienteBaja <> ''
  	  BEGIN
  	  	UPDATE Cte SET Estatus = 'ALTA', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClienteBaja
  	  	UPDATE Cte SET Estatus = 'ALTA', Socio = CONVERT(varchar(100), @Membresia )+@SufijosSocios, Titular = 0 WHERE Cte.Cliente = @Cliente 	  	
  	  END  	    	    	      
    END 
    IF @SubClave = 'SOC.BLOQUEO' 
    BEGIN
  	  SELECT @Membresia = c.Membresia, @BajaTotal = c.BajaTotal, @ClienteBaja = isnull(c.ClienteAnt, ''), @Cliente = isnull(c.Cliente, '') FROM CDISocio c WHERE c.ID = @ID
  	  IF @BajaTotal = 1
  	    UPDATE Cte SET /*Estatus = 'ALTA',*/ Descripcion13 = 'No', Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Membresia = @Membresia
  	  ELSE IF @Cliente <>''
  	  BEGIN 
  	  	UPDATE Cte SET /*Estatus = 'ALTA',*/ Descripcion13 = 'No', Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @Cliente
  	  	/**********************  ANTES MODIFICACION*********************************************************************/
  	  	--UPDATE Cte SET Estatus = 'ALTA' WHERE Cte.Cliente IN (SELECT Cte.Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
  	  	/**********************  DESPUES  MODIFICACION*********************************************************************/
  	    --se quito Cte.Cliente y se puso solo Cliente
  	  	UPDATE Cte SET /*Estatus = 'ALTA',*/ Descripcion13 = 'No', Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente IN (SELECT Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
  	  END 
    END
    IF @SubClave = 'SOC.DESBLOQUEO' 
    BEGIN
  	  SELECT @Membresia = c.Membresia, @BajaTotal = c.BajaTotal, @ClienteBaja = isnull(c.ClienteAnt, ''), @Cliente = isnull(c.Cliente, '') FROM CDISocio c WHERE c.ID = @ID
  	  IF @BajaTotal = 1
  	    UPDATE Cte SET /*Estatus = 'BLOQUEADO'*/ Descripcion13 = 'Si', Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Membresia = @Membresia
  	  ELSE IF @Cliente <>''
  	  BEGIN 
  	  	UPDATE Cte SET /*Estatus = 'BLOQUEADO'*/ Descripcion13 = 'Si', Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @Cliente
  	  	/**********************  ANTES MODIFICACION*********************************************************************/
  	  	--UPDATE Cte SET Estatus = 'BLOQUEADO' WHERE Cte.Cliente IN (SELECT Cte.Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
  	  	/**********************  DESPUES  MODIFICACION*********************************************************************/
  	    --se quito Cte.Cliente y se puso solo Cliente
  	    UPDATE Cte SET /*Estatus = 'BLOQUEADO'*/ Descripcion13 = 'Si', Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente IN (SELECT Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
  	  END 
    
    END
-------------------
    IF @SubClave = 'SOC.ALTA' 
    BEGIN
  	  SELECT @Membresia = c.Membresia, @BajaTotal = c.BajaTotal, @ClienteBaja = isnull(c.ClienteAnt, ''), @Cliente = isnull(c.Cliente, '') FROM CDISocio c WHERE c.ID = @ID
  	  IF @BajaTotal = 1
  	    UPDATE Cte SET Estatus = 'BAJA', Descripcion13 = 'No', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Membresia = @Membresia
  	  ELSE IF @Cliente <>''
  	  BEGIN 
  	  	UPDATE Cte SET Estatus = 'BAJA', Descripcion13 = 'No', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @Cliente
  	  	UPDATE Cte SET Estatus = 'BAJA', Descripcion13 = 'No', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente IN (SELECT Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
  	  END
    END    
-------------------        
  	  UPDATE CDISocio SET Estatus = 'PENDIENTE' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
  	  UPDATE CDISocio SET Estatus = 'CANCELADO' WHERE CDISocio.ID = @ID  	     
  	END
  	ELSE
  	  IF @MovTipo IN ('SOC.HONOR', 'SOC.SANCION', 'SOC.DICTAMEN') AND @Estatus IN ('PENDIENTE', 'CONCLUIDO')
  	  BEGIN
  	    UPDATE CDISocio SET Estatus = 'PENDIENTE' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
  	    UPDATE CDISocio SET Estatus = 'CANCELADO' WHERE CDISocio.ID = @ID  	  	
   	    IF @MovTipo = 'SOC.DICTAMEN' 
        BEGIN
      	  SELECT @BloqueoDemandante = c.BloquearDemandante, @BloqueoDemandado = c.BloquearDemandado, 
      	         @ClaveDemandante   = c.ClaveDemandante,    @ClaveDemandado   = c.ClaveDemandado,
      	         @DemandanteTipo    = c.DemandanteTipo,     @DemandadoTipo    = c.DemandadoTipo
      	    FROM CDISocio c 
      	   WHERE c.ID = @ID	
      	   
      	  IF @DemandanteTipo = 'Socio' AND @BloqueoDemandante = 'Si'
      	    UPDATE Cte SET Descripcion13 = 'No' /*Estatus = 'ALTA'*/, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandante
      	  IF @DemandadoTipo = 'Socio'  AND @BloqueoDemandado  = 'Si'
      	    UPDATE Cte SET Descripcion13 = 'No' /*Estatus = 'ALTA'*/, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandado  	          	  	  	  		
  	  	END  	    
  	  	ELSE 
   	    IF @SubClave = 'SOC.CITACON'
        BEGIN
      	  SELECT @BloqueoDemandante = c.BloquearDemandante, @BloqueoDemandado = c.BloquearDemandado, 
      	         @ClaveDemandante   = c.ClaveDemandante,    @ClaveDemandado   = c.ClaveDemandado,
      	         @DemandanteTipo    = c.DemandanteTipo,     @DemandadoTipo    = c.DemandadoTipo
      	    FROM CDISocio c 
      	   WHERE c.ID = @ID	
      	  IF @DemandanteTipo = 'Socio' 
      	    UPDATE Cte SET Descripcion13 = 'No' /*Estatus = 'ALTA'*/, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandante
      	  IF @DemandadoTipo = 'Socio'  
      	    UPDATE Cte SET Descripcion13 = 'No' /*Estatus = 'ALTA'*/, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandado  	          	  	  	  		
  	  	END
  	  END
  	  ELSE 
  	  IF @MovTipo IN ('SOC.EQUIPO', 'SOC.DAM', 'SOC.MEDICA', 'SOC.ALTACOND', 'SOC.EST')
  	  BEGIN 
  	    UPDATE CDISocio SET Estatus = 'CANCELADO' WHERE CDISocio.ID = @ID  
  	    IF @MovTipo = 'SOC.ALTACOND'
  	    BEGIN 
  	    	SELECT @Membresia = c.Membresia FROM CDISocio c WHERE c.ID = @ID
  	        UPDATE Cte SET Estatus = 'BAJA', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Membresia = @Membresia
  	    END 
  	  END 
  	  ELSE 
  	  IF @MovTipo = 'SOC.INV'	    	
  	  BEGIN
  	  	UPDATE CDISocio  SET Estatus = 'CANCELADO' WHERE ID = @ID
  	  	UPDATE CDISocioD SET Estatus = 'BAJA'      WHERE ID = @ID  
  	  	UPDATE Cte SET Estatus = 'BAJA' WHERE Cte.Cliente IN (SELECT cd.Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
  	  END
  	  IF @MovTipo IN ('SOC.SUBSID', 'SOC.SOLSUBSID')
  	  BEGIN
  	  	SELECT @Cliente = c.Cliente FROM CDISocio c WHERE c.ID = @ID	      
  	    UPDATE CDISocio SET Estatus = 'PENDIENTE' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
  	    UPDATE CDISocio SET Estatus = 'CANCELADO' WHERE CDISocio.ID = @ID  	  	
  	    IF @SubClave = 'SOC.ACEPTASUB'
  	      UPDATE Cte SET CDISubsidio = NULL WHERE Cliente = @Cliente  	    
  	  END
  	  
  RETURN  
END  
GO


--EXEC spCDIInsertaDocumentosCTA 'Cliente1', 'Estado', 'Cliente'

/********** spCDICopiaDetalleSocio ************/
IF EXISTS (SELECT name FROM sysobjects  WHERE name = 'spCDICopiaDetalleSocio' and type = 'P') DROP PROCEDURE spCDICopiaDetalleSocio
GO
CREATE PROCEDURE spCDICopiaDetalleSocio
                           @ID          int,
                           @Cliente     varchar(10),
                           @Accion      int
                           
AS 
BEGIN
	DECLARE
		@NIPCDI   	varchar(30),	    
	    @Membresia  int,
	    @Socio      varchar(100), 	
        @Estatus 	varchar(15),
        @Renglon    float
		
    SELECT @Renglon = 0, @NIPCDI = NULL, @Membresia = NULL, @Socio = NULL, @Estatus = NULL
		
	IF NOT EXISTS(SELECT * FROM CDICopiaDetalleSocio WHERE ID = @ID AND Cliente = @Cliente) AND @ID <> 0 AND @Accion = 1
	BEGIN
		INSERT INTO CDICopiaDetalleSocio (ID, Cliente) VALUES (@ID, @Cliente)		
	END
	IF @Accion = 2
	BEGIN
	  DECLARE crDatos CURSOR LOCAL FOR			
	   SELECT ID, Cliente
		 FROM CDICopiaDetalleSocio cds 
		WHERE cds.ID = @ID
		  OPEN crDatos
      FETCH NEXT FROM crDatos INTO @ID, @Cliente
      WHILE @@FETCH_STATUS <> -1 
      BEGIN
        IF @@FETCH_STATUS <> -2 
        BEGIN
          SELECT @NIPCDI = c.NIPCDI, @Membresia = c.Membresia, @Socio = c.Socio, @Estatus = c.Estatus, @Renglon = @Renglon + 2048
            FROM Cte c WHERE c.Cliente = @Cliente	
            
            INSERT INTO CDISocioD ( ID,  Renglon,  NIPCDI,  Cliente,  Membresia,  Socio,  Estatus  )
            VALUES                ( @ID, @Renglon, @NIPCDI, @Cliente, @Membresia, @Socio, @Estatus )
          
          FETCH NEXT FROM crDatos INTO @ID, @Cliente
        END
      END
    CLOSE crDatos
    DEALLOCATE crDatos        
	END
END
GO

/**************** spCDIGenerarMovimiento ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIGenerarMovimiento') and type = 'P') drop procedure dbo.spCDIGenerarMovimiento
GO             
CREATE PROCEDURE spCDIGenerarMovimiento  
        @ID        int,
        @Mov       varchar(20),
        @MovID     varchar(20),
        @MovNuevo  varchar(20),
        @Usuario   varchar(10),
        @Sucursal  int,
		@Ejercicio int,
		@Modulo    varchar(10),
		@IDGenerar int output 
		
        
AS 
BEGIN 
	DECLARE 
		@NuevoID        int,
		@Empresa        varchar(5),
		@Moneda         varchar(10),
		@TipoCambio     float,
		@Cliente        varchar(10),
		@Almacen        varchar(10),
		@CDISocio       varchar(100),
		@Articulo       varchar(20),
		@Cantidad       float,
		@Precio         float,
		@Impuesto1      float,
		@Impuesto2      float,		
		@Impuesto3      float,
		@Concepto       varchar(50),
        @Dia            int,        
        @Periodo        int,
        @FechaLetra     varchar(10),
        @FechaInicio    datetime,
        @Recurrente     bit,
        @FechaEmision   DATETIME,
        @Unidad			VARCHAR(50)
  
 	
  SELECT @FechaEmision = GETDATE()
  SELECT @Dia = day(@FechaEmision), @Ejercicio = YEAR(@FechaEmision), @Periodo = MONTH(@FechaEmision)
  
  SELECT @FechaLetra  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),@Dia),2)
  SELECT @FechaInicio   = CONVERT(datetime,@FechaLetra)  		
		
		
SELECT @Empresa = c.Empresa, @CDISocio = c.Socio, @Usuario = c.Usuario, @Cliente = c.Cliente, @Sucursal = c.Sucursal 
  FROM CDISocio c WHERE c.ID = @ID
SELECT @Almacen = u.DefAlmacen FROM Usuario u WHERE u.Usuario = @Usuario

	
IF @Modulo = 'SOC'
BEGIN 
   SELECT @Ejercicio = YEAR(GETDATE())
   INSERT INTO CDISocio (Empresa, Mov, FechaEmision, UltimoCambio, Concepto, Proyecto, UEN, Usuario, Referencia,    Observaciones,
    	                 Causa, Estatus, OrigenTipo, Origen, OrigenID, Ejercicio, Periodo, FechaRegistro, Sucursal, Moneda, 
		                 TipoCambio, NIPCDI, Cliente, Membresia, Socio, FechaIngreso, FechaVigencia, Categoria, ListaPreciosCuotaA, 
		                 ListaPreciosCuotaM, Cantidad, ImporteAnualidad, ImporteMensualidad, ImporteSubsidio, Justificacion, ClienteAnt, 
		                 BajaTotal, DemandanteTipo, ClaveDemandante, DemandadoTipo, ClaveDemandado, CitaHonorJusticia, HoraHonorJusticia,
		                 BloquearDemandante, NoDiasDemandante, BloquearDemandado, NoDiasDemandado, Comentarios, Estado, FormaPago, 
		                 NombreDemandante, NombreDemandado, Edad, CuotaOriginal, TipoSubsidio, Subsidio)
   SELECT                Empresa, @MovNuevo, @FechaInicio, GETDATE(), c.Concepto, c.Proyecto, c.UEN, @Usuario, c.Referencia, c.Observaciones, 
                         c.Causa, 'SINAFECTAR', 'SOC', @Mov, @MovID, @Ejercicio, c.Periodo, GETDATE(), @Sucursal, c.Moneda,
                         c.TipoCambio, c.NIPCDI, c.Cliente, c.Membresia, c.Socio, c.FechaIngreso, c.FechaVigencia, c.Categoria, c.ListaPreciosCuotaA,
                         c.ListaPreciosCuotaM, c.Cantidad, c.ImporteAnualidad, c.ImporteMensualidad, c.ImporteSubsidio, c.Justificacion, c.ClienteAnt, 
                         c.BajaTotal, c.DemandanteTipo, c.ClaveDemandante, c.DemandadoTipo, c.ClaveDemandado, c.CitaHonorJusticia, c.HoraHonorJusticia,
                         c.BloquearDemandante, c.NoDiasDemandante, c.BloquearDemandado, c.NoDiasDemandado, c.Comentarios, c.Estado, c.FormaPago, 
                         c.NombreDemandante, c.NombreDemandado, c.Edad, c.CuotaOriginal, c.TipoSubsidio, c.Subsidio                       
    FROM CDISocio c    	
   WHERE c.ID = @ID
   SELECT @NuevoID = @@IDENTITY
   SELECT @IDGenerar = @NuevoID

    INSERT INTO CDISocioD ( ID,         Renglon,    NIPCDI, Cliente, Membresia, Socio, Estatus, TipoSangre, Edad )
    SELECT                  @NuevoID,   cd.Renglon, cd.NIPCDI, cd.Cliente, cd.Membresia, cd.Socio, cd.Estatus, cd.TipoSangre, cd.Edad
    FROM CDISocioD cd
    WHERE cd.ID = @ID

-- Inserto Bitacora	    
   INSERT INTO MovBitacora ( Modulo, ID, Fecha, Evento, Tipo, Sucursal, Usuario, MovEstatus, MovSituacion, MovSituacionFecha, MovSituacionUsuario,
    	                     MovSituacionNota, Duracion, DuracionUnidad, CDIConcepto )
   SELECT                    mb.Modulo,@NuevoID, mb.Fecha, mb.Evento, mb.Tipo, mb.Sucursal, mb.Usuario, mb.MovEstatus, mb.MovSituacion, mb.MovSituacionFecha, mb.MovSituacionUsuario,
                             mb.MovSituacionNota, mb.Duracion, mb.DuracionUnidad, mb.CDIConcepto                                 
     FROM MovBitacora mb 
    WHERE mb.Modulo = 'SOC' AND mb.ID = @ID
END 
ELSE 
 IF @Modulo = 'VTAS'
 BEGIN 	
	  
	  	 
	  DECLARE crDatos CURSOR LOCAL FOR			
	   SELECT ID, Articulo, Cantidad 
	     FROM CDISocioArticulos 
		WHERE ID = @ID
		 OPEN crDatos
      FETCH NEXT FROM crDatos INTO @ID, @Articulo, @Cantidad
      WHILE @@FETCH_STATUS <> -1 
      BEGIN
        IF @@FETCH_STATUS <> -2 
        
        BEGIN
        		BEGIN
					 
					  SELECT @Moneda = NULL, @TipoCambio = NULL 
					  SELECT @Moneda = a.MonedaPrecio, @Precio = a.PrecioLista, @Impuesto1 = a.Impuesto1, @Impuesto2 =  a.Impuesto2, @Impuesto3 = a.Impuesto3, @Concepto = a.Concepto, @Unidad = a.Unidad 
						FROM Art a WHERE a.Articulo = @Articulo	
					  SELECT @TipoCambio = m.TipoCambio FROM Mon m WHERE m.Moneda = @Moneda
			          
					  INSERT INTO Venta ( Empresa,  Mov,       FechaEmision, UltimoCambio, Concepto,   Proyecto, Moneda,   TipoCambio,  Usuario, Referencia,       Estatus,      Cliente, Almacen,   FechaRequerida, Condicion, CDISocio  ) 
						   VALUES       ( @Empresa, @MovNuevo, @FechaInicio, getdate(),    @Concepto,  'Socios', @Moneda,  @TipoCambio, @Usuario, @Mov+' '+@MovID, 'SINAFECTAR', @Cliente, @Almacen, getdate(),      'Contado', @CDISocio )
					  SELECT @NuevoID = @@IDENTITY 
			        
					  INSERT INTO VentaD ( ID,       Renglon, RenglonSub, RenglonID, RenglonTipo, Cantidad, Unidad,  Almacen,  Articulo,  Precio, PrecioSugerido, Impuesto1,  Impuesto2,  Impuesto3,  FechaRequerida, Sucursal,  SucursalOrigen, PrecioMoneda, PrecioTipoCambio, CDIClavePresupuestal )
						   VALUES       ( @NuevoID,  2048,    0,          1,         'N',         @Cantidad, @Unidad,   @Almacen, @Articulo, @Precio, @Precio,       @Impuesto1, @Impuesto2, @Impuesto3, getdate(),      @Sucursal, @Sucursal,      @Moneda,      @TipoCambio,      NULL                 )
			        	
					  FETCH NEXT FROM crDatos INTO @ID, @Articulo, @Cantidad
					END
              
        END
        	
          
        
      END
    CLOSE crDatos
    DEALLOCATE crDatos       	   	
 END
	
  RETURN  
END  
GO

/**************** spSocioAfectar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spSocioAfectar') and type = 'P') drop procedure dbo.spSocioAfectar
GO             
CREATE PROCEDURE spSocioAfectar
    		   @ID                	int,
		       @Accion			    char(20),
    		   @Empresa	      		char(5),
    		   @Modulo	      		char(5),
    		   @Mov	  	      		char(20),
    		   @MovID             	varchar(20)    OUTPUT,
    		   @MovTipo     		char(20),
    		   @FechaEmision      	datetime,
    		   @FechaAfectacion     datetime,
    		   @FechaConclusion		datetime,
    	 	   @Proyecto	      	varchar(50),
    		   @Usuario	      		char(10),
    		   @Autorizacion      	char(10),
    		   @DocFuente	      	int,
    		   @Localidad			varchar(50),
    		   @Observaciones     	varchar(255),
    		   @Concepto     		varchar(50),
    		   @Estatus           	char(15),
 	    	   @EstatusNuevo	    char(15),
    		   @FechaRegistro     	datetime,
    		   @Ejercicio	      	int,
    		   @Periodo	      		int,
		       @MovFechaD			datetime,
		       @MovFechaA			datetime,
    		   @OrigenTipo			char(10),
    		   @Origen			    char(20),
    		   @OrigenID			varchar(20),
    		   @OrigenMovTipo		char(20),
		       @Conexion			bit,
		       @SincroFinal			bit,
		       @Sucursal			int, 
		       @SucursalDestino		int, 
		       @SucursalOrigen		int, 
    		   @GenerarMov			char(20)     OUTPUT,
    		   @IDGenerar			int	         OUTPUT,	
    		   @GenerarMovID	  	varchar(20)  OUTPUT,
       		   @Ok                	int          OUTPUT,
    		   @OkRef             	varchar(255) OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE
    @FechaD			    datetime,
    @FechaA			    datetime,
    @OrigenEstatus		char(15),
    @Generar			bit,
    @GenerarAfectado	bit,
    @GenerarModulo		char(5),
    @GenerarMovTipo		char(20),
    @GenerarEstatus		char(15),
    @GenerarPeriodo 	int, 
    @GenerarEjercicio 	int,
    @FechaCancelacion	datetime,
    @GenerarAccion		char(20),
    @Cantidad			float,
    @ProyectoD			varchar(50),
    @Actividad			varchar(50),
    @MovimientoRef		varchar(50),
    @ActividadEstado	varchar(20),
    @ActividadAvance	float,
    @ProyectoID         int,
    @RefID			    int,
    @RefModulo			varchar(5),
    @NuevoID            int,
    @Consecutivo        int,
    @Cliente            varchar(10),
    @ClienteD           varchar(10),
    @ClienteBaja        varchar(10),
    @Renglon            int,
    @SufijosSocios      varchar(2),
    @EstatusCte         varchar(15),
    @NIPCDI             varchar(30),
    @IDOrigen           int,
    @SubClave           char(20),
    @Categoria          varchar(50),
    @BajaTotal          bit,
    @Membresia          int,
    @BloqueoDemandante  varchar(2),
    @BloqueoDemandado   varchar(2),
    @DemandanteTipo     varchar(20),
    @DemandadoTipo      varchar(20),
    @ClaveDemandante    varchar(10),
    @ClaveDemandado     varchar(10),
    @CDISubsidio        money,
    @TipoCondicion      varchar(30), 
    @Bloqueado          varchar(2), 
    @Causa              varchar(50),
    @SocioNueva         VARCHAR(100), 
    @MembresiaN         INT
    
    
    
--SELECT c.ClaveDemandante FROM CDISocio c
-- Inicializar Variables
  SELECT @Generar 		= 0,
         @GenerarAfectado	= 0,
         @IDGenerar		= NULL,
         @GenerarModulo		= NULL,
         @GenerarMovID	        = NULL,
         @GenerarMovTipo        = NULL,
         @GenerarEstatus 	= 'SINAFECTAR'
         
  SELECT @SubClave = isnull(mt.SubClave, '') FROM MovTipo mt WHERE mt.Mov = @Mov     

 IF @OK IS NOT NULL RETURN 
  IF @Accion IN ('AFECTAR', 'AUTORIZAR') AND @MovTipo = 'SOC.SOL' AND @Estatus IN ('SINAFECTAR','PENDIENTE')
  BEGIN
    IF @Estatus = 'SINAFECTAR'
    BEGIN
      EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
      SELECT @EstatusNuevo = 'PENDIENTE'    	
    END
    ELSE
    IF @Estatus = 'PENDIENTE'
    BEGIN 
        SELECT @EstatusNuevo = 'PENDIENTE'    	    	
        EXEC spCDIGenerarMovimiento  @ID, @Mov, @MovID, 'Verificación', @Usuario, @Sucursal, @Ejercicio, 'SOC', @IDGenerar output 
        SELECT @Ok = 80030, @GenerarMov = 'Verificación' 
        
        EXEC spCDISugerirCategoria @ID, @Categoria output , NULL           
        UPDATE CDISocio SET Categoria = @Categoria WHERE ID = @IDGenerar                       
    END    	
    SELECT @Ejercicio = YEAR(@FechaEmision), @Periodo = MONTH(@FechaEmision)
    UPDATE CDISocio 
       SET Estatus       = @EstatusNuevo, 
           MovID         = @MovID, 
           Ejercicio     = @Ejercicio, 
           Periodo       = @Periodo, 
           FechaRegistro = @FechaRegistro, 
           FechaEmision  = @FechaEmision, 
           Concepto      = @Concepto,
           Usuario       = @Usuario,
           Observaciones = @Observaciones,
           Sucursal      = 0
       WHERE Empresa = @Empresa AND ID = @ID    
  END
  ELSE 
  IF @Accion IN ('AFECTAR', 'AUTORIZAR', 'GENERAR') AND @MovTipo = 'SOC.VERIFICA' AND @Estatus IN ('SINAFECTAR','PENDIENTE')
  BEGIN
      IF @Estatus = 'SINAFECTAR'
    BEGIN
      EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
      SELECT @EstatusNuevo = 'PENDIENTE'
      SELECT @IDOrigen = c.ID FROM CDISocio c WHERE c.Mov = @Origen AND c.MovID = @OrigenID
      UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
      EXEC spMovFlujo @Sucursal, 'AFECTAR', @Empresa, 'SOC', @IDOrigen, @Origen, @OrigenID, 'SOC', @ID, @Mov, @MovID, @Ok OUTPUT
    END
    ELSE
    IF @Estatus = 'PENDIENTE' AND @Accion = 'GENERAR'
    BEGIN 
      EXEC spCDIGenerarMovimiento  @ID, @Mov, @MovID, @GenerarMov, @Usuario, @Sucursal, @Ejercicio, 'SOC', @IDGenerar output  
      SELECT @EstatusNuevo = 'PENDIENTE'
      SELECT @Ok = 80030
    END  	    
    SELECT @Ejercicio = YEAR(@FechaEmision), @Periodo = MONTH(@FechaEmision)
    UPDATE CDISocio 
       SET Estatus       = @EstatusNuevo, 
           MovID         = @MovID, 
           Ejercicio     = @Ejercicio, 
           Periodo       = @Periodo, 
           FechaRegistro = @FechaRegistro, 
           FechaEmision  = @FechaEmision, 
           Concepto      = @Concepto,
           Usuario       = @Usuario,
           Observaciones = @Observaciones,
           Sucursal      = @Sucursal
     WHERE Empresa = @Empresa AND ID = @ID
    
  END 
  ELSE 
  	IF @Accion = 'AFECTAR'  AND @MovTipo IN ('SOC.ACEPTA', 'SOC.TEMPORAL')
  	BEGIN 
  	
  	IF @Estatus ='SINAFECTAR'
  	BEGIN
  	EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
    IF @SubClave = '' AND @MovTipo IN ('SOC.ACEPTA', 'SOC.TEMPORAL' )
    BEGIN
      	
      SELECT @Cliente = c.Cliente, @FechaA = c.FechaVigencia FROM CDISocio c WHERE c.ID = @ID	
  	  SELECT @EstatusCte = c.Estatus, @NIPCDI = c.NIPCDI FROM Cte c WHERE c.Cliente = @Cliente                      	  
      SELECT @Consecutivo = c.Consecutivo + 1 FROM Consecutivo c WHERE c.Tipo = 'Membresía'  
      UPDATE Consecutivo SET Consecutivo = @Consecutivo WHERE Tipo = 'Membresía'
      
      UPDATE CDISocio    SET Membresia = @Consecutivo, Socio = CONVERT(varchar(100), @Consecutivo)+ '00',  Estatus = 'PENDIENTE', NIPCDI = @NIPCDI, CDISocio.MovID = @MovID WHERE ID = @ID
  	  UPDATE CDISocioD   SET Membresia = @Consecutivo WHERE ID = @ID	
  	  
   	  UPDATE Cte SET Membresia = @Consecutivo, Socio = CONVERT(varchar(100), @Consecutivo)+ '00', Estatus = 'ALTA', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cliente = @Cliente
    	  
  	  UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
    END 
    ELSE
    IF @SubClave IN ('SOC.REN', 'SOC.REINGRESO')
    BEGIN
      SELECT @Cliente = c.Cliente, @FechaA = c.FechaVigencia, @Categoria = c.Categoria FROM CDISocio c WHERE c.ID = @ID	
  	  SELECT @EstatusCte = c.Estatus, @NIPCDI = c.NIPCDI, @Consecutivo = c.Membresia   FROM Cte c WHERE c.Cliente = @Cliente
      UPDATE CDISocio    SET Membresia = @Consecutivo, Socio = CONVERT(varchar(100), @Consecutivo)+ '00', Estatus = 'PENDIENTE', NIPCDI = @NIPCDI, CDISocio.MovID = @MovID WHERE ID = @ID
  	  UPDATE CDISocioD   SET Membresia = @Consecutivo WHERE ID = @ID	

   	  UPDATE Cte SET Cte.Categoria = @Categoria WHERE Cliente = @Cliente
    	  
  	  IF @SubClave = 'SOC.REN'
  	    UPDATE CDISocio SET Estatus = 'VENCIDO' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
  	  ELSE 
  	  	UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
    END
        
      SELECT @IDOrigen = c.ID FROM CDISocio c WHERE c.Mov = @Origen AND c.MovID = @OrigenID
      EXEC spMovFlujo @Sucursal, 'AFECTAR', @Empresa, 'SOC', @IDOrigen, @Origen, @OrigenID, 'SOC', @ID, @Mov, @MovID, @Ok OUTPUT

  	  IF @MovTipo = 'SOC.TEMPORAL'
  	    UPDATE Cte SET Fecha1 = @FechaA WHERE Cliente = @Cliente
  	   
	  DECLARE crDatos CURSOR LOCAL FOR			
	   SELECT ID, Cliente, Renglon
	     FROM CDISocioD cd
		WHERE cd.ID = @ID
		  OPEN crDatos
      FETCH NEXT FROM crDatos INTO @ID, @Cliente, @Renglon
      WHILE @@FETCH_STATUS <> -1 
      BEGIN
        IF @@FETCH_STATUS <> -2 
        BEGIN
          SELECT @NIPCDI = NULL 
          SELECT @SufijosSocios = p.SufijosSocios FROM Parentesco p WHERE p.Parentesco = (SELECT Parentesco FROM Cte WHERE Cliente = @Cliente)
          UPDATE Cte SET Membresia = @Consecutivo, 
                 Socio = CONVERT(varchar(100), @Consecutivo)+ @SufijosSocios, 
                 Estatus = 'ALTA',
                 Categoria = @Categoria                  
           WHERE Cliente = @Cliente  

   	      IF @MovTipo = 'SOC.TEMPORAL'
  	        UPDATE Cte SET Fecha1 = @FechaA WHERE Cliente = @Cliente
           
          SELECT @EstatusCte = c.Estatus, @NIPCDI = c.NIPCDI FROM Cte c WHERE c.Cliente = @Cliente                    
          UPDATE CDISocioD SET Socio = CONVERT(varchar(100), @Consecutivo)+@SufijosSocios, Estatus = @EstatusCte, NIPCDI = @NIPCDI WHERE ID = @ID AND Renglon = @Renglon AND Cliente = @Cliente           
          FETCH NEXT FROM crDatos INTO @ID, @Cliente, @Renglon
        END
      END
    CLOSE crDatos
    DEALLOCATE crDatos  
    -- Hace el cambio de categoria en el catalogo de Socios
    SELECT @Categoria = c.Categoria FROM CDISocio c WHERE c.ID = @ID
    UPDATE Cte SET Categoria = @Categoria WHERE Membresia = @Consecutivo    
    
  	END   
  	ELSE
    IF @Estatus = 'PENDIENTE'
    BEGIN
      SELECT @GenerarMov = ecm.VentaPedido FROM EmpresaCfgMov ecm WHERE ecm.Empresa = @Empresa
      EXEC spCDIGenerarMovimiento  @ID, @Mov, @MovID, @GenerarMov, @Usuario, @Sucursal, @Ejercicio, 'VTAS', @IDGenerar output 
      SELECT @IDOrigen = c.ID FROM CDISocio c WHERE c.Mov = @Origen AND c.MovID = @OrigenID
      EXEC spMovFlujo @Sucursal, 'AFECTAR', @Empresa, 'SOC', @IDOrigen, @Origen, @OrigenID, 'SOC', @ID, @Mov, @MovID, @Ok OUTPUT       
      UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID = @ID  
      
      SELECT @Cliente = c.Cliente, @Categoria = c.Categoria, @TipoCondicion = c.FormaPago FROM CDISocio c  WHERE c.ID = @ID
      EXEC spSocioGeneraFacturaVTAS @ID, @Cliente, @Usuario, @Empresa, @Categoria, @TipoCondicion       
    END  
  	END
  	ELSE
    IF @Accion = 'GENERAR'  AND @MovTipo = 'SOC.TEMPORAL'
  	BEGIN
  	  EXEC spCDIGenerarMovimiento  @ID, @Mov, @MovID, @GenerarMov, @Usuario, @Sucursal, @Ejercicio, 'SOC', @IDGenerar output   	  
  	END  		
  	IF @Accion IN ('AFECTAR', 'GENERAR')  AND @MovTipo IN ('SOC.RECHAZO', 'SOC.SUSPENDER')
  	BEGIN
    IF @Estatus = 'SINAFECTAR'
    BEGIN
      IF @MovTipo = 'SOC.RECHAZO'
        SELECT @EstatusCte = 'RECHAZADO'
      ELSE 
      IF @MovTipo = 'SOC.SUSPENDER' 
        SELECT @EstatusCte = 'PENDIENTE'      	
        
  	  EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
  	  
  	  SELECT @Cliente = c.Cliente FROM CDISocio c WHERE c.ID = @ID	  	  
  	  UPDATE Cte SET Estatus = @EstatusCte, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cliente = @Cliente  	  
  	  UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
      UPDATE CDISocio SET Estatus = 'CONCLUIDO', CDISocio.MovID = @MovID WHERE CDISocio.ID = @ID
      
      SELECT @IDOrigen = c.ID FROM CDISocio c WHERE c.Mov = @Origen AND c.MovID = @OrigenID
      EXEC spMovFlujo @Sucursal, 'AFECTAR', @Empresa, 'SOC', @IDOrigen, @Origen, @OrigenID, 'SOC', @ID, @Mov, @MovID, @Ok OUTPUT
     
	  DECLARE crDatos CURSOR LOCAL FOR			
	   SELECT ID, Cliente, Renglon
	     FROM CDISocioD cd
		WHERE cd.ID = @ID
		  OPEN crDatos
      FETCH NEXT FROM crDatos INTO @ID, @Cliente, @Renglon
      WHILE @@FETCH_STATUS <> -1 
      BEGIN
        IF @@FETCH_STATUS <> -2 
        BEGIN
          UPDATE Cte SET Estatus = @EstatusCte, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cliente = @Cliente  
          UPDATE CDISocioD SET Estatus = @EstatusCte WHERE ID = @ID AND Renglon = @Renglon AND Cliente = @Cliente           
          FETCH NEXT FROM crDatos INTO @ID, @Cliente, @Renglon
        END
      END
    CLOSE crDatos
    DEALLOCATE crDatos       	  
    END
  	END
  	IF @Accion IN ('AFECTAR', 'GENERAR')  AND @MovTipo IN ('SOC.SOLBAJA')
    BEGIN
    	IF @Estatus = 'SINAFECTAR'
    	BEGIN
          SELECT @EstatusNuevo = 'PENDIENTE'          
          EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
     	  UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = @EstatusNuevo WHERE ID = @ID
    	END
    	ELSE 
        IF @Estatus = 'PENDIENTE' AND @Accion = 'GENERAR'
    	  BEGIN
    	  	EXEC spCDIGenerarMovimiento  @ID, @Mov, @MovID, @GenerarMov, @Usuario, @Sucursal, @Ejercicio, 'SOC', @IDGenerar output 
    	  	SELECT @Ok = 80030    		
    	  END
    	
    END
    ELSE
    IF @Accion = 'AFECTAR' AND @MovTipo = 'SOC.BAJA'
    BEGIN
      IF @SubClave = 'SOC.BLOQUEO'
        SELECT @Bloqueado = 'Si' ,@EstatusCte = 'ALTA' 
      ELSE 
      IF @SubClave = 'SOC.DESBLOQUEO'
        SELECT @Bloqueado = 'No' ,@EstatusCte = 'ALTA'      
      ELSE
      	SELECT @EstatusCte = 'BAJA', @Bloqueado = 'Si'
      	
      IF @Estatus = 'SINAFECTAR'
      BEGIN    	        
        EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
        UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'PENDIENTE' WHERE ID = @ID
        UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE Mov = @Origen AND MovID = @OrigenID
        EXEC spMovFlujo @Sucursal, 'AFECTAR', @Empresa, 'SOC', @IDOrigen, @Origen, @OrigenID, 'SOC', @ID, @Mov, @MovID, @Ok OUTPUT
      END
      ELSE
      BEGIN        	
        IF @Estatus = 'PENDIENTE' AND @Accion = 'AFECTAR' 
        BEGIN
          IF ISNULL(@SubClave, '') = ''
      	  BEGIN
      	  	SELECT @BajaTotal = c.BajaTotal, @Membresia = c.Membresia, @ClienteBaja = isnull(c.ClienteAnt, ''), @Cliente = isnull(c.Cliente, ''), 
      	  	       @Causa = c.Causa 
    	    	FROM CDISocio c 
    	    	WHERE c.ID = @ID

    	  	  IF @BajaTotal = 1
      	  	BEGIN
      	  		UPDATE Cte SET Descripcion13 = 'Si', Estatus = @EstatusCte, Fecha2 = @FechaEmision, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103), Descripcion15 = @Causa WHERE Cte.Membresia = @Membresia
      	  		UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID =@ID    	  		
    	    	END
    	    	ELSE 
      	  	IF @ClienteBaja = ''
      	  	BEGIN
      	  	  IF @Causa = 'Renovacion Credencial'
    	    	    UPDATE Cte SET Descripcion13 = 'Si', Fecha2 = @FechaEmision, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente IN (SELECT c.Cliente FROM CDISocioD c WHERE c.ID = @ID)
    	    	  ELSE--DSG
      	    	  UPDATE Cte SET Estatus = @EstatusCte, Fecha2 = @FechaEmision, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103), Descripcion15 = @Causa, Descripcion13 = @Bloqueado 
      	    	   WHERE Cte.Cliente IN (SELECT c.Cliente FROM CDISocioD c WHERE c.ID = @ID)

              UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID = @ID    	  		
      	  	END
      	  	ELSE 
      	  	IF @ClienteBaja <> ''
      	  	BEGIN
      	  		UPDATE Cte SET Descripcion13 = 'Si', Estatus = @EstatusCte,Fecha2 = @FechaEmision , Titular = 0, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClienteBaja
    	    		UPDATE Cte SET /*Socio = CONVERT(varchar(100), @Membresia) + '00', */ Titular = 1 WHERE Cliente = @Cliente
    	    		UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID =@ID    	  		
    	  	  END
    	    END ELSE

          IF ISNULL(@SubClave, '') = 'SOC.BAJADEF'
      	  BEGIN
      	  	SELECT @Membresia = c.Membresia, @ClienteBaja = isnull(c.ClienteAnt, ''), @Cliente = isnull(c.Cliente, ''), 
      	  	       @Observaciones = c.Causa 
    	    	FROM CDISocio c WHERE c.ID = @ID

    	    	IF @Cliente <> ''
    	  	  BEGIN
      	  		UPDATE Cte SET Descripcion15 = @Observaciones, Fecha2 = @FechaEmision, Estatus = 'BAJA', Descripcion13='Si'
      	  		WHERE Cte.Cliente IN (SELECT c.Cliente FROM CDISocioD c WHERE c.ID = @ID)

              INSERT INTO CDIBajasDefuncion(Socio)
              SELECT c.Cliente FROM CDISocioD c WHERE c.ID = @ID
                    	  		
    	    		UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID = @ID
    	    	END  
      	  END ELSE

          IF ISNULL(@SubClave, '') <> '' AND   ISNULL(@SubClave, '') <> 'SOC.ALTA'
      	  BEGIN
      	  	SELECT @BajaTotal = c.BajaTotal, @Membresia = c.Membresia, @ClienteBaja = isnull(c.ClienteAnt, ''), @Cliente = isnull(c.Cliente, ''), 
      	  	       @Observaciones = c.Causa 
    	    	FROM CDISocio c WHERE c.ID = @ID

    	    	IF @BajaTotal = 1 AND @Cliente <> ''
    	  	  BEGIN
    	  		  UPDATE Cte SET Descripcion15 = @Observaciones, Fecha2 = @FechaEmision, Descripcion13 = @Bloqueado, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103), Estatus = @EstatusCte
      	  		WHERE Cte.Membresia = @Membresia
      	  		UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID =@ID    	  		
      	  	END
    	    	ELSE 
    	    	IF @Cliente <> ''
    	  	  BEGIN
  --    	  		UPDATE Cte SET Estatus = @EstatusCte, Descripcion15 = @Observaciones, Fecha2 = @FechaEmision WHERE Cte.Cliente = @Cliente
      	  		UPDATE Cte SET Descripcion15 = @Observaciones, Fecha2 = @FechaEmision, Descripcion13 = @Bloqueado, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103), Estatus = @EstatusCte
      	  		WHERE Cte.Cliente IN (SELECT c.Cliente FROM CDISocioD c WHERE c.ID = @ID)
    	    		UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID =@ID    	  		
    	    	END  
      	  END
      	  ELSE
---------------
          IF ISNULL(@SubClave, '') = 'SOC.ALTA'
      	  BEGIN
      	  	SELECT @BajaTotal = c.BajaTotal, @Membresia = c.Membresia, @ClienteBaja = isnull(c.ClienteAnt, ''), @Cliente = isnull(c.Cliente, ''), 
      	  	       @Observaciones = c.Causa 
    	    	FROM CDISocio c WHERE c.ID = @ID

    	    	IF @BajaTotal = 1 AND @Cliente <> ''
    	  	  BEGIN
    	  		  UPDATE Cte SET Descripcion15 = @Observaciones, Descripcion13 = 'No', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103), Estatus = 'ALTA'
      	  		WHERE Cte.Membresia = @Membresia
      	  		UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID =@ID    	  		
      	  	END
    	    	ELSE 
    	    	IF @Cliente <> ''
    	  	  BEGIN
  --    	  		UPDATE Cte SET Estatus = @EstatusCte, Descripcion15 = @Observaciones, Fecha2 = @FechaEmision WHERE Cte.Cliente = @Cliente
      	  		UPDATE Cte SET Descripcion15 = @Observaciones, Descripcion13 = 'No', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103), Estatus = 'ALTA'
      	  		WHERE Cte.Cliente IN (SELECT c.Cliente FROM CDISocioD c WHERE c.ID = @ID)
    	    		UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID =@ID    	  		
    	    	END  
      	  END
---------------      	  
      	END
      END 
    END
    IF @Accion IN ('AFECTAR', 'GENERAR') AND @MovTipo IN ('SOC.HONOR','SOC.SANCION','SOC.DICTAMEN')
    BEGIN
      IF @Estatus = 'SINAFECTAR'
      BEGIN
        EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
        SELECT @IDOrigen = c.ID FROM CDISocio c WHERE c.Mov = @Origen AND c.MovID = @OrigenID
        UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'PENDIENTE' WHERE ID = @ID
        UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE Mov = @Origen AND MovID = @OrigenID
        EXEC spMovFlujo @Sucursal, 'AFECTAR', @Empresa, 'SOC', @IDOrigen, @Origen, @OrigenID, 'SOC', @ID, @Mov, @MovID, @Ok OUTPUT  
        
        SELECT @BloqueoDemandante = c.BloquearDemandante, @BloqueoDemandado = c.BloquearDemandado, 
      	       @ClaveDemandante   = c.ClaveDemandante,    @ClaveDemandado   = c.ClaveDemandado,
      	       @DemandanteTipo    = c.DemandanteTipo,     @DemandadoTipo    = c.DemandadoTipo
      	  FROM CDISocio c 
      	 WHERE c.ID = @ID
      	 
        IF @SubClave = 'SOC.CITACON'
        BEGIN 
          SELECT @Bloqueado = 'Si' --@EstatusCte = 'BLOQUEADO'
      	  IF @DemandanteTipo = 'Socio' 
      	    UPDATE Cte SET Descripcion13 = @Bloqueado /*Estatus = @EstatusCte*/, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandante
      	  IF @DemandadoTipo = 'Socio'  
      	    UPDATE Cte SET Descripcion13 = @Bloqueado /*Estatus = @EstatusCte*/, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandado
        END 
        ELSE 
        IF @SubClave = 'SOC.CITASIN'
        BEGIN 
          SELECT @EstatusCte = 'ALTA'
      	  IF @DemandanteTipo = 'Socio' 
      	    UPDATE Cte SET Estatus = @EstatusCte, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandante
      	  IF @DemandadoTipo = 'Socio'  
      	    UPDATE Cte SET Estatus = @EstatusCte, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandado
        END
      	 	        
      END
      ELSE 
      IF @Estatus = 'PENDIENTE' AND (@MovTipo IN ('SOC.SANCION','SOC.DICTAMEN') OR @SubClave IN ('SOC.CITACON', 'SOC.CITASIN')) AND @Accion = 'AFECTAR'
      BEGIN      	
      	IF @MovTipo IN ('SOC.SANCION','SOC.DICTAMEN')
      	  UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID = @ID

        SELECT @BloqueoDemandante = c.BloquearDemandante, @BloqueoDemandado = c.BloquearDemandado, 
      	       @ClaveDemandante   = c.ClaveDemandante,    @ClaveDemandado   = c.ClaveDemandado,
      	       @DemandanteTipo    = c.DemandanteTipo,     @DemandadoTipo    = c.DemandadoTipo
      	  FROM CDISocio c 
      	 WHERE c.ID = @ID	
      	
      	IF @MovTipo = 'SOC.DICTAMEN'
      	BEGIN 
      	  SELECT @Bloqueado = 'Si' --@EstatusCte = 'BLOQUEADO'
      	  IF @DemandanteTipo = 'Socio' AND @BloqueoDemandante = 'Si'
      	    UPDATE Cte SET Descripcion13 = @Bloqueado /*Estatus = @EstatusCte*/, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandante
      	  IF @DemandadoTipo = 'Socio'  AND @BloqueoDemandado  = 'Si'
      	    UPDATE Cte SET Descripcion13 = @Bloqueado /*Estatus = @EstatusCte*/, Descripcion11 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandado      	  
      	END 
      	ELSE 
        IF @MovTipo = 'SOC.SANCION'
        BEGIN 
          SELECT @EstatusCte = 'ALTA'
      	  IF @DemandanteTipo = 'Socio' 
      	    UPDATE Cte SET Estatus = @EstatusCte, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandante
      	  IF @DemandadoTipo = 'Socio'  
      	    UPDATE Cte SET Estatus = @EstatusCte, Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Cte.Cliente = @ClaveDemandado                    
        END 
      END        
      ELSE 
      IF @Estatus = 'PENDIENTE' AND @Accion = 'GENERAR' 
      BEGIN
      	EXEC spCDIGenerarMovimiento  @ID, @Mov, @MovID, @GenerarMov, @Usuario, @Sucursal, @Ejercicio, 'SOC', @IDGenerar output 
      	SELECT @Ok = 80030      	
      END    	
    END
    IF @MovTipo IN ('SOC.EQUIPO', 'SOC.DAM', 'SOC.MEDICA')
    BEGIN    	
      IF @Estatus = 'SINAFECTAR'
      BEGIN
        EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT        
        IF @MovTipo IN ('SOC.EQUIPO', 'SOC.DAM')
          UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'CONCLUIDO' WHERE ID = @ID
        ELSE
          UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'PENDIENTE' WHERE ID = @ID	         	
      END
      ELSE 
      IF @Estatus = 'PENDIENTE'     	
        UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'CONCLUIDO' WHERE ID = @ID  
    END
    IF @MovTipo = 'SOC.INV'   
    BEGIN
    	IF @Estatus = 'SINAFECTAR'
    	BEGIN
    		
    	DECLARE 
    			@SocioInvitado VARCHAR (100) -- se agrego varible para que rellene con ceros a los socios invitados ya que siemre deben ser 7 caracteres
    			
    	SELECT @Membresia = REPLICATE ('0', 7 - DATALENGTH( c.Membresia)) + c.Membresia FROM CDISocio c  WHERE c.ID = @ID
    	SELECT @SufijosSocios = p.SufijosSocios FROM Parentesco p WHERE p.Parentesco = 'Invitado'
    	SELECT @SocioInvitado=CONVERT(varchar(100), @Membresia)+@SufijosSocios   
    	UPDATE Cte SET Estatus = 'ALTA', 
    			Socio =  REPLICATE ( '0', 7 - DATALENGTH(@SocioInvitado))+ @SocioInvitado, 
    			Descripcion12 = CONVERT(varchar(15), GETDATE(), 103)
     			WHERE Cliente IN (SELECT cd.Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
    	  EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT 
    	UPDATE CDISocio  SET CDISocio.MovID = @MovID, Estatus = 'PENDIENTE' WHERE ID = @ID	
    	UPDATE CDISocioD SET Socio =  REPLICATE ( '0', 7 - DATALENGTH(@SocioInvitado))+ @SocioInvitado , Estatus = 'ALTA' WHERE ID = @ID
    	     	  
    	  --SELECT @Membresia = c.Membresia FROM CDISocio c  WHERE c.ID = @ID
    	  --SELECT @SufijosSocios = p.SufijosSocios FROM Parentesco p WHERE p.Parentesco = 'Invitado'
    	  --UPDATE Cte SET Estatus = 'ALTA', 
    	  --       Socio = CONVERT(varchar(100), @Membresia)+@SufijosSocios 
     	 --  WHERE Cliente IN (SELECT cd.Cliente FROM CDISocioD cd WHERE cd.ID = @ID)
    	  --EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT 
    	  --UPDATE CDISocio  SET CDISocio.MovID = @MovID, Estatus = 'PENDIENTE' WHERE ID = @ID	
    	  --UPDATE CDISocioD SET Socio = CONVERT(varchar(100), @Membresia)+@SufijosSocios, Estatus = 'ALTA' WHERE ID = @ID	    	   
    	END 
    	ELSE 
    	IF @Estatus = 'PENDIENTE'
    	BEGIN
    	  UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID = @ID	 	
    	END    	
    END
    IF @MovTipo = 'SOC.ALTACOND'   
    BEGIN
    	IF @Estatus = 'SINAFECTAR'
    	BEGIN
    	  SELECT @Membresia = c.Membresia FROM CDISocio c  WHERE c.ID = @ID
    	  UPDATE Cte SET Estatus = 'ALTA', Descripcion12 = CONVERT(varchar(15), GETDATE(), 103) WHERE Membresia = @Membresia
    	  EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT 
    	  UPDATE CDISocio  SET CDISocio.MovID = @MovID, Estatus = 'PENDIENTE' WHERE ID = @ID	    	  
    	END 
    	ELSE 
    	IF @Estatus = 'PENDIENTE'
    	BEGIN
    	  UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE ID = @ID	 	
    	END    	
    END
    IF @MovTipo = 'SOC.SOLSUBSID'   
    BEGIN
    	IF @Estatus = 'SINAFECTAR'
    	BEGIN
          SELECT @EstatusNuevo = 'PENDIENTE'          
          EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
     	  UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = @EstatusNuevo WHERE ID = @ID
    	END
    	ELSE 
        IF @Estatus = 'PENDIENTE' AND @Accion = 'GENERAR'
    	  BEGIN
    	  	EXEC spCDIGenerarMovimiento  @ID, @Mov, @MovID, @GenerarMov, @Usuario, @Sucursal, @Ejercicio, 'SOC', @IDGenerar output 
    	  	SELECT @Ok = 80030    		
    	  END
    END    
    IF @MovTipo = 'SOC.SUBSID'   
    BEGIN
    	IF @Accion = 'GENERAR'
    	BEGIN
    	 EXEC spCDIGenerarMovimiento  @ID, @Mov, @MovID, @GenerarMov, @Usuario, @Sucursal, @Ejercicio, 'SOC', @IDGenerar output 
    	 SELECT @Ok = 80030    		    		
     	END 
    	ELSE 
    	IF @Accion = 'AFECTAR' AND @Estatus = 'SINAFECTAR'
    	BEGIN    	  
          SELECT @EstatusNuevo = 'PENDIENTE'          
          EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
     	  UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = @EstatusNuevo WHERE ID = @ID
     	  UPDATE CDISocio SET Estatus = 'CONCLUIDO' WHERE CDISocio.Mov = @Origen AND CDISocio.MovID = @OrigenID
    	END
    	IF @Accion = 'AFECTAR' AND @Estatus = 'PENDIENTE'
    	BEGIN
    	 IF @SubClave = 'SOC.RECHAZASUB'	
    	 BEGIN
    	 	UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'CONCLUIDO' WHERE ID = @ID
    	 END
    	 IF @SubClave = 'SOC.RECHAZASUB'	
    	 BEGIN
    	 	UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'CONCLUIDO' WHERE ID = @ID
    	 END
    	 ELSE 
    	 IF @SubClave = 'SOC.ACEPTASUB'	
    	 BEGIN
    	 	SELECT @CDISubsidio = c.ImporteSubsidio, @Cliente =c.Cliente FROM CDISocio c WHERE c.ID = @ID    	 	
    	 	UPDATE Cte SET CDISubsidio = @CDISubsidio WHERE Cliente = @Cliente
    	 	UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'CONCLUIDO' WHERE ID = @ID
    	 END    	 	
    	END
    END
    IF @Accion = 'AFECTAR' AND @MovTipo = 'SOC.EST' AND @Estatus IN ( 'SINAFECTAR', 'PENDIENTE')
    BEGIN
      IF @Estatus = 'SINAFECTAR'
      BEGIN
        IF @SubClave = 'SOC.CAT' 
        BEGIN
          --EXEC spCDISugerirCategoria @ID, @Categoria output , NULL           
    	    EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
    	    UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'PENDIENTE'/*, Categoria = @Categoria*/ WHERE ID = @ID    	    	
        END
        ELSE
        BEGIN
    	    EXEC spCDIConsecutivoAfectar @Modulo, @Empresa, @Sucursal, @Mov, @MovID, @Ok OUTPUT
    	    UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'CONCLUIDO' WHERE ID = @ID    	    	
    	  END
      END
      ELSE
      IF @Estatus = 'PENDIENTE'
      BEGIN
        IF @SubClave = 'SOC.CAT' 
        BEGIN 
          SELECT @Cliente = c.Cliente, @Categoria = Categoria, @TipoCondicion=c.FormaPago FROM CDISocio c WHERE c.ID = @ID	         
          UPDATE Cte SET Categoria = @Categoria WHERE Cliente = @Cliente
          SELECT @MembresiaN = Membresia FROM Cte WHERE Cliente = @Cliente
          EXEC spSocioGeneraCambioCat @ID, @Cliente, @Usuario, @Empresa, @Categoria, @TipoCondicion
          UPDATE Cte SET Categoria = @Categoria WHERE Cliente in (SELECT c.Cliente FROM CDISocioD c WHERE c.ID = @ID)
          UPDATE CDISocio SET CDISocio.MovID = @MovID, Estatus = 'CONCLUIDO' WHERE ID = @ID
          
          DECLARE CurSocVencimiento CURSOR FOR 	
           SELECT Cliente, SocioNueva
             FROM CDISocioD
            WHERE ID = @ID
            OPEN CurSocVencimiento
	        FETCH NEXT FROM CurSocVencimiento INTO @ClienteD, @SocioNueva
	        WHILE @@FETCH_STATUS <> -1 
	        BEGIN
            UPDATE Cte SET Socio = @SocioNueva, Membresia = @MembresiaN WHERE Cliente = @ClienteD
		        FETCH NEXT FROM CurSocVencimiento INTO @ClienteD, @SocioNueva
	        END 
	        CLOSE CurSocVencimiento
	        DEALLOCATE CurSocVencimiento              	    	
    	  END 
      END
    END
    
    IF NULLIF(@EstatusNuevo, '') IS NULL
      SELECT @EstatusNuevo = @Estatus
    -- Agregar a Estatus Log
    IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
      EXEC spMovFinal @Empresa, @Sucursal, @Modulo, @ID, @Estatus, @EstatusNuevo, @Usuario, @FechaEmision, @FechaRegistro, @Mov, @MovID, @MovTipo, @IDGenerar, @Ok OUTPUT, @OkRef OUTPUT


    
  RETURN
END
GO

/**************** spRevisaTipoSocio ****************/
if exists (select * from sysobjects where id = object_id('dbo.spRevisaTipoSocio') and type = 'P') drop procedure dbo.spRevisaTipoSocio
GO             
CREATE PROCEDURE spRevisaTipoSocio  
        @Tipo           varchar(20),  
        @Clave          varchar(10),
        @Ok             int          output,
        @OkRef          varchar(100) output 
AS 
BEGIN  
	DECLARE
		@Tipo2 varchar(20)
    
    SELECT @Tipo2 = c.Tipo FROM Cte c WHERE c.Cliente = @Clave	
    
    IF @Tipo <> @Tipo2
        SELECT @Ok = 1, @OkRef = 'El Tipo del socio no corresponde con el Tipo: '+ @Tipo
 
  RETURN  
END  
GO

/**************** spValidaPasesCausaBloqueo ****************/
if exists (select * from sysobjects where id = object_id('dbo.spValidaPasesCausaBloqueo') and type = 'P') drop procedure dbo.spValidaPasesCausaBloqueo
GO             
CREATE PROCEDURE spValidaPasesCausaBloqueo  
        @Empresa	    VARCHAR(5),
        @Mov			VARCHAR(20),
        @Cliente        VARCHAR(10),  
        @Causa		    VARCHAR(50),        
        @FechaEmision	DATETIME,
        @Ok             INT          output,
        @OkRef          VARCHAR(100) output 
AS 
BEGIN  
	DECLARE
    @TipoPeriodo	  VARCHAR(30),    
    @MaxDisponible	  INT,
    @MaxAnual	  	  INT,
    @Valida			  BIT,
    @TotalDisponible  INT,
    @TotalAnual	  	  INT,
    @EjercicioEmision INT,
    @MesActual		  INT,
    @FechaD			  DATETIME,
	@FechaA			  DATETIME,
	@CteTipo		  VARCHAR(20)		
	
    SELECT @MesActual = MONTH(@FechaEmision), @EjercicioEmision = YEAR(@FechaEmision)
    SELECT @CteTipo = Tipo FROM Cte WHERE Cliente = @Cliente
    IF @Causa = 'Admisión'	  
      SELECT @Valida = Admision, @TipoPeriodo = AdmisionTipoPeriodo, @MaxDisponible = AdmisionMaxDisponible, @MaxAnual = AdmisionMaxAnual 
        FROM CDISocAcessoCfgPases 
       WHERE Empresa = @Empresa and Tipo = @CteTipo
    ELSE
    IF @Causa = 'Cuota'
      SELECT @Valida = Cuota, @TipoPeriodo = CuotaTipoPeriodo, @MaxDisponible = CuotaMaxDisponible, @MaxAnual = CuotaMaxAnual 
        FROM CDISocAcessoCfgPases 
       WHERE Empresa = @Empresa and Tipo = @CteTipo
    ELSE      
    IF @Causa = 'Inscripción'
      SELECT @Valida = Inscripcion, @TipoPeriodo = InscripcionTipoPeriodo, @MaxDisponible = InscripcionMaxDisponible, @MaxAnual = InscripcionMaxAnual 
        FROM CDISocAcessoCfgPases 
       WHERE Empresa = @Empresa and Tipo = @CteTipo
    ELSE 
    IF @Causa = 'Otros Ingresos'
      SELECT @Valida = OtrosIngresos, @TipoPeriodo = OtrosIngresosTipoPeriodo, @MaxDisponible = OtrosIngresosMaxDisponible, @MaxAnual = OtrosIngresosMaxAnual 
        FROM CDISocAcessoCfgPases 
       WHERE Empresa = @Empresa and Tipo = @CteTipo
    ELSE 
    IF @Causa = 'Credencial'
      SELECT @Valida = Credencial, @TipoPeriodo = CredencialTipoPeriodo, @MaxDisponible = CredencialMaxDisponible, @MaxAnual = CredencialMaxAnual 
        FROM CDISocAcessoCfgPases 
       WHERE Empresa = @Empresa and Tipo = @CteTipo
    ELSE 
    IF @Causa = 'Casilleros'
      SELECT @Valida = Casilleros, @TipoPeriodo = CasillerosTipoPeriodo, @MaxDisponible = CasillerosMaxDisponible, @MaxAnual = CasillerosMaxAnual 
        FROM CDISocAcessoCfgPases 
       WHERE Empresa = @Empresa and Tipo = @CteTipo
    ELSE 
    IF @Causa = 'Tarjetas Bancarias'
      SELECT @Valida = CargosVarios, @TipoPeriodo = CargosVariosTipoPeriodo, @MaxDisponible = CargosVariosMaxDisponible, @MaxAnual = CargosVariosMaxAnual 
        FROM CDISocAcessoCfgPases 
       WHERE Empresa = @Empresa and Tipo = @CteTipo
 
	IF (SELECT COUNT(*) FROM CDISocio WHERE Mov = @Mov AND Estatus = 'CONCLUIDO' AND Cliente = @Cliente and FechaEmision = @FechaEmision) >=1
		SELECT @Ok = 1, @OkRef = 'No se permite 2 acceso por día'
	ELSE 
    IF @Valida = 0
     SELECT @Ok = 1, @OkRef = 'No se permite acceso por configuración'
    ELSE 
    BEGIN
        IF @TipoPeriodo = 'Mensual'
        BEGIN
          SELECT @TotalDisponible = COUNT(*) FROM CDISocio WHERE Mov = @Mov AND Estatus = 'CONCLUIDO' AND Cliente = @Cliente and MONTH(FechaEmision) = @MesActual and YEAR(FechaEmision) = @EjercicioEmision
          SELECT @TotalAnual      = COUNT(*) FROM CDISocio WHERE Mov = @Mov AND Estatus = 'CONCLUIDO' AND Cliente = @Cliente and YEAR(FechaEmision)  = @EjercicioEmision
          
		  IF @TotalDisponible >= @MaxDisponible
		    SELECT @Ok = 1, @OkRef = 'Excede  el máximo permitido mensual'
		  ELSE 		  
		  IF @TotalAnual >= @MaxAnual
		    SELECT @Ok = 1, @OkRef = 'Excede  el máximo permitido anual'		              
        END
        ELSE         
        IF @TipoPeriodo = 'Quincenal'
        BEGIN
        IF DAY(@FechaEmision) BETWEEN 1 and 15
          SELECT @FechaD = DATEADD(mm, DATEDIFF(mm,0,@FechaEmision), 0),
				 @FechaA = DATEADD(mm, DATEDIFF(mm,0,@FechaEmision), 0)+14
		ELSE
          SELECT @FechaD = DATEADD(mm,   DATEDIFF(mm,0,@FechaEmision), 0)+15,
				 @FechaA = DATEADD(ms,-3,DATEADD (mm, DATEDIFF(m,0,@FechaEmision)+1, 0))
		 		 
          SELECT @TotalDisponible = COUNT(*) FROM CDISocio WHERE Mov = @Mov AND Estatus = 'CONCLUIDO' AND Cliente = @Cliente and FechaEmision BETWEEN @FechaD and @FechaA
          SELECT @TotalAnual      = COUNT(*) FROM CDISocio WHERE Mov = @Mov AND Estatus = 'CONCLUIDO' AND Cliente = @Cliente and YEAR(FechaEmision)  = @EjercicioEmision
          
		  IF @TotalDisponible >= @MaxDisponible
		    SELECT @Ok = 1, @OkRef = 'Excede  el máximo permitido Quincenal'
		  ELSE 		  
		  IF @TotalAnual >= @MaxAnual
		    SELECT @Ok = 1, @OkRef = 'Excede  el máximo permitido anual'		              
        END
        ELSE
        IF @TipoPeriodo = 'Semanal'
        BEGIN
        --Select @FechaD = @FechaEmision, @FechaA = @FechaEmision
          IF DATEPART(dw, @FechaEmision) = 7
          BEGIN 
            SELECT @FechaD = @FechaEmision, 
                   @FechaA = DATEADD(week, 1, @FechaEmision)-1
          END 
          ELSE 
          BEGIN 
            SELECT @FechaD = DATEADD(wk, DATEDIFF(wk,0,@FechaEmision), 0) - 2,
			 	   @FechaA = DATEADD(wk, DATEDIFF(wk,0,@FechaEmision), 0) + 4
          END
          
          SELECT @TotalDisponible = COUNT(*) FROM CDISocio WHERE Mov = @Mov AND Estatus = 'CONCLUIDO' AND Cliente = @Cliente and FechaEmision BETWEEN @FechaD AND @FechaA
          SELECT @TotalAnual      = COUNT(*) FROM CDISocio WHERE Mov = @Mov AND Estatus = 'CONCLUIDO' AND Cliente = @Cliente and YEAR(FechaEmision)  = @EjercicioEmision

		  IF @TotalDisponible >= @MaxDisponible
		    SELECT @Ok = 1, @OkRef = 'Excede  el máximo permitido Semanal'
		  ELSE 		  
		  IF @TotalAnual >= @MaxAnual
		    SELECT @Ok = 1, @OkRef = 'Excede  el máximo permitido anual'		              
        END
    END                          
 
  RETURN  
END  
GO


/**************** spSocioVerificar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spSocioVerificar') and type = 'P') drop procedure dbo.spSocioVerificar
GO
CREATE PROCEDURE spSocioVerificar  
      @ID               int,  
      @Accion           char(20),  
      @Empresa          char(5),  
      @Usuario          char(10),  
      @Modulo           char(5),  
      @Mov              char(20),  
      @MovID            varchar(20),  
      @MovTipo          char(20),  
      @FechaEmision     datetime,  
      @Estatus          char(15),  
      @MovFechaD        datetime,  
      @MovFechaA        datetime,  
      @OrigenTipo       char(10),  
      @Origen           char(20),  
      @OrigenID         varchar(20),  
      @OrigenMovTipo    char(20),  
      @Conexion         bit,  
      @SincroFinal      bit,  
      @Sucursal         int,  
      @Ok               int          OUTPUT,  
      @OkRef            varchar(255) OUTPUT  
  
--//WITH ENCRYPTION  
AS BEGIN  
  DECLARE  
    @Cliente                varchar(10),  
    @ClienteD               varchar(10),  
    @Concepto               varchar(50),      
    @Cantidad               float,  
    @FechaD                 datetime,  
    @FechaA                 datetime,
    @ApellidoPaterno	    varchar(20),
    @ApellidoMaterno	    varchar(20),
    @PersonalNombres        varchar(50),
    @Sexo                   varchar(20),
    @FechaNacimiento        datetime,
    @EstadoCivil            varchar(20),
    @Pais                   varchar(30),
    @Nacionalidad           varchar(30),
    @Ocupacion              varchar(50),
    @Direccion              varchar(100),
    @Delegacion             varchar(100),
    @Colonia                varchar(100),
    @CodigoPostal           varchar(15),
    @Estado                 varchar(30),
    @Telefono               varchar(100),
    @CDIMedDonador          varchar(2),
    @CDIMedAvisar           varchar(50),
    @CDIMedTelefono         varchar(100),
    @CDIMedCelular          varchar(100),
    @CDIMedEnfermo          varchar(2), 
    @CDIMedAlergia          varchar(2), 
    @CDIMedMedicamento      varchar(2),
    @Mensaje		        varchar(255),
    @SubClave               char(20),  
    @FechaVigencia          datetime,
    @FechaIngreso           datetime,
    @FechaBaja              datetime,
    @Periodos               int,
    @EstatusSiguiente       varchar(15),
    @NombreEquipo           varchar(100),
    @CfgArtCoberturaMedica  varchar(20),
    @Ejercicio              int,
    @IDFactura              int,
    @Categoria              varchar(50),
    @EstatusCte        	    varchar(15),
    @Tipo                   varchar(20),
    @ClienteAnt             varchar(10),
    @Saldo                  money,
    @Causa					        varchar(50), 
    @Bloqueado              varchar(2), 
    @BajaDef                varchar(30), 
    @Membresia              int, 
    @FormaPago              varchar(30),
    @Socio                  VARCHAR(100),
    @SocioNueva             VARCHAR(100),
    @PeriodoReingr    int


SELECT @Ejercicio = YEAR(getdate())
SELECT @CfgArtCoberturaMedica = CEArtCoberturaMedica FROM CDIEmpresaCfg WHERE Empresa = @Empresa
SELECT @SubClave = mt.SubClave FROM MovTipo mt WHERE mt.Mov = @Mov
SELECT @Cliente = isnull(c.Cliente, ''), @Membresia = Membresia, @Categoria = Categoria, @FormaPago = FormaPago  FROM CDISocio c WHERE c.ID = @ID	

--Validacion solo se cabia estatus a son socio de Baja a Alta con los mov Reinstalacion y Auto desbloqueo
  SELECT @EstatusCte = isnull(c.Estatus, ''), @Causa = c.Descripcion15, @Bloqueado = Descripcion13 FROM Cte c WHERE c.Cliente = @Cliente
IF @EstatusCte = 'BAJA' and @Mov not in (/*'Reinstalación',*/'Auto Desbloqueo','Reingreso')
BEGIN
  SELECT @Ok = 1, @OkRef = 'El socio esta dado de Baja no puede cambiar el Estatus'
END

IF @MovTipo = 'SOC.EST' 
BEGIN
  SELECT @EstatusCte = isnull(c.Estatus, ''), @Causa = c.Descripcion15, @Bloqueado = Descripcion13 FROM Cte c WHERE c.Cliente = @Cliente
  
  IF @SubClave = 'SOC.PASE'
  BEGIN
    IF ISNULL(@Bloqueado, 'No') = 'No' --@EstatusCte <> 'BLOQUEADO' 
      SELECT @Ok = 1, @OkRef = 'El Socio no esta BLOQUEADO '
    ELSE
     EXEC spValidaPasesCausaBloqueo  @Empresa, @Mov, @Cliente,  @Causa, @FechaEmision, @Ok output, @OkRef output 
 
    IF (SELECT COUNT(*) FROM CDISocioD WHERE ID = @ID) > 0
    BEGIN
      IF EXISTS(SELECT 1 FROM CDISocioD WHERE ID = @ID AND Membresia <> @Membresia)
        SELECT @Ok = 1, @OkRef = 'La membresía del encabezado no corresponde con el detalle'
    END
  END

  IF @SubClave = 'SOC.CAT'
  BEGIN
    IF ISNULL(@FormaPago, '') = ''
      SELECT @Ok = 1, @OkRef = 'Falta especificar la Forma de Pago'
    IF ISNULL(@Categoria, '') = ''
      SELECT @Ok = 1, @OkRef = 'Falta especificar la Categoría'


  DECLARE CurSocVencimiento CURSOR FOR 	
   SELECT Cliente, Socio, SocioNueva
     FROM CDISocioD
    WHERE ID = @ID
    OPEN CurSocVencimiento
	FETCH NEXT FROM CurSocVencimiento INTO @ClienteD, @Socio, @SocioNueva
	WHILE @@FETCH_STATUS <> -1 
	BEGIN
	
    SELECT @Saldo = isnull(sum(c.Saldo*m.TipoCambio),0.00) 
    	FROM Cxc c LEFT OUTER JOIN mon m ON c.Moneda = m.Moneda LEFT OUTER JOIN MovTipo mt ON c.Mov = mt.Mov
  	 WHERE c.Empresa = @Empresa AND c.Cliente = @ClienteD AND c.mov <> 'Cuenta Incobrable'

    IF @Saldo <> 0.00
      SELECT @Ok = 1, @OkRef = 'El Socio que quiere cambiar de categoria aun tiene adeudos pendientes: ' +@Socio
      
    --IF EXISTS (SELECT * FROM Cte WHERE Socio = @SocioNueva)
    --  SELECT @Ok = 1, @OkRef = 'La nueva clave de socio ya existe: ' +@SocioNueva

		FETCH NEXT FROM CurSocVencimiento INTO @ClienteD, @Socio, @SocioNueva
	END 
	CLOSE CurSocVencimiento
	DEALLOCATE CurSocVencimiento

  END
  
END

IF @MovTipo = 'SOC.ACEPTA'
BEGIN
  IF (SELECT isnull(c.FormaPago, '') FROM CDISocio c WHERE c.ID = @ID) = ''	
    SELECT @Ok = 1, @OkRef = 'El campo Forma de Pago es obligatorio'      
END

IF @MovTipo = 'SOC.BAJA' 
BEGIN
  IF @Mov <> 'Baja'
  BEGIN
  
  
    SELECT @ClienteAnt = c.ClienteAnt FROM CDISocio c WHERE c.ID = @ID	
    IF isnull(@ClienteAnt,'') <> ''
    BEGIN 
      --SELECT @Saldo = isnull(SUM(s.Saldo*m.TipoCambio), 0.00) FROM CxcSaldo s, Mon m WHERE s.Moneda = m.Moneda AND Empresa = @Empresa AND Cliente = @ClienteAnt
    	  SELECT @Saldo= isnull(sum(c.Saldo*m.TipoCambio),0.00) 
      	FROM Cxc c
	  	LEFT OUTER JOIN mon m ON c.Moneda=m.Moneda
		  LEFT OUTER JOIN MovTipo mt ON c.Mov=mt.Mov
  		WHERE c.Empresa= @Empresa AND c.Cliente=@ClienteAnt
	  	AND c.mov <>'Cuenta Incobrable'

      IF @Saldo <> 0.00
        SELECT @Ok = 1, @OkRef = 'El Socio que quiere dar de baja aun tiene adeudos pendientes'
      IF EXISTS (SELECT * FROM Inv i WHERE i.CDISocio = @ClienteAnt AND i.Mov = 'Prestamo' AND i.Estatus = 'PENDIENTE' AND i.Empresa = @Empresa)
        SELECT @Ok = 1, @OkRef = 'El Socio que quiere dar de baja aun tiene prestamos pendientes'        
    END
  END
  
  IF @Ok IS NULL
  BEGIN
    IF (SELECT COUNT(*) FROM CDISocioD WHERE ID = @ID) > 0
    BEGIN
      IF EXISTS(SELECT 1 FROM CDISocioD WHERE ID = @ID AND Membresia <> @Membresia)
        SELECT @Ok = 1, @OkRef = 'La membresía del encabezado no corresponde con el detalle'
    END
  END
  
  IF @SubClave = 'SOC.DESBLOQUEO' AND @Ok IS NULL
  BEGIN
    SELECT @EstatusCte = Estatus, @Bloqueado = ISNULL(Descripcion13, 'No') FROM Cte WHERE Cliente = @Cliente

    IF @EstatusCte = 'BAJA'
			BEGIN
						SELECT @PeriodoReingr = ISNULL(CDIPeriodoReingreso, 0) FROM CDIEmpresaCfg WHERE Empresa = @Empresa
						IF NOT EXISTS(SELECT 1 FROM Cxc c
									 INNER JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'CXC'
              						  INNER JOIN Cte cte ON c.Cliente = cte.Cliente
              						  WHERE mt.Clave = 'CXC.C' AND 
              								c.Estatus = 'PENDIENTE' AND 
              								cte.Socio = @Socio AND 
              								cte.Tipo = @Tipo AND 
              								DATEDIFF(DD, C.Vencimiento, GETDATE()) > @PeriodoReingr)
			
					SELECT @ok= NULL
				
			ELSE
    
					SELECT @Ok = 1, @OkRef = 'El socio esta dado de Baja'
				 
			END
    
    IF @Bloqueado = 'No' AND @Mov <> 'Alta'
      SELECT @Ok = 1, @OkRef = 'El socio ya se encuentra Desbloqueado'
  END
  
  IF @SubClave = 'SOC.BLOQUEO' AND @Ok IS NULL
  BEGIN
      IF EXISTS (SELECT Descripcion13 FROM Cte WHERE Cliente IN (Select Cliente from CDISocioD where ID = @ID ) and Descripcion13 = 'Si') 
        SELECT @Ok = 1, @OkRef = 'El socio ya se encuentra Bloqueado'
  END  
  
END

IF @MovTipo = 'SOC.SUBSID'
BEGIN
    IF (SELECT COUNT(*) FROM CDISocioD WHERE ID = @ID) > 0
    BEGIN
      IF EXISTS(SELECT 1 FROM CDISocioD WHERE ID = @ID AND Membresia <> @Membresia)
        SELECT @Ok = 1, @OkRef = 'La membresía del encabezado no corresponde con el detalle'
    END
END

IF @SubClave IN ('SOC.SOLCORTE', 'SOC.TEMP', 'SOC.SOLHON') 
BEGIN
	IF @SubClave = 'SOC.SOLCORTE'
	  SELECT @Tipo = 'Cortesía'
	ELSE 
	IF @SubClave = 'SOC.TEMP'
	  SELECT @Tipo = 'Temporal'
	ELSE 
	IF @SubClave = 'SOC.SOLHON'
	  SELECT @Tipo = 'Honorario'

    IF @SubClave IN ('SOC.SOLCORTE', 'SOC.TEMP', 'SOC.SOLHON')
      EXEC spRevisaTipoSocio  @Tipo, @Cliente, @Ok output, @OkRef output 
      
    IF @Ok IS NULL 
    BEGIN   
    DECLARE crDatos CURSOR LOCAL FOR			
     SELECT ID, Cliente
       FROM CDISocioD cd
      WHERE cd.ID = @ID
       OPEN crDatos
    FETCH NEXT FROM crDatos INTO @ID, @Cliente
    WHILE @@FETCH_STATUS <> -1 
    BEGIN
    IF @@FETCH_STATUS <> -2 
    BEGIN      
      EXEC spRevisaTipoSocio  @Tipo, @Cliente, @Ok output, @OkRef output 
      FETCH NEXT FROM crDatos INTO @ID, @Cliente
    END
    END
    CLOSE crDatos
    DEALLOCATE crDatos     
    END  
	
END
IF @Cliente ='' AND @MovTipo NOT IN ('SOC.HONOR', 'SOC.SANCION', 'SOC.DICTAMEN', 'SOC.EQUIPO')
  SELECT @Ok = 1 , @OkRef = 'Es Necesario llevar un titular en el encabezado del movimiento.' 	
ELSE 
  IF @MovTipo IN ( 'SOC.EQUIPO', 'SOC.INV', 'SOC.ALTACOND')
  BEGIN
  SELECT @FechaVigencia = c.FechaVigencia, @FechaIngreso = c.FechaIngreso, @NombreEquipo = isnull(c.NombreEquipo, '') 
    FROM CDISocio c 
   WHERE c.ID = @ID
  IF @MovTipo = 'SOC.INV'
  BEGIN
  	IF @Mov = 'Acompañante'
	  SELECT @Tipo = 'Acompañante'  	
	ELSE 
  	  SELECT @Tipo = 'Invitado'
  	  
    IF (SELECT Estatus FROM Cte WHERE Cliente = @Cliente) <> 'ALTA'
    BEGIN 
      SELECT @Ok = 1, @OkRef = 'El Socio ' + RTRIM(@Cliente) + ' No esta dado de ALTA'      
    END     
    IF @Ok IS NULL 
    BEGIN   
    DECLARE crDatos CURSOR LOCAL FOR			
     SELECT ID, Cliente
       FROM CDISocioD cd
      WHERE cd.ID = @ID
       OPEN crDatos
    FETCH NEXT FROM crDatos INTO @ID, @Cliente
    WHILE @@FETCH_STATUS <> -1 
    BEGIN
    IF @@FETCH_STATUS <> -2 
    BEGIN      
      EXEC spRevisaTipoSocio  @Tipo, @Cliente, @Ok output, @OkRef output 
      FETCH NEXT FROM crDatos INTO @ID, @Cliente
    END
    END
    CLOSE crDatos
    DEALLOCATE crDatos     
    END       
  END
  IF @NombreEquipo ='' AND @MovTipo = 'SOC.EQUIPO'
    SELECT @Ok = 1 , @OkRef = 'El Nombre del Equipo es Obligatorio'   
  IF @FechaVigencia IS NULL 
    SELECT @Ok = 1, @OkRef = 'Falta Indicar la Fecha de Vigencia.'
  ELSE 
  IF @FechaIngreso IS NULL 
    SELECT @Ok = 1, @OkRef = 'Falta Indicar la Fecha de Ingreso.'
  END
  ELSE 
  IF @MovTipo = 'SOC.MEDICA' AND @Cliente <> ''
  BEGIN
    SELECT TOP 1 @IDFactura = ar.ModuloID
	  FROM AuxiliarRU ar
	  JOIN MovTipo mt ON ar.Mov = mt.Mov AND mt.Modulo = 'VTAS' AND mt.Clave = 'VTAS.F'
	 WHERE ar.Empresa = @Empresa AND ar.Rama = 'VTAS' AND ar.Modulo = 'VTAS' AND ar.Grupo = @Cliente AND ar.Cuenta = @CfgArtCoberturaMedica 
	       AND ar.Ejercicio = @Ejercicio
	 GROUP BY ar.ModuloID
	 HAVING SUM(ISNULL(ar.Cargo, 0) - ISNULL(ar.Abono, 0)) > 0	  
	  IF @IDFactura IS NULL
	    SELECT @Ok = 10060, @OkRef = 'Falta Pago de Cobertura Médica del Cliente ' + RTRIM(@Cliente)  	
  END
IF @Accion IN ('AFECTAR', 'GENERAR')
BEGIN		
  SELECT TOP 1 @BajaDef = cs.Socio 
  FROM CDISocioD cs 
  LEFT JOIN CDIBajasDefuncion cbd ON cs.Socio = cbd.Socio 
  WHERE cs.ID = @ID AND cbd.Socio IS NOT NULL

  IF @BajaDef IS NOT NULL
    SELECT @Ok = 60260, @OkRef = 'El socio: ' + @BajaDef + ' tiene un Movimiento de Baja por Defunción'
  
    IF @SubClave IN ('SOC.TEMP', 'SOC.SOLCORTE', 'SOC.INV')  AND @Ok = NULL 
    BEGIN    
      SELECT @FechaVigencia = c.FechaVigencia, @FechaIngreso = c.FechaIngreso FROM CDISocio c WHERE c.ID = @ID
	    IF @FechaVigencia IS NULL 
	        SELECT @Ok = 1, @OkRef = 'Falta Indicar la Fecha de Vigencia.'
	    ELSE 
	    IF @FechaIngreso IS NULL 
	        SELECT @Ok = 1, @OkRef = 'Falta Indicar la Fecha de Ingreso.'
    END
    ELSE
    IF @SubClave = 'SOC.REIN'  AND @Ok = NULL 
    BEGIN
	    SELECT @Periodos = isnull(cc.CDIPeriodoReingreso, 0) FROM CDIEmpresaCfg cc WHERE cc.Empresa = @Empresa
	    SELECT @Cliente = c.Cliente FROM CDISocio c WHERE c.ID = @ID	
	    SELECT @FechaBaja = c.Fecha2 FROM Cte c WHERE c.Cliente = @Cliente
	    IF (SELECT DATEDIFF(month, @FechaBaja, getdate())) > = @Periodos AND @FechaBaja IS NOT NULL AND @Periodos >= 0
            SELECT @Ok = 1, @OkRef = 'El Solicitante tiene '+ CONVERT(varchar(2), @Periodos) +' o mas meses dado de baja'
    END 
    IF @MovTipo IN ('SOC.SOL', 'SOC.VERIFICA', 'SOC.INV') AND @Estatus = 'SINAFECTAR' AND @Ok = NULL 
    BEGIN
      SELECT @Cliente = c.Cliente FROM CDISocio c WHERE c.ID = @ID
      SELECT @ApellidoPaterno   = isnull(PersonalApellidoPaterno, ''), 
             @ApellidoMaterno   = isnull(PersonalApellidoMaterno, ''),
             @PersonalNombres   = isnull(PersonalNombres, ''),
             @Sexo              = isnull(Sexo, ''),
             @FechaNacimiento   = isnull(FechaNacimiento, ''),
             @EstadoCivil       = isnull(EstadoCivil, ''),
             @Pais              = isnull(Pais, ''),
             @Ocupacion         = isnull(Ocupacion, ''),
             @Direccion         = ISNULL(Direccion, ''),
             @Delegacion        = isnull(Delegacion, ''),
             @Colonia           = isnull(Colonia, ''),
             @CodigoPostal      = isnull(CodigoPostal, ''),
             @Estado            = isnull(Estado, ''),
             @Telefono          = isnull(Telefonos, ''),
             @CDIMedDonador     = isnull(CDIMedDonador, ''),
             @CDIMedAvisar      = isnull(CDIMedAvisar, ''),
             @CDIMedTelefono    = isnull(CDIMedTelefono, ''),
             @CDIMedCelular     = isnull(CDIMedCelular, ''),
             @CDIMedEnfermo     = isnull(CDIMedEnfermo, ''),
             @CDIMedAlergia     = isnull(CDIMedAlergia, ''),
             @CDIMedMedicamento = isnull(CDIMedMedicamento, ''),
             @Estatus           = isnull(Estatus, '')
        FROM Cte
      WHERE Cliente = @Cliente
      
      SELECT @Mensaje = 'Los campos del titular son obligatorios: ' 
    	
  	    IF @ApellidoPaterno = ''
  	      SELECT @Mensaje = @Mensaje + 'Apellido Paterno, '
  	    IF @ApellidoMaterno = ''
  	      SELECT @Mensaje = @Mensaje + 'Apellido Materno, '
  	    IF @PersonalNombres = ''
  	      SELECT @Mensaje = @Mensaje + 'Nombres, '
  	    IF @Sexo = ''
  	      SELECT @Mensaje = @Mensaje + 'Sexo, '
  	    IF @FechaNacimiento = ''
  	      SELECT @Mensaje = @Mensaje + 'Fecha Nacimiento, '
  	    IF @EstadoCivil= ''
  	      SELECT @Mensaje = @Mensaje + 'Estado Civil, '
  	    IF @Pais = ''
  	      SELECT @Mensaje = @Mensaje + 'Pais, '
  	    IF @Nacionalidad = ''
  	      SELECT @Mensaje = @Mensaje + 'Nacionalidad, '
  	    IF @Ocupacion = ''
  	      SELECT @Mensaje = @Mensaje + 'Ocupación, '
  	    IF @Direccion = ''
  	      SELECT @Mensaje = @Mensaje + 'Dirección, '
  	    IF @Delegacion = ''
  	      SELECT @Mensaje = @Mensaje + 'Delegación, '
  	    IF @Colonia = ''
  	      SELECT @Mensaje = @Mensaje + 'Colonia, '
  	    IF @CodigoPostal = ''
  	      SELECT @Mensaje = @Mensaje + 'Codigo Postal, '
  	    IF @Estado = ''
  	      SELECT @Mensaje = @Mensaje + 'Estado, '
  	    IF @Telefono = ''
  	      SELECT @Mensaje = @Mensaje + 'Telefono, '
  	    IF @CDIMedDonador = ''
  	      SELECT @Mensaje = @Mensaje + 'Donador, '
  	    IF @CDIMedAvisar = ''
  	      SELECT @Mensaje = @Mensaje + 'Avisar Emergencia, '
  	    IF @CDIMedTelefono= ''
  	      SELECT @Mensaje = @Mensaje + 'Telefono Emergencia, '
  	    IF @CDIMedCelular = ''
  	      SELECT @Mensaje = @Mensaje + 'Celular Emergencia, '
  	    IF @CDIMedEnfermo = ''
  	      SELECT @Mensaje = @Mensaje + 'Padece Enfermedad, '
  	    IF @CDIMedAlergia = ''
  	      SELECT @Mensaje = @Mensaje + 'Padece Alergias, '
  	    IF @CDIMedMedicamento = ''
  	      SELECT @Mensaje = @Mensaje + 'Toma Medicamento, '  	
	    IF @Mensaje <> 'Los campos del titular son obligatorios: '
	    BEGIN
          SELECT @OkRef = @Mensaje, @Ok = 1 		
	    END
    	
	    IF EXISTS (SELECT * FROM CDIDocSocioCta csc WHERE csc.Cliente = @Cliente AND csc.Entregado = 'No') OR NOT EXISTS (SELECT * FROM CDIDocSocioCta csc WHERE csc.Cliente = @Cliente)
	      SELECT @Ok = 1, @OkRef = 'El Titular no ha entregado toda la documentacion'
    	
    	
	    IF @Ok IS NULL 
	    BEGIN  
	      DECLARE crDatos CURSOR LOCAL FOR			
	       SELECT ID, Cliente
	         FROM CDISocioD cd
		    WHERE cd.ID = @ID
		      OPEN crDatos
          FETCH NEXT FROM crDatos INTO @ID, @Cliente
          WHILE @@FETCH_STATUS <> -1 
          BEGIN
            IF @@FETCH_STATUS <> -2 
            BEGIN
              SELECT @ApellidoPaterno   = isnull(PersonalApellidoPaterno, ''), 
                     @ApellidoMaterno   = isnull(PersonalApellidoMaterno, ''),
                     @PersonalNombres   = isnull(PersonalNombres, ''),
                     @Sexo              = isnull(Sexo, ''),
                     @FechaNacimiento   = isnull(FechaNacimiento, ''),
                     @EstadoCivil       = isnull(EstadoCivil, ''),
                     @Pais              = isnull(Pais, ''),
                     @Ocupacion         = isnull(Ocupacion, ''),
                     @Direccion         = ISNULL(Direccion, ''),
                     @Delegacion        = isnull(Delegacion, ''),
                     @Colonia           = isnull(Colonia, ''),
                     @CodigoPostal      = isnull(CodigoPostal, ''),
                     @Estado            = isnull(Estado, ''),
                     @Telefono          = isnull(Telefonos, ''),
                     @CDIMedDonador     = isnull(CDIMedDonador, ''),
                     @CDIMedAvisar      = isnull(CDIMedAvisar, ''),
                     @CDIMedTelefono    = isnull(CDIMedTelefono, ''),
                     @CDIMedCelular     = isnull(CDIMedCelular, ''),
                     @CDIMedEnfermo     = isnull(CDIMedEnfermo, ''),
                     @CDIMedAlergia     = isnull(CDIMedAlergia, ''),
                     @CDIMedMedicamento = isnull(CDIMedMedicamento, ''),
                     @Estatus           = isnull(Estatus, '')
                FROM Cte
              WHERE Cliente = @Cliente AND Tipo IN ('Socios', 'Temporal')
              
              SELECT @Mensaje = 'Los campos del socio '+@Cliente+' son obligatorios: ' 
            	
  	            IF @ApellidoPaterno = ''
  	              SELECT @Mensaje = @Mensaje + 'Apellido Paterno, '
  	            IF @ApellidoMaterno = ''
  	              SELECT @Mensaje = @Mensaje + 'Apellido Materno, '
  	            IF @PersonalNombres = ''
  	              SELECT @Mensaje = @Mensaje + 'Nombres, '
  	            IF @Sexo = ''
  	              SELECT @Mensaje = @Mensaje + 'Sexo, '
  	            IF @FechaNacimiento = ''
  	              SELECT @Mensaje = @Mensaje + 'Fecha Nacimiento, '
  	            IF @EstadoCivil= ''
  	              SELECT @Mensaje = @Mensaje + 'Estado Civil, '
  	            IF @Pais = ''
  	              SELECT @Mensaje = @Mensaje + 'Pais, '
  	            IF @Nacionalidad = ''
  	              SELECT @Mensaje = @Mensaje + 'Nacionalidad, '
  	            IF @Ocupacion = ''
  	              SELECT @Mensaje = @Mensaje + 'Ocupación, '
  	            IF @Direccion = ''
  	              SELECT @Mensaje = @Mensaje + 'Dirección, '
  	            IF @Delegacion = ''
  	              SELECT @Mensaje = @Mensaje + 'Delegación, '
  	            IF @Colonia = ''
  	              SELECT @Mensaje = @Mensaje + 'Colonia, '
  	            IF @CodigoPostal = ''
  	              SELECT @Mensaje = @Mensaje + 'Codigo Postal, '
  	            IF @Estado = ''
  	              SELECT @Mensaje = @Mensaje + 'Estado, '
  	            IF @Telefono = ''
  	              SELECT @Mensaje = @Mensaje + 'Telefono, '
  	            IF @CDIMedDonador = ''
  	              SELECT @Mensaje = @Mensaje + 'Donador, '
  	            IF @CDIMedAvisar = ''
  	              SELECT @Mensaje = @Mensaje + 'Avisar Emergencia, '
  	            IF @CDIMedTelefono= ''
  	              SELECT @Mensaje = @Mensaje + 'Telefono Emergencia, '
  	            IF @CDIMedCelular = ''
  	              SELECT @Mensaje = @Mensaje + 'Celular Emergencia, '
  	            IF @CDIMedEnfermo = ''
  	              SELECT @Mensaje = @Mensaje + 'Padece Enfermedad, '
  	            IF @CDIMedAlergia = ''
  	              SELECT @Mensaje = @Mensaje + 'Padece Alergias, '
  	            IF @CDIMedMedicamento = ''
  	              SELECT @Mensaje = @Mensaje + 'Toma Medicamento, '  	
	            IF @Mensaje <> 'Los campos del socio '+@Cliente+' son obligatorios: ' 
	            BEGIN
                  SELECT @OkRef = @Mensaje, @Ok = 1 		
	            END          
          	    IF EXISTS (SELECT * FROM CDIDocSocioCta csc WHERE csc.Cliente = @Cliente AND csc.Entregado = 'No') OR NOT EXISTS (SELECT * FROM CDIDocSocioCta csc WHERE csc.Cliente = @Cliente)
      	          SELECT @Ok = 1, @OkRef = 'El socio '+@Cliente+' no ha entregado toda la documentacion'

              
              FETCH NEXT FROM crDatos INTO @ID, @Cliente
            END
          END
        CLOSE crDatos
        DEALLOCATE crDatos     
        END 
    END
END
ELSE 
	IF @Accion = 'CANCELAR'     
	BEGIN
	  SELECT @EstatusSiguiente = isnull(c.Estatus, '') FROM CDISocio c WHERE c.Origen = @Mov AND c.OrigenID = @MovID
      IF @EstatusSiguiente IN ('CONCLUIDO') 
        SELECT @Ok = 1, @OkRef = 'No se puede cancelar el movimiento, por que existe dependecia con otro movimiento'
	END
    
  RETURN  
END  
GO

/**************** spSocio ****************/
if exists (select * from sysobjects where id = object_id('dbo.spSocio') and type = 'P') drop procedure dbo.spSocio
GO
CREATE PROCEDURE spSocio
           @ID              int,
    	   @Modulo	      	char(5),
		   @Accion			char(20),
		   @Base			char(20),
		   @FechaRegistro	datetime,
		   @GenerarMov		char(20),
		   @Usuario			char(10),
    	   @Conexion		bit,
		   @SincroFinal		bit, 
    	   @Mov	      		char(20)	    OUTPUT,
    	   @MovID           varchar(20)	    OUTPUT,
		   @IDGenerar		int		        OUTPUT,
		   @Ok				int		        OUTPUT,
		   @OkRef			varchar(255)	OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE
    @Sucursal			int,
    @SucursalDestino	int,
    @SucursalOrigen		int,
    @EnLinea			bit,
    @PuedeEditar		bit,
    @Empresa	      	char(5),
    @MovTipo   			char(20),
    @FechaEmision     	datetime,
    @FechaAfectacion	datetime,
    @FechaConclusion	datetime,
    @Proyecto	      	varchar(50),
    @MovUsuario	      	char(10),
    @Autorizacion     	char(10),
    @DocFuente	      	int,
    @Localidad			varchar(50),
    @Observaciones    	varchar(255),
    @Concepto    		varchar(50),
    @Estatus          	char(15),
    @EstatusNuevo		char(15),
    @Ejercicio	      	int,
    @Periodo	      	int,
    @GenerarMovID		varchar(20),
    @OrigenTipo			char(10),
    @Origen			    char(20),
    @OrigenID			varchar(20),
    @OrigenMovTipo		char(20),
    @MovFechaD			datetime,
    @MovFechaA			datetime/*,
    @Verificar			bit*/

  -- Inicializar Variables
  SELECT @OrigenMovTipo   = NULL

  -- Leer Datos Generales del Movimiento
  SELECT @Sucursal = Sucursal, @Empresa = Empresa, @MovID = MovID, @Mov = Mov, @FechaEmision = FechaEmision, @Proyecto = Proyecto,
         @MovUsuario = Usuario, @Autorizacion = Autorizacion, @Observaciones = Observaciones, @Estatus = UPPER(Estatus), 
	     @MovFechaD = FechaIngreso, @MovFechaA = FechaVigencia,
	     @OrigenTipo = OrigenTipo, @Origen = Origen, @OrigenID = OrigenID,
         @FechaConclusion = FechaConclusion,
         @Concepto = Concepto
    FROM CDISocio
   WHERE ID = @ID
   
  IF @@ERROR <> 0 SELECT @Ok = 1

  IF NULLIF(RTRIM(@Usuario), '') IS NULL SELECT @Usuario = @MovUsuario
  EXEC spFechaAfectacion @Empresa, @Modulo, @ID, @Accion, @FechaEmision OUTPUT, @FechaRegistro, @FechaAfectacion OUTPUT
  EXEC spExtraerFecha @FechaAfectacion OUTPUT
  EXEC spMovTipo @Modulo, @Mov, @FechaAfectacion, @Empresa, NULL, NULL, @MovTipo OUTPUT, @Periodo OUTPUT, @Ejercicio OUTPUT, @Ok OUTPUT

 IF @Accion IN ('CONSECUTIVO', 'AFECTAR') 
    EXEC spCDIConsecutivo @Modulo, @Empresa, @Sucursal, @Mov, @MovID OUTPUT, @Ok OUTPUT

  IF @Conexion = 0
    BEGIN TRANSACTION


  IF ( @Accion <> 'CANCELAR' AND @Estatus IN ('SINAFECTAR', 'BORRADOR', 'CONFIRMAR', 'PROCESAR', 'PENDIENTE', 'CONCLUIDO'))
  BEGIN
    IF @OrigenTipo = @Modulo AND @Origen IS NOT NULL AND @OrigenID IS NOT NULL
      SELECT @OrigenMovTipo = Clave FROM MovTipo WHERE Modulo = @Modulo AND Mov = @Origen

    -- Verificar antes de Afectar
      EXEC spSocioVerificar @ID,        @Accion,    @Empresa,    @Usuario,  @Modulo,    @Mov,           @MovID,    @MovTipo,     @FechaEmision, @Estatus, 
			                @MovFechaD, @MovFechaA, @OrigenTipo, @Origen,   @OrigenID,  @OrigenMovTipo, @Conexion, @SincroFinal, @Sucursal,     @Ok OUTPUT, 
			                @OkRef OUTPUT

    IF @Ok IS NULL
      EXEC spSocioAfectar @ID,              @Accion,        @Empresa,     @Modulo,       @Mov,             @MovID OUTPUT,   @MovTipo,       @FechaEmision,     @FechaAfectacion, 
                          @FechaConclusion, @Proyecto,      @Usuario,     @Autorizacion, @DocFuente,       @Localidad,      @Observaciones, @Concepto,         @Estatus, 
                          @EstatusNuevo,    @FechaRegistro, @Ejercicio,   @Periodo,      @MovFechaD,       @MovFechaA,      @OrigenTipo,    @Origen,           @OrigenID, 
                          @OrigenMovTipo,   @Conexion,      @SincroFinal, @Sucursal,     @SucursalDestino, @SucursalOrigen,	@GenerarMov OUTPUT,    @IDGenerar OUTPUT, @GenerarMovID OUTPUT,
                          @Ok OUTPUT,       @OkRef OUTPUT

  END 
  ELSE 
  IF @Accion = 'CANCELAR'
    BEGIN
      EXEC spCDISocioCancelar @ID,        @Accion,    @Empresa,    @Usuario,  @Modulo,    @Mov,           @MovID,    @MovTipo,     @FechaEmision, @Estatus, 
			                  @MovFechaD, @MovFechaA, @OrigenTipo, @Origen,   @OrigenID,  @OrigenMovTipo, @Conexion, @SincroFinal, @Sucursal,     @Ok OUTPUT, 
    			              @OkRef OUTPUT 		
    END
  	
  IF @Conexion = 0
  BEGIN
    IF @Ok IS NULL OR @Ok = 80030
      COMMIT TRANSACTION
    ELSE
      ROLLBACK TRANSACTION
  END
  -- Si se Genero un Movimiento, Desplegarlo
  IF @Ok = 80030
    SELECT @OkRef = 'Movimiento: '+RTRIM(@GenerarMov)+' '+LTRIM(Convert(Char, ISNULL(@GenerarMovID, '')))
  
  RETURN
END
GO
 
/**************** spSocioGeneraFacturaVTAS ****************/
if exists (select * from sysobjects where id = object_id('dbo.spSocioGeneraFacturaVTAS') and type = 'P') drop procedure dbo.spSocioGeneraFacturaVTAS
GO
CREATE PROCEDURE spSocioGeneraFacturaVTAS
           @ID            int,
           @Cliente       varchar(10),
           @Usuario       varchar(10),
           @Empresa       varchar(5),
           @Categoria     varchar(50),
           @TipoCondicion varchar(50)
           
AS 
BEGIN
	DECLARE
		@Mov                varchar(20),
        @CargoAutomatico	bit,			
    	@Articulo			varchar(20),
    	@Condicion          varchar(50),
        @FechaEmision       datetime,
        @UltimoCambio       datetime,
        @Dia                int,
        @Ejercicio          int,
        @Periodo            int,
        @FechaLetra         varchar(10),
        @FechaInicio        datetime,
        @Recurrente         BIT
  
  CREATE TABLE #Articulos (Articulo varchar(20), Recurrente bit)
		
  SELECT @CargoAutomatico = 0		
  SELECT TOP(1) @Mov = Mov FROM MovTipo WHERE Modulo = 'VTAS' AND CDICargosRecurrentes = 1
  
   
  SELECT @FechaEmision = GETDATE()
  SELECT @Dia = day(@FechaEmision), @Ejercicio = YEAR(@FechaEmision), @Periodo = MONTH(@FechaEmision)
  
  SELECT @FechaLetra  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)
  SELECT @FechaInicio   = CONVERT(datetime,@FechaLetra)  
  SELECT @UltimoCambio = @FechaEmision + 1
  EXEC spExtraerFecha @FechaEmision OUTPUT 
  IF (SELECT CHARINDEX   ('Mensual', @TipoCondicion)) > 0 
  BEGIN 
    INSERT INTO #Articulos (Articulo, Recurrente)  	
    SELECT c.ArticuloM, c.EsRecurrente FROM CDICfgCategoriaArt c WHERE c.Categoria = @Categoria
  END 
  ELSE
  IF (SELECT CHARINDEX   ('Anual',   @TipoCondicion)) > 0 
  BEGIN     
    INSERT INTO #Articulos (Articulo, Recurrente)  	
    SELECT c.ArticuloA, c.EsRecurrente FROM CDICfgCategoriaArt c WHERE c.Categoria = @Categoria    
  END 

  DECLARE crDatos CURSOR LOCAL FOR			
   SELECT Articulo, Recurrente
     FROM #Articulos
     OPEN crDatos
    FETCH NEXT FROM crDatos INTO @Articulo, @Recurrente
    WHILE @@FETCH_STATUS <> -1 
    BEGIN
      IF @@FETCH_STATUS <> -2 
      BEGIN
        SELECT @Condicion = ISNULL(CDICondicion,'') FROM Art     WHERE Articulo = @Articulo 	
        IF @Recurrente = 1
        BEGIN
		  	
		  UPDATE cte SET CDICargosRecurrentes = 1 WHERE Cliente=@Cliente		
		  DELETE FROM CDIArtCargosRecurrentes WHERE Cliente=@Cliente
		   	 
          INSERT CDIArtCargosRecurrentes (Cliente,  Articulo,  FechaInicio,  FechaFin, Cantidad)
          VALUES                         (@Cliente, @Articulo, @FechaInicio, NULL    , 1)
          IF @Dia <=  15
          BEGIN             
            EXEC spCDIVentaInsert @Empresa, @Mov, @Cliente, @Condicion, @TipoCondicion, @Articulo, 0, @FechaEmision, @UltimoCambio, 1, @Usuario, 1
          END          
        END
        IF @Recurrente = 0
        BEGIN 
          EXEC spCDIVentaInsert @Empresa, @Mov, @Cliente, @Condicion, @TipoCondicion, @Articulo, 0, @FechaEmision, @UltimoCambio, 1, @Usuario, 0	
        END 	         
        FETCH NEXT FROM crDatos INTO @Articulo, @Recurrente
      END
    END
  CLOSE crDatos
  DEALLOCATE crDatos        
END 
GO

/**************** spNombreHonorJusticia ****************/
if exists (select * from sysobjects where id = object_id('dbo.spNombreHonorJusticia') and type = 'P') drop procedure dbo.spNombreHonorJusticia
GO             
CREATE PROCEDURE spNombreHonorJusticia  
        @Tipo           varchar(20),  
        @Clave          varchar(10) 
AS 
BEGIN  
	DECLARE
		@Nombre varchar(100)
		
  IF @Tipo = 'Socio'
    SELECT @Nombre = isnull(c.PersonalNombres, '') + ' ' + isnull(c.PersonalApellidoPaterno, '') + ' ' + isnull(c.PersonalApellidoMaterno, '') FROM Cte c WHERE c.CDISocio = 1 AND c.Cliente = @Clave 
  IF @Tipo = 'Cliente'
    SELECT @Nombre = isnull(c.Nombre, '') FROM Cte c WHERE c.Cliente = @Clave 
  IF @Tipo = 'Proveedor'
    SELECT @Nombre = isnull(p.Nombre, '') FROM Prov p WHERE p.Proveedor = @Clave  
  IF @Tipo = 'Personal'     
    SELECT @Nombre = isnull(p.Nombre, '') + ' ' + isnull(p.ApellidoPaterno, '') + ' ' + isnull(p.ApellidoMaterno, '')  FROM Personal p WHERE p.Personal = @Clave  
      
  SELECT @Nombre    
  RETURN  
END  
GO

/**************** spSocioGeneraCambioCat ****************/
if exists (select * from sysobjects where id = object_id('dbo.spSocioGeneraCambioCat') and type = 'P') drop procedure dbo.spSocioGeneraCambioCat
GO
CREATE PROCEDURE spSocioGeneraCambioCat
           @ID            int,
           @Cliente       varchar(10),
           @Usuario       varchar(10),
           @Empresa       varchar(5),
           @Categoria     varchar(50),
           @TipoCondicion varchar(50)
           
AS 
BEGIN
	DECLARE
		@Mov                varchar(20),
        @CargoAutomatico	bit,			
    	@Articulo			varchar(20),
    	@Condicion          varchar(50),
        @FechaEmision       datetime,
        @UltimoCambio       datetime,
        @Dia                int,
        @Ejercicio          int,
        @Periodo            int,
        @FechaLetra         varchar(10),
        @FechaInicio        datetime,
        @Recurrente         bit, 
        @EsCuota            bit
  
  CREATE TABLE #Articulos (Articulo varchar(20), Recurrente bit)
		
  SELECT @CargoAutomatico = 0		
  SELECT TOP(1) @Mov = Mov FROM MovTipo WHERE Modulo = 'VTAS' AND CDICargosRecurrentes = 1
  
  SELECT @CargoAutomatico = CDIAutorizacionCargos FROM Cte WHERE Cliente = @Cliente
   
  SELECT @FechaEmision = GETDATE()
  SELECT @Dia = day(@FechaEmision), @Ejercicio = YEAR(@FechaEmision), @Periodo = MONTH(@FechaEmision)
  
  SELECT @FechaLetra  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)
  SELECT @FechaInicio   = CONVERT(datetime,@FechaLetra)  
  SELECT @UltimoCambio = @FechaEmision + 1
  EXEC spExtraerFecha @FechaEmision OUTPUT 
  IF (SELECT CHARINDEX   ('Mensual', @TipoCondicion)) > 0 
  BEGIN 
    INSERT INTO #Articulos (Articulo, Recurrente)  	
    SELECT c.ArticuloM, c.EsRecurrente FROM CDICfgCategoriaArt c WHERE c.Categoria = @Categoria
  END 
  ELSE
  IF (SELECT CHARINDEX   ('Anual',   @TipoCondicion)) > 0 
  BEGIN     
    INSERT INTO #Articulos (Articulo, Recurrente)  	
    SELECT c.ArticuloA, c.EsRecurrente FROM CDICfgCategoriaArt c WHERE c.Categoria = @Categoria    
  END 

  DECLARE crDatosCat CURSOR LOCAL FOR			
   SELECT Articulo, Recurrente
     FROM #Articulos
     OPEN crDatosCat
    FETCH NEXT FROM crDatosCat INTO @Articulo, @Recurrente
    WHILE @@FETCH_STATUS <> -1 
    BEGIN
      IF @@FETCH_STATUS <> -2 
      BEGIN
        SELECT @Condicion = ISNULL(CDICondicion,'') FROM Art WHERE Articulo = @Articulo 	
        IF @Recurrente = 1
        BEGIN
          UPDATE cte SET CDICargosRecurrentes = 1 WHERE Cliente=@Cliente
          DELETE FROM CDIArtCargosRecurrentes WHERE Cliente=@Cliente
          SELECT @EsCuota = CASE WHEN DESCRIPCION1 LIKE '%CUOTA%' THEN 1 ELSE 0 END FROM Art WHERE Articulo = @Articulo
          
          INSERT CDIArtCargosRecurrentes (Cliente,  Articulo,  FechaInicio,  FechaFin, Cantidad, EsCuota)
          VALUES                         (@Cliente, @Articulo, @FechaInicio, NULL    , 1, @EsCuota)
          --IF @Dia <=  15
          --BEGIN             
          --  EXEC spCDIVentaInsert @Empresa, @Mov, @Cliente, @Condicion, @TipoCondicion, @Articulo, 0, @FechaEmision, @UltimoCambio, 1, @Usuario, 1
          --END
          IF @CargoAutomatico = 1 --BEGM 20120531. 5757 Insertar los articulos con cargos automaticos
            INSERT CDIArticulosCargos(Cliente, Articulo)
            VALUES (@Cliente, @Articulo)
        END
        --IF @Recurrente = 0
        --BEGIN 
        --  EXEC spCDIVentaInsert @Empresa, @Mov, @Cliente, @Condicion, @TipoCondicion, @Articulo, 0, @FechaEmision, @UltimoCambio, 1, @Usuario, 0	
        --END 	         
        FETCH NEXT FROM crDatosCat INTO @Articulo, @Recurrente
      END
    END
  CLOSE crDatosCat
  DEALLOCATE crDatosCat        
END 
GO

  
