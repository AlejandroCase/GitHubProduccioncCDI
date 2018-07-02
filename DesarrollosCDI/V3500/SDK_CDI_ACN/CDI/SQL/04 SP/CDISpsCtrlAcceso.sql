/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS off
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
--EXEC spRepGenerarAsisteCorte 'Incidencias','CDI','02869','NULL','Area',0,'NULL','Tipo','30/08/2011','05/09/2011'

/**************** SpCDIVbCadenaEntrada ****************/
if exists (select * from sysobjects where id = object_id('dbo.SpCDIVbCadenaEntrada') and type = 'P') drop procedure dbo.SpCDIVbCadenaEntrada
GO
CREATE PROCEDURE SpCDIVbCadenaEntrada
@Persona varchar(10),
@Tipo varchar(2)
AS 
BEGIN
	DECLARE @Torniquete bit	,
	 @Valor varchar(3)
    SELECT  @Torniquete=Torniquete 
    FROM CDICtrlAccesoDll 
    WHERE persona=@Persona AND Tipo=@Tipo
    
    SET @Torniquete= isnull(@Torniquete,0)
    
    IF @Torniquete=1
		SET @Valor='1'
    ELSE
    	SET @Valor='0' 
    	
    SELECT @Valor AS 'Valor'--, len(@Valor)
    
END 
go
/**************** SpCDIVbCadena ****************/
if exists (select * from sysobjects where id = object_id('dbo.SpCDIVbCadena') and type = 'P') drop procedure dbo.SpCDIVbCadena
GO
CREATE PROCEDURE SpCDIVbCadena
@Llave varchar(50)
AS 
BEGIN

declare	
@CodigoPersona varchar(10),
@CodigoAcceso varchar(4),
@CodigoFecha datetime,
@CodigoIp Varchar(15),
@CodigoTipo varchar(2),
@Persona varchar(10)

SET NOCOUNT ON
	-----------------------------------------------------------------------------------------------------------------
	EXEC SpCDICtrlAccCadena @Llave,@CodigoPersona output, @CodigoAcceso output, @CodigoFecha output,@CodigoIp output
	-----------------------------------------------------------------------------------------------------------------
	
	IF EXISTS (SELECT 8 FROM CDIAccesoIP WHERE Empresa='CDI' AND Origen='Personal' AND Ip=@CodigoIp) 
	BEGIN
		SELECT @CodigoTipo='P',@Persona=@CodigoPersona
	END
	ELSE
	BEGIN
		IF EXISTS (SELECT 1 FROM CDISocioTarjeta WHERE Empresa='CDI' AND Tarjeta=@CodigoPersona)
			SELECT  @Persona= b.Socio,@CodigoTipo='S' FROM CDISocioTarjeta a JOIN
			Cte b ON a.Cte=b.Cliente WHERE a.Empresa='CDI' AND a.Tarjeta = @CodigoPersona
		ELSE 
			SELECT @Persona=RIGHT(@CodigoPersona,7),@CodigoTipo='S'
		
	END	   	
   	--SELECT @CodigoPersona '@CodigoPersona' ,@CodigoAcceso '@CodigoAcceso',@CodigoFecha '@CodigoFecha',@CodigoIp '@CodigoIp'
	--WAITFOR DELAY '00:00:01'
  	
   	EXEC SpCDIVbCadenaEntrada @Persona,@CodigoTipo
   	 
   	
END
GO
--EXEC SpCDIVbCadena '172.016.001.083 q181632A1006531117130161241101009'
--exec spCDIVbCadena '010.010.010.121 q282032A1002220000000172743110125'
--exec spCDIVbCadena '010.010.010.121 q282032A1000000000002172743110125'
--exec spCDIVbCadena '010.010.010.121 q282032A1002220000000172743110125'	



/**************** spAsisteSugerirNomina ****************/
if exists (select * from sysobjects where id = object_id('dbo.spAsisteSugerirNomina') and type = 'P') drop procedure dbo.spAsisteSugerirNomina
GO             
CREATE PROCEDURE spAsisteSugerirNomina
			@Empresa	char(5), 
			@Sucursal	int,
			@Usuario	char(10),
			@Modulo		char(5),
			@ID		int, 
			@Mov		char(20),
			@MovID		varchar(20),
			@Accion		char(20),

			@Ok 		int		OUTPUT, 
			@OkRef 		varchar(255)	OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Moneda		char(10),
    @TipoCambio		float,
    @GenerarFaltas	bit,
    @GenerarRetardos	bit,
    @GenerarHorasExtras	bit,
    @MovFaltas		char(20),
    @MovRetardos	char(20),
    @MovHorasExtras	char(20),
    @NominaID		int,
    @Minutos		int,
    @Horas		char(5),
    @Concepto		varchar(50)

  IF @Accion = 'CANCELAR'
  BEGIN

    DECLARE crCancelarNomina CURSOR FOR    
     SELECT ID FROM Nomina WHERE OrigenTipo = @Modulo AND Origen = @Mov AND OrigenID = @MovID
    OPEN crCancelarNomina
    FETCH NEXT FROM crCancelarNomina INTO @NominaID
    WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
    BEGIN
      IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
        EXEC spAfectar 'NOM', @NominaID, @Accion, @EnSilencio = 1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT      

      FETCH NEXT FROM crCancelarNomina INTO @NominaID
    END  -- While
    CLOSE crCancelarNomina
    DEALLOCATE crCancelarNomina

  END ELSE
  BEGIN
    SELECT @Moneda	       = ContMoneda,
           @GenerarFaltas      = AsisteGenerarFaltas,
           @GenerarRetardos    = AsisteGenerarRetardos,
           @GenerarHorasExtras = AsisteGenerarHorasExtras
      FROM EmpresaCfg
     WHERE Empresa = @Empresa
    SELECT @TipoCambio = TipoCambio FROM Mon WHERE Moneda = @Moneda
  
    SELECT @MovFaltas      = NomFaltas,
           @MovRetardos    = NomRetardos,
           @MovHorasExtras = NomHorasExtras
      FROM EmpresaCfgMov
     WHERE Empresa = @Empresa    

    DECLARE crAsisteConcepto CURSOR LOCAL FOR
     SELECT DISTINCT ISNULL(RTRIM(Concepto), '') 
     FROM AsisteD WHERE ID = @ID
     AND ISNULL(RTRIM(Concepto), '')  IN ('', 'Falta Justificada')
    OPEN crAsisteConcepto
    FETCH NEXT FROM crAsisteConcepto INTO @Concepto
    WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
    BEGIN
      IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
      BEGIN
        
        
        --IF @GenerarFaltas = 1
        --BEGIN  
        --  INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto)
        --  SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovFaltas, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio,@Concepto
        --    FROM Asiste WHERE ID = @ID 
        --  SELECT @NominaID = @@IDENTITY
    
        --  INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
        --  SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0
        --    FROM AsisteD d
        --    JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
        --   WHERE d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
        --   GROUP BY d.Personal, d.Fecha
        --END
        --IF @GenerarRetardos = 1
        --BEGIN  
        --  INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto)
        --  SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovRetardos, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, @Concepto
        --    FROM Asiste WHERE ID = @ID 
        --  SELECT @NominaID = @@IDENTITY
      
        --  INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
        --  SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 
        --  CASE 
        --  WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
        --       WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
        --       WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
        --       WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
        --       WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
        --       WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3                
        --       WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
        --       WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
        --       WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
        --       WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
        --       WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5              
               
        --  end
        --    FROM AsisteD d
        --    JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
        --   WHERE d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
        --   GROUP BY d.Personal, d.Fecha
           
           
           
        --END
   
		--se agrego para que genere registros por tipo de nomina  
		
			IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0                  --Para Faltas se sustituyo desde aqui DBR-----
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Empleado'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha)
	
				BEGIN
					INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
					SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovFaltas, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, CASE  WHEN @Concepto='' THEN 'Falta Injustificada' ELSE @Concepto END  ,'Empleado'
					FROM Asiste WHERE ID = @ID
					SELECT @NominaID = @@IDENTITY
					INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
					SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0
					FROM AsisteD d
					JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
					WHERE p.Tipo='Empleado'
					AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
					GROUP BY d.Personal, d.Fecha
				END
	
			IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Profesor'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha)
				BEGIN
					INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
					SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovFaltas, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, CASE  WHEN @Concepto='' THEN 'Falta Injustificada' ELSE @Concepto END  ,'Profesor'
					FROM Asiste WHERE ID = @ID
					SELECT @NominaID = @@IDENTITY
					INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
					SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0
					FROM AsisteD d
					JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
					WHERE p.Tipo='Profesor'
					AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
					GROUP BY d.Personal, d.Fecha
					END
	
			IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Qna Tepotzotlan'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha)
		
				BEGIN
					INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
					SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovFaltas, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio,  CASE  WHEN @Concepto='' THEN 'Falta Injustificada' ELSE @Concepto END  ,'Qna Tepotzotlan'
					FROM Asiste WHERE ID = @ID
					SELECT @NominaID = @@IDENTITY
					INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
					SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0
					FROM AsisteD d
					JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
					WHERE p.Tipo='Qna Tepotzotlan'
					AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
					GROUP BY d.Personal, d.Fecha
				END
		
			IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Sem Tepotzotlan'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha)                                                                                        
			
				BEGIN
					INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
					SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovFaltas, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, CASE  WHEN @Concepto='' THEN 'Falta Injustificada' ELSE @Concepto END  ,'Sem Tepotzotlan'
					FROM Asiste WHERE ID = @ID
					SELECT @NominaID = @@IDENTITY
					INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
					SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0
					FROM AsisteD d
					JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
					WHERE p.Tipo='Sem Tepotzotlan'
					AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
					GROUP BY d.Personal, d.Fecha
					END                                                                                         ---Para Faltas se sustituyo hasta aqui DBR---------
			
			IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0                       --Para Retardos se sustituyo desde aqui DBR---------
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Sindicalizado'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha)
				BEGIN
					INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
					SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovFaltas, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, CASE  WHEN @Concepto='' THEN 'Falta Injustificada' ELSE @Concepto END ,'Sindicalizado'
					FROM Asiste WHERE ID = @ID
					SELECT @NominaID = @@IDENTITY
					INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
					SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, 1.0
					FROM AsisteD d
					JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
					WHERE p.Tipo='Sindicalizado'
					AND d.ID = @ID AND UPPER(d.Tipo) = 'DIAS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
					GROUP BY d.Personal, d.Fecha
				END
					IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
				CASE
				WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
				WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
				WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
				WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
				WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
				WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
				WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
				WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
				WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
				WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
				WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
				end
				FROM AsisteD d
				JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
				WHERE p.Tipo='Empleado'
				AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
				GROUP BY d.Personal, d.Fecha)
				BEGIN
					INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
					SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovRetardos, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, @Concepto, 'Empleado'
					FROM Asiste WHERE ID = @ID
					SELECT @NominaID = @@IDENTITY
					INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
					SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
					CASE
					WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
					WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
					WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
					WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
					WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
					WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
					WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
					WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
					WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
					WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
					WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
				end
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Empleado'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha
			END
			
				IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
				CASE
				WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
				WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
				WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
				WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
				WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
				WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
				WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
				WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
				WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
				WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
				WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
				end
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Profesor'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha)
			
			BEGIN
			INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
			SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovRetardos, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, @Concepto, 'Profesor'
			FROM Asiste WHERE ID = @ID
			SELECT @NominaID = @@IDENTITY
			INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
			SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
			CASE
			WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
			WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
			WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
			WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
			WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
			WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
			WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
			WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
			WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
			WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
			WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
			end
			
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Profesor'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha
			
			END
			
			IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
			CASE
			WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
			WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
			WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
			WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
			WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
			WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
			WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
			WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
			WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
			WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
			WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
			end
			
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Qna Tepotzotlan'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha)
			
			BEGIN
			INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
			SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovRetardos, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, @Concepto, 'Qna Tepotzotlan'
			FROM Asiste WHERE ID = @ID
			SELECT @NominaID = @@IDENTITY
			INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
			SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
			CASE
			WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
			WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
			WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
			WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
			WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
			WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
			WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
			WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
			WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
			WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
			WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
			end
			
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Qna Tepotzotlan'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha
			END
			
			IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
			CASE
			WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
			WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
			WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
			WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
			WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
			WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
			WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
			WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
			WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
			WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
			WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
			end
			
			  FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Sem Tepotzotlan'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha)
			
			BEGIN
			INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
			SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovRetardos, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, @Concepto, 'Sem Tepotzotlan'
			FROM Asiste WHERE ID = @ID
			SELECT @NominaID = @@IDENTITY
			INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
			SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
			CASE
			WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
			WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
			WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
			WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
			WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
			WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
			WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
			WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
			WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
			WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
			WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
			end
			
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Sem Tepotzotlan'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha                                                          
			END
			IF EXISTS (SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
			CASE
			WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
			WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
			WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
			WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
			WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
			WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
			WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
			WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
			WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
			WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
			WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
			end
			
			           FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Sindicalizado'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha)
			
			BEGIN
			INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto, Observaciones)
			SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovRetardos, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, @Concepto, 'Sindicalizado'
			FROM Asiste WHERE ID = @ID
			SELECT @NominaID = @@IDENTITY
			INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
			SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha,
			CASE
			WHEN Sum(d.Cantidad)>10 AND Sum(d.Cantidad)<=30 THEN 0.5
			WHEN Sum(d.Cantidad)>30 AND Sum(d.Cantidad)<=60 THEN 1
			WHEN Sum(d.Cantidad)>60 AND Sum(d.Cantidad)<=90 THEN 1.5
			WHEN Sum(d.Cantidad)>90 AND Sum(d.Cantidad)<=120 THEN 2
			WHEN Sum(d.Cantidad)>120 AND Sum(d.Cantidad)<=150 THEN 2.5
			WHEN Sum(d.Cantidad)>150 AND Sum(d.Cantidad)<=180 THEN 3
			WHEN Sum(d.Cantidad)>180 AND Sum(d.Cantidad)<=210 THEN 3.5
			WHEN Sum(d.Cantidad)>210 AND Sum(d.Cantidad)<=240 THEN 4
			WHEN Sum(d.Cantidad)>240 AND Sum(d.Cantidad)<=270 THEN 4.5
			WHEN Sum(d.Cantidad)>270AND Sum(d.Cantidad)<=300 THEN 5
			WHEN Sum(d.Cantidad)>300 AND Sum(d.Cantidad)<=330 THEN 5.5
			end
			FROM AsisteD d
			JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
			WHERE p.Tipo='Sindicalizado'
			AND d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS AUSENCIA' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
			GROUP BY d.Personal, d.Fecha
	END                                                                                             --Para Retardos se sustituyo hasta aqui DBR----------


		--se agrego para que genere registros por tipo de nomina
           
        IF @GenerarHorasExtras = 8 --Para CDI no procede
        BEGIN  
          INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Concepto)
          SELECT GETDATE(), @Sucursal, @Sucursal, @Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', @MovHorasExtras, FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, @Concepto
            FROM Asiste WHERE ID = @ID 
          SELECT @NominaID = @@IDENTITY
    
          INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
          SELECT @NominaID, MIN(d.Renglon), d.Personal, d.Fecha, SUM(d.Cantidad)/60.0
            FROM AsisteD d
            JOIN Personal p ON p.Personal = d.Personal AND p.Estatus <> 'BAJA'
           WHERE d.ID = @ID AND UPPER(d.Tipo) = 'MINUTOS EXTRAS' AND ISNULL(RTRIM(d.Concepto), '') = @Concepto
           GROUP BY d.Personal, d.Fecha

          DECLARE crNominaD CURSOR LOCAL FOR
           SELECT Cantidad*60 FROM NominaD WHERE ID = @NominaID
          OPEN crNominaD
          FETCH NEXT FROM crNominaD INTO @Minutos
          WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
          BEGIN
            IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
            BEGIN
              EXEC spMinutosToHoras @Minutos, @Horas OUTPUT
              UPDATE NominaD SET Horas = @Horas WHERE CURRENT OF crNominaD
            END

            FETCH NEXT FROM crNominaD INTO @Minutos
          END  -- While
          CLOSE crNominaD
          DEALLOCATE crNominaD
        END
      END
      FETCH NEXT FROM crAsisteConcepto INTO @Concepto
    END  -- While
    CLOSE crAsisteConcepto
    DEALLOCATE crAsisteConcepto
  END
  

  RETURN
END
GO

/**************** spAsisteAfectar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spAsisteAfectar') and type = 'P') drop procedure dbo.spAsisteAfectar
GO             
CREATE PROCEDURE spAsisteAfectar
    		   @ID                		int,

		   @Accion			char(20),
    		   @Empresa	      		char(5),
    		   @Modulo	      		char(5),
    		   @Mov	  	      		char(20),
    		   @MovID             		varchar(20)    OUTPUT,
    		   @MovTipo     		char(20),
    		   @FechaEmision      		datetime,
    		   @FechaAfectacion      	datetime,
    		   @FechaConclusion		datetime,

    	 	   @Proyecto	      		varchar(50),
    		   @Usuario	      		char(10),
    		   @Autorizacion      		char(10),
    		   @DocFuente	      		int,
		   @Localidad			varchar(50),
    		   @Observaciones     		varchar(255),
    		   @Concepto     		varchar(50),
    		   @Estatus           		char(15),
 	    	   @EstatusNuevo	      	char(15),
    		   @FechaRegistro     		datetime,
    		   @Ejercicio	      		int,
    		   @Periodo	      		int,

		   @MovFechaD			datetime,
		   @MovFechaA			datetime,

    		   @OrigenTipo			char(10),
    		   @Origen			char(20),
    		   @OrigenID			varchar(20),
    		   @OrigenMovTipo		char(20),

		   @Conexion			bit,
		   @SincroFinal			bit,
		   @Sucursal			int, 
		   @SucursalDestino		int, 
		   @SucursalOrigen		int, 

		   @CfgContX			bit,
		   @CfgContXGenerar		char(20),
		   @GenerarPoliza		bit,

    		   @GenerarMov			char(20),
		   @IDGenerar			int	     OUTPUT,	
    		   @GenerarMovID	  	varchar(20)  OUTPUT,

       		   @Ok                		int          OUTPUT,
    		   @OkRef             		varchar(255) OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE
  	@NominaID int,
    @Personal			char(10),
    @Registro			char(10),   -- Entrada / Salida
    @HoraRegistro		char(5),
    @HoraD			char(5),
    @HoraA			char(5),
    @FechaD			datetime,
    @FechaA			datetime,
    @OrigenEstatus		char(15),

    @Generar			bit,
    @GenerarAfectado		bit,
    @GenerarModulo		char(5),
    @GenerarMovTipo		char(20),
    @GenerarEstatus		char(15),
    @GenerarPeriodo 		int, 
    @GenerarEjercicio 		int,
    @FechaCancelacion		datetime,
    @GenerarAccion		char(20),
    @CfgRegistroEstadoAvance	bit,
    @Cantidad			float,
    @ProyectoD			varchar(50),
    @Actividad			varchar(50),
    @MovimientoRef		varchar(50),
    @ActividadEstado		varchar(20),
    @ActividadAvance		float,
    @ProyectoID                 int,
    @RefID			int,
    @RefModulo			varchar(5),
        @Moneda		char(10),
    @TipoCambio		float
    
        SELECT @Moneda	       = ContMoneda
          
      FROM EmpresaCfg
     WHERE Empresa = @Empresa
    SELECT @TipoCambio = TipoCambio FROM Mon WHERE Moneda = @Moneda
    
  -- Inicializar Variables
  SELECT @Generar 		= 0,
         @GenerarAfectado	= 0,
         @IDGenerar		= NULL,
         @GenerarModulo		= NULL,
         @GenerarMovID	        = NULL,
         @GenerarMovTipo        = NULL,
         @GenerarEstatus 	= 'SINAFECTAR'

  SELECT @CfgRegistroEstadoAvance = ISNULL(AsisteRegistroEstadoAvance, 0)
    FROM EmpresaCfg
   WHERE Empresa = @Empresa
  -- Asignar el Consecutivo al Movimiento
  EXEC spMovConsecutivo @Sucursal, @SucursalOrigen, @SucursalDestino, @Empresa, @Usuario, @Modulo, @Ejercicio, @Periodo, @ID, @Mov, NULL, @Estatus, @Concepto, @Accion, @Conexion, @SincroFinal, @MovID OUTPUT, @Ok OUTPUT, @OkRef OUTPUT

  IF @Estatus IN ('SINAFECTAR', 'BORRADOR', 'CONFIRMAR') AND @Accion <> 'CANCELAR' AND @Ok IS NULL
    EXEC spMovChecarConsecutivo	@Empresa, @Modulo, @Mov, @MovID, NULL, @Ejercicio, @Periodo, @Ok OUTPUT, @OkRef OUTPUT

  IF @Accion IN ('CONSECUTIVO', 'SINCRO') AND @Ok IS NULL
  BEGIN
    IF @Accion = 'SINCRO' EXEC spAsignarSucursalEstatus @ID, @Modulo, @SucursalDestino, @Accion
    SELECT @Ok = 80060, @OkRef = @MovID
    RETURN
  END

  IF @OK IS NOT NULL RETURN 

  -- Generar Mov Nuevo
  IF @Accion = 'GENERAR' AND @Ok IS NULL
  BEGIN
    EXEC spMovGenerar @Sucursal, @Empresa, @Modulo, @Ejercicio, @Periodo, @Usuario, @FechaRegistro, @GenerarEstatus, 
		      NULL, NULL, 
                      @Mov, @MovID, 0,
		      @GenerarMov, NULL, @GenerarMovID OUTPUT, @IDGenerar OUTPUT, @Ok OUTPUT, @OkRef OUTPUT
    -- Leer MovTipo, Periodo y Ejercicio	
    EXEC spMovTipo @Modulo, @GenerarMov, @FechaAfectacion, @Empresa, NULL, NULL, @GenerarMovTipo OUTPUT, @GenerarPeriodo OUTPUT, @GenerarEjercicio OUTPUT, @Ok OUTPUT

    IF @@ERROR <> 0 SELECT @Ok = 1
    IF @GenerarMovTipo = 'ASIS.A' AND @Ok IS NULL 
    BEGIN
      BEGIN TRANSACTION
        EXEC spAsisteGenerarAsistencia @Sucursal, @ID, @FechaEmision, @Localidad, @IDGenerar, @GenerarMovTipo, @Ok OUTPUT

      IF @Ok IS NULL 
        COMMIT TRANSACTION
      ELSE
        ROLLBACK TRANSACTION

      IF @Ok IS NULL SELECT @Ok = 80030
    END

    RETURN
  END

  IF @OK IS NOT NULL RETURN 
  IF @Conexion = 0 
    BEGIN TRANSACTION

    -- Poner el Estatus del Movimiento en "AFECTANDO"
    EXEC spMovEstatus @Modulo, 'AFECTANDO', @ID, @Generar, @IDGenerar, @GenerarAfectado, @Ok OUTPUT

    -- Actualizar Sucursal Detalle
    IF @Accion = 'AFECTAR' AND @Estatus IN ('SINAFECTAR', 'BORRADOR', 'CONFIRMAR')
    BEGIN
      IF (SELECT Sincro FROM Version) = 1
        EXEC sp_executesql N'UPDATE AsisteD SET Sucursal = @Sucursal, SincroC = 1 WHERE ID = @ID AND (Sucursal <> @Sucursal OR SincroC <> 1)', N'@Sucursal int, @ID int', @Sucursal, @ID
      IF @MovTipo = 'ASIS.R'
        UPDATE AsisteD SET Fecha = @FechaEmision WHERE ID = @ID AND Fecha <> @FechaEmision
    END

    IF @Accion <> 'CANCELAR' 
      -- Registrar el Movimiento en "Mov"
      EXEC spRegistrarMovimiento @Sucursal, @Empresa, @Modulo, @Mov, @MovID, @ID, @Ejercicio, @Periodo, @FechaRegistro, @FechaEmision,
                       	         NULL, @Proyecto, NULL, NULL,
                       	         @Usuario, @Autorizacion, NULL, @DocFuente, @Observaciones,
			         @Generar, @GenerarMov, @GenerarMovID, @IDGenerar,
				 @Ok OUTPUT

    IF @Accion = 'DESAFECTAR'
      EXEC spMovDesafectar @Modulo, @ID, @Ok OUTPUT, @OkRef OUTPUT

    IF @MovTipo = 'ASIS.RA' AND @CfgRegistroEstadoAvance = 1 AND @Accion <> 'DESAFECTAR' 
    BEGIN
      DECLARE crAsiste CURSOR
         FOR SELECT NULLIF(RTRIM(Personal), ''), FechaD, Cantidad, NULLIF(RTRIM(Proyecto), ''), NULLIF(RTRIM(Actividad), ''), NULLIF(RTRIM(MovimientoRef), ''), NULLIF(RTRIM(ActividadEstado), ''), ActividadAvance
               FROM AsisteD
              WHERE ID = @ID 

      OPEN crAsiste
      FETCH NEXT FROM crAsiste INTO @Personal, @FechaD, @Cantidad, @ProyectoD, @Actividad, @MovimientoRef, @ActividadEstado, @ActividadAvance
      IF @@ERROR <> 0 SELECT @Ok = 1
      WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
      BEGIN
        IF @@FETCH_STATUS <> -2 AND @Ok IS NULL AND @Actividad IS NOT NULL AND @ActividadEstado IS NOT NULL
        BEGIN        
          IF @MovimientoRef IS NOT NULL
          BEGIN
	    SELECT @RefID = NULL
            EXEC spReferenciaEnModuloID @MovimientoRef, 'ST', @RefID
            IF @RefID IS NOT NULL
              UPDATE Soporte 
                 SET Estado = @ActividadEstado, Avance = @ActividadAvance
               WHERE Empresa = @Empresa AND Estatus IN ('PENDIENTE', 'CONCLUIDO') AND ID = @RefID
            ELSE BEGIN
              EXEC spReferenciaEnModuloID @MovimientoRef, 'VTAS', @RefID
              IF @RefID IS NOT NULL
                UPDATE VentaDAgente
                   SET Estado = @ActividadEstado, Avance = @ActividadAvance
                 WHERE ID = @RefID AND Actividad = @Actividad
              ELSE SELECT @Ok = 14055, @OkRef = @MovimientoRef
            END
          END
          IF @ProyectoD IS NOT NULL 
          BEGIN
            SELECT @ProyectoID = NULL
            SELECT @ProyectoID = MIN(ID) FROM Proyecto WHERE Proyecto = @ProyectoD AND Estatus = 'PENDIENTE'
            IF @ProyectoID IS NOT NULL
              UPDATE ProyectoD 
                 SET Estado = @ActividadEstado, 
                     Avance = @ActividadAvance,
                     FechaInicio = CASE WHEN FechaInicio IS NULL AND ISNULL(@ActividadAvance, 0) > 0 THEN @FechaEmision ELSE FechaInicio END,
                     FechaConclusion = CASE WHEN ISNULL(@ActividadAvance, 0) = 100 THEN @FechaEmision ELSE FechaInicio END
               WHERE ID = @ProyectoID AND Actividad = @Actividad
            IF @@ROWCOUNT = 0 OR @ProyectoID IS NULL BEGIN
              SELECT @Ok = 14050, @OkRef = @Actividad 
			  EXEC xpOk_14050 @Empresa, @Usuario, @Accion, @Modulo, @MovTipo, @Mov, @Estatus, @Actividad, @Ok OUTPUT, @OkRef OUTPUT
            END
          END
          IF @Ok IS NOT NULL AND @OkRef IS NULL
            SELECT @OkRef = 'Persona: '+RTRIM(@Personal)
        END
        FETCH NEXT FROM crAsiste INTO @Personal, @FechaD, @Cantidad, @ProyectoD, @Actividad, @MovimientoRef, @ActividadEstado, @ActividadAvance
        IF @@ERROR <> 0 SELECT @Ok = 1
      END  -- While
      CLOSE crAsiste
      DEALLOCATE crAsiste
    END



    IF @MovTipo = 'ASIS.C' AND @Ok IS NULL
    BEGIN
      IF @Accion = 'CANCELAR'
        UPDATE Asiste 
           SET Estatus = 'PROCESAR'
          FROM Asiste a, AsisteD d, MovTipo mt
            WHERE a.Mov = mt.Mov
                AND mt.Modulo = 'ASIS'
                AND mt.Clave IN ('ASIS.A', 'ASIS.R', 'ASIS.PD', 'ASIS.PH')
                AND a.ID = d.ID
                AND a.Empresa = @Empresa
                AND a.Estatus = 'CONCLUIDO'
                AND a.FechaEmision >= @MovFechaD AND a.FechaEmision < DATEADD(day, 1, @MovFechaA)
      ELSE
        UPDATE Asiste 
           SET Estatus = 'CONCLUIDO'
          FROM Asiste a, AsisteD d, MovTipo mt
            WHERE a.Mov = mt.Mov
                AND mt.Modulo = 'ASIS'
                AND mt.Clave IN ('ASIS.A', 'ASIS.R', 'ASIS.PD', 'ASIS.PH')
                AND a.ID = d.ID
                AND a.Empresa = @Empresa
                AND a.Estatus = 'PROCESAR'
                AND a.FechaEmision >= @MovFechaD AND a.FechaEmision < DATEADD(day, 1, @MovFechaA)

      IF @OK IS NULL
      BEGIN
      		--Faltas y Retardos
			EXEC spAsisteSugerirNomina @Empresa, @Sucursal, @Usuario, @Modulo, @ID, @Mov, @MovID, @Accion, @Ok OUTPUT, @OkRef OUTPUT
			IF @Accion='Afectar'
			begin
			TRUNCATE TABLE CDINomRetardosFestDesc
			EXEC spCDINomRepPersonalRelAsist @Empresa,'Nom','x','x',NULL,'x','x',@MovFechaD, @MovFechaA
			--SELECT 'aquinas'
			--SELECT * FROM CDINomRetardosFestDesc
			--Labora FEstivos
			--IF EXISTS  (SELECT * FROM  PasoPerFechas WHERE tipo IN ('LAF'))
			--BEGIN
			--	INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio)
			--	SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Festivo Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio
			--	FROM Asiste WHERE ID = @ID 
			--	SELECT @NominaID = @@IDENTITY

			--	INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
			--	SELECT @NominaID,ID,PErsonal,Fecha,1
			--	FROM  PasoPerFechas WHERE tipo IN ('LAF')
				
				


			--END
			----Labora Descanso
			--IF EXISTS  (SELECT * FROM  PasoPerFechas WHERE tipo IN ('LAD'))
			--BEGIN
			--	INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio)
			--	SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Descanso Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio
			--	FROM Asiste WHERE ID = @ID 
			--	SELECT @NominaID = @@IDENTITY

			--	INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
			--	SELECT @NominaID,ID,PErsonal,Fecha,1
			--	FROM  PasoPerFechas WHERE tipo IN ('LAD')
			--END
			
			----Retardos Labora Festivo Labora descanso
			--IF EXISTS  (SELECT * FROM  CDINomRetardosFestDesc )
			--BEGIN
			--	INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio)
			--	SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Retardos', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio
			--	FROM Asiste WHERE ID = @ID 
			--	SELECT @NominaID = @@IDENTITY

			--	INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
			--	SELECT @NominaID,ID,Personal,Fecha,Cantidad
			--	FROM  CDINomRetardosFestDesc 
			--END
			
			
			
			----Prima Dominical
			--IF EXISTS  (SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Sindicato,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,
			--	b.Personal,b.Registro,b.HoraREgistro,a.FechaAplicacion,p.DEpartamento,p.jornada
			--	FROM asiste a JOIN 
			--	asisteD b ON a.id=b.id JOIN
			--	Movtipo c ON a.Mov=c.MOv JOIN
			--	personal p ON p.Personal=b.Personal
			--	WHERE 1=1
			--	AND c.Clave='ASIS.R'
			--	AND c.Modulo='ASIS'
			--	AND datename(dw,a.FechaAplicacion)='Domingo'
			--	AND a.Estatus IN ('Procesar','Concluido')
			--	AND a.Empresa=@Empresa
			--	AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA	)
			--BEGIN
			--	INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio)
			--	SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Prima Dominical', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio
			--	FROM Asiste WHERE ID = @ID 
				
			--	SELECT @NominaID = @@IDENTITY
			--	CREATE TABLE #PasoNOmD (Id int IDENTITY(1,1),Personal varchar(10) null,Fecha datetime null)
			--	INSERT INTO  #PasoNOmD (Personal, Fecha)
			--	SELECT b.Personal,a.FechaAplicacion
			--	FROM asiste a JOIN 
			--	asisteD b ON a.id=b.id JOIN
			--	Movtipo c ON a.Mov=c.MOv JOIN
			--	personal p ON p.Personal=b.Personal
			--	WHERE 1=1
			--	AND c.Clave='ASIS.R'
			--	AND c.Modulo='ASIS'
			--	AND datename(dw,a.FechaAplicacion)='Domingo'
			--	AND a.Estatus IN ('Procesar','Concluido')
			--	AND a.Empresa=@Empresa
			--	AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA
			--	GROUP BY b.Personal,a.FechaAplicacion
			--	ORDER BY b.Personal,a.FechaAplicacion
				
			--	INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
			--	SELECT @NominaID,ID,PErsonal,Fecha,1 FROM #PasoNOmD 
				
			--END
			
			

			--	end
			

   --   END

   -- END


			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p                                                            --Para Festivo Trabajado se sustituyo desde aqui DBR------  
			ON a.personal=p.Personal WHERE p.Tipo='Empleado' AND a.Tipo IN ('LAF'))
			BEGIN
			INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
			SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Festivo Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Empleado'
			FROM Asiste WHERE ID = @ID
			SELECT @NominaID = @@IDENTITY
			INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
			SELECT @NominaID,ID,a.personal,Fecha,1
			FROM  PasoPerFechas a join Personal p 
			ON a.Personal=p.Personal
			WHERE p.Tipo='Empleado' 
			AND a.tipo IN ('LAF')
			END
	
	
			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p
			ON a.personal=p.Personal WHERE p.Tipo='Profesor' AND a.tipo IN ('LAF'))
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Festivo Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Profesor'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.personal,Fecha,1
				FROM  PasoPerFechas a join Personal p 
				ON a.Personal=p.Personal
				WHERE p.Tipo='Profesor' 
				AND a.tipo IN ('LAF')
			END
	
			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p
			ON a.personal=p.Personal WHERE p.Tipo='Qna Tepotzotlan' AND a.tipo IN ('LAF'))
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Festivo Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Qna Tepotzotlan'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.personal,Fecha,1
				FROM  PasoPerFechas a join Personal p 
				ON a.Personal=p.Personal
				WHERE p.Tipo='Qna Tepotzotlan' 
				AND a.tipo IN ('LAF')
			END
	
			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p
			ON a.personal=p.Personal WHERE p.Tipo='Sem Tepotzotlan' AND a.tipo IN ('LAF'))
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Festivo Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Sem Tepotzotlan'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.personal,Fecha,1
				FROM  PasoPerFechas a join Personal p 
				ON a.Personal=p.Personal
				WHERE p.Tipo='Sem Tepotzotlan' 
				AND a.tipo IN ('LAF')
			END
	
			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p
			ON a.personal=p.Personal WHERE p.Tipo='Sindicalizado' AND a.tipo IN ('LAF'))
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Festivo Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Sindicalizado'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.personal,Fecha,1
				FROM  PasoPerFechas a join Personal p 
				ON a.Personal=p.Personal
				WHERE p.Tipo='Sindicalizado' 
				AND a.tipo IN ('LAF')
			END                                                                                                           --Para Festivo se sustituyo hasta aqui DBR -----

			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p                                                    --Para descanso se sustituyo desde aqui DBR----
			ON a.Personal=p.Personal WHERE p.Tipo='Empleado' AND a.tipo IN ('LAD'))
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Descanso Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Empleado'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.personal,Fecha,1
				FROM  PasoPerFechas a JOIN Personal p
				ON a.personal=p.Personal WHERE p.Tipo='Empleado'
				AND a.Tipo IN ('LAD')
			END
	
			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p 
			ON a.Personal=p.Personal WHERE p.Tipo='Profesor' AND a.tipo IN ('LAD'))
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Descanso Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Profesor'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.personal,Fecha,1
				FROM  PasoPerFechas a JOIN Personal p
				ON a.personal=p.Personal WHERE p.Tipo='Profesor'
				AND a.Tipo IN ('LAD')
			END
	
			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p 
			ON a.Personal=p.Personal WHERE p.Tipo='Qna Tepotzotlan' AND a.tipo IN ('LAD'))
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Descanso Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Qna Tepotzotlan'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.personal,Fecha,1
				FROM  PasoPerFechas a JOIN Personal p
				ON a.personal=p.Personal WHERE p.Tipo='Qna Tepotzotlan'
				AND a.Tipo IN ('LAD')
			END
	
			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p 
			ON a.Personal=p.Personal WHERE p.Tipo='Sem Tepotzotlan' AND a.tipo IN ('LAD'))
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Descanso Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Sem Tepotzotlan'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.personal,Fecha,1
				FROM  PasoPerFechas a JOIN Personal p
				ON a.personal=p.Personal WHERE p.Tipo='Sem Tepotzotlan'
				AND a.Tipo IN ('LAD')
			END
	
			IF EXISTS  (SELECT * FROM  PasoPerFechas a JOIN Personal p 
			ON a.Personal=p.Personal WHERE p.Tipo='Sindicalizado' AND a.tipo IN ('LAD'))
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Descanso Trabajado', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Sindicalizado'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.personal,Fecha,1
				FROM  PasoPerFechas a JOIN Personal p
				ON a.personal=p.Personal WHERE p.Tipo='Sindicalizado'
				AND a.Tipo IN ('LAD')
			END                                                                                                     --Para descanso se sustituyo hsata aqui DBR------
	
			IF EXISTS  (SELECT * FROM  CDINomRetardosFestDesc a JOIN Personal p                                     --Para retardos en Fvo y Desc Trab se sustituyo desde aqui DBR------
			ON a.Personal=p.Personal WHERE p.Tipo='Empleado')
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Retardos', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio,'Empleado'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.Personal,Fecha,Cantidad
				FROM  CDINomRetardosFestDesc a JOIN Personal p
				ON a.Personal=p.Personal
				WHERE p.Tipo='Empleado'
			END
	
			IF EXISTS  (SELECT * FROM  CDINomRetardosFestDesc a JOIN Personal p 
			ON a.Personal=p.Personal WHERE p.Tipo='Profesor')
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Retardos', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio,'Profesor'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.Personal,Fecha,Cantidad
				FROM  CDINomRetardosFestDesc a JOIN Personal p
				ON a.Personal=p.Personal
				WHERE p.Tipo='Profesor'
			END
	
			IF EXISTS  (SELECT * FROM  CDINomRetardosFestDesc a JOIN Personal p 
			ON a.Personal=p.Personal WHERE p.Tipo='Qna Tepotzotlan')
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Retardos', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio,'Qna Tepotzotlan'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.Personal,Fecha,Cantidad
				FROM  CDINomRetardosFestDesc a JOIN Personal p
				ON a.Personal=p.Personal
				WHERE p.Tipo='Qna Tepotzotlan'
			END
	
			IF EXISTS  (SELECT * FROM  CDINomRetardosFestDesc a JOIN Personal p 
			ON a.Personal=p.Personal WHERE p.Tipo='Sem Tepotzotlan')
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Retardos', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio,'Sem Tepotzotlan'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.Personal,Fecha,Cantidad
				FROM  CDINomRetardosFestDesc a JOIN Personal p
				ON a.Personal=p.Personal
				WHERE p.Tipo='Sem Tepotzotlan'
			END
	
			IF EXISTS  (SELECT * FROM  CDINomRetardosFestDesc a JOIN Personal p 
			ON a.Personal=p.Personal WHERE p.Tipo='Sindicalizado')
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Retardos', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio,'Sindicalizado'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,a.Personal,Fecha,Cantidad
				FROM  CDINomRetardosFestDesc a JOIN Personal p
				ON a.Personal=p.Personal
				WHERE p.Tipo='Sindicalizado'
			END                                                                                                                       ---Para retardos en Fvo y Desc Trab se sustituyo hasta aqui------
	
			IF EXISTS  (SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Sindicato,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,   --Para Prima Dominical se sustituyo desde aqui DBR--------
			b.Personal,b.Registro,b.HoraREgistro,a.FechaAplicacion,p.DEpartamento,p.jornada
			FROM asiste a JOIN
			asisteD b ON a.id=b.id JOIN
			Movtipo c ON a.Mov=c.MOv JOIN
			personal p ON p.Personal=b.Personal
			WHERE 1=1
			AND p.Tipo='Empleado'
			AND c.Clave='ASIS.R'
			AND c.Modulo='ASIS'
			AND datename(dw,a.FechaAplicacion)='Domingo'
			AND a.Estatus IN ('Procesar','Concluido')
			AND a.Empresa=@Empresa
			AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA	)
			
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Prima Dominical', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Empleado'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				
				CREATE TABLE #PasoNOmD (Id int IDENTITY(1,1),Personal varchar(10) null,Fecha datetime null)
				INSERT INTO  #PasoNOmD (Personal, Fecha)
				SELECT b.Personal,a.FechaAplicacion
				FROM asiste a JOIN
				asisteD b ON a.id=b.id JOIN
				Movtipo c ON a.Mov=c.MOv JOIN
				personal p ON p.Personal=b.Personal
				WHERE 1=1
				AND p.Tipo='Empleado'
				AND c.Clave='ASIS.R'
				AND c.Modulo='ASIS'
				AND datename(dw,a.FechaAplicacion)='Domingo'
				AND a.Estatus IN ('Procesar','Concluido')
				AND a.Empresa=@Empresa
				AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA
				GROUP BY b.Personal,a.FechaAplicacion
				ORDER BY b.Personal,a.FechaAplicacion
				
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,PErsonal,Fecha,1 FROM #PasoNOmD
			END
	
			IF EXISTS  (SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Sindicato,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,
			b.Personal,b.Registro,b.HoraREgistro,a.FechaAplicacion,p.DEpartamento,p.jornada
			FROM asiste a JOIN
			asisteD b ON a.id=b.id JOIN
			Movtipo c ON a.Mov=c.MOv JOIN
			personal p ON p.Personal=b.Personal
			WHERE 1=1
			AND p.Tipo='Profesor'
			AND c.Clave='ASIS.R'
			AND c.Modulo='ASIS'
			AND datename(dw,a.FechaAplicacion)='Domingo'
			AND a.Estatus IN ('Procesar','Concluido')
			AND a.Empresa=@Empresa
			AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA	)
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Prima Dominical', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Profesor'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				CREATE TABLE #PasoNOmD1 (Id int IDENTITY(1,1),Personal varchar(10) null,Fecha datetime null)
				INSERT INTO  #PasoNOmD1 (Personal, Fecha)
				SELECT b.Personal,a.FechaAplicacion
				FROM asiste a JOIN
				asisteD b ON a.id=b.id JOIN
				Movtipo c ON a.Mov=c.MOv JOIN
				personal p ON p.Personal=b.Personal
				WHERE 1=1
				AND p.Tipo='Profesor'
				AND c.Clave='ASIS.R'
				AND c.Modulo='ASIS'
				AND datename(dw,a.FechaAplicacion)='Domingo'
				AND a.Estatus IN ('Procesar','Concluido')
				AND a.Empresa=@Empresa
				AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA
				GROUP BY b.Personal,a.FechaAplicacion
				ORDER BY b.Personal,a.FechaAplicacion
				
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,PErsonal,Fecha,1 FROM #PasoNOmD1
			END
	
			IF EXISTS  (SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Sindicato,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,
			b.Personal,b.Registro,b.HoraREgistro,a.FechaAplicacion,p.DEpartamento,p.jornada
			FROM asiste a JOIN
			asisteD b ON a.id=b.id JOIN
			Movtipo c ON a.Mov=c.MOv JOIN
			personal p ON p.Personal=b.Personal
			WHERE 1=1
			AND p.Tipo='Qna Tepotzotlan'
			AND c.Clave='ASIS.R'
			AND c.Modulo='ASIS'
			AND datename(dw,a.FechaAplicacion)='Domingo'
			AND a.Estatus IN ('Procesar','Concluido')
			AND a.Empresa=@Empresa
			AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA	)
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Prima Dominical', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Qna Tepotzotlan'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				CREATE TABLE #PasoNOmD2 (Id int IDENTITY(1,1),Personal varchar(10) null,Fecha datetime null)
				INSERT INTO  #PasoNOmD2 (Personal, Fecha)
				SELECT b.Personal,a.FechaAplicacion
				FROM asiste a JOIN
				asisteD b ON a.id=b.id JOIN
				Movtipo c ON a.Mov=c.MOv JOIN
				personal p ON p.Personal=b.Personal
				WHERE 1=1
				AND p.Tipo='Qna Tepotzotlan'
				AND c.Clave='ASIS.R'
				AND c.Modulo='ASIS'
				AND datename(dw,a.FechaAplicacion)='Domingo'
				AND a.Estatus IN ('Procesar','Concluido')
				AND a.Empresa=@Empresa
				AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA
				GROUP BY b.Personal,a.FechaAplicacion
				ORDER BY b.Personal,a.FechaAplicacion
				
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,PErsonal,Fecha,1 FROM #PasoNOmD2
			END
	
			IF EXISTS  (SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Sindicato,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,
			b.Personal,b.Registro,b.HoraREgistro,a.FechaAplicacion,p.DEpartamento,p.jornada
			FROM asiste a JOIN
			asisteD b ON a.id=b.id JOIN
			Movtipo c ON a.Mov=c.MOv JOIN
			personal p ON p.Personal=b.Personal
			WHERE 1=1
			AND p.Tipo='Sem Tepotzotlan'
			AND c.Clave='ASIS.R'
			AND c.Modulo='ASIS'
			AND datename(dw,a.FechaAplicacion)='Domingo'
			AND a.Estatus IN ('Procesar','Concluido')
			AND a.Empresa=@Empresa
			AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA	)
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Prima Dominical', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Sem Tepotzotlan'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				CREATE TABLE #PasoNOmD3 (Id int IDENTITY(1,1),Personal varchar(10) null,Fecha datetime null)
				INSERT INTO  #PasoNOmD3 (Personal, Fecha)
				SELECT b.Personal,a.FechaAplicacion
				FROM asiste a JOIN
				asisteD b ON a.id=b.id JOIN
				Movtipo c ON a.Mov=c.MOv JOIN
				personal p ON p.Personal=b.Personal
				WHERE 1=1
				AND p.Tipo='Sem Tepotzotlan'
				AND c.Clave='ASIS.R'
				AND c.Modulo='ASIS'
				AND datename(dw,a.FechaAplicacion)='Domingo'
				AND a.Estatus IN ('Procesar','Concluido')
				AND a.Empresa=@Empresa
				AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA
				GROUP BY b.Personal,a.FechaAplicacion
				ORDER BY b.Personal,a.FechaAplicacion
				
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,PErsonal,Fecha,1 FROM #PasoNOmD3
			END
	
			IF EXISTS  (SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Sindicato,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,
			b.Personal,b.Registro,b.HoraREgistro,a.FechaAplicacion,p.DEpartamento,p.jornada
			FROM asiste a JOIN
			asisteD b ON a.id=b.id JOIN
			Movtipo c ON a.Mov=c.MOv JOIN
			personal p ON p.Personal=b.Personal
			WHERE 1=1
			AND p.Tipo='Sindicalizado'
			AND c.Clave='ASIS.R'
			AND c.Modulo='ASIS'
			AND datename(dw,a.FechaAplicacion)='Domingo'
			AND a.Estatus IN ('Procesar','Concluido')
			AND a.Empresa=@Empresa
			AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA	)
			BEGIN
				INSERT Nomina (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo, Origen, OrigenID, Empresa, Usuario, Estatus, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Observaciones)
				SELECT GETDATE(), Sucursal, Sucursal, Sucursal, 'ASIS', @Mov, @MovID, @Empresa, @Usuario, 'CONFIRMAR', 'Prima Dominical', FechaEmision, Proyecto, UEN, @Moneda, @TipoCambio, 'Sindicalizado'
				FROM Asiste WHERE ID = @ID
				SELECT @NominaID = @@IDENTITY
				CREATE TABLE #PasoNOmD4 (Id int IDENTITY(1,1),Personal varchar(10) null,Fecha datetime null)
				INSERT INTO  #PasoNOmD4 (Personal, Fecha)
				SELECT b.Personal,a.FechaAplicacion
				FROM asiste a JOIN
				asisteD b ON a.id=b.id JOIN
				Movtipo c ON a.Mov=c.MOv JOIN
				personal p ON p.Personal=b.Personal
				WHERE 1=1
				AND p.Tipo='Sindicalizado'
				AND c.Clave='ASIS.R'
				AND c.Modulo='ASIS'
				AND datename(dw,a.FechaAplicacion)='Domingo'
				AND a.Estatus IN ('Procesar','Concluido')
				AND a.Empresa=@Empresa
				AND a.FechaAplicacion BETWEEN @MovFechaD AND  @MovFechaA
				GROUP BY b.Personal,a.FechaAplicacion
				ORDER BY b.Personal,a.FechaAplicacion
				
				INSERT NominaD (ID, Renglon, Personal, FechaD, Cantidad)
				SELECT @NominaID,ID,PErsonal,Fecha,1 FROM #PasoNOmD4
			END

			END
			END
			END                                                                           --Para Prima Dominical se sustituyo hasta aqui DBR------



    -- Actualizar Movimiento
    IF @Ok IS NULL
    BEGIN
      IF @EstatusNuevo = 'CANCELADO' SELECT @FechaCancelacion = @FechaRegistro ELSE SELECT @FechaCancelacion = NULL
      IF @EstatusNuevo = 'CONCLUIDO' SELECT @FechaConclusion  = @FechaEmision  ELSE IF @EstatusNuevo <> 'CANCELADO' SELECT @FechaConclusion  = NULL
      IF @CfgContX = 1 AND @CfgContXGenerar <> 'NO' 
      BEGIN
	IF @Estatus IN     ('SINAFECTAR', 'BORRADOR', 'CONFIRMAR') AND @EstatusNuevo NOT IN ('PROCESAR', 'CANCELADO') SELECT @GenerarPoliza = 1 ELSE
        IF @Estatus NOT IN ('SINAFECTAR', 'BORRADOR', 'CONFIRMAR') AND @EstatusNuevo =  'CANCELADO' IF @GenerarPoliza = 1 SELECT @GenerarPoliza = 0 ELSE SELECT @GenerarPoliza = 1
      END  
      EXEC spValidarTareas @Empresa, @Modulo, @ID, @EstatusNuevo, @Ok OUTPUT, @OkRef OUTPUT
      UPDATE Asiste
         SET FechaConclusion  = @FechaConclusion, 
             FechaCancelacion = @FechaCancelacion,
             UltimoCambio     = /*CASE WHEN UltimoCambio IS NULL THEN */@FechaRegistro /*ELSE UltimoCambio END*/,
             Estatus          = @EstatusNuevo,
             Situacion 	      = CASE WHEN @Estatus <> @EstatusNuevo THEN NULL ELSE Situacion END,
             GenerarPoliza    = @GenerarPoliza
       WHERE ID = @ID 
      IF @@ERROR <> 0 SELECT @Ok = 1
    END

    IF @MovTipo = 'ASIS.A' AND @EstatusNuevo <> 'CONCLUIDO' AND @OrigenMovTipo IS NOT NULL AND @Ok IS NULL 
    BEGIN
      SELECT @OrigenEstatus = @EstatusNuevo
      IF @OrigenEstatus = 'PROCESAR'  SELECT @OrigenEstatus = 'CONCLUIDO'
      IF @OrigenEstatus = 'CANCELADO' SELECT @FechaCancelacion = @FechaRegistro ELSE SELECT @FechaCancelacion = NULL
      IF @OrigenEstatus = 'CONCLUIDO' SELECT @FechaConclusion  = @FechaEmision  ELSE IF @OrigenEstatus <> 'CANCELADO' SELECT @FechaConclusion  = NULL
      UPDATE Asiste 
         SET FechaConclusion  = @FechaConclusion, 
             FechaCancelacion = @FechaCancelacion,
             Estatus          = @OrigenEstatus
       WHERE Empresa = @Empresa AND Mov = @Origen AND MovID = @OrigenID AND Estatus <> 'CANCELADO'
    END

  -- Agregar a Estatus Log
  IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
    EXEC spMovFinal @Empresa, @Sucursal, @Modulo, @ID, @Estatus, @EstatusNuevo, @Usuario, @FechaEmision, @FechaRegistro, @Mov, @MovID, @MovTipo, @IDGenerar, @Ok OUTPUT, @OkRef OUTPUT

  -- Cancelar el Flujo
  IF @Accion = 'CANCELAR' AND @EstatusNuevo = 'CANCELADO' AND @Ok IS NULL
    EXEC spCancelarFlujo @Empresa, @Modulo, @ID, @Ok OUTPUT 
  IF @Conexion = 0
    IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
      COMMIT TRANSACTION
    ELSE
      ROLLBACK TRANSACTION
      
      
    
  RETURN
END
GO
--SpSacaLosPresentes0
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpSacaLosPresentes0') and type = 'P') DROP PROCEDURE dbo.SpSacaLosPresentes0
GO 
CREATE PROCEDURE SpSacaLosPresentes0 
@Empresa char(20), 
@Usuario char(10) AS  
BEGIN  
	DECLARE   
	@Personal char(10),  
	@ID       int,  
	@Renglon  Float,  
	@Hoy      DateTime,  
	@EntradaMaxima varchar(5),   
	@hora int , @minuto INT,
	@EntradaMaximaOriginal VARCHAR (5),
	@IDO		INT  
	SELECT @ID=NULL  
	SELECT @IDO=NULL 
	SELECT @Hoy =  CONVERT(datetime, LEFT(CONVERT(varchar, GETDATE(), 103), 10), 103)  
	DECLARE  PresenteSalida CURSOR local static FOR 
	SELECT Personal FROM Personal WHERE EstaPresente=1 AND ESTATUS='ALTA'  
	OPEN PresenteSalida  
	FETCH NEXT FROM PresenteSalida INTO    @Personal  
	IF @@FETCH_STATUS = 0  
	BEGIN  
			
			INSERT ASISTE(Empresa,  Mov,        FechaEmision, Usuario,   Estatus,    Observaciones, FechaAplicacion)  
			VALUES       (@Empresa, 'Registro', @Hoy,         @Usuario, 'BORRADOR', 'No Marco Salida', @Hoy)  
			SELECT @ID = @@IDENTITY, @Renglon = 2048.0  
			
			EXEC spAfectar 'ASIS', @ID, 'CONSECUTIVO', 'TODO', NULL, @Usuario, 0, 1
			
			WHILE @@FETCH_STATUS = 0  
			BEGIN  
			
				if (Select esnocturna  from  Personal A join Jornada b on A.Jornada=B.Jornada where A.Personal=@Personal)=0	
				BEGIN
		
					SELECT  @EntradaMaximaOriginal= ISNULL( MAX(HORAREGISTRO), '') ,@IDO=AsisteD.ID  
					FROM Asiste,AsisteD   
					WHERE Asiste.id = Asisted.id   
					AND FechaEmision = @Hoy   
					AND Personal = @Personal
					AND Asiste.Mov='Registro'
					AND AsisteD.Registro='Entrada'
					AND Asiste.Estatus <>'CANCELADO'
					GROUP BY AsisteD.ID
					
					SELECT @EntradaMaxima= ISNULL( MAX(HORAREGISTRO), '')   
					FROM Asiste,AsisteD   
					WHERE Asiste.id = Asisted.id   
					AND FechaEmision = @Hoy 
					AND Asiste.Mov='Registro'
					AND AsisteD.Registro='Entrada'
					AND Asiste.Estatus<>'CANCELADO'  
					AND Personal = @Personal  

					IF LEN(@EntradaMaxima) >1  
					BEGIN  
						SELECT @Hora   = CONVERT(int, SUBSTRING(@EntradaMaxima,1,2))  
						SELECT @Minuto = CONVERT(int, SUBSTRING(@EntradaMaxima,4,2))  
						IF @Minuto=59   
						SELECT @Hora = @Hora + 1 , @Minuto=0   
						ELSE   
						SELECT @Minuto = @Minuto + 1  
						IF @Hora = 24 Select @Hora = 00  
						SELECT @EntradaMaxima = RIGHT('00' + RTRIM(LTRIM(CONVERT(varchar, @Hora))), 2) + ':' + RIGHT('00' + RTRIM(LTRIM(CONVERT(varchar, @Minuto))), 2)  
					END     

					IF @EntradaMaxima <  '23:30' SELECT @EntradaMaxima = '23:30'  

					INSERT AsisteD(ID,  Renglon,  Personal,  Registro,  HoraRegistro,   FechaD,                          FechaA,                           Observaciones)  
					VALUES        (@ID, @Renglon, @Personal, 'Entrada',  @EntradaMaximaOriginal, CONVERT(DATETIME,CONVERT ( VARCHAR, GETDATE(),103),103), CONVERT(DATETIME,CONVERT ( VARCHAR, GETDATE(),103),103), 'No Marco Salida')  
					SELECT @Renglon = @Renglon + 2048.0


					INSERT AsisteD(ID,  Renglon,  Personal,  Registro,  HoraRegistro,   FechaD,                          FechaA,                           Observaciones)  
					VALUES        (@ID, @Renglon, @Personal, 'Salida',  @EntradaMaxima, CONVERT(DATETIME,CONVERT ( VARCHAR, GETDATE(),103),103), CONVERT(DATETIME,CONVERT ( VARCHAR, GETDATE(),103),103), 'No Marco Salida')  
					DELETE FROM AsisteD WHERE Personal=@Personal AND Registro='Entrada' AND ID=@IDO AND HoraRegistro= @EntradaMaximaOriginal

				
					
					UPDATE Personal SET EstaPresente=0 
					from Personal p join Jornada J on p.Jornada=J.Jornada
					WHERE p.Personal=@Personal 
					and J.EsNocturna=0 
					
					 

					SELECT @Renglon = @Renglon + 2048.0  
				END
			FETCH NEXT FROM PresenteSalida INTO  @Personal  
		END  
		CLOSE PresenteSalida  
		DEALLOCATE PresenteSalida  
		IF NOT EXISTS  (SELECT * FROM AsisteD WHERE ID=@ID )
		DELETE Asiste WHERE ID=@ID
		
		
	END  
END  
  Go
 -- EXEC SpSacaLosPresentes0 'cdi','Nomina'  
--SpSacaLosPresentes1 Jornada Nocturna-- 
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpSacaLosPresentes1') and type = 'P') DROP PROCEDURE dbo.SpSacaLosPresentes1
GO 
CREATE PROCEDURE SpSacaLosPresentes1
@Empresa char(20), 
@Usuario char(10) AS  
BEGIN  
	DECLARE   
	@Personal char(10),  
	@ID       int,  
	@Renglon  Float,  
	@Hoy      DateTime,  
	@EntradaMaxima varchar(5),   
	@hora int , @minuto INT,
	@EntradaMaximaOriginal	VARCHAR(5),
	@IDO		INT,
	@ID2		INT  
	SELECT @ID=NULL
	SELECT @IDO=NULL 
	SELECT @ID2= NULL   
	SELECT @Hoy =  CONVERT(datetime, LEFT(CONVERT(varchar, GETDATE(), 103), 10), 103)  
	DECLARE  PresenteSalida CURSOR local static FOR 
	SELECT Personal FROM Personal WHERE EstaPresente=1 AND ESTATUS='ALTA'  
	OPEN PresenteSalida  
	FETCH NEXT FROM PresenteSalida INTO    @Personal  
	IF @@FETCH_STATUS = 0  
	BEGIN  
			
			INSERT ASISTE(Empresa,  Mov,        FechaEmision, Usuario,   Estatus,    Observaciones, FechaAplicacion)  
			VALUES       (@Empresa, 'Registro', @Hoy-1,         @Usuario, 'BORRADOR', 'No Marco Salida', @Hoy-1)  
			SELECT @ID = @@IDENTITY, @Renglon = 2048.0  
			
			EXEC spAfectar 'ASIS', @ID, 'CONSECUTIVO', 'TODO', NULL, @Usuario, 0, 1
			
			INSERT ASISTE(Empresa,  Mov,        FechaEmision, Usuario,   Estatus,    Observaciones, FechaAplicacion)  
			VALUES       (@Empresa, 'Registro', @Hoy,         @Usuario, 'BORRADOR', 'No Marco Salida',@Hoy)  
			SELECT @ID2= @@IDENTITY, @Renglon = 2048.0  
			
			EXEC spAfectar 'ASIS', @ID2, 'CONSECUTIVO', 'TODO', NULL, @Usuario, 0, 1
			
			WHILE @@FETCH_STATUS = 0  
			BEGIN  
			
				if (Select esnocturna  from  Personal A join Jornada b on A.Jornada=B.Jornada where A.Personal=@Personal)=1	
				BEGIN
		
					
					SELECT @EntradaMaximaOriginal= ISNULL( MAX(HORAREGISTRO), ''), @IDO=AsisteD.ID   
					FROM Asiste,AsisteD   
					WHERE Asiste.id = Asisted.id   
					AND FechaEmision = @Hoy-1   
					AND Personal = @Personal
					AND Asiste.Mov='Registro'  
					AND Registro='Entrada'
					AND Asiste.Estatus <>'CANCELADO'
					GROUP BY AsisteD.ID
					
										
					SELECT @EntradaMaxima= ISNULL( MAX(HORAREGISTRO), '')   
					FROM Asiste,AsisteD   
					WHERE Asiste.id = Asisted.id   
					AND FechaEmision = @Hoy-1   
					AND Personal = @Personal
					AND Asiste.Mov='Registro'
					AND AsisteD.Registro='Entrada'
					AND Asiste.Estatus<>'CANCELADO'  

					IF LEN(@EntradaMaxima) >1  
					BEGIN  
						SELECT @Hora   = CONVERT(int, SUBSTRING(@EntradaMaxima,1,2))  
						SELECT @Minuto = CONVERT(int, SUBSTRING(@EntradaMaxima,4,2))  
						IF @Minuto=59   
						SELECT @Hora = @Hora + 1 , @Minuto=0   
						ELSE   
						SELECT @Minuto = @Minuto + 1  
						IF @Hora = 24 Select @Hora = 00  
						SELECT @EntradaMaxima = RIGHT('00' + RTRIM(LTRIM(CONVERT(varchar, @Hora))), 2) + ':' + RIGHT('00' + RTRIM(LTRIM(CONVERT(varchar, @Minuto))), 2)  
					END     

					IF @EntradaMaxima <  '23:59' SELECT @EntradaMaxima = '05:30'  

					INSERT AsisteD(ID,  Renglon,  Personal,  Registro,  HoraRegistro,   FechaD,                          FechaA,                           Observaciones)  
					VALUES        (@ID, @Renglon, @Personal, 'Entrada',  @EntradaMaximaOriginal, CONVERT(DATETIME,CONVERT ( VARCHAR, GETDATE(),103),103)-1, CONVERT(DATETIME,CONVERT ( VARCHAR, GETDATE(),103),103)-1, 'No Marco Salida')  
					SELECT @Renglon = @Renglon + 2048.0
					
					INSERT AsisteD(ID,  Renglon,  Personal,  Registro,  HoraRegistro,   FechaD,                          FechaA,                           Observaciones)  
					VALUES        (@ID2, @Renglon, @Personal, 'Salida',  @EntradaMaxima, CONVERT(DATETIME,CONVERT ( VARCHAR, GETDATE(),103),103), CONVERT(DATETIME,CONVERT ( VARCHAR, GETDATE(),103),103), 'No Marco Salida')  
					DELETE FROM AsisteD WHERE Personal=@Personal AND Registro='Entrada' AND ID=@IDO AND HoraRegistro=@EntradaMaximaOriginal

				
					
					UPDATE Personal SET EstaPresente=0 
					from Personal p join Jornada J on p.Jornada=J.Jornada
					WHERE p.Personal=@Personal 
					and J.EsNocturna=1 
					
					 

					SELECT @Renglon = @Renglon + 2048.0  
				END
			FETCH NEXT FROM PresenteSalida INTO  @Personal  
		END  
		CLOSE PresenteSalida  
		DEALLOCATE PresenteSalida  
		IF NOT EXISTS  (SELECT * FROM AsisteD WHERE ID=@ID )
		DELETE Asiste WHERE ID=@ID
		ELSE 
		IF NOT EXISTS  (SELECT * FROM AsisteD WHERE ID=@ID2 )
		DELETE Asiste WHERE ID=@ID2
		END
END  
  Go
   
  --EXEC SpSacaLosPresentes1 'cdi','Nomina'
--CDISpAfetarMovRH
IF EXISTS (select * from sysobjects where id = object_id('dbo.CDISpAfetarMovRH') and type = 'P') DROP PROCEDURE dbo.CDISpAfetarMovRH
GO
CREATE  PROCEDURE  CDISpAfetarMovRH (@NombreJob varchar(100))
AS BEGIN
	DECLARE	@IdMov int,
				  @Ok							int,
			    @OkRef					varchar(255),
			    @Empresa varchar(5), 
			    @Mov     varchar(20), 
			    @MovID   varchar(20),
			    @Fecha   datetime,
			    @Usuario varchar(10)
	DECLARE IDRHMovParaAfectar CURSOR FOR 
	select  ID, Empresa, Mov, MovID, FechaEmision, Usuario 	FROM RH WHERE Mov in('Cambio Jornada','Bajas','Reingresos') and Estatus='SinAfectar'	And FechaEmision=dbo.fnFechaSinHora(GETDATE())
	OR Mov='Modificaciones' AND Concepto='Cambio Checada Libre' AND Estatus = 'SinAfectar' And FechaEmision=dbo.fnFechaSinHora(GETDATE())

	OPEN IDRHMovParaAfectar
	FETCH NEXT FROM IDRHMovParaAfectar INTO @IdMov, @Empresa, @Mov, @MovID, @Fecha, @Usuario
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 
		EXEC  spAfectar 'RH', @IdMov, 'AFECTAR', 'Todo', NULL, 'DEMO', @Estacion=88,@EnSilencio=1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT  
		UPDATE RH set Observaciones ='Afectado por Job' where ID=@IdMov
		
       IF @Ok IS NOT NULL
       BEGIN
         EXEC spCDIVisorMovJob @NombreJob, 104, @Empresa, @Mov, @MovID, '', '', @IdMov, '', '', @Fecha, 'RH', @Usuario, @OK, @OkRef
       END		
		
		FETCH NEXT FROM IDRHMovParaAfectar INTO @IdMov, @Empresa, @Mov, @MovID, @Fecha, @Usuario
	END 
	CLOSE IDRHMovParaAfectar
	DEALLOCATE IDRHMovParaAfectar
	
--DSG
EXEC spCDIVisorMovJobMail 104, @NombreJob	
END
 go
 --exec CDISpAfetarMovRH
IF EXISTS (select * from sysobjects where id = object_id('dbo.Sp_CdiJornadaTem') and type = 'P') 
DROP PROCEDURE dbo.Sp_CdiJornadaTem
GO
CREATE PROCEDURE dbo.Sp_CdiJornadaTem
 @Empresa varchar(5),
@Personal varchar(10),
@Usuario varchar (10),
@FechaD datetime,
@FEchaA datetime
AS
BEGIN
	DECLARE @Hoy datetime
	SET @Hoy=getdate()
	IF @FechaD<=@FEchaA
	BEGIN
		
		WHILE @FechaD<=@FEchaA
		BEGIN
			
			IF NOT EXISTS (SELECT 1 FROM CDIJornadaTemp WHERE Personal=@Personal AND FechaD=@FechaD )
				INSERT INTO CDIJornadaTemp (Empresa,Usuario,FechaEmision,Personal,FechaD)
				VALUES (@Empresa,@Usuario,@Hoy,@Personal,@FechaD)
				--SELECT * FROM CDIJornadaTemp
			SET @FechaD=dateAdd(day,1,@FechaD) 
			
			
		END
		
	END	
END
GO
--EXEC Sp_CdiJornadaTem 'CDI',
IF EXISTS (select * from sysobjects where id = object_id('dbo.Sp_Cdijornadas') and type = 'P') 
DROP PROCEDURE dbo.Sp_Cdijornadas
GO
CREATE PROCEDURE dbo.Sp_Cdijornadas
@Jornada varchar(20)
AS
BEGIN
	IF @Jornada<>'NULL'
		Select jornada from jornada where tipo='Control Asistencia' AND jornada=@Jornada
	ELSE 
		Select jornada from jornada where tipo='Control Asistencia'
END
GO
--EXEC Sp_Cdijornadas 'NULL'
IF exists (select * from sysobjects where id = object_id('dbo.RepCDISPJornadaTemp') and type = 'P') drop procedure dbo.RepCDISPJornadaTemp
GO 
CREATE PROCEDURE RepCDISPJornadaTemp  
	@FechaD DateTime,
	@FechaA DateTime,
	@Personal char(10)

		AS  
		BEGIN   
		select A.Personal, A.Fechad, A.Jornada , JD.Entrada, JD.Salida
		from CDIJornadaTemp a, JornadaD JD
		where a.jornada=JD.Jornada
		and A.Fechad between @FechaD and @FechaA
		and A.Personal=@Personal

		END
GO
--Exec RepCDISPJornadaTemp '01/10/2010', '06/10/2010','1'
IF exists (select * from sysobjects where id = object_id('dbo.SpNomCDIMostrarBitacora') and type = 'P') drop procedure dbo.SpNomCDIMostrarBitacora
GO 
CREATE PROCEDURE SpNomCDIMostrarBitacora
@id int
AS
BEGIN
	DECLARE @muestra varchar(2),
	@Horas int,
	@FEchaD datetime,
	@FechaA datetime,
	@Fecha datetime,
	@Personal varchar(10)
	
	SELECT @Fecha=d.FEchaD,@Personal=d.Personal
	FROM Asiste a JOIN  Asisted d  ON d.ID=a.ID  
	WHERE a.ID=@id
	
	SELECT @FEchaD=Min(Fecha) FROM Tiempo WHERE NoSemana IN (SELECT NoSemana FROM Tiempo WHERE fecha=@Fecha) AND Anio=year(@Fecha)
    SELECT @FEchaA=Max(Fecha) FROM Tiempo WHERE NoSemana IN (SELECT NoSemana FROM Tiempo WHERE fecha=@Fecha) AND Anio=year(@Fecha)

	SELECT @Horas=sum(datediff(hh,CONVERT(datetime, LEFT(CONVERT(varchar, d.FEchaD, 126), 10) + 'T' + HoraD + ':00', 126) ,    
	CONVERT(datetime, LEFT(CONVERT(varchar, d.FechaD, 126), 10) + 'T' + HoraA + ':00', 126)))
	FROM Asiste a JOIN  Asisted d  ON d.ID=a.ID  
	WHERE 1=1  
	AND ESTATUS in( 'SINAFECTAR','PROCESAR','CONCLUIDO')  
	AND a.Mov  LIKE '%Extra%'
	AND d.Personal=@Personal
	AND d.FEchaD BETWEEN @FEchaD AND @FEchaA
	
	--SELECT @Horas
	SET @Horas=isnull(@Horas-8,0)
	
	SET @muestra='NO'
	IF EXISTS (
	SELECT a.ID,1
	FROM Asiste a JOIN  Asisted d  ON d.ID=a.ID  
	WHERE 1=1  
	AND ESTATUS in( 'SINAFECTAR','PROCESAR','CONCLUIDO')  
	AND a.Mov  LIKE '%Extra%'
	AND a.ID=@id
	) AND 
	NOT EXISTS (SELECT * FROM MovBitacora WHERE ID=@id AND modulo='ASIS') AND (@Horas > 0)
	--SELECT * FROM sysobjects WHERE name LIKE '%semana%'	
	SET @muestra='SI'
	
	--SELECT @muestra
	IF @muestra='NO'
		SET @Horas=0
		
	SELECT @Horas '@Horas'

	
END
go
--EXEC SpNomCDIMostrarBitacora 506

IF EXISTS (select * from sysobjects where id = object_id('dbo.SPCDIJornadaDiasSemana') and type = 'P') DROP PROCEDURE dbo.SPCDIJornadaDiasSemana
GO
create PROCEDURE DBO.SPCDIJornadaDiasSemana  
@Jornada varchar (20),  
@personal varchar(20)  
AS   
BEGIN  
 DECLARE  
 @Dia  varchar (20),   
 @Entrada varchar (20),   
 @Salida  varchar (20),   
 @NombreDia varchar (20),  
 @NombreDiaAnt varchar (20),  
 @Categoria varchar (20),  
 @Cadena  varchar (255)  
  
  
 CREATE TABLE #JornadaPasoDiaSemana (  
 Jornada varchar (20) NULL,  
 Dia  varchar (20) NULL,  
 NombreDia varchar (20) NULL,  
 Entrada varchar (20) NULL,  
 Salida varchar (20) NULL  
 )  
  
 select @Categoria=categoria from Personal where Personal=@personal  
  
 if @Categoria in ('Profesores A','Profesores B')  
  Insert into #JornadaPasoDiaSemana (Jornada, Dia, Entrada, SALIDA, NombreDia)  
  SELECT A.Jornada, B.Dia,  B.Entrada, B.SALIDA, ''   
  FROM JORNADA A, JornadaD B, Personal P  
  WHERE A.Jornada=B.Jornada  
  and a.Jornada=P.jornada  
  and B.Jornada=P.Jornada  
  AND A.Jornada=@Jornada  
  and p.personal=@personal  
  order by B.Dia  
 else   
  Insert into #JornadaPasoDiaSemana (Jornada, Dia, Entrada, SALIDA, NombreDia)  
  SELECT A.Jornada, B.Dia,  min(B.Entrada), Max(B.SALIDA), ''   
  FROM JORNADA A, JornadaD B, Personal P  
  WHERE A.Jornada=B.Jornada  
  and a.Jornada=P.jornada  
  and B.Jornada=P.Jornada  
  AND A.Jornada=@Jornada  
  and p.personal=@personal  
  group  by  A.Jornada, B.Dia  
  order by B.Dia  
  
 Select @CADENA = ''  
  
 update #JornadaPasoDiaSemana set  NombreDia='Lunes'   where Jornada=@Jornada and Dia='1'  
 update #JornadaPasoDiaSemana set  NombreDia='Martes'  where Jornada=@Jornada and Dia='2'  
 update #JornadaPasoDiaSemana set  NombreDia='Miercoles'  where Jornada=@Jornada and Dia='3'  
 update #JornadaPasoDiaSemana set  NombreDia='Jueves'  where Jornada=@Jornada and Dia='4'  
 update #JornadaPasoDiaSemana set  NombreDia='Viernes'  where Jornada=@Jornada and Dia='5'  
 update #JornadaPasoDiaSemana set  NombreDia='Sabado'  where Jornada=@Jornada and Dia='6'  
 update #JornadaPasoDiaSemana set  NombreDia='Domingo'  where Jornada=@Jornada and Dia='7'  
  
 update #JornadaPasoDiaSemana set  Entrada='Descanso', Salida='Descanso' where Jornada=@Jornada and Entrada='00:00'  
  
 --select  from #JornadaPasoDiaSemana  
 --SELECT  dia,NombreDia, Entrada, SALIDA FROM #JornadaPasoDiaSemana   
 DECLARE ConcatenaCDIJornadaDiasSemana CURSOR FOR   
  
 SELECT  dia,NombreDia, Entrada, SALIDA FROM #JornadaPasoDiaSemana   
  
  
 OPEN ConcatenaCDIJornadaDiasSemana  
 FETCH NEXT FROM ConcatenaCDIJornadaDiasSemana INTO @dia, @NombreDia,  @Entrada, @SALIDA   
 WHILE @@FETCH_STATUS <> -1   
 BEGIN   
  --SELECT   @dia as Dia,@NombreDia AS 'NombreDia',@Entrada as Entrada, @SALIDA as Salida   
  if @NombreDia=@NombreDiaAnt  
  select @CADENA=@CADENA +'/'+@Entrada +' '+ @SALIDA +' '  
  else  
  select @CADENA=@CADENA +' * '+@NombreDia +'-'+@Entrada +'-'+ @SALIDA +' '  
  
  set @NombreDiaAnt=@NombreDia  
  FETCH NEXT FROM ConcatenaCDIJornadaDiasSemana INTO  @dia,@NombreDia,  @Entrada, @SALIDA  
  
 END   
 CLOSE ConcatenaCDIJornadaDiasSemana  
 DEALLOCATE ConcatenaCDIJornadaDiasSemana  
 select @CADENA  
END  
GO
/******************* spControlAccesoDatosEspecialesCte *******************/
if OBJECT_ID('dbo.spControlAccesoDatosEspecialesCte') is not null  DROP PROCEDURE spControlAccesoDatosEspecialesCte
GO 
CREATE PROCEDURE spControlAccesoDatosEspecialesCte
			@Codigo		varchar(50)
AS BEGIN

	IF EXISTS (SELECT 1 FROM CDISocioTarjeta WHERE Empresa='CDI' AND Tarjeta=@Codigo)
		SELECT  @Codigo= b.Socio FROM CDISocioTarjeta a JOIN
		Cte b ON a.Cte=b.Cliente WHERE  a.Empresa='CDI' AND a.Tarjeta=@Codigo
	ELSE 
		SET @Codigo=RIGHT(@Codigo,7)
		


	
	SELECT "Informacion" = 'Membresia: ' + ISNULL(CONVERT(varchar(6),Membresia), ''), "Orden" = 1
	  FROM Cte 
	 WHERE Socio = @Codigo
	 UNION
	SELECT "Informacion" = 'Nombre: ' + LTRIM(RTRIM(ISNULL(PersonalNombres, ''))) + ' ' + LTRIM(RTRIM(ISNULL(PersonalApellidoPaterno, ''))) + ' ' + LTRIM(RTRIM(ISNULL(PersonalApellidoMaterno, ''))), "Orden" = 2
	  FROM cte 
	 WHERE Socio = @Codigo	
	 UNION
	SELECT "Informacion" = 'Socio: ' + LTRIM(RTRIM(ISNULL(Socio, ''))) , "Orden" = 3
	  FROM Cte 
	 WHERE Socio = @Codigo
	 UNION
	SELECT "Informacion" = 'Estatus: ' + ISNULL(Estatus, ''), "Orden" = 4
	  FROM Cte 
	 WHERE Socio = @Codigo
	 UNION
	SELECT "Informacion" = 'Causa: ' + ISNULL(Descripcion15, ''), "Orden" = 5
	  FROM Cte
	 WHERE Socio = @Codigo
	 ORDER BY "Orden" 
    
END
GO
--EXEC spControlAccesoDatosEspecialesCte '5372150'
--SELECT * FROM CDISocio
/******************* spControlAccesoDatosEspecialesPer *******************/
if OBJECT_ID('dbo.spControlAccesoDatosEspecialesPer') is not null
  DROP PROCEDURE spControlAccesoDatosEspecialesPer
GO 
CREATE PROCEDURE spControlAccesoDatosEspecialesPer
			@Codigo		varchar(50)
AS BEGIN
	
	--declare
	--@CodigoPersona varchar(10) ,
	--@CodigoAcceso varchar(4) ,
	--@CodigoFecha datetime
	 
	-------------------------------------------------------------------------------------------------------------------
	--EXEC SpCDICtrlAccCadena @Codigo,@CodigoPersona output, @CodigoAcceso output, @CodigoFecha output
	--SET @Codigo=CONVERT(VARCHAR(30),CONVERT(INT,@CodigoPersona))
	-------------------------------------------------------------------------------------------------------------------
	
  SELECT "Informacion" = 'Personal: ' + LTRIM(RTRIM(ISNULL(Personal, ''))) , "Orden" = 0
      FROM Personal 
     WHERE Personal = @Codigo
    UNION
    SELECT "Informacion" = 'Nombre: ' + LTRIM(RTRIM(ISNULL(Nombre, ''))) + ' ' + LTRIM(RTRIM(ISNULL(ApellidoPaterno, ''))) + ' ' + LTRIM(RTRIM(ISNULL(ApellidoMaterno, ''))), "Orden" = 1
      FROM Personal 
     WHERE Personal = @Codigo
    UNION
    SELECT "Informacion" = 'Jornada: ' + ISNULL(Jornada, ''), "Orden" = 2
      FROM Personal 
     WHERE Personal = @Codigo
    UNION
	SELECT "Informacion" = 'Horario Jornada: ' + dbo.fnExtraerHora(MIN(b.Entrada))+' - '+dbo.fnExtraerHora(MAX(b.Salida)), "Orden" = 3 
      FROM Personal A , JornadaTiempo B
     Where A.Jornada=B.Jornada
      and B.Fecha=dbo.fnFechaSinHora(GETDATE()) 
      And A.Personal=@Codigo
	UNION
	SELECT  "Informacion" = 'Horario Jornada Cambio: ' + ISNULL(B.Jornada, ''), "Orden" = 4 
      FROM Personal A  join  CDIJornadaTemp B on  A.Personal=B.Personal and B.FechaD=dbo.fnFechaSinHora(GETDATE())
     Where A.Personal=@Codigo
     UNION
    SELECT "Informacion" = 'Comité: ' + ISNULL(Proyecto, ''), "Orden" = 5
      FROM Personal 
     WHERE Personal = @Codigo
    UNION
    SELECT "Informacion" = 'Departamento: ' + ISNULL(Departamento, ''), "Orden" = 6
      FROM Personal 
     WHERE Personal = @Codigo
    UNION
    SELECT "Informacion" = 'Puesto: ' + ISNULL(Puesto, ''), "Orden" = 7
      FROM Personal 
     WHERE Personal = @Codigo
     UNION
    SELECT "Informacion" = 'Mensaje: ' + ISNULL(EntreCalles, ''), "Orden" = 8
      FROM Personal 
     WHERE Personal = @Codigo
         ORDER BY "Orden" 
    
END
GO

/**************** spGenerarAsiste ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarAsiste') and type = 'P') drop procedure dbo.spGenerarAsiste
GO
CREATE PROCEDURE spGenerarAsiste
		    @Empresa		char(5),
		    @Personal		char(10),
		    @FechaInicial	datetime,
		    @FechaFinal		datetime,		
		    @Ok			int		OUTPUT,
		    @OkRef		varchar(255)	OUTPUT
--WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Mov		char(20),
    @MovID		varchar(20),
    @MovTipo		char(20),
    @FechaEmision	datetime,
    @Concepto		varchar(50),
    @Localidad		varchar(50),
    @UltEntrada		datetime,
    @UltSalida		datetime,
    @UltLocalidad	varchar(50),
    @Registro		char(10),   -- Entrada / Salida
    @UltimoRegistro char(10),
    @HoraRegistro	char(5),
    @HoraD		char(5),
    @HoraA		char(5),
    @FechaD		datetime,
    @FechaA		datetime,
    @Entrada		datetime,
    @Salida		datetime,
    @FechaRegistro	datetime,
    @Fecha		datetime,
     @EsNocturna		bit,
     @PrimerRegistro varchar(50),
     @Count int,
     @FechaEmisionAnt datetime,
     @IdPersonalAsiste int,
     @RegistroAnt varchar(50),
     @MaximoMovID varchar(20),
     @Cont2 int,
     @FechaCompara	datetime
 



	Select @EsNocturna=j.Esnocturna 
	from personal p join 
	jornada j on p.jornada=j.jornada
	where j.Esnocturna=1
	and p.personal=isnull(@Personal,p.personal)
	
	
	set @Count=1
	set @EsNocturna =isnull(@EsNocturna,0)
	
	--select @EsNocturna
	
	
  SELECT @UltEntrada = NULL, @UltSalida = NULL, @UltLocalidad = NULL
 
 
  --select *   FROM PersonalAsiste
  SELECT @UltEntrada = MAX(Entrada) 
    FROM PersonalAsiste 
   WHERE Empresa = @Empresa AND Personal = @Personal AND Fecha < @FechaInicial
	set   @Cont2=1
  IF @UltEntrada IS NOT NULL
    SELECT @UltSalida = Salida, @UltLocalidad = Localidad 
      FROM PersonalAsiste 
     WHERE Empresa = @Empresa AND Personal = isnull(@Personal,Personal) AND Fecha < @FechaInicial AND Entrada = @UltEntrada    
     
 --   if @personal='02869'
 --   SELECT NULLIF(RTRIM(a.Mov), ''), a.MovID, mt.Clave, a.FechaEmision, NULLIF(RTRIM(d.Concepto), ''), NULLIF(RTRIM(a.Localidad), ''), 
	--NULLIF(UPPER(RTRIM(d.Registro)), ''), NULLIF(RTRIM(d.HoraRegistro), ''), NULLIF(RTRIM(d.HoraD), ''), NULLIF(RTRIM(d.HoraA), ''), d.FechaD, d.FechaA,
	--j.EsNocturna
	--FROM Asiste a join 
	--AsisteD d on  a.ID = d.ID join 
	--MovTipo mt on mt.mov=a.MOv and mt.Modulo = 'ASIS' join
	--#PasoPersonalJornada z on z.Personal=d.Personal and  z.FEcha=a.FechaEmision join
	--Jornada j on z.Jornada=j.Jornada  
	--WHERE 
	--mt.Clave IN ('ASIS.A', 'ASIS.R')            
	--AND a.Estatus IN ('PROCESAR','CONCLUIDO')
	--AND a.Empresa = @Empresa
	--AND ISNULL(a.FechaAplicacion, a.FechaEmision) >= @FechaInicial 
	--AND ISNULL(a.FechaAplicacion, a.FechaEmision) < case when j.EsNocturna=0 then DATEADD(day,1,@FechaFinal) else DATEADD(day,2,@FechaFinal) end
	--AND d.Personal = @Personal
	--ORDER BY a.FechaEmision, d.HoraRegistro, d.HoraD, d.FechaD
	    
	  DECLARE crProcesar SCROLL  CURSOR FOR	
	   SELECT Mov, MovID, MovTipo, FechaEmision, Concepto, Localidad, Registro, HoraRegistro, HoraD, HoraA, FechaD, FechaA,EsNOcturna
	     FROM #PasoRegistros
	    WHERE Personal = isnull(@Personal,personal)
	--DECLARE crProcesar SCROLL  CURSOR 
	--FOR	
	--SELECT NULLIF(RTRIM(a.Mov), ''), a.MovID, mt.Clave, a.FechaEmision, NULLIF(RTRIM(d.Concepto), ''), NULLIF(RTRIM(a.Localidad), ''), 
	--NULLIF(UPPER(RTRIM(d.Registro)), ''), NULLIF(RTRIM(d.HoraRegistro), ''), NULLIF(RTRIM(d.HoraD), ''), NULLIF(RTRIM(d.HoraA), ''), d.FechaD, d.FechaA,
	--j.EsNocturna
	--FROM Asiste a join 
	--AsisteD d on  a.ID = d.ID join 
	--MovTipo mt on mt.mov=a.MOv and mt.Modulo = 'ASIS' join
	--#PasoPersonalJornada z on z.Personal=d.Personal and  z.FEcha=a.FechaEmision join
	--Jornada j on z.Jornada=j.Jornada  
	--WHERE 
	--mt.Clave IN ('ASIS.A', 'ASIS.R')            
	--AND a.Estatus IN ('PROCESAR','CONCLUIDO')
	--AND a.Empresa = @Empresa
	--AND ISNULL(a.FechaAplicacion, a.FechaEmision) >= @FechaInicial 
	--AND ISNULL(a.FechaAplicacion, a.FechaEmision) < case when j.EsNocturna=0 then DATEADD(day,1,@FechaFinal) else DATEADD(day,2,@FechaFinal) end
	--AND d.Personal = isnull(@Personal,d.personal)
	--ORDER BY a.FechaEmision, d.HoraRegistro, d.HoraD, d.FechaD
          
	set @FechaEmisionAnt=null
	set @RegistroAnt =null
  OPEN crProcesar
  FETCH NEXT FROM crProcesar INTO @Mov, @MovID, @MovTipo, @FechaEmision, @Concepto, @Localidad, @Registro, @HoraRegistro, @HoraD, @HoraA, @FechaD, @FechaA,@EsNOcturna
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
  BEGIN
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
    BEGIN
    
    
	if @Cont2=1
    BEGIN
		FETCH LAST FROM crProcesar INTO @Mov, @MovID, @MovTipo, @FechaEmision, @Concepto, @Localidad, @Registro, @HoraRegistro, @HoraD, @HoraA, @FechaD, @FechaA,@EsNOcturna
		set @UltimoRegistro=@Registro
		If @UltimoRegistro='ENTRADA' and @EsNocturna=0
			SELECT @Ok = 55200
		 ELSE			
			FETCH first FROM crProcesar INTO @Mov, @MovID, @MovTipo, @FechaEmision, @Concepto, @Localidad, @Registro, @HoraRegistro, @HoraD, @HoraA, @FechaD, @FechaA,@EsNOcturna
	END   		 
		if  @FechaEmisionAnt<>@FechaEmision
			set @Count=1
		if  @Count=1
			set @PrimerRegistro=@Registro

      EXEC spExtraerFecha @FechaEmision OUTPUT
      IF @MovTipo = 'ASIS.R'
      BEGIN    
        SELECT @FechaRegistro = @FechaEmision
        EXEC spAgregarHora @HoraRegistro, @FechaRegistro OUTPUT

        
		IF @Registro = 'ENTRADA' 
			BEGIN	
              Set @RegistroAnt=isnull(@RegistroAnt,'*')
			  IF ((@UltEntrada IS NULL) OR (@MaximoMovID=@MovID) OR (@UltSalida IS NOT NULL AND @UltSalida < @FechaRegistro)) and (@RegistroAnt <> @Registro)
			  BEGIN
				INSERT PersonalAsiste (Empresa, Personal, Entrada,         Localidad, Fecha) 
							   VALUES (@Empresa,@Personal, @FechaRegistro,@Localidad, @FechaEmision)
				SELECT @UltEntrada = @FechaRegistro, @UltLocalidad = @Localidad				
			  END ELSE 
					if @EsNocturna=0 
						SELECT @Ok = 55200

			END ELSE
		IF @Registro = 'SALIDA' 
			BEGIN
			  select @Localidad=isnull(@Localidad,'*') ,@UltLocalidad=isnull(@UltLocalidad,'*')  
			  IF @UltEntrada IS NOT NULL AND @Localidad = @UltLocalidad  and @RegistroAnt <> @Registro
			  BEGIN
				UPDATE PersonalAsiste SET Salida = @FechaRegistro WHERE Empresa = @Empresa AND Personal = @Personal AND Entrada = @UltEntrada
				SELECT @UltSalida = @FechaRegistro, @UltLocalidad = @Localidad
			  END ELSE 
					if @EsNocturna=0 
						SELECT @Ok = 55210 
			END   
      END ELSE --aqi
      IF @MovTipo = 'ASIS.A'
      BEGIN
      
	
        SELECT @FechaD = @FechaEmision, @FechaA = @FechaEmision
        EXEC spAgregarHora @HoraD, @FechaD OUTPUT
        EXEC spAgregarHora @HoraA, @FechaA OUTPUT       
        
        
        IF @FechaA >= @FechaD AND @FechaD IS NOT NULL AND (@FechaD > @UltEntrada OR @UltEntrada IS NULL)
			BEGIN
			  IF @FechaA IS NOT NULL AND (@FechaA > @UltSalida OR @UltSalida IS NULL)
			  BEGIN
				SELECT @Fecha = @FechaD
				EXEC spExtraerFecha @Fecha OUTPUT
				INSERT PersonalAsiste (Empresa,  Personal,  Entrada, Salida,  Localidad,  Fecha) 
							   VALUES (@Empresa, @Personal, @FechaD, @FechaA, @Localidad, @Fecha)
				SELECT @UltEntrada = @FechaD, @UltSalida = @FechaA, @UltLocalidad = @Localidad
			  END 
				ELSE 			
					SELECT @Ok = 55210
				
			END 
			ELSE 				
				SELECT @Ok = 55200
				
      END     
     
      	set @RegistroAnt=@Registro
		set @FechaEmisionAnt=@FechaEmision
		set   @Count=@Count+1
		set   @Cont2=@Cont2+1
      
      
      IF @Ok IS NOT NULL AND @OkRef IS NULL
        SELECT @OkRef = 'Persona: '+RTRIM(@Personal)+'<BR>'+'Movimiento: '+RTRIM(@Mov)+' '+@MovID
    END
FETCH NEXT FROM crProcesar INTO @Mov, @MovID, @MovTipo, @FechaEmision, @Concepto, @Localidad, @Registro, @HoraRegistro, @HoraD, @HoraA, @FechaD, @FechaA,@EsNOcturna  END  -- While
  CLOSE crProcesar
  DEALLOCATE crProcesar

  RETURN
END
GO

/**************** spGenerarAsisteAusencia ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarAsisteAusencia') and type = 'P') drop procedure dbo.spGenerarAsisteAusencia
GO
CREATE PROCEDURE spGenerarAsisteAusencia
		    @Empresa		char(5),
		    @CfgToleraEntrada	int, 
		    @CfgToleraSalida	int, 
		    @Personal		char(10),
		    @Jornada		varchar(20),
		    @FechaAlta		datetime,
		    @FechaInicial	datetime,
		    @FechaFinal		datetime,

		    @Ok			int		OUTPUT,
		    @OkRef		varchar(255)	OUTPUT
--//WITH ENCRYPTION
AS BEGIN

  DECLARE
    @ID			int,
    @UltID		int,
    @FechaEntrada	datetime,
    @FechaSalida	datetime,
    @Entrada		datetime,
    @Salida		datetime,
    @EntradaReal	datetime,
    @SalidaReal		datetime,
    @Dia		int,
    @Mes		int,
    @Ano		int,
    @Dias		int,
    @Minutos		int,
    @FechaCur datetime,
    @Fecha		datetime,
    @JornadaD	varchar(20)

  -- Cdi
  IF NOT EXISTS(SELECT * FROM JornadaTiempo WHERE Jornada = @Jornada /*AND Entrada > @FechaFinal*/)
  BEGIN
  
    SELECT @Ok = 55260
    RETURN
  END

  CREATE TABLE #pasoJornadaTem (Jornada varchar(20) null,Entrada datetime NULL,Salida datetime NULL,FEcha datetime null, FechaEntrada datetime NULL)


  CREATE TABLE #VerJornadaTiempo (Jornada varchar(20) null,Entrada datetime NULL,Salida datetime NULL, FechaEntrada datetime NULL)

  CREATE TABLE #Jornadas (Jornada varchar(20) null)

  INSERT #Jornadas (Jornada) SELECT DISTINCT Jornada FROM #PasoPersonalJornada WHERE Personal = @Personal


  insert into #pasoJornadaTem (Jornada,Entrada,Salida,Fecha)
  select a.Jornada,jt.Entrada ,jt.Salida ,a.Fecha
  from #PasoPersonalJornada a  
  left outer join VerJornadaTiempo jt on a.jornada=jt.Jornada AND a.ano = jt.Ano AND a.Mes = jt.Mes AND a.Dia = jt.Dia
  where a.Personal=isnull(@Personal,a.Personal)
  AND a.Jornada IN (SELECT Jornada FROM #Jornadas)
  --AND a.Fecha=jt.FechaEntrada
  order by jt.Entrada  
    
    
--  END 
  
--  select * from PersonalAsiste
--  SELECT Entrada,Salida,Fecha 
--FROM #pasoJornadaTem
--ORDER BY FEcha
  
--  SELECT Entrada,Salida,Fecha 
--FROM #pasoJornadaTem
--ORDER BY FEcha
  --select * from #pasoJornadaTem
  
  SELECT @UltID = 0
  DECLARE crJornadaTiempo CURSOR
     FOR 
    SELECT Entrada,Salida,Fecha
FROM #pasoJornadaTem WHERE Jornada IN (SELECT Jornada FROM #Jornadas)
ORDER BY FEcha
  SELECT @EntradaReal = @FechaInicial              
  OPEN crJornadaTiempo
  FETCH NEXT FROM crJornadaTiempo INTO @Entrada, @Salida,@FechaCur

  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
  BEGIN
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
    BEGIN
   	
      SELECT @FechaSalida = @Salida, @FechaEntrada = @Entrada
      EXEC spExtraerFecha @FechaEntrada OUTPUT
      EXEC spExtraerFecha @FechaSalida  OUTPUT
      
      
      IF EXISTS(SELECT * FROM PersonalAsiste WHERE Empresa = @Empresa AND Personal = isnull(@Personal,Personal)/* NES Para corrección de entradas y salidas en diferentes dias AND Fecha = @FechaEntrada*/
					AND DAY(Entrada) = DAY(@FechaEntrada) AND MONTH(Entrada) = MONTH(@FechaEntrada) AND YEAR(Entrada) = YEAR(@FechaEntrada))
      BEGIN
        SELECT @ID = NULL
        SELECT @ID = MIN(ID)
          FROM PersonalAsiste 
         WHERE Empresa = @Empresa AND Personal = @Personal AND Fecha = @FechaEntrada AND ProcesarAusencia = 1 AND ID > @UltID


        IF @ID IS NULL 
        BEGIN
          SELECT @Minutos = DATEDIFF(mi, @Entrada, @Salida)
          IF @Minutos > @CfgToleraEntrada and @FechaEntrada is not null
            INSERT PersonalAsisteDifMin (Empresa,  Personal,  FechaHoraD, FechaHoraA, Fecha,         Ausencia, Registro) 
                                 VALUES (@Empresa, @Personal, @Entrada,   @Salida,    @FechaEntrada, @Minutos, 'Entrada')
        END ELSE 
        BEGIN
          SELECT @UltID = ID, @EntradaReal = Entrada, @SalidaReal  = Salida 
            FROM PersonalAsiste 
           WHERE ID = @ID

          SELECT @Minutos = DATEDIFF(mi, @Entrada, @EntradaReal)
          IF @Minutos > @CfgToleraEntrada and @FechaEntrada is not null
          --Valida Permisos CDI
          AND NOT EXISTS
          (          
          SELECT *   
					FROM Asiste a, Asisted d   
					WHERE d.ID           = a.ID   
					AND a.Mov          IN ('Permiso Horas')
					AND Personal       = @Personal  
					AND ESTATUS        in( 'CONCLUIDO','PROCESAR')  
					AND a.TIPO            ='AUSENCIA'  
					AND FechaEmision   = CONVERT(DateTime, FLOOR( CONVERT( float, @EntradaReal)), 103)  
					AND @EntradaReal    BETWEEN   CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND    
					CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126))
          
            INSERT PersonalAsisteDifMin (Empresa,  Personal,  FechaHoraD, FechaHoraA,   Fecha,         Ausencia, Registro) 
                                 VALUES (@Empresa, @Personal, @Entrada,   @EntradaReal, @FechaEntrada, @Minutos, 'Entrada')

          SELECT @Minutos = DATEDIFF(mi, @SalidaReal, @Salida)

          
          --Valida Permisos CDI
          IF @Minutos > @CfgToleraSalida  AND NOT EXISTS
          (          
          SELECT *   
					FROM Asiste a, Asisted d   
					WHERE d.ID           = a.ID   
					AND a.Mov          IN ('Permiso Horas')
					AND Personal       = @Personal  
					AND ESTATUS        in( 'CONCLUIDO','PROCESAR')  
					AND a.TIPO            ='AUSENCIA'  
					AND FechaEmision   = CONVERT(DateTime, FLOOR( CONVERT( float, @SalidaReal)), 103)  
					AND @SalidaReal    BETWEEN   CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND    
					CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126))
            INSERT PersonalAsisteDifMin (Empresa,  Personal,  FechaHoraD,  FechaHoraA, Fecha,        Ausencia, Registro) 
                                 VALUES (@Empresa, @Personal, @SalidaReal, @Salida,    @FechaSalida, @Minutos, 'Salida')
        END
      END ELSE 
      BEGIN
        IF @FechaEntrada is not null and NOT EXISTS(SELECT * FROM PersonalAsisteDifDia WHERE Empresa = @Empresa AND Personal = @Personal AND Fecha = @FechaEntrada)
          INSERT PersonalAsisteDifDia (Empresa, Personal, Fecha, Ausencia,PermisoConcepto) VALUES (@Empresa, @Personal, @FechaEntrada, 1,null)
        if @FechaEntrada is null and NOT EXISTS(SELECT * FROM PersonalAsisteDifDia WHERE Empresa = @Empresa AND Personal = @Personal AND Fecha = @FechaCur)
			and @FechaCur>=@FechaAlta
		  INSERT PersonalAsisteDifDia (Empresa, Personal, Fecha, Ausencia,PermisoConcepto) 
		  select @Empresa, @Personal, @FechaCur, 1,case when Exists(select 1 from DiaFestivo where fecha=@FechaCur) then 'Festivo' else 'Descanso' end
      END
 
      
      UPDATE PersonalAsiste SET ProcesarAusencia = 0 WHERE ID = @ID
    END
    FETCH NEXT FROM crJornadaTiempo INTO @Entrada, @Salida,@FechaCur
  END  -- While
  CLOSE crJornadaTiempo
  DEALLOCATE crJornadaTiempo
  
  
--  SELECT 'PersonalAsisteDifDia', * FROM PersonalAsisteDifDia
  --SELECT * FROM PersonalAsisteDifMin
  
  
  RETURN
END
GO

/**************** spGenerarAsisteExtra ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarAsisteExtra') and type = 'P') drop procedure dbo.spGenerarAsisteExtra
GO
CREATE PROCEDURE spGenerarAsisteExtra
		    @Empresa		char(5),
		    @Personal		char(10),
		    @Jornada		varchar(20),
		    @FechaInicial	datetime,
		    @FechaFinal		datetime,

		    @Ok			int		OUTPUT,
		    @OkRef		varchar(255)	OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @FechaEntrada	datetime,
    @FechaSalida	datetime,
    @Entrada		datetime,
    @Salida		datetime,
    @EntradaReal	datetime,
    @SalidaReal		datetime,
    @Dias		int,
    @Minutos		int,
    @JornadaTEmp varchar(30),
    @EntradaRealSH	datetime

--SELECT *          FROM PersonalAsiste
--          WHERE Empresa = @Empresa AND Personal = @Personal AND ProcesarExtra = 1

  DECLARE crAsistenciaReal CURSOR
     FOR SELECT Entrada, Salida
           FROM PersonalAsiste
          WHERE Empresa = @Empresa AND Personal = @Personal AND ProcesarExtra = 1

  SELECT @Entrada = @FechaInicial              
  OPEN crAsistenciaReal
  FETCH NEXT FROM crAsistenciaReal INTO @EntradaReal, @SalidaReal
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
  BEGIN
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
    BEGIN
      SELECT @FechaEntrada = @EntradaReal, @FechaSalida = @SalidaReal, @Salida = NULL, @Entrada = NULL
      EXEC spExtraerFecha @FechaEntrada OUTPUT
      EXEC spExtraerFecha @FechaSalida OUTPUT
      EXEC spExtraerFecha @EntradaRealSH OUTPUT
      
      --select  @Jornada=Jornada from personal where personal=@Personal
	--If @Personal='01000'
 --     Select @Jornada '@Jornada Antes'
		--IF EXISTS (SELECT 1 FROM CDIJornadaTemp WHERE personal=@personal AND FechaD=dbo.FnFechaSinHora(@FechaEntrada) and Jornada is not null)
		--		  SELECT @Jornada=Jornada FROM CDIJornadaTemp WHERE personal=@personal AND FechaD=dbo.FnFechaSinHora(@FechaEntrada)

      IF EXISTS(SELECT * FROM #PasoPersonalJornada WHERE Personal=@Personal AND Fecha = @FechaEntrada)
      BEGIN
      SELECT @Jornada=Jornada FROM #PasoPersonalJornada WHERE Personal=@Personal AND Fecha = @FechaEntrada
      
--SELECT @EntradaReal, @SalidaReal
        SELECT  TOP 1 @Entrada = b.Entrada
          FROM #PasoPersonalJornada a join
          jornadatiempo b on a.Fecha=b.Fecha and a.Jornada=b.Jornada
         WHERE a.Jornada = @Jornada AND a.Fecha = @FechaEntrada AND b.Entrada > @EntradaReal AND b.Entrada < @SalidaReal
         ORDER BY b.Entrada

        SELECT @Minutos = DATEDIFF(mi, @EntradaReal, @Entrada)
        IF @Minutos > 0
          INSERT PersonalAsisteDifMin (Empresa,  Personal,  FechaHoraD,   FechaHoraA, Fecha,         Extra,    Registro) 
                               VALUES (@Empresa, @Personal, @EntradaReal, @Entrada,   @FechaEntrada, @Minutos, 'Entrada')

      -- select * from JornadaTiempo
        SELECT TOP 1 @Salida = b.Salida
          FROM #PasoPersonalJornada a join
          jornadatiempo b on a.Fecha=b.Fecha and a.Jornada=b.Jornada
         WHERE a.Jornada = @Jornada AND a.Fecha = @FechaEntrada AND b.Salida > @EntradaReal AND b.Salida < @SalidaReal
         ORDER BY b.Salida
         
       SELECT @Minutos = DATEDIFF(mi, @Salida, @SalidaReal)        
              
        IF @Minutos > 0
          INSERT PersonalAsisteDifMin (Empresa,  Personal,  FechaHoraD, FechaHoraA,  Fecha,  Extra,    Registro) 
                               VALUES (@Empresa, @Personal, @Salida,    @SalidaReal, @FechaSalida, @Minutos, 'Salida')
                               
      END ELSE 
      if @FechaEntrada is not null
        INSERT PersonalAsisteDifDia (Empresa, Personal, Fecha, Extra, Minutos) VALUES (@Empresa, @Personal, @FechaEntrada, 1, DATEDIFF(mi, @EntradaReal, @SalidaReal))
      UPDATE PersonalAsiste SET ProcesarExtra = 0 WHERE CURRENT OF crAsistenciaReal
    END
    FETCH NEXT FROM crAsistenciaReal INTO @EntradaReal, @SalidaReal
  END  -- While
  CLOSE crAsistenciaReal
  DEALLOCATE crAsistenciaReal
  
  --select * from PersonalAsisteDifMin 
  
--SELECT Entrada, Salida
--FROM PersonalAsiste
--WHERE Empresa = @Empresa AND Personal = @Personal
  
  

  DECLARE crAsistenciaGral CURSOR
     FOR SELECT Entrada, Salida
           FROM PersonalAsiste
          WHERE Empresa = @Empresa AND Personal = @Personal
  SELECT @Entrada = @FechaInicial              
  OPEN crAsistenciaGral
  FETCH NEXT FROM crAsistenciaGral INTO @EntradaReal, @SalidaReal
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
  BEGIN
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
    BEGIN
      SELECT @FechaEntrada = @EntradaReal
      EXEC spExtraerFecha @FechaEntrada OUTPUT
      SELECT @Minutos = DATEDIFF(mi, @EntradaReal, @SalidaReal)

	  /* NES - Se corrige el siguiente bloque para corrección de entradas y salidas en diferentes días */
	  EXEC spExtraerFecha @EntradaReal OUTPUT
	  EXEC spExtraerFecha @SalidaReal OUTPUT
	  IF @SalidaReal IS NULL and
		 @EntradaReal is not null
	  INSERT PersonalAsisteDif (Empresa,  Personal,  Fecha,         Cantidad, Tipo)
	  SELECT @Empresa, @Personal, @EntradaReal, @Minutos, 'Minutos Asistencia'
	  ELSE
	  if @EntradaReal is not null
	  INSERT PersonalAsisteDif (Empresa,  Personal,  Fecha,         Cantidad, Tipo)
	  SELECT @Empresa, @Personal, @SalidaReal, @Minutos, 'Minutos Asistencia'

    END
    FETCH NEXT FROM crAsistenciaGral INTO @EntradaReal, @SalidaReal
  END  -- While
  CLOSE crAsistenciaGral
  DEALLOCATE crAsistenciaGral
  RETURN
END
GO



/**************** spGenerarAsistePermisos ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarAsistePermisos') and type = 'P') drop procedure dbo.spGenerarAsistePermisos
GO
CREATE PROCEDURE spGenerarAsistePermisos
		    @Empresa		char(5),
    		    @FechaInicial	datetime,
		    @FechaFinal		datetime,

		    @Ok			int		OUTPUT,
		    @OkRef		varchar(255)	OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Mov		char(20),
    @MovID		varchar(20),
    @Concepto		varchar(50),
    @Tipo		char(20),
    @FechaEmision	datetime,
    @Personal		char(10),
    @HoraD		char(5),
    @HoraA		char(5),
    @FechaD		datetime,
    @FechaA		datetime,
    @Minutos		int
    
    
            

  DECLARE crPermisosDias CURSOR
     FOR SELECT NULLIF(RTRIM(a.Mov), ''), a.MovID, NULLIF(UPPER(RTRIM(a.Tipo)), ''), NULLIF(RTRIM(d.Concepto), ''), a.FechaEmision, NULLIF(RTRIM(d.Personal), ''), NULLIF(RTRIM(d.HoraD), ''), NULLIF(RTRIM(d.HoraA), ''), d.FechaD, d.FechaA
           FROM Asiste a, AsisteD d, MovTipo mt
          WHERE a.Mov = mt.Mov
            AND a.ID = d.ID
            AND a.Empresa = @Empresa
            AND a.Estatus IN ('PROCESAR', 'CONCLUIDO')
            AND (d.FechaD BETWEEN @FechaInicial AND @FechaFinal OR d.FechaA BETWEEN @FechaInicial AND @FechaFinal)
            AND mt.Modulo = 'ASIS'
            AND mt.Clave = 'ASIS.PD'

  OPEN crPermisosDias
  FETCH NEXT FROM crPermisosDias INTO @Mov, @MovID, @Tipo, @Concepto, @FechaEmision, @Personal, @HoraD, @HoraA, @FechaD, @FechaA
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
  BEGIN
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
    BEGIN 
      EXEC spExtraerFecha @FechaEmision OUTPUT
      EXEC spExtraerFecha @FechaD OUTPUT
      EXEC spExtraerFecha @FechaA OUTPUT
      WHILE @FechaD <= @FechaA
      BEGIN
        IF @Tipo = 'EXTRAS' and @FechaD is not null
			 
          INSERT PersonalAsisteDifDia (Empresa,  Personal,  Fecha,   Extra, Permiso, PermisoID, PermisoConcepto) 
                               VALUES (@Empresa, @Personal, @FechaD, 1,     @Mov,    @MovID,    @Concepto)
        ELSE
          INSERT PersonalAsisteDifDia (Empresa,  Personal,  Fecha,   Ausencia, Permiso, PermisoID, PermisoConcepto) 
                               VALUES (@Empresa, @Personal, @FechaD, 1,        @Mov,    @MovID,    @Concepto)
        SELECT @FechaD = DATEADD(day, 1, @FechaD)
      END 
    END
    FETCH NEXT FROM crPermisosDias INTO @Mov, @MovID, @Tipo, @Concepto, @FechaEmision, @Personal, @HoraD, @HoraA, @FechaD, @FechaA
  END  -- While
  CLOSE crPermisosDias
  DEALLOCATE crPermisosDias

  DECLARE crPermisosMin CURSOR
     FOR SELECT NULLIF(RTRIM(a.Mov), ''), a.MovID, NULLIF(UPPER(RTRIM(a.Tipo)), ''), NULLIF(RTRIM(d.Concepto), ''), a.FechaEmision, NULLIF(RTRIM(d.Personal), ''), NULLIF(RTRIM(d.HoraD), ''), NULLIF(RTRIM(d.HoraA), ''), d.FechaD, d.FechaA
           FROM Asiste a, AsisteD d, MovTipo mt
          WHERE a.Mov = mt.Mov
            AND a.ID = d.ID
            AND a.Empresa = @Empresa
           AND a.Estatus IN('PROCESAR','CONCLUIDO')
            AND a.FechaEmision >= @FechaInicial AND a.FechaEmision < DATEADD(day, 1, @FechaFinal)
            AND mt.Modulo = 'ASIS'
            AND mt.Clave = 'ASIS.PH'

  OPEN crPermisosMin
  FETCH NEXT FROM crPermisosMin INTO @Mov, @MovID, @Tipo, @Concepto, @FechaEmision, @Personal, @HoraD, @HoraA, @FechaD, @FechaA
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
  BEGIN
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
    BEGIN 
      EXEC spExtraerFecha @FechaEmision OUTPUT
      EXEC spExtraerFecha @FechaD OUTPUT
      EXEC spExtraerFecha @FechaA OUTPUT
      SELECT @FechaD = @FechaEmision, @FechaA = @FechaEmision
      EXEC spAgregarHora @HoraD, @FechaD OUTPUT
      EXEC spAgregarHora @HoraA, @FechaA OUTPUT
      SELECT @Minutos = DATEDIFF(mi, @HoraD, @HoraA)
      IF @Minutos > 0 
        IF @Tipo = 'EXTRAS'
          INSERT PersonalAsisteDifMin (Empresa,  Personal,  FechaHoraD, FechaHoraA, Fecha,         Extra,    Registro,  Permiso, PermisoID, PermisoConcepto)
                               VALUES (@Empresa, @Personal, @FechaD,    @FechaA,    @FechaEmision, @Minutos, 'Permiso', @Mov,    @MovID,    @Concepto)
        ELSE
          INSERT PersonalAsisteDifMin (Empresa,  Personal,  FechaHoraD, FechaHoraA, Fecha,         Ausencia, Registro,  Permiso, PermisoID, PermisoConcepto)
                               VALUES (@Empresa, @Personal, @FechaD,    @FechaA,    @FechaEmision, @Minutos, 'Permiso', @Mov,    @MovID,    @Concepto)
    END
    FETCH NEXT FROM crPermisosMin INTO @Mov, @MovID, @Tipo, @Concepto, @FechaEmision, @Personal, @HoraD, @HoraA, @FechaD, @FechaA
  END  -- While
  CLOSE crPermisosMin
  DEALLOCATE crPermisosMin
  RETURN
END
GO

/**************** spGenerarAsisteJustificar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarAsisteJustificar') and type = 'P') drop procedure dbo.spGenerarAsisteJustificar
GO
CREATE PROCEDURE spGenerarAsisteJustificar
		    @Empresa		char(5),
		    @Personal		char(10),
    		    @Fecha		datetime,
    		    @Registro		char(10),
    		    @FechaHoraD		datetime,
    		    @FechaHoraA		datetime,
		    @Ausencia		int,
		    @Extra		int,

		    @Ok			int		OUTPUT,
		    @OkRef		varchar(255)	OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Concepto		varchar(50),
    @TotalPermisos	int,
    @Permiso		int

  IF @Ausencia > 0
  BEGIN
    SELECT @TotalPermisos = 0
    DECLARE crPermisos CURSOR FOR
        SELECT PermisoConcepto, SUM(Ausencia)
          FROM PersonalAsisteDifMin 
         WHERE Empresa = @Empresa AND Personal = @Personal AND Fecha = @Fecha AND Ausencia > 0 AND Permiso IS NOT NULL AND PermisoID IS NOT NULL AND FechaHoraD >= @FechaHoraD AND FechaHoraA <= @FechaHoraA 
         GROUP BY PermisoConcepto, FechaHoraD
         ORDER BY PermisoConcepto, FechaHoraD
    OPEN crPermisos
    FETCH NEXT FROM crPermisos INTO @Concepto, @Permiso
    WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL AND @Ausencia > @TotalPermisos
    BEGIN
      IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
      BEGIN 
        IF @Permiso + @TotalPermisos > @Ausencia SELECT @Permiso = @Ausencia - @TotalPermisos
        INSERT PersonalAsisteDif (Empresa,  Personal,  Fecha,  Registro,  Concepto,  Cantidad, Tipo) 
                          VALUES (@Empresa, @Personal, @Fecha, @Registro, @Concepto, @Permiso, 'Minutos Ausencia')
        SELECT @TotalPermisos = @TotalPermisos + @Permiso
      END
      FETCH NEXT FROM crPermisos INTO @Concepto, @Permiso
    END  -- While
    CLOSE crPermisos
    DEALLOCATE crPermisos
    IF @Ausencia > @TotalPermisos
      INSERT PersonalAsisteDif (Empresa,  Personal,  Fecha,  Registro,  Cantidad,                     Tipo) 
                        VALUES (@Empresa, @Personal, @Fecha, @Registro, (@Ausencia - @TotalPermisos), 'Minutos Ausencia')
  END

  IF @Extra > 0
  BEGIN
    SELECT @TotalPermisos = 0
    DECLARE crPermisos CURSOR FOR
        SELECT PermisoConcepto, SUM(Extra)
          FROM PersonalAsisteDifMin 
         WHERE Empresa = @Empresa AND Personal = @Personal AND Fecha = @Fecha AND Extra > 0 AND Permiso IS NOT NULL AND PermisoID IS NOT NULL AND FechaHoraD >= @FechaHoraD AND @FechaHoraA BETWEEN FechaHoraD AND FechaHoraA 
         GROUP BY PermisoConcepto, FechaHoraD
         ORDER BY PermisoConcepto, FechaHoraD
    OPEN crPermisos
    FETCH NEXT FROM crPermisos INTO @Concepto, @Permiso
    WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL AND @Extra > @TotalPermisos
    BEGIN
      IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
      BEGIN 
        IF @Permiso + @TotalPermisos > @Extra SELECT @Permiso = @Extra - @TotalPermisos
        INSERT PersonalAsisteDif (Empresa,  Personal,  Fecha,  Registro,  Concepto,  Cantidad, Tipo) 
                          VALUES (@Empresa, @Personal, @Fecha, @Registro, @Concepto, @Permiso, 'Minutos Extras')
                          
       --  SELECT @Empresa, @Personal, @Fecha, @Registro, @Concepto, @Permiso, 'Minutos Extrasss'
                          
        SELECT @TotalPermisos = @TotalPermisos + @Permiso
      END
      FETCH NEXT FROM crPermisos INTO @Concepto, @Permiso
    END  -- While
    CLOSE crPermisos
    DEALLOCATE crPermisos
  END
  RETURN
END
GO

/**************** select * from PersonalAsisteDifDia ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarAsisteCorteMov') and type = 'P') drop procedure dbo.spGenerarAsisteCorteMov
GO
CREATE PROCEDURE spGenerarAsisteCorteMov    
      @Sucursal  int,    
      @Empresa  char(5),    
      @Usuario  char(10),    
       @FechaInicial datetime,    
      @FechaFinal  datetime,    
    
      @Ok   int  OUTPUT,    
      @OkRef  varchar(255) OUTPUT    
--//WITH ENCRYPTION    
AS BEGIN    
  DECLARE    
    @ID   int,    
    @Renglon  float,    
    @CfgMovCorte char(20),    
    @FechaEmision datetime,    
    @Personal  char(10),    
    @Registro  char(10),    
    @FechaHoraD  datetime,    
    @FechaHoraA  datetime,    
    @Fecha  datetime,     
    @Extra  int,    
    @Ausencia  int,     
    @Minutos  int,    
    @Cantidad  int,    
    @Tipo  varchar(20),    
    @Concepto  varchar(50),    
    @PersonalEstatus char(15),    
    @FechaBaja  datetime  ,  
    @PErmisoConcepto varchar(50)  
    
  -- Dias    
  DECLARE crDifDia CURSOR    
     FOR SELECT Personal, Fecha, SUM(Ausencia), SUM(Extra), SUM(Minutos),  PermisoConcepto  
           FROM PersonalAsisteDifDia    
          WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal) AND Permiso IS NULL AND PermisoID IS NULL     
          GROUP BY Personal, Fecha  ,PErmisoConcepto  
          ORDER BY Personal, Fecha  ,PErmisoConcepto  
    
  OPEN crDifDia     
  FETCH NEXT FROM crDifDia INTO @Personal, @Fecha, @Ausencia, @Extra, @Minutos  ,@PErmisoConcepto  
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL    
  BEGIN    
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL    
    BEGIN    
         
      SELECT @Concepto = NULL    
      IF @Ausencia > 0    
      BEGIN    
        SELECT @Concepto = PermisoConcepto    
          FROM PersonalAsisteDifDia     
         WHERE Empresa = @Empresa AND Personal = @Personal AND Fecha = @Fecha AND Permiso IS NOT NULL AND PermisoID IS NOT NULL AND Ausencia > 0    
    
        INSERT PersonalAsisteDif (Empresa,  Personal,  Fecha,  Cantidad, Tipo,            Concepto)     
                          select  @Empresa, @Personal, @Fecha, 1,        'Dias Ausencia', case when @Concepto is not null then  @Concepto else @PErmisoConcepto end   
      END ELSE    
      IF @Extra > 0  AND NOT EXISTS (SELECT b.Entrada,b.Salida    
          FROM CDIjornadaTemp a JOIN    
          JornadaTiempo b ON a.Jornada=b.Jornada AND a.FEchaD=b.FEcha    
          WHERE a.personal=@Personal AND a.FEchaD=@Fecha)    
      BEGIN    
        SELECT @Concepto = PermisoConcepto    
          FROM PersonalAsisteDifDia    
         WHERE Empresa = @Empresa AND Personal = @Personal AND Fecha = @Fecha AND Permiso IS NOT NULL AND PermisoID IS NOT NULL AND Extra > 0    
--SELECT @Empresa, @Personal, @Fecha, @Minutos, 'Minutos Extras', @Concepto    
        INSERT PersonalAsisteDif (Empresa,  Personal,  Fecha,  Cantidad, Tipo,             Concepto)     
                          VALUES (@Empresa, @Personal, @Fecha, @Minutos, 'Minutos Extras', @Concepto)    
      END    
    END    
    FETCH NEXT FROM crDifDia INTO @Personal, @Fecha, @Ausencia, @Extra, @Minutos ,@PErmisoConcepto   
  END  -- While    
  CLOSE crDifDia    
  DEALLOCATE crDifDia    
    
  -- Minutos    
  DECLARE crDifMin CURSOR    
     FOR SELECT Personal, Fecha, Registro, FechaHoraD, FechaHoraA, Ausencia, Extra    
           FROM PersonalAsisteDifMin    
          WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal) AND Permiso IS NULL AND PermisoID IS NULL     
  OPEN crDifMin    
  FETCH NEXT FROM crDifMin INTO @Personal, @Fecha, @Registro, @FechaHoraD, @FechaHoraA, @Ausencia, @Extra    
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL    
  BEGIN    
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL    
    BEGIN    
      EXEC spGenerarAsisteJustificar @Empresa, @Personal, @Fecha, @Registro, @FechaHoraD, @FechaHoraA, @Ausencia, @Extra, @Ok OUTPUT, @OkRef OUTPUT    
    END    
    
    FETCH NEXT FROM crDifMin INTO @Personal, @Fecha, @Registro, @FechaHoraD, @FechaHoraA, @Ausencia, @Extra    
  END  -- While    
  CLOSE crDifMin    
  DEALLOCATE crDifMin    
    
  -- Borrar Cortes Anteriores    
DECLARE crBorradores CURSOR    
     FOR SELECT ID     
           FROM Asiste     
          WHERE Empresa = @Empresa AND Estatus = 'BORRADOR' AND Mov = @CfgMovCorte    
      
  OPEN crBorradores    
  FETCH NEXT FROM crBorradores INTO @ID    
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL    
  BEGIN    
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL    
    BEGIN    
      DELETE AsisteD WHERE ID = @ID    
      DELETE Asiste  WHERE ID = @ID    
    END    
    FETCH NEXT FROM crBorradores INTO @ID    
  END  -- While    
  CLOSE crBorradores    
  DEALLOCATE crBorradores    
    
  -- Generar el Corte    
  SELECT @FechaEmision = GETDATE(), @Renglon = 0.0    
  EXEC spExtraerFecha @FechaEmision OUTPUT    
  SELECT @CfgMovCorte = ISNULL(NULLIF(RTRIM(AsisteCorte), ''), 'Corte') FROM EmpresaCfgMov WHERE Empresa = @Empresa    
      
  SELECT @ID = NULL    
  SELECT @ID = MAX(ID) FROM Asiste WHERE Empresa = @Empresa AND Usuario = @Usuario AND Estatus IN ('SINAFECTAR', 'BORRADOR', 'CONFIRMAR') AND Mov = @CfgMovCorte    
    
  IF @ID IS NULL    
  BEGIN     
    INSERT Asiste (Sucursal, Empresa,  Mov,          FechaEmision,  Usuario,  Estatus,    FechaD,        FechaA)     
           VALUES (@Sucursal, @Empresa, @CfgMovCorte, @FechaEmision, @Usuario, 'BORRADOR', @FechaInicial, @FechaFinal)    
    SELECT @ID = @@IDENTITY    
  END ELSE    
  BEGIN    
    DELETE AsisteD WHERE ID = @ID    
    UPDATE Asiste     
       SET FechaEmision = @FechaEmision,    
    Estatus = 'BORRADOR',    
           FechaD  = @FechaInicial,    
           FechaA  = @FechaFinal    
     WHERE ID = @ID    
  END    
  DECLARE crDif CURSOR    
     FOR SELECT d.Personal, d.Fecha, d.Registro, d.Cantidad, d.Tipo, d.Concepto, p.Estatus, p.FechaBaja    
           FROM PersonalAsisteDif d, Personal p    
          WHERE d.Empresa = @Empresa AND d.Fecha >= @FechaInicial AND d.Fecha < DATEADD(day, 1, @FechaFinal)     
            AND d.Personal = p.Personal    
          ORDER BY d.Personal, d.Fecha, d.Registro    
    
  OPEN crDif    
  FETCH NEXT FROM crDif INTO @Personal, @Fecha, @Registro, @Cantidad, @Tipo, @Concepto, @PersonalEstatus, @FechaBaja    
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL    
  BEGIN    
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL    
    BEGIN    
      IF @PersonalEstatus <> 'BAJA' OR @Fecha<=@FechaBaja    
      BEGIN    
        SELECT @Renglon = @Renglon + 2048    
        INSERT AsisteD (Sucursal, ID,  Renglon,  Personal,  Fecha,  Registro,  Cantidad,  Tipo,  Concepto)    
                VALUES (@Sucursal, @ID, @Renglon, @Personal, @Fecha, @Registro, @Cantidad, @Tipo, @Concepto)    
      END    
    END    
    FETCH NEXT FROM crDif INTO @Personal, @Fecha, @Registro, @Cantidad, @Tipo, @Concepto, @PersonalEstatus, @FechaBaja    
  END  -- While    
  CLOSE crDif    
  DEALLOCATE crDif    
 
 
 
   --SELECT 'final2',* FROM asisted WHERE id=@id and PErsonal='01413'   
      
  --VACACIONES EN NOMINA    
 CREATE TABLE #PasoVacaciones ( id int IDENTITY(1,1),IDA int null, Personal varchar(10) null, FechaD smalldatetime NULL, FechaA smalldatetime NULL,Concepto varchar(100)null, Tipo varchar(5) null)    
 DECLARE @VacPersonal varchar (10),@VacFEchad datetime,@VacFEchaA datetime,@CLPersonal varchar (10),@CLFEchad datetime,@CLFEchaA DATETIME,@VacConcepto varchar(100), @VacTipo varchar(5)    
     
 TRUNCATE TABLE #PasoVacaciones    
   
     
 INSERT INTO #PasoVacaciones (IDA, Personal,FEchaD,FEchaA,Concepto,Tipo)    
 SELECT a.ID,b.Personal,Min(b.FEchaD),dateadd(day,-1,Max(b.FechaA)),a.Concepto,'VAC'      
----'Accidente Trabajo'     
----'Accidente Trabajo Transito'     
----'Enfermedad General Inicial'    
----'Enfermedad General Subsecuente'    
----'Maternidad Enlace'    
----'Maternidad Posnatal'    
----'Maternidad Prenatal'     
 FROM nomina a     
 JOIN  nominad b ON a.id=b.id    
 WHERE 1=1    
 and a.Estatus IN ('CONCLUIDO','PROCESAR')    
 AND a.Mov IN ('Vacacion Empleados','Vacacion Directores','Vacaciones Empleados','Vacaciones Directores')     
 AND b.Personal IN (SELECT Personal FROM AsisteD WHERE Id=@id)     
 AND b.FechaD >= dateadd(day,-30,@FechaInicial)    
 GROUP BY  a.id,b.Personal,a.Concepto,a.Mov    
   
  INSERT INTO #PasoVacaciones (IDA, Personal,FEchaD,FEchaA,Concepto,Tipo) 
 SELECT a.ID,b.Personal,
 case when b.FEchaD<@FechaInicial then @FechaInicial else b.FEchaD end  as FechaDD, 
 --case when b.FEchaD<@FechaInicial then b.Cantidad-Datediff(day,b.FEchaD,@FechaInicial) else b.Cantidad end as CantidaDD, 
 Case when 
	case when b.FEchaD<@FechaInicial then b.Cantidad-Datediff(day,b.FEchaD,@FechaInicial) else b.Cantidad end=1.0
 then
	case when b.FEchaD<@FechaInicial then @FechaInicial else b.FEchaD end  
 else 
	dateadd(day,(case when b.FEchaD<@FechaInicial then b.Cantidad-Datediff(day,b.FEchaD,@FechaInicial) else b.Cantidad end)-1, case when b.FEchaD<@FechaInicial then @FechaInicial else b.FEchaD end /*b.FEchaD*/) --BEGM. 20120119. Debe sumar los dias a la fecha seleccionada como inicial
end as FechaAA,
 a.Concepto,'INC'  
 FROM nomina a     
 JOIN  nominad b ON a.id=b.id    
 WHERE 1=1    
 and a.Estatus IN ('CONCLUIDO','PROCESAR')    
 AND a.Mov IN ('Incapacidades')     
 AND b.Personal IN (SELECT Personal FROM AsisteD WHERE Id=@id)     
 and  ((b.FEchaD between @FechaInicial and @FechaFinal) or (dateadd(day,b.cantidad,b.FEchaD) between @FechaInicial and @FechaFinal))
 Order by b.FechaD  
   
 -- INSERT INTO #PasoVacaciones (IDA, Personal,FEchaD,FEchaA,Concepto,Tipo)    
 --SELECT a.ID,b.Personal,Min(b.FEchaD),case when sum(b.Cantidad)=1 then Min(b.FEchaD) else dateadd(day,sum(b.Cantidad),Max(b.FechaA)) end ,a.Concepto,'INC'  
 --FROM nomina a     
 --JOIN  nominad b ON a.id=b.id    
 --WHERE 1=1    
 --and a.Estatus IN ('CONCLUIDO','PROCESAR')    
 --AND a.Mov IN ('Incapacidades')     
 --AND b.Personal IN (SELECT Personal FROM AsisteD WHERE Id=@id)     
 --AND b.FechaD >= dateadd(day,-30,@FechaInicial)    
 --GROUP BY  a.id,b.Personal,a.Concepto,a.Mov 
 
      
  --select 'aqui', * from #PasoVacaciones    
      
  IF (SELECT Count(*) FROM #PasoVacaciones)>0    
  BEGIN    
   DECLARE CurPasoVac CURSOR FOR     
   SELECT Personal,FEchaD,FEchaA,Concepto,Tipo FROM #PasoVacaciones    
   OPEN CurPasoVac    
   FETCH NEXT FROM CurPasoVac INTO @VacPersonal,@VacFEchad,@VacFEchaA,@VacConcepto,@VacTipo    
   WHILE @@FETCH_STATUS <> -1     
   BEGIN     
   
   --select @VacFEchad,case when @FechaInicial<@VacFEchad then @VacFEchad else @FechaInicial end ,@VacFEchaA, 
   --case when @FechaFinal>@VacFEchaA then @VacFEchaA else @FechaFinal end   
    
   UPDATE AsisteD SET Tipo=@VacTipo, Concepto=@VacConcepto    
   WHERE Personal=@VacPersonal     
   AND FEcha BETWEEN 
   case when @FechaInicial<@VacFEchad then @VacFEchad else @FechaInicial end
     AND 
     case when @FechaFinal>@VacFEchaA then @VacFEchaA else @FechaFinal end  
   and Id=@ID     
    
   FETCH NEXT FROM CurPasoVac INTO @VacPersonal,@VacFEchad,@VacFEchaA,@VacConcepto,@VacTipo    
   END     
   CLOSE CurPasoVac    
   DEALLOCATE CurPasoVac    
  END     
    
   
      
  --SELECT 'final',* FROM asisted WHERE id=@id and PErsonal='01413'   
  --SELECT * FROM asiste a JOIN  asisteD b ON a.id=b.id WHERE a.id=@ID    
  RETURN    
      
      
END  
GO


/**************** spAsisteCorteFechas ****************/
if exists (select * from sysobjects where id = object_id('dbo.spAsisteCorteFechas') and type = 'P') drop procedure dbo.spAsisteCorteFechas
GO
CREATE PROCEDURE spAsisteCorteFechas
                    @Empresa		char(5)
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @FechaD 	datetime,
    @FechaA 	datetime

  SELECT @FechaD = NULL, @FechaA = NULL
  SELECT @FechaD = MAX(FechaA) 
    FROM Asiste a, MovTipo mt 
   WHERE a.Mov = mt.Mov 
     AND mt.Modulo = 'ASIS'
     AND mt.Clave = 'ASIS.C' 
     AND Empresa = @Empresa 
     AND a.Estatus = 'CONCLUIDO'

  IF @FechaD IS NOT NULL 
  BEGIN
    EXEC spExtraerFecha @FechaD OUTPUT
    SELECT @FechaD = DATEADD(day, 1, @FechaD)
  END ELSE
    SELECT @FechaD = DATEADD(day, -DATEPART(day, @FechaA) + 1, @FechaA)

  SELECT @FechaA = DATEADD(day, -1, GETDATE())
  EXEC spExtraerFecha @FechaA OUTPUT

  SELECT "FechaD" = @FechaD, "FechaA" = @FechaA
  RETURN
END
GO

--  spGenerarAsisteCorte 0, 'DEMO', 'DEMO', '9/1/2006 00:00:00', '9/15/2005 00:00:00'      
/**************** spGenerarAsisteCorte ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarAsisteCorte') and type = 'P') drop procedure dbo.spGenerarAsisteCorte
GO
create PROCEDURE spGenerarAsisteCorte  
@Sucursal  int,  
@Empresa  char(5),  
@Usuario  char(10),  
@FechaInicial datetime,  
@FechaFinal  datetime,
@Personal varchar(10)=null 
--//WITH ENCRYPTION  
AS BEGIN  

--select 'spGenerarAsisteCorte',@Personal
  DECLARE
    --@Personal		char(10),
    @FechaAlta		datetime,
    @Jornada		varchar(20),
    @CfgToleraEntrada 	int,
    @CfgToleraSalida	int,
    @Ok			int,
    @OkRef		varchar(255),
    @FechaFinalVar datetime 
    

  SELECT @Ok = NULL, @OkRef = NULL
  EXEC spExtraerFecha @FechaInicial OUTPUT
  EXEC spExtraerFecha @FechaFinal OUTPUT

  SELECT @CfgToleraEntrada = ISNULL(AsisteToleraEntrada, 0),
         @CfgToleraSalida  = ISNULL(AsisteToleraSalida, 0)
    FROM EmpresaCfg
   WHERE Empresa = @Empresa

 -- BEGIN TRANSACTION
/*
    DELETE PersonalAsisteDifDia WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal)
    DELETE PersonalAsisteDifMin WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal)
    DELETE PersonalAsisteDif    WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal)
    DELETE PersonalAsiste       WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal)
    
    
   Select * from PersonalAsisteDifDia 
    Select * from  PersonalAsisteDifMin --where personal='02869'
    Select * from  PersonalAsisteDif    
    Select * from  PersonalAsiste   
    
*/

    TRUNCATE TABLE PersonalAsisteDifDia 
    TRUNCATE TABLE PersonalAsisteDifMin 
    TRUNCATE TABLE PersonalAsisteDif    
    TRUNCATE TABLE PersonalAsiste       



	DECLARE 
	@CCjFechaA datetime,
	@CCjFecha datetime,
	@CCJPErsonal varchar(10),
	@CCJJornada varchar(20),
	@CCjFechaAnt datetime,
	@CCJPErsonalAnt varchar(10),
	@CCJJornadaAnt varchar(20)

	create Table #PasoPersonalJornada   ( Id int identity, Personal varchar(10) null,Fecha DateTime null, Jornada varchar(20) null, Ano int NULL, Mes INT NULL, Dia INT NULL) 
	CREATE INDEX Consulta ON #PasoPersonalJornada (Personal, Jornada)
	CREATE INDEX Fecha ON #PasoPersonalJornada (Personal, Fecha)
	create table #PasoCamJornadaRH		(id int identity,Mov varchar(20) null,Concepto varchar(20) null,Personal varchar(10) null,Fecha datetime null,Jornada varchar(20) null)
	create table #PasoSoloPersonal		(id int identity,Personal varchar(10) null)
	
	create table #PasoRegistros		(Mov varchar(20) NULL, MovID varchar(20) NULL, MovTipo varchar(20) NULL, FechaEmision datetime NULL, Concepto varchar(50) NULL, Localidad varchar(50) NULL, Registro varchar(10) NULL, HoraRegistro varchar(5) NULL, HoraD varchar(5) NULL, HoraA varchar(5) NULL, FechaD DATETIME NULL, FechaA DATETIME NULL, EsNOcturna BIT NULL, Personal varchar(20) NULL)
	

	insert into #PasoSoloPersonal
	SELECT NULLIF(RTRIM(p.Personal), '')
	FROM Personal p, Jornada j
	WHERE p.Jornada = j.Jornada
	--AND p.Estatus in('ALTA')
	AND UPPER(j.Tipo) = 'CONTROL ASISTENCIA'
	and p.Personal=isnull(@Personal,p.Personal)
	
	

	

	insert into #PasoPersonalJornada (Personal,Fecha, Ano, Mes, dia)
	select Personal,Fecha, t.Anio, t.Mes, t.Dia
	from Tiempo t join #PasoSoloPersonal s  on 1=1
	where fecha between @FechaInicial and @FechaFinal
	group by Personal,Fecha, t.Anio, t.Mes, t.Dia 
	Order by PErsonal,Fecha, t.Anio, t.Mes, t.Dia
	
	
	


	insert into #PasoCamJornadaRH (Mov,Concepto,Personal,Fecha,Jornada)
	select a.Mov,a.Concepto,b.Personal,a.FEchaEmision,b.Jornada 
	from Rh a join Rhd b on a.ID=b.id 
	where b.personal =isnull(@PErsonal,b.personal)
	and a.Estatus='CONCLUIDO'
	and  ((a.MOv = 'Altas') OR (a.MOV='Modificaciones'and a.Concepto='Cambio Jornada')OR (a.MOV='Cambio Jornada'and a.Concepto='Cambio Jornada')) 
	Order by b.Personal,a.FEchaEmision 


	DECLARE CurUpdateJornadaRH CURSOR FOR 
	select a.Personal,a.Fecha,a.Jornada,DateAdd(day,-1,b.Fecha) 
	from #PasoCamJornadaRH a left join 
	#PasoCamJornadaRH b on a.personal=b.personal and a.id+1=b.id

	OPEN CurUpdateJornadaRH
	FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada ,@CCjFechaA
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 
    
		select @FechaAlta=isnull(FechaAntiguedad,FechaALta) from personal where personal=ISNULL(@Personal, @CCJPErsonal)
		
		if @CCJPErsonalAnt<>@CCJPErsonal
		begin
			Update #PasoPersonalJornada set jornada=@CCJJornada where Fecha>= @FechaAlta and  Fecha < @CCjFecha  and  Personal=@CCJPErsonal
			delete #PasoPersonalJornada where Fecha< @FechaAlta and Personal=@CCJPErsonal
		end 

		if @CCjFechaA is not null
		Update #PasoPersonalJornada set jornada=@CCJJornada where Fecha >= @CCjFecha and Fecha <= @CCjFechaA and  Personal=@CCJPErsonal
		else
		Update #PasoPersonalJornada set jornada=@CCJJornada where Fecha >= @CCjFecha and Personal=@CCJPErsonal


		select @CCjFechaAnt=@CCjFecha, @CCJPErsonalAnt=@CCJPErsonal,@CCJJornadaAnt =@CCJJornada
	FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada,@CCjFechaA 
	END 
	CLOSE CurUpdateJornadaRH
	DEALLOCATE CurUpdateJornadaRH

	--Delete #PasoPersonalJornada where Jornada is null

	Update #PasoPersonalJornada set Jornada=a.Jornada
	from #PasoPersonalJornada z join 
	CDIJornadaTemp a on z.Personal=a.Personal and z.FEcha=a.FEchaD join
	Jornada j on a.Jornada=j.jornada
	where a.personal=ISNULL(@Personal, a.Personal)
	
	INSERT #PasoRegistros
	SELECT NULLIF(RTRIM(a.Mov), ''), a.MovID, mt.Clave, a.FechaEmision, NULLIF(RTRIM(d.Concepto), ''), NULLIF(RTRIM(a.Localidad), ''), 
	NULLIF(UPPER(RTRIM(d.Registro)), ''), NULLIF(RTRIM(d.HoraRegistro), ''), NULLIF(RTRIM(d.HoraD), ''), NULLIF(RTRIM(d.HoraA), ''), d.FechaD, d.FechaA,
	j.EsNocturna, d.Personal
	FROM Asiste a join 
	AsisteD d on  a.ID = d.ID join 
	MovTipo mt on mt.mov=a.MOv and mt.Modulo = 'ASIS' join
	#PasoPersonalJornada z on z.Personal=d.Personal and  z.FEcha=a.FechaEmision join
	Jornada j on z.Jornada=j.Jornada  
	WHERE 
	mt.Clave IN ('ASIS.A', 'ASIS.R')            
	AND a.Estatus IN ('PROCESAR','CONCLUIDO')
	AND a.Empresa = @Empresa
	AND ISNULL(a.FechaAplicacion, a.FechaEmision) >= @FechaInicial 
	AND ISNULL(a.FechaAplicacion, a.FechaEmision) < case when j.EsNocturna=0 then DATEADD(day,1,@FechaFinal) else DATEADD(day,2,@FechaFinal) end
	AND d.Personal = isnull(@Personal,d.personal)
	ORDER BY a.FechaEmision, d.HoraRegistro, d.HoraD, d.FechaD
	
	

	
--select * from #PasoPersonalJornada

    DECLARE crPersonal CURSOR
       FOR SELECT NULLIF(RTRIM(p.Personal), ''), NULLIF(RTRIM(p.Jornada), ''), p.FechaAlta
             FROM Personal p, Jornada j
            WHERE p.Jornada = j.Jornada
--              AND p.Estatus = 'ALTA'
              AND UPPER(j.Tipo) = 'CONTROL ASISTENCIA'
              and p.Personal=isnull(@Personal,p.Personal)
              AND ISNULL(p.FechaBaja, @FechaFinal) > @FechaInicial
--select 'spGenerarAsisteCorte2'

    OPEN crPersonal
    FETCH NEXT FROM crPersonal INTO @Personal, @Jornada, @FechaAlta
    WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
    BEGIN
      IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
      BEGIN
      	--ok
      	--SELECT @Personal
      	
      	
    set @FechaFinalVar=@FechaFinal
      	
		if @FechaAlta>@FechaFinalVar
			set @FechaFinalVar=@FechaAlta
			
        EXEC spGenerarAsiste @Empresa, @Personal, @FechaInicial, @FechaFinalVar, @Ok OUTPUT, @OkRef OUTPUT
        
        
        IF @Ok IS NULL --ok
          EXEC spGenerarAsisteAusencia @Empresa, @CfgToleraEntrada, @CfgToleraSalida, @Personal, @Jornada, @FechaAlta, @FechaInicial, @FechaFinalVar, @Ok OUTPUT, @OkRef OUTPUT
		
        IF @Ok IS NULL --ok
          EXEC spGenerarAsisteExtra @Empresa, @Personal, @Jornada, @FechaInicial, @FechaFinalVar, @Ok OUTPUT, @OkRef OUTPUT

        IF @Ok IS NOT NULL AND @OkRef IS NULL 
          SELECT @OkRef = 'Persona: '+RTRIM(@Personal)
          
         
      END
      FETCH NEXT FROM crPersonal INTO @Personal, @Jornada, @FechaAlta
    END  -- While
    CLOSE crPersonal
    DEALLOCATE crPersonal

--SELECT * FROM PersonalAsisteDif WHERE personal='0007' AND fecha='06/05/2010'
--SELECT * FROM PersonalAsisteDifMin

    IF @Ok IS NULL
      EXEC spGenerarAsistePermisos @Empresa, @FechaInicial, @FechaFinal, @Ok OUTPUT, @OkRef OUTPUT

    IF @Ok IS NULL
      EXEC spGenerarAsisteCorteMov @Sucursal, @Empresa, @Usuario, @FechaInicial, @FechaFinal, @Ok OUTPUT, @OkRef OUTPUT

/*    IF (SELECT AsisteJornadasNocturnas FROM EmpresaCfg WHERE Empresa = @Empresa) = 1 AND @Ok IS NULL
      EXEC spGenerarAsisteJornadasNocturnas @Empresa, @FechaFinal, @Ok OUTPUT, @OkRef OUTPUT*/

  IF @Ok IS NULL
  BEGIN
    --COMMIT TRANSACTION
    SELECT 'Se Genero con Exito el Corte de Asistencia'
  END ELSE
  BEGIN
   -- ROLLBACK TRANSACTION
    SELECT RTRIM(Descripcion)+'<BR>'+RTRIM(@OkRef) FROM MensajeLista WHERE Mensaje = @Ok  
  END
  
  RETURN
END  


GO
--EXEC spGenerarAsisteCorte 0, 'CDI', 'NOMINA', '01/05/2010 00:00:00', '17/05/2010 00:00:00'
-- EXEC spRepGenerarAsisteCorte 'Incidencias','CDI','02869','NULL','Area',0,'NULL','Tipo','30/08/2011','05/09/2011'
 /**************** spRepGenerarAsisteCorte ****************/
if exists (select * from sysobjects where id = object_id('dbo.spRepGenerarAsisteCorte') and type = 'P') drop procedure dbo.spRepGenerarAsisteCorte
GO
create PROCEDURE spRepGenerarAsisteCorte      
@Rep   char(15),      
@Empresa  char(5),      
@Personal  char(10),      
@Proyecto varchar(50),      
@Area varchar(50),      
@Sucursal int,      
@PeriodoTipo varchar(20),      
@Sindicato varchar(20),      
@FechaInicial datetime,      
@FechaFinal  datetime      
      
AS      
BEGIN      
 DECLARE       
        
  @Mensaje varchar(500),      
  @Id int,      
  @VacPersonal varchar(10),      
  @VacFEchad smalldatetime,      
  @VacFEchaA smalldatetime,      
  @Usuario  char(10)      
      
 SET @Usuario='DEMO'      
       
       
   IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)      
    SET @Proyecto=null      
   IF NOT EXISTS (SELECT 1 FROM Area WHERE Area=@Area)      
    SET @Area=NULL      
   IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE Sucursal=@Sucursal)      
    SET @Sucursal=NULL      
   IF NOT EXISTS (SELECT 1 FROM PeriodoTipo WHERE PeriodoTipo=@PeriodoTipo)      
    SET @PeriodoTipo=NULL      
   IF NOT EXISTS (SELECT 1 FROM Personaltipo WHERE Tipo=@Sindicato)      
    SET @Sindicato=NULL      
   IF NOT EXISTS (SELECT 1 FROM Personal WHERE Personal=@Personal)      
    SET @Personal=NULL      
    --select @Personal    
       
 --CREATE TABLE #PasoVacaciones ( id int IDENTITY(1,1), Personal varchar(10) null, FechaD smalldatetime NULL, FechaA smalldatetime NULL)      
 CREATE TABLE #ResultadoCorte ( id int IDENTITY(1,1), Mensaje varchar(500) null)      
 CREATE TABLE #RepAusentismo ( idtemp int IDENTITY(1,1),      
  Empresa  varchar(5) null,      
  Mov  varchar(20) null,      
  FechaEmision smalldatetime null,      
  Usuario varchar(10) null,       
  FEchaD smalldatetime null,      
  FEchaA smalldatetime null,      
  Id int null,      
  Renglon float null,      
  Personal varchar(10) null,      
  Tipo varchar (50) null,      
  FEcha smalldatetime NULL,      
 Concepto varchar (100) NULL,      
 Cantidad int NULL,      
 Registro varchar(30) null,    
 Jornada varchar(20) null)      
     
       
       
 INSERT INTO #ResultadoCorte (Mensaje)      
 EXEC spGenerarAsisteCorte 0, @Empresa, @Usuario, @FechaInicial, @FechaFinal,@Personal      
 SELECT @Mensaje=mensaje FROM #ResultadoCorte      
    
 IF @Mensaje = 'Se Genero con Exito el Corte de Asistencia'      
 BEGIN       
    
      
 SELECT TOP 1 @Id= a.id      
 FROM asiste a JOIN       
 asisteD b ON a.id=b.id      
 WHERE 1=1      
 AND a.Mov IN ('Corte','Registro')      
 AND a.Estatus='BORRADOR'      
 AND a.Usuario=@Usuario      
 AND a.Empresa=@Empresa      
 AND a.FechaD=@FechaInicial      
 --AND a.FEchaA=@FechaFinal      
 ORDER BY a.id DESC      
      
    
    
       
 INSERT INTO #RepAusentismo (Empresa,Mov,FechaEmision,Usuario,FEchaD,FEchaA,Id,Renglon,Personal,Tipo,FEcha,Concepto,Cantidad,Registro)      
 SELECT a.Empresa,a.Mov,a.FechaEmision,a.Usuario, a.FEchaD,a.FEchaA,b.Id,b.Renglon,b.Personal,b.Tipo,b.FEcha,b.Concepto,b.Cantidad,b.REgistro      
 FROM asiste a JOIN       
 asisteD b ON a.id=b.id      
 WHERE a.Id=@Id      
     
     
 --select * from #RepAusentismo    
      
 declare @CCjFechaA datetime,@CCjFecha datetime,@CCJPErsonal varchar(10),@CCJJornada varchar(20),@CCjFechaAnt datetime,@CCJPErsonalAnt varchar(10),@CCJJornadaAnt varchar(20)    
          
      create table #PasoCambiosJornada (id int identity,Personal varchar(10) null,Fecha datetime null,Jornada varchar(20) null)    
      create table #PasoCambiosJornadaD (id int identity,Personal varchar(10) null,Fecha datetime null,Jornada varchar(20) null)    
      create table #PasoRangoFechas (id int identity,Fecha datetime null)    
      create table #PasoPersonal (id int identity,Personal varchar(10) null)    
    
      insert into #PasoRangoFechas (Fecha)    
      select FEcha from tiempo where fecha between @FEchaInicial and @FechaFinal order by Fecha    
      insert into #PasoPersonal (personal)    
      select Personal from #RepAusentismo group by Personal order by Personal    
          
      insert into #PasoCambiosJornada (Personal,FEcha,Jornada)    
      select b.Personal,a.FEchaEmision,b.Jornada     
      from Rh a join Rhd b on a.ID=b.id          
      where b.personal in (select Personal from #PasoPersonal)    
      and a.Estatus='CONCLUIDO'    
  and  ((a.MOv = 'Altas') OR (a.MOV='Modificaciones'and a.Concepto='Cambio Jornada')OR (a.MOV='Cambio Jornada'and a.Concepto='Cambio Jornada'))     
      Order by b.Personal,a.FEchaEmision     
                     
      insert into #PasoCambiosJornadaD (Personal,FEcha)    
      select a.Personal,b.Fecha from #PasoPersonal a join #PasoRangoFechas b on 1=1     
      group by a.Personal,b.Fecha    
      order by a.Personal,b.Fecha    
    
    
    
    DECLARE CurUpdateJornadaRH CURSOR FOR     
     select a.Personal,a.FEcha,a.Jornada,DateAdd(day,-1,b.Fecha)     
      from #PasoCambiosJornada a left join     
      #PasoCambiosJornada b on a.personal=b.personal and a.id+1=b.id    
      where a.personal  in (select personal from #PasoCambiosJornada)    
    OPEN CurUpdateJornadaRH    
 FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada ,@CCjFechaA    
 WHILE @@FETCH_STATUS <> -1     
 BEGIN     
      
  if @CCJPErsonalAnt<>@CCJPErsonal    
   Update #PasoCambiosJornadaD set jornada=@CCJJornada where Fecha < @CCjFecha  and  Personal=@CCJPErsonal    
  if @CCjFechaA is not null    
   Update #PasoCambiosJornadaD set jornada=@CCJJornada where Fecha >= @CCjFecha and Fecha <= @CCjFechaA and  Personal=@CCJPErsonal    
  else    
   Update #PasoCambiosJornadaD set jornada=@CCJJornada where Fecha >= @CCjFecha and Personal=@CCJPErsonal    
     
  SELECT @CCjFechaAnt=@CCjFecha, @CCJPErsonalAnt=@CCJPErsonal,@CCJJornadaAnt =@CCJJornada    
  FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada,@CCjFechaA     
 END     
 CLOSE CurUpdateJornadaRH    
 DEALLOCATE CurUpdateJornadaRH    
     
     
     
 Update #PasoCambiosJornadaD set Jornada=a.Jornada    
 from #PasoCambiosJornadaD z join     
 CDIJornadaTemp a on z.Personal=a.Personal and z.FEcha=a.FEchaD join    
 Jornada j on a.Jornada=j.jornada    
 where a.personal=isnull(@Personal,a.personal)     
      
  Update  #RepAusentismo set jornada=b.Jornada    
  from    
  #RepAusentismo a join    
  #PasoCambiosJornadaD b on a.personal=b.personal and a.FEcha=b.Fecha    
      
      
 update #RepAusentismo set Tipo=Null    
 from    
  #RepAusentismo a left join    
  jornadatiempo b on a.Fecha=b.Fecha and a.jornada=b.jornada    
  where a.Tipo='Dias Ausencia' and b.Jornada is null    
      
      
 DELETE AsisteD WHERE id=@Id      
 DELETE Asiste WHERE id=@Id       
       
   --select '#RepAusentismo',* from #RepAusentismo    
       
 IF @Rep='Faltas'      
 BEGIN      
      
  SELECT a.FechaD,a.FEchaA,a.Tipo,a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,1 AS Cantidad,a.FEcha,datename(dw,a.FEcha) CDIDia      
  --,Concepto      
  FROM #RepAusentismo a JOIN      
  personal p ON a.personal=p.Personal      
  WHERE a.Tipo='Dias Ausencia' AND concepto IS NULL       
  AND a.Empresa=@Empresa      
  AND a.FechaD BETWEEN @FechaInicial AND @FechaFinal       
  AND p.proyecto=isnull(@Proyecto,p.Proyecto)      
  AND p.Area=isnull(@Area,p.Area)      
  AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)      
  AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)      
  AND p.Tipo=isnull(@Sindicato,p.Tipo)      
  AND p.Personal=isnull(@Personal,p.Personal)        
  ORDER BY a.Personal,a.FEcha     
      
      
      
         
 END       
       
 IF @Rep='Retardos'      
 BEGIN      
  SELECT a.FechaD,a.FEchaA,a.Tipo,a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,p.departamento,1 AS Cantidad,a.FEcha,datename(dw,a.FEcha) CDIDia      
  ,a.Concepto,a.cantidad AS CantMin,a.Registro, CASE WHEN a.Registro='Entrada' THEN      
  (SELECT Min(b.HoraRegistro) FROM asiste z JOIN asisteD b ON z.id=b.id WHERE b.Registro='Entrada' AND z.Mov IN ('Registro')AND z.Estatus in ('PROCESAR','CONCLUIDO') AND b.Fechad=a.FEcha AND b.Personal=a.Personal)      
  ELSE      
  (SELECT Max(b.HoraRegistro) FROM asiste z JOIN asisteD b ON z.id=b.id WHERE b.Registro='Salida' AND z.Mov IN ('Registro')AND z.Estatus in ('PROCESAR','CONCLUIDO') AND b.Fechad=a.FEcha AND b.Personal=a.Personal)      
  END AS RegistroHora        
  FROM #RepAusentismo a JOIN      
  personal p ON a.personal=p.Personal      
  WHERE  a.Tipo='Minutos Ausencia'       
  AND a.Empresa=@Empresa      
  AND a.FechaD BETWEEN @FechaInicial AND @FechaFinal       
  AND p.proyecto=isnull(@Proyecto,p.Proyecto)      
  AND p.Area=isnull(@Area,p.Area)      
  AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)      
  AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)      
  AND p.Tipo=isnull(@Sindicato,p.Tipo)      
  AND p.Personal=isnull(@Personal,p.Personal)        
  ORDER BY a.Personal,a.FEcha       
  --SELECT * FROM asisteD WHERE Tipo='Minutos Ausencia'       
 END       
       
 IF @Rep IN ('Checadas','Incidencias','ChecadasFirma')      
 BEGIN      
        
  CREATE TABLE #RepChecadas (id int IDENTITY(1,1),      
  Personal varchar(10) null,      
  Fecha smalldatetime null,      
  Checada varchar (50) null,      
  Tipo varchar (50) NULL,      
  Jornada varchar(20)NULL,      
  Concepto varchar (50) NULL,)      
      
      
    
    --select '#RepAusentismo',* from #RepAusentismo
      
  --TRUNCATE  TABLE #RepChecadas       
  INSERT INTO #RepChecadas (Personal,FEcha,Checada,Tipo,Concepto)      
  SELECT a.Personal, a.FEcha, '' AS Checada,      
    CASE   WHEN Concepto  in ('Enfermedad General Inicial','Enfermedad Gral','Enfermedad General Subsecuente') THEN 'IEG'       
       WHEN Concepto  in ('Accidente Trabajo Transito','Accidente Trayecto') THEN 'IAT'       
       WHEN Concepto  in ('Accidente Trabajo','Riesgo Trabajo') THEN 'IRT'       
       WHEN Concepto  in ('Maternidad Enlace','Maternidad Posnatal','Maternidad Prenatal','Maternidad') THEN 'IMT'       
       WHEN Concepto ='Vacaciones' THEN 'VAC' end   AS TipoRegistro,Concepto          
  FROM #RepAusentismo a      
  WHERE a.Tipo in ('VAC','INC') ---------ODM 06-abril-2011  agregue 'VAC'        
    
   

  INSERT INTO #RepChecadas (Personal,FEcha,Checada,Tipo,Concepto)      
  SELECT a.Personal, a.FEcha, '' AS Checada,      
  CASE WHEN Concepto IS NULL THEN 'FLT'       
       ELSE 'PER' END  AS TipoRegistro,Concepto      
  FROM #RepAusentismo a      
  wHERE a.Tipo in ('Dias Ausencia') and ((Concepto IS NULL) or Concepto not in ('Festivo','Descanso'))    
        

 INSERT INTO #RepChecadas (Personal,FEcha,Checada,Tipo,Concepto)      
  SELECT a.Personal, a.FEcha, '' AS Checada,      
  CASE WHEN Concepto IS NULL THEN 'FLT'       
       ELSE 'PER' END  AS TipoRegistro,Concepto      
  FROM #RepAusentismo a      
  wHERE Concepto  in ('Festivo','Descanso')            
    
        
  INSERT INTO #RepChecadas (Personal,FEcha,Checada,Tipo)      
  SELECT b.Personal,b.FEchaD,b.HoraRegistro, b.Registro      
  FROM Asiste a JOIN       
  asisteD b ON a.id=b.id      
  WHERE Mov='Registro'      
  AND a.Estatus IN ('PROCESAR','CONCLUIDO')      
  --AND b.FEchaD BETWEEN @FechaInicial AND @FechaFinal      
    AND b.FEchaD >= CONVERT(DATETIME,@FechaInicial,103)       
    AND b.FechaD < CONVERT(DATETIME,@FechaFinal,103)+1     
   and  b.Personal=isnull(@Personal,b.Personal)     
 ORDER BY b.Personal, b.FechaD, b.Registro          
        
   -- select '#RepChecadas',* from #RepChecadas    
        
  --Actualiza Jornadad de personal      
  UPDATE #RepChecadas SET Jornada=b.Jornada      
  FROM #RepChecadas a JOIN      
  Personal b ON a.personal=b.Personal      
  --Actualiza Jornadad Temporales      
  UPDATE #RepChecadas SET Jornada=b.Jornada       
  FROM #RepChecadas a JOIN      
  CDIJornadaTemp b ON a.personal=b.Personal AND a.FEcha=b.FEchaD  JOIN      
  Jornada c ON b.jornada=c.Jornada      
  --WHERE b.FEchaD BETWEEN @FechaInicial AND @FechaFinal       
  AND a.Fecha >= @FechaInicial AND a.Fecha < CONVERT(DATETIME,@FechaFinal,103)+1              
        
        
  IF @Rep IN ('Checadas','ChecadasFirma')      
  BEGIN     
    
          
   TRUNCATE TABLE PasoRepPersonalFirma      
   IF @Rep='ChecadasFirma'       
   begin      
      
    

      
    INSERT INTO   PasoRepPersonalFirma   ( Concepto,personal, Nombre, ApellidoPaterno, ApellidoMaterno, Departamento, CDIDia, Fecha, Checada, Tipo, Jornada, ReportaA)      
    SELECT a.Concepto,a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,p.Departamento, datename(dw,a.FEcha) AS CDIDia,a.Fecha,a.Checada,a.Tipo,g.jornada,p.ReportaA      
    FROM #RepChecadas a JOIN      
    personal p ON a.personal=p.Personal  join    
    #PasoCambiosJornadaD g on a.personal=g.Personal and a.Fecha=g.Fecha    
    ORDER BY a.Personal,a.Fecha    
        
          
   -- select 'aq', * from PasoRepPersonalFirma    
     
 --select * from PasoRepPersonalFirma    
    TRUNCATE TABLE CDIRetardos      
          
    INSERT INTO CDIRetardos (Personal,Fecha,Tipo,Concepto)      
    SELECT Personal,Fecha,Tipo,Concepto       
      FROM #RepAusentismo      
    WHERE tipo IN ('Minutos Ausencia','VAC')      
    GROUP BY Personal,Fecha ,Tipo,Concepto      
      
   END          
   ELSE      
     Begin    
    
     
  SELECT a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,p.Departamento, datename(dw,a.FEcha) AS CDIDia,a.Fecha,a.Checada,a.Tipo, a.Concepto,    
  (select JOrnada from #PasoCambiosJornadaD rd where rd.personal=a.personal and rd.Fecha=dbo.FnFechaSinHora(a.Fecha)) as Jornada,    
  p.ReportaA      
  FROM #RepChecadas a JOIN      
  personal p ON a.personal=p.Personal     
  where 1=1      
  AND p.Empresa=@Empresa      
  AND a.Fecha >= @FechaInicial AND a.Fecha < CONVERT(DATETIME,@FechaFinal,103)+1              
  AND isnull(p.proyecto,'')=isnull(@Proyecto,p.Proyecto)      
  AND isnull(p.Area,'')=isnull(@Area,p.Area)      
  AND isnull(p.SucursalTRabajo,0)=isnull(@Sucursal,p.SucursalTRabajo)      
  AND isnull(p.PeriodoTipo,'')=isnull(@PeriodoTipo,p.PeriodoTipo)      
  AND isnull(p.Tipo,'')=isnull(@Sindicato,p.Tipo)      
  AND isnull(p.Personal,'')=isnull(@Personal,p.Personal)    
  ORDER BY a.Personal ,a.Fecha ,a.Checada     
    end       
  END       
        
          
      
  IF  @Rep IN ('Incidencias')      
  BEGIN      
   CREATE TABLE #ResumenIncidencias (id int IDENTITY(1,1),Personal varchar(10) NULL, Asistencias int NULL DEFAULT 0,Faltas int NULL  DEFAULT 0,CantRetardos int NULL  DEFAULT 0,      
   TiempoRetardo varchar(50) NULL DEFAULT '000:00',TiempoNormal varchar(50) NULL  DEFAULT '000:00',TiempoExtra varchar(50)  DEFAULT '000:00')       --se agrego "0" DBR  
        
   INSERT INTO #ResumenIncidencias (Personal)      
   SELECT Personal       
   FROM #RepChecadas       
   WHERE  Fecha BETWEEN @FechaInicial AND @FechaFinal      
   GROUP BY Personal       
   ORDER BY personal      
         
   --SELECT * FROM #RepAusentismo WHERE Tipo='Minutos Ausencia'      
         
   --SELECT Personal,Count(*) AS Cantidad,LEFT('0'+CONVERT(varchar(2),Sum(isnull(Cantidad,0))/60),2)+':'+LEFT('0'+CONVERT(varchar(2),Sum(isnull(Cantidad,0))%60),2) AS TiempoRetardo      
   --FROM #RepAusentismo      
   --WHERE Tipo='Minutos Ausencia'      
   --GROUP BY Personal      
         
   --  SELECT Personal,Count(*) AS Cantidad,Right('000'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),3)+':'+Right('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))%60),2) AS TiempoRetardo      
   --FROM #RepAusentismo      
   --WHERE Tipo='Minutos Ausencia'      
   --GROUP BY Personal    
         
   UPDATE #ResumenIncidencias SET TiempoRetardo=x.TiempoRetardo,CantREtardos =x.Cantidad      
   FROM #ResumenIncidencias a  JOIN      
   (SELECT Personal,Count(*) AS Cantidad,Right('000'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),3)+':'+Right('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))%60),2) AS TiempoRetardo      
   FROM #RepAusentismo      
   WHERE Tipo='Minutos Ausencia'      
   GROUP BY Personal) x ON a.PErsonal=x.Personal      
       
   --  SELECT Personal,Right('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),2),Right('0'+CONVERT(varchar(2),Sum(isnull(Cantidad,0))/60),2)+':'+Right('0'+CONVERT(varchar(2),Sum(isnull(Cantidad,0))%60),2) AS TiempoNormal      
   --FROM #RepAusentismo      
   --WHERE Tipo='Minutos Asistencia'      
   --GROUP BY Personal    
       
         
   UPDATE #ResumenIncidencias SET TiempoNormal=x.TiempoNormal       
   FROM #ResumenIncidencias a  JOIN      
   (SELECT Personal,Right('000'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),3)+':'+Right('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))%60),2) AS TiempoNormal      
   FROM #RepAusentismo      
   WHERE Tipo='Minutos Asistencia'      
   GROUP BY Personal) x ON a.PErsonal=x.Personal      
         
   UPDATE #ResumenIncidencias SET TiempoExtra=x.TiempoExtra       
   FROM #ResumenIncidencias a  JOIN      
   (SELECT Personal,LEFT('000'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),3)+':'+LEFT('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))%60),2) AS TiempoExtra      
   FROM #RepAusentismo      
   WHERE Tipo='Minutos Extras'      
   GROUP BY Personal) x ON a.PErsonal=x.Personal      
         
         
   /*********/         
   UPDATE #ResumenIncidencias SET TiempoExtra=x.TiempoExtra       
   FROM #ResumenIncidencias a  JOIN       
   (      
   SELECT Personal,right(('000'+Convert(varchar(5),Sum(Extra)/60)),3)+':'+right(('00'+Convert(varchar(5),Sum(Extra)%60)),2) AS TiempoExtra       
   FROM PersonalAsisteDifMin       
   WHERE Extra>0 ---and      
   --Fecha BETWEEN @FechaInicial AND @FechaFinal      
      group by Personal      
   ) x ON a.PErsonal=x.Personal       
         
         
         
   UPDATE #ResumenIncidencias SET AsisTencias=x.Asistencias ,Faltas=x.CAntidad      
   FROM #ResumenIncidencias a  JOIN      
   (SELECT a.Personal,DateDiff(day,@FechaInicial,@FechaFinal)+1-Count(*) Asistencias,Count(*) AS CAntidad          
    FROM #RepChecadas a JOIN      
   personal p ON a.personal=p.Personal      
   WHERE a.Tipo='FLT'        
   GROUP BY  a.Personal) x ON a.PErsonal=x.Personal      
         
   UPDATE #ResumenIncidencias SET AsisTencias=DateDiff(day,@FechaInicial,@FechaFinal)+1       
   WHERE AsisTencias=0 AND Faltas=0      
         
          
   SELECT a.*,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno       
   FROM #ResumenIncidencias a JOIN personal p ON a.personal=p.Personal      
   WHERE  p.Empresa=@Empresa        
   AND p.proyecto=isnull(@Proyecto,p.Proyecto)      
   AND p.Area=isnull(@Area,p.Area)      
   AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)      
   AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)      
   AND p.Tipo=isnull(@Sindicato,p.Tipo)      
   AND p.Personal=isnull(@Personal,p.Personal)        
   ORDER BY a.Personal      
  END       
 END      
 END      
 ELSE      
   SELECT @Mensaje '@Mensaje'      
        
END 
GO
--EXEC spRepGenerarAsisteCorte 'Faltas', 'CDI','','N','n',null,'n','n','01/05/2010 00:00:00', '15/05/2010 00:00:00'
--EXEC spRepGenerarAsisteCorte 'Checadas',   'CDI','','N','n',0,'n','n','01/05/2010 00:00:00', '15/05/2010 00:00:00'
--EXEC spRepGenerarAsisteCorte 'Incidencias','CDI','','N','n',0,'n','n','01/05/2010 00:00:00', '15/05/2010 00:00:00'
--EXEC spRepGenerarAsisteCorte 'Retardos',   'CDI','','N','n',0,'n','n','01/05/2010 00:00:00', '15/05/2011 00:00:00'


-- spVerAsisteCorte 'DEMO', 'CJ', NULL, '1/1/1', '1/1/4', 'DIAS AUSENCIA', 0, 0, 1
/**************** spVerAsisteCorte ****************/
if exists (select * from sysobjects where id = object_id('dbo.spVerAsisteCorte') and type = 'P') drop procedure dbo.spVerAsisteCorte
GO
CREATE PROCEDURE spVerAsisteCorte
		    @Empresa		char(5),
    		    @Personal		char(10),
		    @Concepto		varchar(50),
    		    @FechaInicial	datetime,
		    @FechaFinal		datetime,
		    @Comando		char(20),	-- DIAS AUSENCIA, MINUTOS AUSENCIA, MINUTOS EXTRAS, RETARDOS, MINUTOS ASISTENCIA
		    @DiaSemana		int,		-- 0 = Todos, 1=unicamente Domingo, 2=Lunes .. 7=Sabado
	            @ExcluirDia		bit,
		    @ParaNomina		bit		-- 1 = Ignora el Concepto y Se basa en lo que la nomina necesita

--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Cont		bit,
    @Cantidad		int,
    @Suma		int,
    @Registro		char(10),
    @Fecha		datetime,
    @MovConcepto	varchar(50),
    @EnMinutos		bit,
    @Retardos		bit,
    @DiasSinSueldo	bit,
    @ConSueldo		bit,
    @CfgToleraEntrada	int,
    @CfgToleraSalida	int

  SELECT @Suma = 0.0, @Comando = UPPER(@Comando), @Concepto = NULLIF(RTRIM(@Concepto), ''), 
         @DiaSemana = ISNULL(@DiaSemana, 0), @DiasSinSueldo = 0, @Retardos = 0
  IF @Comando = 'DIAS SIN SUELDO' SELECT @Comando = 'DIAS AUSENCIA',    @DiasSinSueldo = 1
  IF @Comando = 'RETARDOS' 	  SELECT @Comando = 'MINUTOS AUSENCIA', @Retardos = 1

  IF @Comando IN ('MINUTOS AUSENCIA', 'MINUTOS EXTRAS', 'MINUTOS ASISTENCIA') SELECT @EnMinutos = 1 ELSE SELECT @EnMinutos = 0
  IF @EnMinutos = 1 
    SELECT @CfgToleraEntrada = ISNULL(AsisteToleraEntrada, 0),
           @CfgToleraSalida  = ISNULL(AsisteToleraSalida, 0)
      FROM EmpresaCfg
     WHERE Empresa = @Empresa

  DECLARE crAsisteDif CURSOR FOR
   SELECT SUM(d.Cantidad), d.Fecha, NULLIF(RTRIM(d.Concepto), ''), NULLIF(UPPER(RTRIM(d.Registro)), '')
     FROM Asiste a, MovTipo mt, AsisteD d 
    WHERE a.ID = d.ID 
      AND mt.Modulo = 'ASIS'
      AND mt.Clave = 'ASIS.C' 
      AND a.Estatus = 'CONCLUIDO' 
      AND a.Empresa = @Empresa 
      AND d.Personal = @Personal 
      AND d.Fecha >= @FechaInicial 
      AND d.Fecha < DATEADD(day, 1, @FechaFinal) 
      AND UPPER(d.Tipo) = @Comando 
    GROUP BY d.Fecha, d.Concepto, d.Registro
    ORDER BY d.Fecha, d.Concepto, d.Registro

  OPEN crAsisteDif 
  FETCH NEXT FROM crAsisteDif INTO @Cantidad, @Fecha, @MovConcepto, @Registro
  WHILE @@FETCH_STATUS <> -1 
  BEGIN
    IF @@FETCH_STATUS <> -2 
    BEGIN
      IF @EnMinutos = 0 OR (@Registro NOT IN ('ENTRADA', 'SALIDA')) OR ((@Registro = 'ENTRADA' AND @Cantidad > @CfgToleraEntrada) OR (@Registro = 'SALIDA' AND @Cantidad > @CfgToleraSalida))
      BEGIN
        IF @DiaSemana = 0 OR (@ExcluirDia = 0 AND DATEPART(dw, @Fecha) = @DiaSemana) OR (@ExcluirDia = 1 AND DATEPART(dw, @Fecha) <> @DiaSemana)
        BEGIN
          SELECT @Cont = 0

          IF @ParaNomina = 1
          BEGIN 
            SELECT @ConSueldo = 0
            SELECT @ConSueldo = ISNULL(ConSueldo, 0) FROM Concepto WHERE Modulo = 'ASIS' AND Concepto = @MovConcepto
            IF @DiasSinSueldo = 1 BEGIN IF @ConSueldo = 0 SELECT @Cont = 1 END ELSE
            IF @Comando = 'DIAS AUSENCIA'      SELECT @Cont = 1
            IF @Comando = 'MINUTOS ASISTENCIA' SELECT @Cont = 1
            IF @Comando = 'MINUTOS AUSENCIA' AND @ConSueldo = 0 SELECT @Cont = 1 ELSE
            IF @Comando = 'MINUTOS EXTRAS'   AND @ConSueldo = 1 SELECT @Cont = 1
          END ELSE
          BEGIN
            IF @MovConcepto = @Concepto SELECT @Cont = 1
	  END          

          IF @Cont = 1 
          BEGIN
            IF @Retardos = 1 
              SELECT @Suma = @Suma + 1 
            ELSE SELECT @Suma = @Suma + @Cantidad
          END
        END
      END
    END
    FETCH NEXT FROM crAsisteDif INTO @Cantidad, @Fecha, @MovConcepto, @Registro
  END  -- While
  CLOSE crAsisteDif 
  DEALLOCATE crAsisteDif 

  SELECT "Cantidad" = @Suma
  RETURN
END
GO
/**************** spCDINomRepAusentismo ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDINomRepAusentismo') and type = 'P') drop procedure dbo.spCDINomRepAusentismo
GO
create PROCEDURE spCDINomRepAusentismo        
@Empresa  char(5),        
@Personal  char(10),        
@Proyecto varchar(50),        
@Area varchar(50),        
@Sucursal int,        
@PeriodoTipo varchar(20),        
@Sindicato varchar(20),        
@FechaInicial datetime,        
@FechaFinal  datetime        
AS        
BEGIN        
         
 IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)        
  SET @Proyecto=null        
 IF NOT EXISTS (SELECT 1 FROM Area WHERE Area=@Area)        
  SET @Area=NULL        
   IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE Sucursal=@Sucursal)        
  SET @Sucursal=NULL        
   IF NOT EXISTS (SELECT 1 FROM PeriodoTipo WHERE PeriodoTipo=@PeriodoTipo)        
  SET @PeriodoTipo=NULL        
   IF NOT EXISTS (SELECT 1 FROM PersonalTipo WHERE Tipo=@Sindicato)        
  SET @Sindicato=NULL        
   IF NOT EXISTS (SELECT 1 FROM Personal WHERE Personal=@Personal)        
  SET @Personal=NULL        
          
          
  --TRUNCATE TABLE intelisiset        
        
          
          
        
 SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,        
 b.Personal,b.FechaD,b.FechaA,a.Mov,b.Concepto,datediff(day,b.FechaD,b.FechaA)+1 AS cantidad        
 INTO #Paso2Incidencias        
 FROM asiste a JOIN         
 asisteD b ON a.id=b.id JOIN        
 Movtipo c ON a.Mov=c.MOv JOIN        
 personal p ON p.Personal=b.Personal        
 WHERE 1=1        
 AND c.Clave='ASIS.PD'        
 AND c.Modulo='ASIS'        
 AND a.Estatus IN ('Procesar','Concluido')        
 AND a.Empresa=@Empresa       
 AND b.FechaD BETWEEN @FechaInicial AND @FechaFinal          
 AND p.proyecto=isnull(@Proyecto,p.Proyecto)                   
 AND p.Area=isnull(@Area,p.Area)        
 AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)        
 AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)        
 AND p.Tipo=isnull(@Sindicato,p.Tipo)  
  AND p.Personal=isnull(@Personal,p.Personal)           
  
  
 INSERT INTO  #Paso2Incidencias(Proyecto,Area,SucursalTRabajo,PeriodoTipo,Tipo,Nombre,ApellidoPaterno,ApellidoMaterno,        
 Personal,FechaD,FechaA,Mov,Concepto,Cantidad)          
 SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,        
 b.Personal,b.FechaD,b.FechaA,a.Mov,b.Concepto,datediff(day,b.FechaD,b.FechaA)+1 AS cantidad       
 FROM asiste a JOIN         
 asisteD b ON a.id=b.id JOIN        
 Movtipo c ON a.Mov=c.MOv JOIN        
 personal p ON p.Personal=b.Personal        
 WHERE 1=1        
 AND c.Clave='ASIS.PD'        
 AND c.Modulo='ASIS'        
 AND a.Estatus IN ('Procesar','Concluido')        
 AND a.Empresa=@Empresa       
 AND b.FechaD > dateadd(day,-(datediff(day,b.FechaD,b.FechaA)+1),@FechaInicial)   
 AND b.FechaA < dateadd(day,(datediff(day,b.FechaD,b.FechaA)+1),@FechaFinal)          
 AND p.proyecto=isnull(@Proyecto,p.Proyecto)                   
 AND p.Area=isnull(@Area,p.Area)        
 AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)        
 AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)        
 AND p.Tipo=isnull(@Sindicato,p.Tipo)     
 and (datediff(day,b.FechaD,b.FechaA)+1)=3  
  AND p.Personal=isnull(@Personal,p.Personal)     
     
--select a.Empresa,a.Estatus,a.MOv,a.MovID,b.Personal,min(b.FechaD) as FechaD,  
-- Case When Sum(b.Cantidad)<>1 then dateadd(day,(Sum(b.Cantidad)-1),Min(b.FechaD)) Else Min(b.FechaD) END as FechaA,  
-- Sum(b.Cantidad) as Cantidad     
-- FROM nomina a JOIN         
-- nominad b ON a.id=b.id   
-- where 1=1  
-- AND a.Mov IN ('Incapacidades')   
-- AND a.Estatus IN ('Concluido')   
-- AND a.Empresa=@Empresa    
-- AND b.Personal=isnull(@Personal,b.Personal)  
-- group by a.Empresa,a.Estatus,a.MOv,a.MovID,b.Personal   
  
     
    --INSERT INTO  #Paso2Incidencias(Proyecto,Area,SucursalTRabajo,PeriodoTipo,Tipo,Nombre,ApellidoPaterno,ApellidoMaterno,        
 --Personal,FechaD,FechaA,Mov,Concepto,Cantidad)        
        
 INSERT INTO  #Paso2Incidencias(Proyecto,Area,SucursalTRabajo,PeriodoTipo,Tipo,Nombre,ApellidoPaterno,ApellidoMaterno,        
 Personal,FechaD,FechaA,Mov,Concepto,Cantidad)        
 SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,        
 x.Personal,  
 x.FEchaD,x.FEchaA ,x.Mov,x.Mov,x.CAntidad        
 FROM   
 (  
 select a.Empresa,a.Estatus,a.MOv,a.MovID,b.Personal,min(b.FechaD) as FechaD,  
 Case When Sum(b.Cantidad)<>1 then dateadd(day,(Sum(b.Cantidad)-1),Min(b.FechaD)) Else Min(b.FechaD) END as FechaA,  
 Sum(b.Cantidad) as Cantidad     
 FROM nomina a JOIN         
 nominad b ON a.id=b.id   
 where 1=1  
 AND a.Mov IN ('Incapacidades')   
 AND a.Estatus IN ('CONCLUIDO','PROCESAR') 
 AND a.Empresa=@Empresa    
 AND b.Personal=isnull(@Personal,b.Personal)  
 group by a.Empresa,a.Estatus,a.MOv,a.MovID,b.Personal   
   
 ) as x JOIN        
 Personal p ON p.personal=x.personal        
 WHERE  
 x.Estatus IN ('CONCLUIDO','PROCESAR')        
 AND x.FechaD >=  dateadd(day,-Cantidad,@FechaInicial)   
AND x.FechaA <=  dateadd(day,Cantidad,@FechaFinal)  
 AND p.proyecto=isnull(@Proyecto,p.Proyecto)        
 AND p.Area=isnull(@Area,p.Area)        
 AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)        
 AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)        
 AND p.Tipo=isnull(@Sindicato,p.Tipo)       
     
 GROUP BY  p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,        
 x.Personal,x.Mov ,x.FEchaD,x.FEchaA ,x.CAntidad       
     
     
     
     
     
     
   INSERT INTO  #Paso2Incidencias(Proyecto,Area,SucursalTRabajo,PeriodoTipo,Tipo,Nombre,ApellidoPaterno,ApellidoMaterno,        
 Personal,FechaD,FechaA,Mov,Concepto,Cantidad)        
   
 SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,        
 x.Personal,  
 x.FEchaD,x.FEchaA ,x.Mov,x.Mov,x.CAntidad        
 FROM (       
 select a.Empresa,a.Estatus,a.MOv,a.MovID,b.Personal,min(b.FechaD) as FechaD,  
 max(b.FechaA) as FEchaA,  
 Sum(b.Cantidad) as Cantidad     
 FROM nomina a JOIN         
 nominad b ON a.id=b.id   
 where 1=1  
AND a.Mov IN ('Vacacion Empleados','Vacacion Directores','Vacaciones Empleados','Vacaciones Directores')   
 AND a.Estatus IN ('CONCLUIDO','PROCESAR')   
 AND a.Empresa=@Empresa    
 AND b.Personal=isnull(@Personal,b.Personal)  
 group by a.Empresa,a.Estatus,a.MOv,a.MovID,b.Personal   
  ) as x JOIN        
 Personal p ON p.personal=x.personal        
 WHERE  
 x.Estatus IN ('CONCLUIDO','PROCESAR')        
 --AND x.FechaD >=  dateadd(day,-Cantidad,@FechaInicial)   
--AND x.FechaA <=  dateadd(day,Cantidad,@FechaFinal)        
 AND x.FechaD > dateadd(day,-(datediff(day,x.FechaD, x.FechaA)+1),@FechaInicial)
 AND x.FechaA < dateadd(day,(datediff(day,x.FechaD,x.FechaA)+1),@FechaFinal)
 AND p.proyecto=isnull(@Proyecto,p.Proyecto)        
 AND p.Area=isnull(@Area,p.Area)        
 AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)        
 AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)        
 AND p.Tipo=isnull(@Sindicato,p.Tipo)           
 GROUP BY  p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,        
 x.Personal,x.Mov ,x.FEchaD,x.FEchaA ,x.CAntidad       
     
        
  
        
  DELETE #Paso2Incidencias         
  WHERE FechaA = @FechaInicial AND Mov IN (/*'Incapacidades',*/'Vacacion Empleados','Vacacion Directores','Vacaciones Empleados','Vacaciones Directores')        
         
 SELECT *         
   FROM #Paso2Incidencias        
 ORDER BY personal, FechaD        
        
        
END
GO
--EXEC spCDINomRepAusentismo 'CDI','','d','d',5,'e','r','01/05/2010 00:00:00', '15/05/2010 00:00:00'
/**************** spCDINomRepDominical ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDINomRepDominical') and type = 'P') drop procedure dbo.spCDINomRepDominical
GO

CREATE PROCEDURE spCDINomRepDominical
@Empresa  char(5),
@Personal  char(10),
@Proyecto varchar(50),
@Area varchar(50),
@Sucursal int,
@PeriodoTipo varchar(20),
@Sindicato varchar(20),
@FechaInicial datetime,
@FechaFinal  datetime
AS
BEGIN
  DECLARE @CCjFechaA      datetime,
          @CCjFecha       datetime,
          @CCJPErsonal    varchar(10),
          @CCJJornada     varchar(20),
          @CCjFechaAnt    datetime,
          @CCJPErsonalAnt varchar(10),
          @CCJJornadaAnt  varchar(20)    
 
 IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)
  SET @Proyecto=null
 IF NOT EXISTS (SELECT 1 FROM Area WHERE Area=@Area)
  SET @Area=NULL
   IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE Sucursal=@Sucursal)
  SET @Sucursal=NULL
   IF NOT EXISTS (SELECT 1 FROM PeriodoTipo WHERE PeriodoTipo=@PeriodoTipo)
  SET @PeriodoTipo=NULL
   IF NOT EXISTS (SELECT 1 FROM PersonalTipo WHERE Tipo=@Sindicato)
  SET @Sindicato=NULL
    IF NOT EXISTS (SELECT 1 FROM Personal WHERE Personal=@Personal)
  SET @Personal=NULL
  
  ----BEGM 20120119. Tabla para que tome el historico de Jornadas
  CREATE TABLE #PasoCambiosJornada (ID int IDENTITY, Personal varchar(10) NULL, Fecha datetime NULL, Jornada varchar(20) NULL)    
  CREATE TABLE #PasoCambiosJornadaD (ID int IDENTITY, Personal varchar(10) NULL, Fecha datetime NULL, Jornada varchar(20) NULL)    
  CREATE TABLE #PasoRangoFechas (ID int IDENTITY, Fecha datetime NULL)    
  CREATE TABLE #PasoPersonal (ID int IDENTITY, Personal varchar(10) NULL)
  
  INSERT INTO #PasoRangoFechas(Fecha) SELECT Fecha FROM Tiempo WHERE Fecha BETWEEN @FechaInicial AND @FechaFinal ORDER BY Fecha
  INSERT INTO #PasoPersonal(Personal) SELECT Personal FROM Personal WHERE Personal = ISNULL(@Personal, Personal) GROUP BY Personal ORDER BY Personal

  INSERT INTO #PasoCambiosJornada(Personal, Fecha, Jornada) 
  SELECT b.Personal, a.FechaEmision, b.Jornada 
  FROM Rh a 
  JOIN Rhd b ON a.ID = b.id
  WHERE b.personal IN (SELECT Personal FROM #PasoPersonal)
        AND a.Estatus = 'CONCLUIDO'
        AND  ((a.Mov = 'Altas') OR (a.Mov = 'Modificaciones' AND a.Concepto = 'Cambio Jornada') OR (a.Mov = 'Cambio Jornada' AND a.Concepto = 'Cambio Jornada')) 
  ORDER BY b.Personal,a.FechaEmision

  INSERT INTO #PasoCambiosJornadaD(Personal, Fecha)    
  SELECT a.Personal, b.Fecha FROM #PasoPersonal a JOIN #PasoRangoFechas b ON 1=1 
  GROUP BY a.Personal,b.Fecha    
  ORDER BY a.Personal,b.Fecha    

  DECLARE CurUpdateJornadaRH CURSOR FOR     
  SELECT a.Personal, a.Fecha, a.Jornada, DATEADD(DAY,-1,b.Fecha)
  FROM #PasoCambiosJornada a 
  LEFT JOIN #PasoCambiosJornada b ON a.personal = b.personal AND a.id+1 = b.id    
  WHERE a.personal IN (SELECT personal FROM #PasoCambiosJornada)    

  OPEN CurUpdateJornadaRH    
  FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal, @CCjFecha, @CCJJornada, @CCjFechaA    
  WHILE @@FETCH_STATUS <> -1     
  BEGIN
    IF @CCJPErsonalAnt<>@CCJPErsonal    
      UPDATE #PasoCambiosJornadaD SET jornada = @CCJJornada WHERE Fecha < @CCjFecha AND Personal = @CCJPErsonal 
    IF @CCjFechaA IS NOT NULL    
      UPDATE #PasoCambiosJornadaD SET jornada = @CCJJornada WHERE Fecha >= @CCjFecha AND Fecha <= @CCjFechaA AND Personal=@CCJPErsonal 
    ELSE    
      UPDATE #PasoCambiosJornadaD SET jornada=@CCJJornada WHERE Fecha >= @CCjFecha AND Personal=@CCJPErsonal
     
    SELECT @CCjFechaAnt = @CCjFecha, @CCJPErsonalAnt = @CCJPErsonal, @CCJJornadaAnt = @CCJJornada 
    FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal, @CCjFecha, @CCJJornada, @CCjFechaA     
  END     
  CLOSE CurUpdateJornadaRH    
  DEALLOCATE CurUpdateJornadaRH    
     
  UPDATE #PasoCambiosJornadaD set Jornada=a.Jornada    
  FROM #PasoCambiosJornadaD z join     
  CDIJornadaTemp a on z.Personal=a.Personal and z.FEcha=a.FEchaD join    
  Jornada j on a.Jornada=j.jornada    
  where a.personal=isnull(@Personal,a.personal)     


 SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,
 b.Personal,b.Registro,b.HoraREgistro,a.FechaAplicacion,p.DEpartamento, ISNULL(cj.Jornada, p.jornada) Jornada
 FROM asiste a JOIN 
 asisteD b ON a.id=b.id JOIN
 Movtipo c ON a.Mov=c.MOv JOIN
 personal p ON p.Personal=b.Personal
 LEFT JOIN #PasoCambiosJornadaD cj ON b.Personal = cj.Personal AND a.FechaAplicacion = cj.Fecha 
 WHERE 1=1
 AND c.Clave='ASIS.R'
 AND c.Modulo='ASIS'
 AND datename(dw,a.FechaAplicacion) IN ('Domingo', 'Sunday')
 AND a.Estatus IN ('Procesar','Concluido')
 AND a.Empresa=@Empresa
 AND a.FechaAplicacion BETWEEN @FechaInicial AND @FechaFinal 
 AND p.proyecto=isnull(@Proyecto,p.Proyecto)
 AND p.Area=isnull(@Area,p.Area)
 AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)
 AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)
 AND p.Tipo=isnull(@Sindicato,p.Tipo) 
 AND p.Personal=isnull(@Personal,p.Personal) 
 ORDER BY p.Personal,a.FechaAplicacion, b.HoraRegistro


END
GO
--EXEC spCDINomRepDominical 'CDI','','N','n',0,'n','n','01/01/2010 00:00:00', '01/01/2011 00:00:00'
--EXEC spCDINomRepDominical 'CDI','','N','n',0,'n','n','01/01/2010 00:00:00', '01/01/2011 00:00:00'

/**************** spCDINomRepPersonalFirma ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDINomRepPersonalFirma') and type = 'P') drop procedure dbo.spCDINomRepPersonalFirma
GO
create  PROCEDURE spCDINomRepPersonalFirma    
@Empresa  char(5),    
@Personal  char(10),    
@Proyecto varchar(50),    
@Area varchar(50),    
@Sucursal int,    
@PeriodoTipo varchar(20),    
@Sindicato varchar(20),    
@FechaInicial datetime,    
@FechaFinal  datetime    
AS    
BEGIN    
     
EXEC spRepGenerarAsisteCorte 'ChecadasFirma',@Empresa,@Personal,@Proyecto,@Area,@Sucursal,@PeriodoTipo,@Sindicato,@FechaInicial,@FechaFinal    
    
 IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)    
  SET @Proyecto=null    
 IF NOT EXISTS (SELECT 1 FROM Area WHERE Area=@Area)    
  SET @Area=NULL    
   IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE Sucursal=@Sucursal)    
  SET @Sucursal=NULL    
   IF NOT EXISTS (SELECT 1 FROM PeriodoTipo WHERE PeriodoTipo=@PeriodoTipo)    
  SET @PeriodoTipo=NULL    
   IF NOT EXISTS (SELECT 1 FROM PersonalTipo WHERE Tipo=@Sindicato)    
  SET @Sindicato=NULL    
    IF NOT EXISTS (SELECT 1 FROM Personal WHERE Personal=@Personal)    
  SET @Personal=NULL    
    
    
  delete  PasoRepPersonalFirma where Concepto in ('Descanso','Festivo')
    
    
 CREATE TABLE #pasoFestDescFinal (Personal varchar(10) null,FEcha datetime NULL,Tipo varchar(30) NULL,Jornada varchar(50) NULL)    
 CREATE TABLE #pasoFestDesc (Personal varchar(10) null,FEcha datetime NULL,Tipo varchar(30) NULL,Jornada varchar(50) NULL)    
     
 DECLARE @CurPeronal varchar(10)    
     
 DECLARE ImpuestoEstatalCur CURSOR FOR     
    SELECT personal FROM PasoRepPersonalFirma    
    GROUP BY personal    
    OPEN ImpuestoEstatalCur    
 FETCH NEXT FROM ImpuestoEstatalCur INTO @CurPeronal    
 WHILE @@FETCH_STATUS <> -1     
 BEGIN     
      
       
  
    
 INSERT INTO #pasoFestDesc (Personal ,FEcha ,Jornada)    
 SELECT a.Personal,b.Fecha ,p.jornada    
 FROM PasoRepPersonalFirma a JOIN     
 Tiempo b ON 1=1 JOIN    
 Personal p ON a.personal=p.personal    
 WHERE b.Fecha BETWEEN @FechaInicial AND @FechaFinal     
 AND b.Fecha NOT IN (SELECT Fecha FROM PasoRepPersonalFirma WHERE Personal=@CurPeronal)     
 AND a.Personal=@CurPeronal    
 AND b.Fecha >= ISNULL(FechaAntiguedad, FechaAlta) --BEGM 20120118. Solo muestre Descansos despues de su fecha de Ingreso
 GROUP BY a.Personal,b.Fecha ,p.jornada    
    
--SELECT * FROM #pasoFestDesc    
    
 UPDATE #pasoFestDesc SET Tipo ='FVO'    
 FROM #pasoFestDesc a JOIN     
 diafestivo b ON a.FEcha=b.FEcha    
 WHERE b.Eslaborable=0    
 AND Tipo IS NULL    
    
 UPDATE #pasoFestDesc SET Tipo ='FVO'    
 FROM #pasoFestDesc a JOIN     
 Jornadadiafestivo b ON a.Fecha=b.Fecha AND a.Jornada=b.Jornada    
 WHERE b.Eslaborable=0    
 AND Tipo IS NULL    
     
 --DELETE #pasoFestDesc WHERE fecha NOT IN (SELECT Fecha FROM PasoRepPersonalFirma WHERE Personal=@CurPeronal)     
     
 UPDATE #pasoFestDesc set Tipo ='DES' WHERE Tipo IS null    
     
    
  FETCH NEXT FROM ImpuestoEstatalCur INTO @CurPeronal    
 END     
 CLOSE ImpuestoEstatalCur    
 DEALLOCATE ImpuestoEstatalCur    
    
 --DELETE #pasoFestDesc    
 --SELECT * FROM #pasoFestDesc    
     
    
 SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo AS PersonalTipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,    
 p.Personal,a.Fecha,a.Tipo,'' AS REgistro,datename(dw,a.Fecha) AS CDIDia    
 FROM #pasoFestDesc a JOIN     
 personal p ON p.Personal=a.Personal    
 WHERE 1=1     
 --AND a.Fecha BETWEEN @FechaInicial AND @FechaFinal     
 AND a.FEcha >= CONVERT ( DATETIME, @FechaInicial, 103)    
 AND a.FEcha< CONVERT ( DATETIME,@FechaFinal,103)+1    
 AND p.proyecto=isnull(@Proyecto,p.Proyecto)    
 AND p.Area=isnull(@Area,p.Area)    
 AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)    
 AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)    
 AND p.Tipo=isnull(@Sindicato,p.Tipo)     
 AND p.Personal=isnull(@Personal,p.Personal)     
 UNION ALL     
 SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo AS PersonalTipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,    
 p.Personal,a.Fecha,a.Tipo,a.Checada AS REgistro,datename(dw,a.Fecha) AS CDIDia    
 FROM PasoRepPersonalFirma a JOIN     
 personal p ON p.Personal=a.Personal    
 WHERE 1=1     
 --AND a.Fecha BETWEEN @FechaInicial AND @FechaFinal     
 AND a.FEcha >= CONVERT ( DATETIME, @FechaInicial, 103)    
 AND a.FEcha< CONVERT ( DATETIME,@FechaFinal,103)+1    
 AND p.proyecto=isnull(@Proyecto,p.Proyecto)    
 AND p.Area=isnull(@Area,p.Area)    
 AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)    
 AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)    
 AND p.Tipo=isnull(@Sindicato,p.Tipo)     
 AND p.Personal=isnull(@Personal,p.Personal)     
 ORDER BY p.Personal, a.Fecha  ,REgistro  
     
     
     
    
    
END    

GO
--EXEC spCDINomRepPersonalFirma 'CDI','dsd','','n',0,'n','n','01/05/2010 00:00:00', '15/05/2010 00:00:00'
--EXEC SPCDIJornadaDiasSemana 'a1','0001'
--Exec RepCDISPJornadaTemp '01/10/2010', '06/10/2010','1'

/**************** spCDINomRepPersonalRelAsist ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDINomRepPersonalRelAsist') and type = 'P') drop procedure dbo.spCDINomRepPersonalRelAsist
GO
create PROCEDURE spCDINomRepPersonalRelAsist  
@Empresa  char(5),  
@Personal  char(10),  
@Proyecto varchar(50),  
@Area varchar(50),  
@Sucursal int,  
@PeriodoTipo varchar(20),  
@Sindicato varchar(20),  
@FechaInicial datetime,  
@FechaFinal  datetime  
AS  
BEGIN  
   
 DECLARE @PersonalNom varchar(20),  
 @FechaMov datetime,  
 @FechaAsis datetime,  
 @Minutos int  
 IF @Personal='Nom'  
  SET @PersonalNom='Nom'  
    
  
 IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)  
  SET @Proyecto=null  
 IF NOT EXISTS (SELECT 1 FROM Area WHERE Area=@Area)  
  SET @Area=NULL  
 IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE Sucursal=@Sucursal)  
  SET @Sucursal=NULL  
 IF NOT EXISTS (SELECT 1 FROM PeriodoTipo WHERE PeriodoTipo=@PeriodoTipo)  
  SET @PeriodoTipo=NULL  
 IF NOT EXISTS (SELECT 1 FROM PersonalTipo WHERE Tipo=@Sindicato)  
  SET @Sindicato=NULL  
 IF NOT EXISTS (SELECT * FROM Personal WHERE Personal=@Personal)  
  SET @Personal=NULL  
  
 EXEC spRepGenerarAsisteCorte 'ChecadasFirma',@Empresa,@Personal,@Proyecto,@Area,@Sucursal,@PeriodoTipo,@Sindicato, @FechaInicial,@FechaFinal  

 CREATE TABLE #PasoPerFechas (id int IDENTITY(1,1),  personal varchar(10) NULL,Fecha datetime NULL, Tipo varchar(30) NULL,Observaciones varchar(50) NULL,Jornada varchar(20) null)  

--update 
--from 
--PasoRepPersonalFirma a   left join
--jornadatiempo b on a.Jornada=b.Jornada and a.Fecha=b.Fecha
--where a.Tipo='FLT'
--and b.Jornada is null


--select *  
--from 
--PasoRepPersonalFirma a   left join
--jornadatiempo b on a.Jornada=b.Jornada and a.Fecha=b.Fecha
--where a.Tipo='FLT'
--and b.Jornada is null



   
 INSERT INTO #PasoPerFechas (personal,Jornada,Fecha)  
 select a.Personal,a.Jornada,a.FEcha 
 from PasoRepPersonalFirma a 
 group by a.Personal,a.Jornada,a.FEcha
 order by a.Personal,a.FEcha

  
--select * from PasoRepPersonalFirma


   
 UPDATE #PasoPerFechas SET Tipo =b.Tipo,Observaciones=b.Concepto  
 FROM #PasoPerFechas a JOIN   
 PasoRepPersonalFirma b ON ltrim(rtrim(a.personal))=ltrim(rtrim(b.Personal)) AND a.FEcha=b.FEcha  
 WHERE b.Tipo IN ('FLT','IEG','IAT','IRT','IMT','VAC','PER','INC')  



update #PasoPerFechas set Tipo=Null
from 
#PasoPerFechas  a left join
Jornadatiempo b on a.jornada=b.jornada and a.fecha=b.fecha
where b.jornada is null
 --select 'Tipo IS NULL ',* from  #PasoPerFechas WHERE Tipo IS NULL 

 DECLARE @cid int,@cPersonal varchar(10),@cFecha datetime,@cJornada varchar(20)  
 DECLARE Curretardos CURSOR FOR   
    SELECT id,Personal,FEcha,Jornada   
    FROM #PasoPerFechas WHERE Tipo IS NULL   
      
    OPEN Curretardos  
 FETCH NEXT FROM Curretardos INTO @cid,@cPersonal,@cFEcha,@cJornada  
 WHILE @@FETCH_STATUS <> -1   
  BEGIN   
     
   IF NOT EXISTS (SELECT * FROM jornadaTiempo WHERE Fecha=@cFEcha AND jornada=@cJornada )  
   BEGIN  
   
    UPDATE #PasoPerFechas SET Tipo='DES' WHERE id=@cid   
    
    IF EXISTS (SELECT 1  
    FROM AsisteD d, Asiste a     
    WHERE a.ID           = d.ID     
    AND d.FEchaD= @cFEcha   
    AND Personal       = @cPersonal    
    AND UPPER(REGISTRO)= 'ENTRADA'     
    AND UPPER(Mov)     = 'Labora Descanso'   
    AND a.Estatus IN ('borrador','procesar','Concluido'))   
    AND   
    EXISTS (SELECT 1   
    FROM AsisteD d, Asiste a     
    WHERE a.ID           = d.ID     
    AND FechaEmision      = @cFEcha   
    AND Personal       = @cPersonal    
    AND UPPER(REGISTRO)= 'ENTRADA'     
    AND UPPER(Mov)     = 'REGISTRO'   
    AND a.Estatus IN ('procesar','Concluido'))  
    BEGIN  
     UPDATE #PasoPerFechas SET Tipo='LAD' WHERE id=@cid  
  
     SELECT  @FechaMov= NULL,@FechaAsis=NULL      
  
  
     SELECT @FechaMov=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)   
     FROM AsisteD d, Asiste a     
     WHERE a.ID           = d.ID     
     AND d.FEchaD= @cFEcha   
     AND Personal       = @cPersonal    
     AND UPPER(REGISTRO)= 'ENTRADA'     
     AND UPPER(Mov)     = 'Labora Descanso'   
     AND a.Estatus IN ('borrador','procesar','Concluido')  
  
     SELECT  @FechaAsis=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraRegistro + ':00', 126)    
     FROM AsisteD d, Asiste a     
     WHERE a.ID           = d.ID     
     AND FechaEmision      = @cFEcha   
     AND Personal       = @cPersonal    
     AND UPPER(REGISTRO)= 'ENTRADA'     
     AND UPPER(Mov)     = 'REGISTRO'   
     AND a.Estatus IN ('procesar','Concluido')  
  
     --CREATE TABLE CDINomRetardosFestDesc (Id int IDENTITY(1,1),Personal varchar(30) NULL, Fecha datetime NULL,CAntidad int null)  
     --SELECT 'aquinas',datediff(mi, @FechaMov,@FechaAsis), @FechaAsis,@FechaMov  
     SET @Minutos=datediff(mi, @FechaMov,@FechaAsis)  
     IF @Minutos>0  
     BEGIN  
      INSERT INTO CDINomRetardosFestDesc (Personal,Fecha,Cantidad)  
      SELECT @cPersonal,@cFEcha, CASE WHEN @Minutos>0 AND @Minutos<=30 THEN 1   
      WHEN @Minutos>30 AND @Minutos<=60 THEN 2  
      WHEN @Minutos>60 AND @Minutos<=90 THEN 3  
      WHEN @Minutos>90 AND @Minutos<=120 THEN 4  
      WHEN @Minutos>120 AND @Minutos<=150 THEN 5  
      WHEN @Minutos>150  THEN 6 END   
  
     END  
    END   
  
    IF EXISTS (SELECT 1   
    FROM AsisteD d, Asiste a     
    WHERE a.ID           = d.ID     
    AND d.FEchaD   = @cFEcha   
    AND Personal       = @cPersonal    
    AND UPPER(REGISTRO)= 'ENTRADA'     
    AND UPPER(Mov)     = 'Labora Festivo'   
    AND a.Estatus IN ('borrador','procesar','Concluido'))   
    AND   
    Exists (SELECT 1   
    FROM AsisteD d, Asiste a     
    WHERE a.ID           = d.ID     
    AND FechaEmision   = @cFEcha   
    AND Personal       = @cPersonal    
    AND UPPER(REGISTRO)= 'ENTRADA'     
    AND UPPER(Mov)     = 'REGISTRO'   
    AND a.Estatus IN ('procesar','Concluido'))  
    BEGIN   
     UPDATE #PasoPerFechas SET Tipo='LAF' WHERE id=@cid       
  
     SELECT  @FechaMov= NULL,@FechaAsis=NULL  
  
     SELECT @FechaMov=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)   
     FROM AsisteD d, Asiste a     
     WHERE a.ID           = d.ID     
     AND d.FEchaD   = @cFEcha   
     AND Personal       = @cPersonal    
     AND UPPER(REGISTRO)= 'ENTRADA'     
     AND UPPER(Mov)     = 'Labora Festivo'   
     AND a.Estatus IN ('borrador','procesar','Concluido')  
  
     SELECT  @FechaAsis=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraRegistro + ':00', 126)    
     FROM AsisteD d, Asiste a     
     WHERE a.ID           = d.ID     
     AND FechaEmision      = @cFEcha   
     AND Personal       = @cPersonal    
     AND UPPER(REGISTRO)= 'ENTRADA'     
     AND UPPER(Mov)     = 'REGISTRO'   
     AND a.Estatus IN ('procesar','Concluido')  
  
     --CREATE TABLE CDINomRetardosFestDesc (Id int IDENTITY(1,1),Personal varchar(30) NULL, Fecha datetime NULL,CAntidad int null)  
     --SELECT @FechaAsis,@FechaMov  
     SET @Minutos=datediff(mi, @FechaMov,@FechaAsis)  
     IF @Minutos>0  
     BEGIN  
      INSERT INTO CDINomRetardosFestDesc (Personal,Fecha,Cantidad)  
      SELECT @cPersonal,@cFEcha, CASE WHEN @Minutos>0 AND @Minutos<=30 THEN 1   
      WHEN @Minutos>30 AND @Minutos<=60 THEN 2  
      WHEN @Minutos>60 AND @Minutos<=90 THEN 3  
      WHEN @Minutos>90 AND @Minutos<=120 THEN 4  
      WHEN @Minutos>120 AND @Minutos<=150 THEN 5  
      WHEN @Minutos>150  THEN 6 END  
     END  
    END   
   ELSE  
    BEGIN  
     IF EXISTS (SELECT fecha FROM diafestivo WHERE Eslaborable=0 AND FEcha=@cFEcha)  
      UPDATE #PasoPerFechas SET Tipo ='FVO',Observaciones=b.Concepto  
      FROM #PasoPerFechas a JOIN   
      diafestivo b ON a.FEcha=b.FEcha  
      WHERE b.Eslaborable=0  
      AND id=@cid  
     IF EXISTS (SELECT fecha FROM Jornadadiafestivo WHERE Eslaborable=0 AND FEcha=@cFEcha)  
      UPDATE #PasoPerFechas SET Tipo ='FVO',Observaciones=b.Concepto  
      FROM #PasoPerFechas a JOIN   
      Jornadadiafestivo b ON a.Fecha=b.Fecha AND a.Jornada=b.Jornada  
      WHERE b.Eslaborable=0  
      AND id=@cid  
    END  
   END  
  FETCH NEXT FROM Curretardos INTO @cid,@cPersonal,@cFEcha,@cJornada  
 END   
 CLOSE Curretardos  
 DEALLOCATE Curretardos  
  
 UPDATE #PasoPerFechas SET tipo=CASE WHEN b.Tipo='VAC'THEN 'VAC' ELSE 'RET' END ,observaciones=b.concepto  
 FROM #PasoPerFechas a JOIN CDIRetardos b ON a.personal=b.personal AND a.fecha=b.FEcha  
   
 UPDATE #PasoPerFechas SET tipo='Ok', Observaciones =''  
 WHERE Tipo IS null   
   
 --SELECT * FROM PasoRepPersonalFirma   
 --SELECT * FROM PasoRepPersonalFirma  
   
   
   
 UPDATE #PasoPerFechas SET Observaciones=isnull(Observaciones,'')  
   
   
 IF @PersonalNom='Nom'  
 BEGIN  
  TRUNCATE TABLE PasoPerFechas  
  INSERT INTO PasoPerFechas (personal, Fecha, Tipo, Observaciones, Jornada)  
  SELECT  personal, Fecha, Tipo, Observaciones, Jornada FROM #PasoPerFechas   
    
 END  
 ELSE  
  SELECT a.id, a.personal, a.Fecha, a.Tipo, a.Observaciones, a.Jornada,datename(dw,a.Fecha) AS CDIDia,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno    
  FROM #PasoPerFechas a JOIN personal p ON a.personal=p.personal  
  ORDER BY a.Personal,a.FEcha  
  
END  

GO
--EXEC spCDINomRepPersonalRelAsist 'CDI','0006','','n',0,'n','n','01/05/2010 00:00:00', '17/05/2010 00:00:00'
IF EXISTS (select * from sysobjects where id = object_id('dbo.xpAccesoControl') and type = 'P') DROP PROCEDURE dbo.xpAccesoControl
GO
CREATE PROCEDURE [dbo].[xpAccesoControl]   
	@Empresa   char(5),  
	@Sucursal  int,   
	@Usuario  char(10),  
	@Codigo  varchar(255),  
	@FechaHora  datetime  ,
	@OrigenChecada int
  
AS BEGIN  
	
	
--	IF EXISTS (SELECT * FROM Cte WHERE Cliente=@Codigo)
--		EXEC xpAccesoControlCte @Empresa, @Sucursal , @Usuario , @Codigo , @FechaHora ,0, @Color output,@Mensaje output,@Retardo output
--	ELSE
		EXEC xpAccesoControlPer @Empresa, @Sucursal , @Usuario , @Codigo , @FechaHora ,0
		
	
END 
GO
IF EXISTS (select * from sysobjects where id = object_id('dbo.xpAccesoControlCte') and type = 'P') DROP PROCEDURE dbo.xpAccesoControlCte
GO
CREATE PROCEDURE [dbo].[xpAccesoControlCte]   
	@Empresa   char(5),  
	@Sucursal  int,   
	@Usuario  char(10),  
	@Codigo  varchar(255),  
	@FechaHora  datetime  ,
	@OrigenChecada int,
	@Color   char(10) output,
	@Mensaje    varchar(255) output,
	@Retardo              int output
  
AS BEGIN  
		DECLARE   
	--@Color   char(10),  
	--@Mensaje    varchar(255),  
	@Personal   char(10),  
	@Vencimiento   datetime,  
	@EstaPresente  bit,  
	@HoraRegistro  char(5),  
	@Jornada       varchar(20),  
	@JornadaTem       varchar(20),  
	@FechaEmision  datetime,  
	@Entrada  datetime,  
	@MinEntrada  datetime,  
	@SalIDa  datetime,  
	@MinutosComida  int,  
	@DiferenciaMin  int,  
	@Tolerancia           int,  
	@NumRetardo           int,  
	@ID                   int,  
	@ApellidoPaterno      varchar(30),    
	@ApellidoMaterno      varchar (30),  
	@Nombre               varchar(30),  
	--@Retardo              int,  
	@SalidaMax      datetime,  
	@Estatus    char(15),
	
	@ToleranciaEntrada  int,
	@ToleranciaSalida int,
	 @Categoria varchar(90),
	 @Registro varchar(10),
	 @RegistroAnt varchar(10),
	 @NumSalJor int,
	 @NumSalReg int,
	 @NumEntReg int,
	 @EsNocturna bit,
	 @SalidaNoc int
	
	IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id('[dbo].[LogControlAcceso]'))  
		CREATE TABLE LogControlAcceso(Personal char(10), Fecha DateTime, Mensaje varchar(255), Color char(10))   

	SELECT 
	@Color        = 'AMARILLO',   
	@Mensaje      = '',  
	@Personal     = NULL,  
	@Vencimiento  = NULL,  
	@estapresente = NULL,  
	@HoraRegistro = NULL,  
	@Entrada      = NULL,  
	@MinEntrada   = NULL,   
	@Salida       = NULL,  
	@MinutosComida = 60,  
	@NumRetardo = NULL,  
	@Retardo  = 0,  
	@SalidaMax      = NULL,  
	@Estatus  = NULL    ,
	@Categoria =NULL,
	@Registro =NULL,
	@RegistroAnt =NULL,
	@EsNocturna=0,
	@SalidaNoc=0
 
   --SELECT "Color" = @Color, "Mensaje" = @Mensaje, "Retardo" = @Retardo 
		
	
END 
GO
IF EXISTS (select * from sysobjects where id = object_id('dbo.xpAccesoControlPer') and type = 'P') DROP PROCEDURE dbo.xpAccesoControlPer
GO
CREATE PROCEDURE [dbo].[xpAccesoControlPer]       
 @Empresa   char(5),      
 @Sucursal  int,       
 @Usuario  char(10),      
 @Codigo  varchar(255),      
 @FechaHora  datetime  ,    
 @OrigenChecada int--,    
 --@Color   char(10) output,    
 --@Mensaje    varchar(255) output,    
 --@Retardo              int output    
     
      
AS BEGIN      
      
 DECLARE       
 @Color   char(10),      
 @Mensaje    varchar(255),      
 @Personal   char(10),      
 @Vencimiento   datetime,      
 @EstaPresente  bit,      
 @HoraRegistro  char(5),      
 @Jornada       varchar(20),      
 @JornadaTem       varchar(20),      
 @FechaEmision  datetime,      
 @Entrada  datetime,      
 @MinEntrada  datetime,      
 @SalIDa  datetime,      
 @MinutosComida  int,      
 @DiferenciaMin  int,      
 @Tolerancia           int,      
 @NumRetardo           int,      
 @ID                   int,      
 @ApellidoPaterno      varchar(30),        
 @ApellidoMaterno      varchar (30),      
 @Nombre               varchar(30),      
 @Retardo              int,      
 @SalidaMax      datetime,      
 @Estatus    char(15),    
 @ToleranciaEntrada  int,    
 @ToleranciaSalida int,    
 @Categoria varchar(50),    
 @Registro varchar(10),    
 @RegistroAnt varchar(10),    
 @NumSalJor int,    
 @NumSalReg int,    
 @NumEntReg int,    
 @EsNocturna bit,    
 @SalidaNoc int,    
 @EntradaLabora datetime,    
 @EntradaExtra datetime,    
 @EntradaPermiso datetime,    
 @Hoy datetime,    
  @SalidaLabora datetime,    
  @SAlidaExtra datetime ,    
  @SalidaPermiso datetime ,    
 @CodigoPersona varchar(10) ,    
 @CodigoAcceso varchar(4) ,    
 @CodigoFecha DATETIME,    
 @CvePersonal varchar(10),    
 @CodigoIp varchar(20),    
 @ChecaConTeclado Varchar(2),    
 @CfgCveTecladoPer varchar(10),    
 @CvePersonalError varchar(10),    
 @MinEntreReg int,    
 @StringSyServer varchar(50),
 @MaxSalida datetime   ,
 @PersonalFueraHorario bit 
     
     
     
 SELECT @MinEntreReg=Valor FROM Personalpropvalor    
 WHERE Rama='EMP' AND Cuenta=@Empresa AND Propiedad='Minutos Entre Registros'     
 SET @MinEntreReg=isnull(@MinEntreReg,1)    
    
 -----------------------------------------------------------------------------------------------------------------    
 EXEC SpCDICtrlAccCadena @Codigo,@CodigoPersona output, @CodigoAcceso output, @CodigoFecha output,@CodigoIp output    
     
 SET @StringSyServer=@Codigo    
    
 SELECT  @Codigo=@CodigoPersona ,@CvePersonalError=@CodigoPersona,@CvePersonal=@CodigoPersona    
 --SET @Codigo=CONVERT(VARCHAR(30),CONVERT(INT,@CodigoPersona))    
 --set @CvePersonal=@Codigo    
 -----------------------------------------------------------------------------------------------------------------    
 IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id('[dbo].[LogControlAcceso]'))      
  CREATE TABLE LogControlAcceso(Personal char(10), Fecha DateTime, Mensaje varchar(255), Color char(10))       
    
 SELECT     
 @Color        = 'VERDE',       
 @Mensaje      = '',      
 @Personal     = NULL,      
 @Vencimiento  = NULL,      
 @estapresente = NULL,      
 @HoraRegistro = NULL,      
 @Entrada      = NULL,      
 @MinEntrada   = NULL,       
 @Salida       = NULL,       
 @MinutosComida = 60,      
 @NumRetardo = NULL,      
 @Retardo  = 0,      
 @SalidaMax      = NULL,      
 @Estatus  = NULL    ,    
 @Categoria =NULL,    
 @Registro =NULL,    
 @RegistroAnt =NULL,    
 @EsNocturna=0,    
 @SalidaNoc=0,    
 @ChecaConTeclado=null    
    
    
 SET @Personal =NULL    
     
 SELECT @Personal        = Personal,     
 @ChecaConTeclado= ChecarConTeclado,     
 @EstaPresente    = EstaPresente,      
 @Vencimiento     = VencimientoContrato,      
 @Jornada         = Jornada ,      
 @ApellidoPaterno = ApellidoPaterno,      
 @ApellidoMaterno = ApellidoMaterno,      
 @Nombre          = Nombre,      
 @Estatus    = Estatus ,    
 @Categoria=Categoria     
 FROM Personal       
 WHERE Personal = @Codigo    
     
     
 IF @Personal IS NULL    
  SELECT  @Personal='-1',@CvePersonal='-1'    
     
  SELECT @Hoy=dbo.FnFechaSinHora(@FechaHora)      
     
 SELECT @JornadaTem =a.Jornada    
   FROM CDijornadatemp a JOIN jornada b ON a.Jornada=b.Jornada    
     WHERE personal=@Personal AND FechaD=@Hoy     
     
     
        
  IF @JornadaTem IS NOT NULL    
  SET @Jornada=@JornadaTem    
    
     
 SELECT @JornadaTem=Jornada     
   FROM CDIJornadaTemp     
  WHERE Personal=@Codigo AND FechaD =dbo.FnFechaSinHora(@FechaHora)    
      
  SELECT @EsNocturna=EsNocturna FROM jornada WHERE Jornada=@Jornada    
  SET  @EsNocturna =isnull(@EsNocturna,0)    
  
set @PersonalFueraHorario =0 
select @MaxSalida=MAx(SAlida)  from jornadatiempo where FEcha=dbo.FnFechaSinHora(@FechaHora) and Jornada=@Jornada

 if exists ( 
 SELECT 8
 FROM AsisteD d 
 JOIN Asiste a  ON a.ID = d.ID       
 WHERE FechaEmision   = CONVERT(DateTime, FLOOR( CONVERT( float, @FechaHora)), 103) -- para quitar horas,min,seg      
 AND Personal       = @Personal      
 AND UPPER(REGISTRO)= 'SAlida'       
 AND UPPER(Mov)     = 'REGISTRO'     
 AND a.Estatus IN ('borrador','procesar')
 and CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraRegistro + ':00', 126) >  dateadd(mi,-5,@MaxSalida) )
 set  @PersonalFueraHorario =1

 
     
 SELECT TOP 1  @Registro=REGISTRO     
 FROM AsisteD d
 JOIN Asiste a ON a.ID = d.ID       
 WHERE FechaEmision   = CONVERT(DateTime, FLOOR( CONVERT( float, @FechaHora)), 103) -- para quitar horas,min,seg      
 AND Personal       = @Personal      
 AND UPPER(Mov)     = 'REGISTRO'     
 AND a.estatus IN ('borrador','procesar')     
 ORDER BY a.fechaemision,d.horaregistro DESC    
     
     
 SELECT @NumEntReg=Count(*)     
 FROM AsisteD d
 JOIN Asiste a ON a.ID = d.ID    
 WHERE  FechaEmision   = CONVERT(DateTime, FLOOR( CONVERT( float, @FechaHora)), 103) -- para quitar horas,min,seg      
 AND Personal       = @Personal      
 AND UPPER(REGISTRO)= 'ENTRADA'       
 AND UPPER(Mov)     = 'REGISTRO'     
 AND a.Estatus IN ('borrador','procesar')    
      
     
 SELECT @CfgCveTecladoPer=Clave FROM CDIAccesoOrigen WHERE Empresa='CDI' AND Tipo='Personal' AND Origen='Teclado'    
    
IF @Estatus  IN('BLOQUEADO','BAJA') OR EXISTS (SELECT 1 FROM Asiste a JOIN Asisted d ON d.ID = a.ID      
            WHERE  a.Mov  LIKE '%Incapacidades%'     
            AND Personal = @Personal      
            AND ESTATUS in( 'CONCLUIDO','PROCESAR')      
            AND @Hoy BETWEEN d.FechaD AND d.FechaA) OR    
            (@CodigoAcceso=@CfgCveTecladoPer AND @ChecaConTeclado='No')    or (@PersonalFueraHorario=1)
       
 SELECT @Color = 'ROJO', @Mensaje = case when @PersonalFueraHorario=1 then 'Personal Fuera de Horario' else 'No tienes permitido checar con Teclado, solo con Huella' end , @Retardo = 0      
ELSE       
  IF NOT EXISTS(SELECT 8 FROM Personal WHERE personal=@Personal AND ChecadaLibre='SI')    
  BEGIN     
       
   IF @EsNocturna=0    
   BEGIN    
    IF (@Categoria LIKE '%Profesores%' AND @Registro='Salida') OR (NOT EXISTS(     
     SELECT TOP 1  HoraRegistro,  FechaEmision-- se checa su ultima entrada      
     FROM AsisteD d, Asiste a       
     WHERE a.ID           = d.ID       
     AND FechaEmision   = @Hoy -- para quitar horas,min,seg      
     AND Personal       = @Personal      
     AND UPPER(REGISTRO)= 'ENTRADA'       
     AND UPPER(Mov)     = 'REGISTRO'     
     AND a.estatus IN ('Borrador','Procesar')     
    ))    
    BEGIN    
     --SELECT 'Entrada Jornada Normal'         
     SELECT @Tolerancia = AsisteToleraEntrada     
       FROM EmpresaCfg     
      WHERE Empresa = @Empresa    
          
     SELECT @ToleranciaEntrada=isnull(ToleranciaEntrada,0),@ToleranciaSalida=isnull(ToleranciaSalida,0)     
       FROM jornada     
      WHERE Jornada=@Jornada    
              
     SELECT  @Entrada= NULL, @EntradaLabora=NULL,@EntradaExtra=NULL ,@EntradaPermiso=null        
          
   SELECT @Entrada = Min(Entrada)    
     FROM JornadaTiempo        
    WHERE Jornada = @Jornada      
      AND Fecha=@Hoy    
    
   SELECT @EntradaLabora=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)       
     FROM Asiste a JOIN    
          Asisted d ON d.ID= a.ID        
    WHERE a.Mov  LIKE '%Labora%'    
      AND Personal       = @Personal      
      AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
      AND FechaEmision   = @Hoy     
       
   IF @EntradaLabora IS NOT NULL      
    SET @Entrada=@EntradaLabora     
        
   SELECT @EntradaExtra=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)       
     FROM Asiste a JOIN    
          Asisted d ON d.ID = a.ID       
    WHERE  a.Mov  LIKE '%Extra%'    
      AND Personal       = @Personal      
      AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
      AND FechaEmision   = @Hoy    
      AND @FechaHora    BETWEEN       
          dateadd(mi,-@ToleranciaEntrada , CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)) AND        
                                           CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)      
        
     IF @EntradaExtra IS NOT NULL      
    SET @Entrada=@EntradaExtra        
      
   SELECT @EntradaPermiso=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)      
     FROM Asiste a, Asisted d       
    WHERE d.ID           = a.ID       
      AND a.Mov         ='Permiso Horas'    
      AND Personal       = @Personal      
      AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
      AND a.TIPO            ='AUSENCIA'      
      AND FechaEmision   = @Hoy     
      AND @FechaHora    BETWEEN       
          CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND        
          CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)                                   
                              
     IF @EntradaPermiso IS NOT NULL           
    SELECT  @Entrada=@EntradaPermiso,@ToleranciaEntrada=0,@Tolerancia=0    
        
        
        
    IF @Registro='Salida' AND @Categoria LIKE ('%Profesores%')     
     SELECT @Entrada = Max(Entrada)    
       FROM JornadaTiempo        
      WHERE Jornada = @Jornada      
        AND Fecha=@Hoy    
    
    
   -- No hay Hora de Entrada ni Mov de Labora Festivo ni Labora Descaso    
   IF @Entrada IS NULL    
   BEGIN    
    SELECT @Color = 'ROJO', @Mensaje = 'No Puede Entrar, Comunicarse Con Su Jefe Inmediato', @Retardo = 0     
    --Return    
   END    
   IF DATEDIFF(MI,@FechaHora,@Entrada) > @ToleranciaEntrada AND @EntradaPermiso IS NULL    
    SELECT @Color = 'ROJO', @Mensaje = ' Espera a su hora de Entrada'  , @Retardo = 1       
   ELSE    
     IF  (DATEDIFF(MI,@Entrada,@FechaHora) >= 91 ) AND  @EntradaPermiso IS NULL AND     
      (NOT EXISTS ( SELECT 1       
      FROM Asiste a, Asisted d       
      WHERE d.ID           = a.ID       
      AND a.Mov          ='Autorizacion Entrada'    
      AND Personal       = @Personal      
      AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
      AND a.TIPO            ='AUSENCIA'      
      AND FechaEmision   = CONVERT(DateTime, FLOOR( CONVERT( float, @FechaHora)), 103)      
      AND @FechaHora    BETWEEN       
      CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND        
      CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)))            
    SELECT @Color = 'ROJO', @Mensaje = 'Llegas Tarde, no se registro tu checada y tendras falta, reportalo con tu jefe inmediato'  , @Retardo = 1      
       
    END    
    ELSE     
    BEGIN    
             
     SELECT @NumSalReg=Count(*)     
     FROM AsisteD d, Asiste a       
    WHERE a.ID           = d.ID       
      AND FechaEmision   = CONVERT(DateTime, FLOOR( CONVERT( float, @FechaHora)), 103) -- para quitar horas,min,seg      
      AND Personal       = @Personal      
      AND UPPER(REGISTRO)= 'SALIDA'       
      AND UPPER(Mov)     = 'REGISTRO'     
      AND a.Estatus IN ('borrador','procesar')    
       
   SELECT @NumSalJor=Count(*)    
     FROM JornadaTiempo        
    WHERE Jornada = @Jornada      
      AND Fecha=@Hoy     
       
  SELECT @SalidaLabora=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)       
    FROM Asiste a JOIN    
      Asisted d ON d.ID= a.ID        
   WHERE a.Mov  LIKE '%Labora%'    
     AND Personal       = @Personal      
     AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
     AND FechaEmision   = @Hoy    
         
          
      --SELECT @NumSalJor '@NumSalJor',@NumSalReg+1 '@NumSalReg+1' , @Registro '@Registro',@SalidaLabora '@SalidaLabora',@Categoria '@Categoria'    
      IF (@NumSalJor=@NumSalReg+1 AND @Registro='Entrada' ) OR (@SalidaLabora IS NOT NULL) OR (@Registro='Entrada' AND @Categoria LIKE ('%Profesores%') )    
      BEGIN    
       --SELECT 'Salida Jornada Normal'     
      SELECT @ToleranciaSalida=isnull(ToleranciaSalida,0)     
        FROM jornada     
       WHERE Jornada=@Jornada    
           
         SELECT @Tolerancia = AsisteToleraSalida    
           FROM EmpresaCfg     
          WHERE Empresa = @Empresa    
               
      SELECT  @Salida= NULL, /*@SalidaLabora=NULL,*/@SAlidaExtra=NULL ,@SalidaPermiso=null     
           
    SELECT @Salida = Max(Salida)    
      FROM JornadaTiempo        
     WHERE Jornada = @Jornada      
       AND Fecha=@Hoy     
        
    IF @SalidaLabora IS NOT NULL      
     SET @Salida=@SalidaLabora     
         
    IF @Registro='Entrada' AND @Categoria LIKE ('%Profesores%') AND @NumEntReg=1 AND @SalidaLabora IS null    
      SELECT @Salida=min(Salida)    
        FROM JornadaTiempo        
       WHERE Jornada = @Jornada    
       AND Fecha=@Hoy    
         
    SELECT @SAlidaExtra=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)        
    --SELECT     
      FROM Asiste a JOIN    
        Asisted d ON d.ID = a.ID       
     WHERE  a.Mov  LIKE '%Extra%'    
       AND Personal       = @Personal      
       AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
       AND FechaEmision   = @Hoy    
       AND @FechaHora    BETWEEN       
         CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND        
      DATEADD(mi,+@ToleranciaSalida ,CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126))      
                  
     --SELECT @SAlidaExtra '@SAlidaExtra'    
      IF @SAlidaExtra IS NOT NULL      
     SET @Salida=@SAlidaExtra        
       
    SELECT @SalidaPermiso=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)      
      FROM Asiste a, Asisted d       
     WHERE d.ID           = a.ID       
       AND a.Mov         ='Permiso Horas'    
       AND Personal       = @Personal      
       AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
       AND a.TIPO            ='AUSENCIA'      
       AND FechaEmision   = @Hoy     
       AND @FechaHora    BETWEEN       
        CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND        
        CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)                                   
             --SELECT @SalidaPermiso    
      IF @SalidaPermiso IS NOT NULL           
     SELECT  @Salida=@SalidaPermiso,@ToleranciaSalida=0,@Tolerancia=0    
         
       
    IF (DATEDIFF(MI,@FechaHora,@SAlida) > @Tolerancia AND  @SalidaPermiso IS null)
		
     SELECT @Color = 'ROJO', @Mensaje = 'Espere su hora de salida'  , @Retardo = 1       
    ELSE    
      IF DATEDIFF(MI,@SAlida,@FechaHora) > @ToleranciaSAlida    
      SELECT @Color = 'ROJO', @Mensaje = 'Excede la tolerancia de salida'  , @Retardo = 1    
         
    END          
    END       
   END    
       
    IF @EsNocturna=1    
   BEGIN    
    
        
  SELECT TOP 1  @Registro=REGISTRO     
  FROM AsisteD d, Asiste a       
  WHERE a.ID           = d.ID       
  AND FechaEmision   = @Hoy    
  AND Personal       = @Personal      
  AND UPPER(Mov)     = 'REGISTRO'     
  AND a.estatus IN ('borrador','procesar')     
  ORDER BY a.fechaemision,d.horaregistro DESC    
      
  SELECT TOP 1  @RegistroAnt=REGISTRO     
  FROM AsisteD d, Asiste a       
  WHERE a.ID           = d.ID       
  AND FechaEmision   = dateadd(day,-1,@Hoy)    
  AND Personal       = @Personal      
  AND UPPER(Mov)     = 'REGISTRO'     
  AND a.estatus IN ('borrador','procesar')     
  ORDER BY a.fechaemision,d.horaregistro DESC    
      
     
      
  SET @Registro =isnull(@Registro,'*')    
  SET @RegistroAnt =isnull(@RegistroAnt,'*')    
      
  
    IF (@Registro='*' AND @RegistroAnt='*')OR(@Registro='Salida' AND @RegistroAnt='Entrada') OR (@Registro='*' AND @RegistroAnt='Salida')    
    BEGIN    
     --SELECT 'Entrada Jornada Nocturna'         
     SELECT @Tolerancia = AsisteToleraEntrada     
       FROM EmpresaCfg     
      WHERE Empresa = @Empresa    
          
     SELECT @ToleranciaEntrada=isnull(ToleranciaEntrada,0),@ToleranciaSalida=isnull(ToleranciaSalida,0)     
       FROM jornada     
      WHERE Jornada=@Jornada    
              
     SELECT  @Entrada= NULL, @EntradaLabora=NULL,@EntradaExtra=NULL ,@EntradaPermiso=null        
          
   SELECT @Entrada = Min(Entrada)    
     FROM JornadaTiempo        
    WHERE Jornada = @Jornada      
      AND Fecha=@Hoy    
    
   SELECT @EntradaLabora=CONVERT(datetime, LEFT(CONVERT(varchar,FechaEmision,126),10)+ 'T' + HoraD + ':00', 126)       
     FROM Asiste a JOIN    
          Asisted d ON d.ID= a.ID        
    WHERE a.Mov  LIKE '%Labora%'    
      AND Personal       = @Personal      
      AND ESTATUS  in( 'CONCLUIDO','PROCESAR')      
      AND FechaEmision   = @Hoy     
       
   IF @EntradaLabora IS NOT NULL      
    SET @Entrada=@EntradaLabora     
        
   SELECT @EntradaExtra=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)       
     FROM Asiste a JOIN    
          Asisted d ON d.ID = a.ID       
    WHERE  a.Mov  LIKE '%Extra%'    
      AND Personal       = @Personal      
      AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
      AND FechaEmision   = @Hoy    
      AND @FechaHora    BETWEEN       
          dateadd(mi,-@ToleranciaEntrada , CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)) AND        
                                           CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)      
        
     IF @EntradaExtra IS NOT NULL      
    SET @Entrada=@EntradaExtra        
      
     
   SELECT @EntradaPermiso=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)      
     FROM Asiste a, Asisted d       
    WHERE d.ID           = a.ID       
      AND a.Mov         ='Permiso Horas'    
      AND Personal       = @Personal      
      AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
      AND a.TIPO            ='AUSENCIA'      
      AND FechaEmision   = @Hoy     
      AND @FechaHora    BETWEEN       
          CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND        
          CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)                                   
   --SELECT @EntradaPermiso '@EntradaPermiso'                              
     IF @EntradaPermiso IS NOT NULL           
    SELECT  @Entrada=@EntradaPermiso,@ToleranciaEntrada=0,@Tolerancia=0    
        
    
   -- No hay Hora de Entrada ni Mov de Labora Festivo ni Labora Descaso    
   IF @Entrada IS NULL    
   BEGIN    
    SELECT @Color = 'ROJO', @Mensaje = 'No Puede Entrar, Comunicarse Con Su Jefe Inmediato', @Retardo = 0     
    --Return    
   END    
       
   --SELECT @Entrada '@Entrada',DATEDIFF(MI,@Entrada,@FechaHora) , 91 , @EntradaPermiso    
       
   IF DATEDIFF(MI,@FechaHora,@Entrada) > @ToleranciaEntrada AND @EntradaPermiso IS NULL     
    SELECT @Color = 'ROJO', @Mensaje = ' Espera a su hora de Entrada'  , @Retardo = 1       
   ELSE    
     IF  (DATEDIFF(MI,@Entrada,@FechaHora) >= 91 ) AND  @EntradaPermiso IS NULL AND     
      (NOT EXISTS ( SELECT 1       
      FROM Asiste a, Asisted d       
      WHERE d.ID           = a.ID       
      AND a.Mov          ='Autorizacion Entrada'    
      AND Personal       = @Personal      
      AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
      AND a.TIPO            ='AUSENCIA'      
      AND FechaEmision   = CONVERT(DateTime, FLOOR( CONVERT( float, @FechaHora)), 103)      
      AND @FechaHora    BETWEEN       
      CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND        
      CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)))            
    SELECT @Color = 'ROJO', @Mensaje = 'Llegas Tarde, no se registro tu checada y tendras falta, reportalo con tu jefe inmediato'  , @Retardo = 1      
       
    END    
    ELSE    --SELECT @Registro '@Registro',@RegistroAnt '@RegistroAnt'   
    BEGIN   
    

       
  SELECT @SalidaLabora=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision+1, 126), 10) + 'T' + HoraA + ':00', 126)       
    FROM Asiste a JOIN    
      Asisted d ON d.ID= a.ID        
   WHERE a.Mov  LIKE '%Labora%'    
     AND Personal       = @Personal      
     AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
     AND FechaEmision   = dateadd(day,-1,@Hoy)    
         
     SELECT @Tolerancia = AsisteToleraSalida    
       FROM EmpresaCfg     
      WHERE Empresa = @Empresa          
        
  
      IF (@Registro='*' AND @RegistroAnt='Entrada') OR (@SalidaLabora IS NOT NULL) 
      OR (@Registro='Entrada' AND @RegistroAnt='*' and @EsNocturna=1) 
       OR (@Registro='Entrada' AND @RegistroAnt='Salida' and @EsNocturna=1)   
        OR (@Registro='Entrada' AND @RegistroAnt='Entrada' and @EsNocturna=1)   
      BEGIN    
      
      
      
       --SELECT 'Salida Jornada Nocturna'    
      SELECT @ToleranciaSalida=isnull(ToleranciaSalida,0)     
        FROM jornada     
       WHERE Jornada=@Jornada    
               
      SELECT  @Salida= NULL, @SAlidaExtra=NULL ,@SalidaPermiso=null  
      
         
         
    SELECT @Salida = min(Salida)    
      FROM JornadaTiempo        
     WHERE Jornada = @Jornada      
       AND Fecha=@Hoy--dateadd(day,1,@Hoy)  
     
      if @Registro= '*' and @RegistroAnt ='Entrada'
     SELECT @Salida = min(Salida)    
      FROM JornadaTiempo        
     WHERE Jornada = @Jornada      
       AND Fecha=dateadd(day,-1,@Hoy)      
     
    -- select @Salida '@Salida',@Registro '@Registro',@RegistroAnt '@RegistroAnt'
           
    IF @SalidaLabora IS NOT NULL      
     SET @Salida=@SalidaLabora     
         
    
    SELECT @SAlidaExtra=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)       
      FROM Asiste a JOIN    
        Asisted d ON d.ID = a.ID       
     WHERE  a.Mov  LIKE '%Extra%'    
       AND Personal       = @Personal      
       AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
       AND FechaEmision   = @Hoy    
       AND @FechaHora    BETWEEN       
         CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND        
      dateadd(mi,+@ToleranciaSalida ,CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126))     
                  
                  
      
         
      IF @SAlidaExtra IS NOT NULL      
     SET @Salida=@SAlidaExtra        
       
       
       
    SELECT @SalidaPermiso=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)      
      FROM Asiste a, Asisted d       
     WHERE d.ID           = a.ID       
       AND a.Mov         ='Permiso Horas'    
       AND Personal       = @Personal      
       AND ESTATUS        in( 'CONCLUIDO','PROCESAR')      
       AND a.TIPO            ='AUSENCIA'      
       AND FechaEmision   = @Hoy     
       AND @FechaHora    BETWEEN       
        CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126) AND        
       CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraA + ':00', 126)                                   
             --  SELECT @SalidaPermiso       '@SalidaPermiso'    
                   
      IF @SalidaPermiso IS NOT NULL          
     SELECT  @Salida=@SalidaPermiso,@ToleranciaSalida=0,@Tolerancia=0    
         
  -- SELECT @FechaHora,@Entrada,@SAlida,DATEDIFF(MI,@FechaHora,@SAlida) ,@Tolerancia ,DATEDIFF(MI,@SAlida,@FechaHora)
      --SELECT @FechaHora '@FechaHora',@SAlida '@Salida', DATEDIFF(MI,@FechaHora,@SAlida) 'DATEDIFF(MI,@FechaHora,@SAlida)',@Tolerancia '@Tolerancia',
      --DATEDIFF(MI,@SAlida,@FechaHora) '(DATEDIFF(MI,@SAlida,@FechaHora)',@ToleranciaSAlida '@ToleranciaSAlida'
    
    IF (DATEDIFF(MI,@FechaHora,@SAlida) > @Tolerancia) /*OR ((DateAdd(day,-1,dbo.fnFechaSinHora(@FechaHora))) = @SAlida)*/      
     SELECT @Color = 'ROJO', @Mensaje = 'Espere su hora de salida '  , @Retardo = 1      
    ELSE    
      IF DATEDIFF(MI,@SAlida,@FechaHora) > @ToleranciaSAlida AND (@SalidaPermiso IS NULL)    
      SELECT @Color = 'ROJO', @Mensaje = 'Excede la tolerancia de salida'  , @Retardo = 1     
         
    END          
    END       
   END    
       
       
       
    
  END      
IF EXISTS ( SELECT 8    
   --SELECT SUBSTRING(CONVERT(VARCHAR,@FechaHora,108),1,5),    
   --CONVERT(int,SUBSTRING(CONVERT(VARCHAR,@FechaHora,108),4,2)),    
   --CONVERT(int,SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),4,2)),    
   --CONVERT(int,SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),4,2))+ CONVERT(int,isnull(@MinEntreReg,0))    
   FROM ASISTED, Asiste      
   WHERE ASISTED.ID = Asiste.ID       
   AND Personal   = @CvePersonal       
   AND SUBSTRING(CONVERT(VARCHAR,@FechaHora,108),1,2)= SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),1,2)       AND CONVERT(int,SUBSTRING(CONVERT(VARCHAR,@FechaHora,108),4,2)) BETWEEN CONVERT(int,SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),4,2))     
   AND CONVERT(int,SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),4,2))+ CONVERT(int,isnull(@MinEntreReg,0))    
   AND CONVERT(VARCHAR,@FechaHora,103) = CONVERT(VARCHAR,FechaEmision,103)    
   )     
 SELECT  @Color= 'ROJO',@Mensaje =  'Tienes que esperar al menos '+CONVERT(varchar,@MinEntreReg)+' minuto'+ CASE WHEN @MinEntreReg=1 THEN '' ELSE 's' END +'. Checado Duplicado, intenta de nuevo'    
  

     
  IF  @CvePersonal='-1'    
 SELECT @Color='ROJO',@Mensaje = 'El personal: '+@CvePersonalError+' no se encuentra registrado'    
    
    
  IF @Color='VERDE'    
 EXEC SpCDICtrlAccesoDll @CvePersonal,'P',1,@StringSyServer    
ELSE    
 EXEC SpCDICtrlAccesoDll @CvePersonal,'P',0,@StringSyServer     
    
  SELECT "Color" = @Color, "Mensaje" = @Mensaje, "Retardo" = @Retardo ,"CvePersonal"=@CvePersonal    
       
    
END 
GO
 
--SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
--DECLARE @F datetime SELECT @F = GETDATE() 
--EXEC xpAccesoControl @Empresa = 'CDI', @Sucursal = 0, @Usuario = 'MYKI', @Codigo = '010.010.010.110 Q181632A1000000002869161241101009', @FechaHora = @F, @OrigenChecada = 1

/**************** SpCDICtrlAccCadena ****************/
if exists (select * from sysobjects where id = object_id('dbo.SpCDICtrlAccCadena') and type = 'P') drop procedure dbo.SpCDICtrlAccCadena
GO
CREATE PROCEDURE SpCDICtrlAccCadena
@Cadena Varchar(60),
@Persona varchar(10) output,
@CodigoAcceso varchar(4) output,
@Fecha datetime output,
@Ip Varchar(15) output
AS
BEGIN
	SET DATEFORMAT dmy
	DECLARE 
	@Año varchar(4),
	@Mes varchar(2),
	@Dia varchar(2),
	@Hora varchar(2),
	@Minuto varchar(2),
	@CfgCodigoHuellaPer varchar(4),
	@CfgCodigoTecladoPer varchar(4),
	@CfgCodigoHuellaCte varchar(4),
	@CfgCodigoTecladoCte varchar(4)
	
	
	--SELECT @Cadena--='172.016.001.083 q181632A1006531117130161241101009'
	
	SELECT 
	@Ip=left(@Cadena,15),
	@CodigoAcceso=LEFT(RIGHT(@Cadena,26),4),
		 @Persona=LEFT(RIGHT(@Cadena,22),10),
	 @Dia=RIGHT(@Cadena,2),
	 @Mes=LEFT(RIGHT(@Cadena,4),2),
	 @Año=2000+LEFT(RIGHT(@Cadena,6),2),
	 @Minuto=LEFT(RIGHT(@Cadena,10),2),
	 @Hora=LEFT(RIGHT(@Cadena,12),2)
	 
	 --Cambiar pruebas
	 SELECT @Fecha=getdate()--CONVERT(dateTime,@Dia+'/'+@Mes+'/'+@Año+' '+@Hora+':'+@Minuto+':00.000')
	 --SELECT 'aqui2'
	 
	 --SELECT * FROM CDIAccesoOrigen
	 SELECT @CfgCodigoHuellaPer=Clave FROM CDIAccesoOrigen WHERE Empresa='CDI' AND oRIGEN='Huella' AND Tipo='Personal'
	 SELECT @CfgCodigoTecladoPer=Clave FROM CDIAccesoOrigen WHERE Empresa='CDI' AND oRIGEN='Teclado' AND Tipo='Personal'
	 SELECT @CfgCodigoHuellaCte=Clave FROM CDIAccesoOrigen WHERE Empresa='CDI' AND oRIGEN='Huella' AND Tipo='Socio'
	 SELECT @CfgCodigoTecladoCte=Clave FROM CDIAccesoOrigen WHERE Empresa='CDI' AND oRIGEN='Teclado' AND Tipo='Socio'
	 
	 --IF EXISTS (SELECT 8 FROM CDIAccesoIP WHERE Empresa='CDI' AND Origen='Socio' AND Ip=@Ip)  
	 --BEGIN
	 --	IF @CodigoAcceso =@CfgCodigoHuellaCte
		--	SET @Persona=RIGHT(@Persona,5)
		--IF @CodigoAcceso =@CfgCodigoTecladoCte
		--	SET @Persona=LEFT(@Persona,5)	 	
	 --END
		
	IF EXISTS (SELECT 8 FROM CDIAccesoIP WHERE Empresa='CDI' AND Origen='Personal' AND Ip=@Ip) 
	BEGIN
		IF @CodigoAcceso =@CfgCodigoHuellaPer
			SET @Persona=RIGHT(@Persona,5)
		IF @CodigoAcceso =@CfgCodigoTecladoPer
			SET @Persona=LEFT(@Persona,5)		
	END
	 
	 --SELECT @Ip '@Ip'
	--SELECT @fecha '@fecha',@CodigoAcceso '@CodigoAcceso',@Persona '@Persona',@Dia '@Dia',@Mes '@Mes',@Año '@Año',@Hora '@Hora',@Minuto '@Minuto'
	


END
GO
/**************** spControlAccesoDatosEspeciales ****************/
if exists (select * from sysobjects where id = object_id('dbo.spControlAccesoDatosEspeciales') and type = 'P')  drop procedure dbo.spControlAccesoDatosEspeciales
GO
create PROCEDURE spControlAccesoDatosEspeciales  
@Codigo  varchar(50)  
AS BEGIN 
	
declare
@Persona varchar(10) ,
@CodigoAcceso varchar(4) ,
@Fecha datetime ,
@Ip varchar(15)

EXEC SpCDICtrlAccCadena @Codigo,@Persona output,@CodigoAcceso output,@Fecha output,@Ip output
--SELECT @Persona,@CodigoAcceso,@Fecha,@Ip
IF EXISTS (SELECT 8 FROM CDIAccesoIP WHERE Empresa='CDI' AND Origen='Socio' AND Ip=@Ip)  
	EXEC spControlAccesoDatosEspecialesCte @Persona  
IF EXISTS (SELECT 8 FROM CDIAccesoIP WHERE Empresa='CDI' AND Origen='Personal' AND Ip=@Ip)    
	EXEC spControlAccesoDatosEspecialesPer @Persona  
END  
go
--DECLARE 
--@Persona varchar(10) ,
--@CodigoAcceso varchar(4) ,
--@Fecha datetime 
--EXEC SpCDICtrlAccCadena '172.016.001.083 q181632A1006531117130161241101009',@Persona output, @CodigoAcceso output, @Fecha output
--SELECT @fecha '@fecha',@CodigoAcceso '@CodigoAcceso',@Persona '@Persona'
/**************** spAccesoRegistrarOtros ****************/
if exists (select * from sysobjects where id = object_id('dbo.spAccesoRegistrarOtros') and type = 'P')  drop procedure dbo.spAccesoRegistrarOtros
GO
CREATE PROCEDURE spAccesoRegistrarOtros  
                  @Llave    varchar(50)  
--WITH ENCRYPTION  
AS BEGIN  
  DECLARE  
    @Ok               bit,  
    @Nombre           varchar(255),  
    @TitPrimerDato    varchar(255),  
    @PrimerDato       varchar(255),  
    @TitSegundoDato   varchar(255),  
    @SegundoDato      varchar(255),  
    @Archivo          varchar(255),  
    @Color            varchar(20),  
    @FechaHora       datetime,   
    @Mensaje          varchar(2000),  
    @CdiEstaPresente bit,  
    @Estatus varchar(30),  
    @Descripcion15 varchar(50),  
    @Empresa varchar(5),  
    @Usuario varchar(10),  
    @Sucursal int,    
 @CodigoPersona varchar(10) ,  
 @CodigoAcceso varchar(4) ,  
 @CodigoFecha datetime,  
 @CodigoIp varchar(15),  
 @MinEntreReg int,  
 @StringSyServer varchar(50)  ,
 @Causa varchar(30), 
 @Bloqueado   varchar(2) --BEGM 20120425. Indicador de bloqueado (Cte.Descripcion13)
   
 SET @Empresa='CDI'  
   
 SELECT @MinEntreReg=Valor FROM Personalpropvalor  
 WHERE Rama='EMP' AND Cuenta=@Empresa AND Propiedad='Minutos Entre Registros'   
 SET @MinEntreReg=isnull(@MinEntreReg,1)  
 
 -----------------------------------------------------------------------------------------------------------------  
 EXEC SpCDICtrlAccCadena @Llave,@CodigoPersona output, @CodigoAcceso output, @CodigoFecha output,@CodigoIp output  
  -----------------------------------------------------------------------------------------------------------------  
    SET @StringSyServer =@Llave  
  
 IF EXISTS (SELECT 1 FROM CDISocioTarjeta WHERE Empresa=@Empresa AND Tarjeta=@CodigoPersona)  
  SELECT  @LLave= b.Socio FROM CDISocioTarjeta a JOIN  
  Cte b ON a.Cte=b.Cliente WHERE a.Empresa=@Empresa AND a.Tarjeta = @CodigoPersona  
 ELSE   
  SET @LLave=right(@CodigoPersona,7)  
  
  
  
 IF len(@LLave)>15  
  SET @LLave=right(@CodigoPersona,7)  
  
  
  
  
  -- Inicializar valores  
  SELECT @Ok = 0, @Nombre = NULL, @TitPrimerDato = NULL, @PrimerDato = NULL,  
         @TitSegundoDato = NULL, @SegundoDato = NULL,@Archivo = NULL, @Color = NULL,   
         @FechaHora = NULL, @Mensaje = NULL, @Mensaje = null  
     
  SELECT  @Empresa='CDI',@Usuario='DEMO',@Sucursal=0  
  
  
  
  SELECT @Nombre = a.Nombre,  
         @TitPrimerDato = 'Titulo1',  
         @PrimerDato = a.Estado,  
         @TitSegundoDato = 'Titulo2',  
         @SegundoDato = a.NombreCorto,  
         @Archivo = a.RutaImagen,      
         @CdiEstaPresente=CdiEstaPresente,  
         @Estatus=Estatus,  
         @Descripcion15=Descripcion15, 
         @Bloqueado = Descripcion13 
    FROM Cte a   
   WHERE Socio = @LLave  
   --select * from cte
     
  IF @@ROWCOUNT = 0  
    SELECT @Color = 'Rojo', @Mensaje = 'Código de tarjeta: '+@LLave+' no registrado en el sistema'  
  ELSE   
    SELECT @Ok = 1, @Color = 'Verde', @FechaHora = @CodigoFecha  
 --SELECT @Ok '@Ok'  
 IF @Ok = 1    
 BEGIN    
  IF (@Estatus = 'BAJA' OR @Bloqueado = 'Si') AND  --@Estatus IN ('BLOQUEADO','BAJA') AND   
  NOT EXISTS ( SELECT id FROM CDISocio WHERE Mov='Pase' AND FechaEmision=dbo.FnFechaSinHora(@FechaHora) AND Estatus='CONCLUIDO' AND Socio=@LLave)  
  BEGIN  
   SELECT @Color = 'ROJO' /*CASE WHEN @Estatus='BLOQUEADO' THEN 'ROJO' ELSE  'ROJO' END*/ ,@Mensaje = 'No puede ingresar,pase al comite de socios para mayor información, '+isnull(@Descripcion15,'')  
   --SET @Mensaje = @Estatus +' '  
  END  
  ELSE  
  BEGIN   
   IF EXISTS ( SELECT 8  
      --SELECT SUBSTRING(CONVERT(VARCHAR,@FechaHora,108),1,5),  
      --CONVERT(int,SUBSTRING(CONVERT(VARCHAR,@FechaHora,108),4,2)),  
      --CONVERT(int,SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),4,2)),  
      --CONVERT(int,SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),4,2))+ CONVERT(int,isnull(@MinEntreReg,0))  
      FROM ASISTED, Asiste    
      WHERE ASISTED.ID = Asiste.ID     
      AND Personal   = @LLave     
      AND SUBSTRING(CONVERT(VARCHAR,@FechaHora,108),1,2)= SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),1,2)  
      AND CONVERT(int,SUBSTRING(CONVERT(VARCHAR,@FechaHora,108),4,2)) BETWEEN CONVERT(int,SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),4,2))   
      AND CONVERT(int,SUBSTRING(CONVERT(VARCHAR,Horaregistro,108),4,2))+ CONVERT(int,isnull(@MinEntreReg,0))  
      AND CONVERT(VARCHAR,@FechaHora,103) = CONVERT(VARCHAR,FechaEmision,103)  
      )   
    SELECT  @Color= 'ROJO',@Mensaje =  'Tienes que esperar al menos '+CONVERT(varchar,@MinEntreReg)+' minuto'+ CASE WHEN @MinEntreReg=1 THEN '' ELSE 's' END +'. Checado Duplicado, intenta de nuevo'  
   ELSE   
    BEGIN   
   --    --SELECT @LLave '@LLave'  
     IF EXISTS (SELECT *   
      FROM CDIAsignacionRoles a JOIN cte b ON a.Personal=b.Cliente  
      WHERE a.Rol IN ('Director','Directivo') AND a.Catalogo='Socios'  
      AND b.CDISocio=1 AND Socio=@Llave )  
     SET @Color='AZUL'
     
     if @Color in ('AZUL','VERDE','AMARILLO')
		exec SpCDISocAntesVencimiento @Llave,@Causa output
	if @Causa is not null
		set  @Color='AMARILLO'  
  
     
     EXEC spAsisteRegistroCte @Empresa,@Sucursal,@Usuario,@LLave,@CdiEstaPresente,0,@FechaHora  
     SET @Mensaje =  '<          A   D   E   L   A   N   T   E               >'  
    END   
  END   
 END   
   
  SELECT 'Ok' = @Ok,  
         'Nombre' = @Nombre,  
         'TitPrimerDato' = @TitPrimerDato,  
         'PrimerDato' = @PrimerDato,  
         'TitSegundoDato' = @TitSegundoDato,  
         'SegundoDato' = @SegundoDato,  
         'Archivo' = @Archivo,  
         'Color' = @Color,  
         'FechaHora' = @FechaHora,  
         'Mensaje' = @Mensaje  
          
      IF @Color IN ('VERDE','AZUL')  
  EXEC SpCDICtrlAccesoDll @LLave,'S',1,@StringSyServer  
 ELSE  
  EXEC SpCDICtrlAccesoDll @LLave,'S',0,@StringSyServer  
  
  RETURN  
END  
--exec spAccesoRegistrarOtros '010.010.010.111 q181632A1005374900000102037101223'
--exec spAccesoRegistrarOtros '010.010.010.111 q181632A1005372150000102037101223'
GO
/**************** spAsisteRegistroCte ****************/
if exists (select * from sysobjects where id = object_id('dbo.spAsisteRegistroCte') and type = 'P') drop procedure dbo.spAsisteRegistroCte
GO
CREATE PROCEDURE spAsisteRegistroCte
	   		@Empresa 		char(5),
	   		@Sucursal 		int,
	   		@Usuario 		char(10),
	   		@Cte 		char(10),
	   		@EstaPresente 		bit,
	   		@Retardo 		int,
            @FechaHora              datetime = null 
 
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @ID 			int,
    @CfgRegistroMovSucursal 	bit,
    @CfgHoraCambioJornada	char(5),
    @Hoy   			datetime,
    @FechaAplicacion		datetime,
    @Renglon   			float,
    @Registro   		varchar(20),
    @Hora   			varchar(5)

  IF @FechaHora = NULL    
    SELECT @Hoy  = GETDATE()
  ELSE
    SELECT @Hoy  = @FechaHora 
 
  SELECT @Hora = LEFT(CONVERT(varchar, @Hoy, 14),5)
  EXEC spExtraerFecha @Hoy OUTPUT
  SELECT @FechaAplicacion = @Hoy

  SELECT @CfgRegistroMovSucursal = RegistroMovSucursal,
         @CfgHoraCambioJornada = NULLIF(RTRIM(HoraCambioJornada), '')
    FROM EmpresaCfgAcceso 
   WHERE Empresa = @Empresa

  SELECT @EstaPresente = ~@EstaPresente -- aqui cambia el esta presente
  --select * from cte WHERE Socio = @Cte
  UPDATE Cte SET CDIEstaPresente = @EstaPresente WHERE Socio = @Cte

  IF @EstaPresente = 1  
  BEGIN
    SELECT @Registro = 'Entrada'  
    IF @CfgHoraCambioJornada IS NOT NULL AND @Hora >= @CfgHoraCambioJornada SELECT @FechaAplicacion = DATEADD(day, 1, @FechaAplicacion)
  END ELSE 
    SELECT @Registro = 'Entrada'

  SELECT @ID = NULL
  IF @CfgRegistroMovSucursal = 1
    SELECT @ID = MIN(ID) FROM Asiste WHERE Empresa = @Empresa AND Mov = 'Registro Soc' AND Estatus = 'CONCLUIDO' AND FechaEmision = @Hoy AND FechaAplicacion = @FechaAplicacion AND Sucursal = @Sucursal 
  ELSE
    SELECT @ID = MIN(ID) FROM Asiste WHERE Empresa = @Empresa AND Mov = 'Registro Soc' AND Estatus = 'CONCLUIDO' AND FechaEmision = @Hoy AND FechaAplicacion = @FechaAplicacion 

  IF @ID IS NULL
  BEGIN
    INSERT Asiste (Empresa,   Mov,       FechaEmision, FechaAplicacion, UltimoCambio, Usuario,  Estatus,     Sucursal) 
           VALUES (@Empresa, 'Registro Soc', @Hoy,         @FechaAplicacion, GETDATE(),    @Usuario, 'CONCLUIDO', @Sucursal)
    SELECT @ID = @@IDENTITY
  END
 
  SELECT @Renglon = 0.0
  SELECT @Renglon = ISNULL(MAX(Renglon), 0.0) + 2048.0 FROM AsisteD WHERE ID = @ID
  INSERT AsisteD (ID,  Renglon, personal, /*CdiCte,*/  Registro,  HoraRegistro, FechaD, FechaA, Sucursal,  Retardo)
          VALUES (@ID, @Renglon,/*1 ,*/@Cte, @Registro, @Hora,        @Hoy,   @Hoy,   @Sucursal, @Retardo)
  RETURN
END
GO
--EXEC spAccesoRegistrarOtros @Llave = '172.016.001.083 q181632A1006531117130161241101009'
--exec SpCDISocLlenaSocBloqueo null
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCDISocLlenaSocBloqueo') and type = 'P') DROP PROCEDURE dbo.SpCDISocLlenaSocBloqueo
GO 
CREATE PROCEDURE SpCDISocLlenaSocBloqueo
@Socio varchar(30)
AS
Begin
  TRUNCATE TABLE CDIPasoSocBloqueoDepura
	TRUNCATE TABLE CDIPasoSocBloqueo
	
	DECLARE  @Tipo	VARCHAR (15)
	--Busca el tipo de socio  MALL
	DECLARE CurSocBuscarTipoSocio CURSOR FOR  

	SELECT Tipo 
	FROM CDISocAcessoCfgVencimiento cacv 
	WHERE AplicaA = 'Facturas'

	OPEN CurSocBuscarTipoSocio  
	FETCH NEXT FROM CurSocBuscarTipoSocio INTO @Tipo
	WHILE @@FETCH_STATUS <> -1 
	  
	  BEGIN 
	
	 --select * from CDISocAcessoCfgVencimiento
	 --SELECT @Tipo= tipo FROM CDISocAcessoCfgVencimiento cacv WHERE AplicaA = 'Facturas'
	-------------------------------------------------------------------------------
	-- Bloqueo inicio
	-------------------------------------------------------------------------------	
	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Admisión',CASE WHEN d.AdmisionBloqueo='Membresia' THEN 1 ELSE 0 END, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END /*c.AplicaA = 'Facturas'*/ JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Admisión')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate()) BETWEEN (isnull(c.AdmisionBloqueado,0)+isnull(AdmisionTolerancia,0)-1) AND ISNULL (c.AdmisionBaja,0) +ISNULL(AdmisionTolerancia,0) 
	AND c.Admision=1
	AND d.Admision=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BAJA')	
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.AdmisionBloqueo='Membresia' THEN 1 ELSE 0 END, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden

   	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Cuota',CASE WHEN d.CuotaBloqueo='Membresia' THEN 1 ELSE 0 END, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Cuota')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate()) BETWEEN  (isnull(c.CuotaBloqueado,0)+isnull(CuotaTolerancia,0)-1) AND ISNULL ( c.CuotaBaja,0) + ISNULL( c.CuotaTolerancia,0)
	AND c.Cuota=1
	AND d.Cuota=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.CuotaBloqueo='Membresia' THEN 1 ELSE 0 END, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
   	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Inscripción',CASE WHEN d.InscripcionBloqueo='Membresia' THEN 1 ELSE 0 END, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END  JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa

	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Inscripción')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate()) BETWEEN (isnull(c.InscripcionBloqueado,0)+isnull(InscripcionTolerancia,0)-1)  AND (isnull(c.InscripcionBaja,0)+isnull(InscripcionTolerancia,0))
	AND c.Inscripcion=1
	AND d.Inscripcion=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.InscripcionBloqueo='Membresia' THEN 1 ELSE 0 END, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
    INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Otros Ingresos',CASE WHEN d.OtrosIngresosBloqueo='Membresia' THEN 1 ELSE 0 END, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden	
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Otros Ingresos')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate()) BETWEEN (isnull(c.OtrosIngresosBloqueado,0)+isnull(OtrosIngresosTolerancia,0)-1) AND (isnull(c.OtrosIngresosBaja,0)+isnull(OtrosIngresosTolerancia,0))
	AND c.OtrosIngresos=1
	AND d.OtrosIngresos=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BAJA')
  GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.OtrosIngresosBloqueo='Membresia' THEN 1 ELSE 0 END, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
    INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Credencial',CASE WHEN d.CredencialBloqueo='Membresia' THEN 1 ELSE 0 END, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa	
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Credencial')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate()) BETWEEN (isnull(c.CredencialBloqueado,0)+isnull(CredencialTolerancia,0)-1) AND (isnull(c.CredencialBaja,0)+isnull(CredencialTolerancia,0))
	AND c.Credencial=1
	AND d.Credencial=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.CredencialBloqueo='Membresia' THEN 1 ELSE 0 END, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
   	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Casilleros',CASE WHEN d.CasillerosBloqueo='Membresia' THEN 1 ELSE 0 END, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa

	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Casilleros')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate()) BETWEEN  (isnull(c.CasillerosBloqueado,0)+isnull(CasillerosTolerancia,0)-1) AND (isnull(c.CasillerosBaja,0)+isnull(CasillerosTolerancia,0)) 
	AND c.Casilleros=1
	AND d.Casilleros=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.CasillerosBloqueo='Membresia' THEN 1 ELSE 0 END, dateDiff(day,a.Vencimiento,Getdate()), b.Titular , ca.Orden
   	   	
   	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Tarjetas Bancarias',CASE WHEN d.TarjetasBancariasBloqueo='Membresia' THEN 1 ELSE 0 END, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID ),
	ca.orden
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Tarjetas Bancarias')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate()) BETWEEN  (isnull(c.TarjetasBancariasBloqueado,0)+isnull(TarjetasBancariasTolerancia,0)-1) AND  (isnull(c.TarjetasBancariasBaja,0)+isnull(TarjetasBancariasTolerancia,0))
	AND c.TarjetasBancarias=1
	AND d.TarjetasBancarias=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.TarjetasBancariasBloqueo='Membresia' THEN 1 ELSE 0 END, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
   	DECLARE @hoy datetime
   	SET @hoy=getdate()
   	SET @hoy=dbo.FnFechaSinHora(@hoy)
   	-- 
    INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, Prioridad)  
    SELECT 'Baja',a.Empresa,'DEMO',b.Socio,'Vigencia','Vigencia',0, Case When ISNULL(Descripcion13, 'No') = 'Si' /*c.Estatus = 'BLOQUEADO'*/
                                                                          THEN 'Bloqueo' ELSE c.Estatus END, 0 , c.Titular, ca.Orden --, a.FechaVigencia,@hoy,a.Mov  
 FROM CdiSocio a LEFT JOIN CdiSocioD b ON a.id=b.id  
 JOIN Cte c on C.Cliente = b.Cliente  
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
 
 WHERE a.Mov IN ('Invitado')  
 AND a.Estatus='CONCLUIDO'  
 AND a.FechaVigencia < @hoy  
  
 INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, Prioridad)  
 SELECT 'Baja',a.Empresa,'DEMO',a.Socio,'Vigencia','Vigencia',1, Case When ISNULL(Descripcion13, 'No') = 'Si' /*c.Estatus = 'BLOQUEADO'*/  
                                                                        THEN 'Bloqueo' ELSE c.Estatus END, 0, c.Titular, ca.Orden--, a.FechaVigencia,@hoy,a.Mov  
 FROM CdiSocio a LEFT JOIN CdiSocioD b ON a.id=b.id  
 JOIN Cte c ON C.Cliente = a.Cliente  
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
 
 WHERE a.Mov IN ('Temporal')  
 AND a.Estatus='CONCLUIDO'  
 AND a.FechaVigencia < @hoy  
   
 INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, Prioridad)  
 SELECT 'Baja',a.Empresa,'DEMO',b.Socio,'Vigencia','Vigencia',1, Case When ISNULL(Descripcion13, 'No') = 'Si' /*c.Estatus = 'BLOQUEADO'*/
                                                                        THEN 'Bloqueo' ELSE c.Estatus END, 0, c.Titular, ca.Orden --, a.FechaVigencia,@hoy,a.Mov  
 FROM CdiSocio a LEFT JOIN CdiSocioD b ON a.id=b.id   
 JOIN Cte c ON C.Cliente = b.Cliente  
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
 
 WHERE a.Mov IN ('Temporal')  
 AND a.Estatus='CONCLUIDO'  
 AND a.FechaVigencia < @hoy 

--DSG

 INSERT INTO CDIPasoSocBloqueoDepura (Mov,         Empresa,   Usuario, Socio,            Descripcion15,     Causa,             BajaTotal, Estatus,  
                                      Vencimiento, Titular,   Prioridad)  
      SELECT                          'Bloqueo',   a.Empresa, 'DEMO',  a.ClaveDemandante,'Honor y Justicia','Honor y Justicia',0,         'Bloqueo', 
                                      0,           c.Titular, ca.Orden 
        FROM CdiSocio a 
             JOIN Cte c ON C.Cliente = a.ClaveDemandante  
	           LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	           LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa 
       WHERE a.Mov IN ('Dictamen Con Bloqueo', 'Nueva Cita Con Bloq')  
             AND a.Estatus='CONCLUIDO'  
             AND a.FechaEmision + a.NoDiasDemandante >= @hoy 
             AND a.BloquearDemandante = 'Si'


 INSERT INTO CDIPasoSocBloqueoDepura (Mov,         Empresa,   Usuario, Socio,            Descripcion15,     Causa,             BajaTotal, Estatus,  
                                      Vencimiento, Titular,   Prioridad)  
      SELECT                          'Bloqueo',   a.Empresa, 'DEMO',  a.ClaveDemandado,'Honor y Justicia','Honor y Justicia',0,         'Bloqueo', 
                                      0,           c.Titular, ca.Orden 
        FROM CdiSocio a 
            JOIN Cte c ON C.Cliente = a.ClaveDemandado
	          LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	          LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa 
      WHERE a.Mov IN ('Dictamen Con Bloqueo', 'Nueva Cita Con Bloq')  
            AND a.Estatus='CONCLUIDO'  
            AND a.FechaEmision + a.NoDiasDemandado >= @hoy 
            AND a.BloquearDemandado = 'Si'
	
--DSG	
	-------------------------------------------------------------------------------
	-- Bloqueo Fin
	-------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------
	-- Bajas inicio
	-------------------------------------------------------------------------------
	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Baja',a.Empresa,'DEMO',b.Socio,a.Concepto,'Admisión',1, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden --CASE WHEN d.AdmisionBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END
	--CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Admisión')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.AdmisionBaja,0)+isnull(AdmisionTolerancia,0))
	AND c.Admision=1
	--AND d.Admision=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BLOQUEADO')
   	GROUP BY a.Empresa,b.Socio,a.Concepto, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
   	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Baja',a.Empresa,'DEMO',b.Socio,a.Concepto,'Cuota',1, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/ THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden --CASE WHEN d.CuotaBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	                                                                                          
	--CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Cuota')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.CuotaBaja,0)+isnull(CuotaTolerancia,0))
	AND c.Cuota=1
	--AND d.Cuota=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BLOQUEADO')
   	GROUP BY a.Empresa,b.Socio,a.Concepto, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
   	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Baja',a.Empresa,'DEMO',b.Socio,a.Concepto,'Inscripción',1, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden --CASE WHEN d.InscripcionBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	                                                                                          
	--CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Inscripción')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.InscripcionBaja,0)+isnull(InscripcionTolerancia,0))
	AND c.Inscripcion=1
	--AND d.Inscripcion=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BLOQUEADO')
   	GROUP BY a.Empresa,b.Socio,a.Concepto, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
    INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Baja',a.Empresa,'DEMO',b.Socio,a.Concepto,'Otros Ingresos',1, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden --CASE WHEN d.OtrosIngresosBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	                                                                                          
	--CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN(Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Otros Ingresos')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.OtrosIngresosBaja,0)+isnull(OtrosIngresosTolerancia,0))
	AND c.OtrosIngresos=1
	--AND d.OtrosIngresos=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BLOQUEADO')
   	GROUP BY a.Empresa,b.Socio,a.Concepto, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden 
   	
    INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Baja',a.Empresa,'DEMO',b.Socio,a.Concepto,'Credencial',1, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID), 
	ca.Orden--CASE WHEN d.CredencialBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN 
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC'	JOIN
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	                                                                                          
	--CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa JOIN
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Credencial')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.CredencialBaja,0)+isnull(CredencialTolerancia,0))
	AND c.Credencial=1
	--AND d.Credencial=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BLOQUEADO')
   	GROUP BY a.Empresa,b.Socio,a.Concepto, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
   	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Baja',a.Empresa,'DEMO',b.Socio,a.Concepto,'Casilleros',1, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	 ca.Orden--CASE WHEN d.CasillerosBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	                                                                                          
	--CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Casilleros')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.CasillerosBaja,0)+isnull(CasillerosTolerancia,0))
	AND c.Casilleros=1
	--AND d.Casilleros=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BLOQUEADO')
   	GROUP BY a.Empresa,b.Socio,a.Concepto, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	   	
   	INSERT INTO CDIPasoSocBloqueoDepura (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, Estatus, Vencimiento, Titular, IDCxc, Prioridad)
   	SELECT 
	'Baja',a.Empresa,'DEMO',b.Socio,a.Concepto,'Tarjetas Bancarias',1, 
	MIN(Case When ISNULL(Descripcion13, 'No') = 'Si' /*b.Estatus = 'BLOQUEADO'*/  THEN 'Bloqueo' ELSE b.Estatus END), dateDiff(day,a.Vencimiento,Getdate()), b.Titular, MIN(a.ID),
	ca.Orden --CASE WHEN d.TarjetasBancariasBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE m.Clave WHEN 'CXC.F' THEN 'Facturas'
	                                                                                          ELSE 'Documentos' END 
	LEFT JOIN Concepto co on a.Concepto = co.Concepto and co.Modulo = 'CXC'
	LEFT JOIN Causa ca on co.CdiCausaBloqueo = ca.Causa
	                                                                                          
	--CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Tarjetas Bancarias')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.TarjetasBancariasBaja,0)+isnull(TarjetasBancariasTolerancia,0))
	AND c.TarjetasBancarias=1
	--AND d.TarjetasBancarias=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	--AND b.Estatus IN ('ALTA','BLOQUEADO')
   	GROUP BY a.Empresa,b.Socio,a.Concepto, dateDiff(day,a.Vencimiento,Getdate()), b.Titular, ca.Orden
   	
   	  	 
	FETCH NEXT FROM CurSocBuscarTipoSocio INTO @Tipo
	END   
	CLOSE CurSocBuscarTipoSocio  
	DEALLOCATE CurSocBuscarTipoSocio    
  
   	
   	
	-------------------------------------------------------------------------------
	-- Bajas Fin
	-------------------------------------------------------------------------------
    --SELECT * FROM CDIPasoSocBloqueo
   	--EXEC CDSocBloqueoVencimiento
 END   
 go
 /*
 EXEC SpCDISocLlenaSocBloqueo null
 select * from CDIPasoSocBloqueo
 */
 	
GO

--exec CDSocBloqueoVencimiento
IF EXISTS (select * from sysobjects where id = object_id('dbo.CDSocBloqueoVencimiento') and type = 'P') DROP PROCEDURE dbo.CDSocBloqueoVencimiento
GO 
CREATE PROCEDURE CDSocBloqueoVencimiento
AS 
BEGIN
	DECLARE
	@Empresa varchar(5),
	@Usuario varchar(10),
	@Socio  varchar(30),
	@Descripcion15 varchar(50),
	@Causa varchar(50),
	@BajaTotal bit,
	@Mov varchar(20), 
	@IDCxc int, 
  @EmpresaO varchar(5),  
  @UsuarioO varchar(10),  
  @SocioO  varchar(30),  
  @Descripcion15O varchar(50),  
  @CausaO varchar(50),  
  @BajaTotalO  bit,  
  @MovO varchar(20) ,  
  @EstatusO varchar (20),  
  @SocioDepura  varchar(30),  
  @VencimientoO float ,  
  @TitularO bit,
  @Membresia  INT     
  
	--Llena la tabla donde se encuentran los socios a bloquear y a dar de Baja
  EXEC SpCDISocLlenaSocBloqueo NULL  

  --Llena la tabla donde se depuran los socios que no aplican para cambio de estatus por encontrarse ya en dicho estatus  
  DECLARE CurSocVencimientoDepura CURSOR FOR    
  SELECT Socio  
    FROM CDIPasoSocBloqueoDepura  
   WHERE Causa <> 'Honor y Justicia'
   GROUP BY Socio
   ORDER BY Socio DESC   

  OPEN CurSocVencimientoDepura  
  FETCH NEXT FROM CurSocVencimientoDepura INTO @SocioDepura
  WHILE @@FETCH_STATUS <> -1 
  BEGIN 
    SELECT  @EmpresaO        = NULL,  
            @UsuarioO        = NULL,  
            @SocioO          = NULL,  
            @Descripcion15O  = NULL,  
            @CausaO          = NULL,  
            @BajaTotal       = NULL,  
            @MovO            = NULL,  
            @VencimientoO    = NULL,  
            @TitularO        = NULL,  
            @EstatusO        = NULL
                
      
    SELECT TOP 1 @VencimientoO = Vencimiento, @MovO = Mov, @EmpresaO = Empresa, @UsuarioO = Usuario, @SocioO = Socio, 
                 @Descripcion15O = Descripcion15, @CausaO = Causa, @BajaTotalO = BajaTotal, @TitularO = Titular, @EstatusO = Estatus,
                 @IDCxc = IDCxc 
    FROM CDIPasoSocBloqueoDepura 
    WHERE Socio = @SocioDepura 
    ORDER BY Prioridad  DESC, Vencimiento DESC, Estatus DESC      
    
    IF @MovO <> @EstatusO
    BEGIN  
      IF NOT EXISTS (SELECT 1 FROM Cte WHERE Socio = @SocioO AND Estatus = 'BAJA' AND Descripcion15 = 'Cuota' AND Titular = 0)
      BEGIN 
        SELECT @Membresia = Membresia FROM Cte WHERE Socio = @SocioO     
        INSERT INTO CDIPasoSocBloqueo (Mov,   Empresa,   Usuario,   Socio,   Descripcion15,   Causa,   BajaTotal,  Membresia,   IDCxc)
        VALUES                        (@MovO, @EmpresaO, @UsuarioO, @SocioO, @Descripcion15O, @CausaO, @BajaTotalO, @Membresia, @IDCxc)         
      END
    END 
     
    FETCH NEXT FROM CurSocVencimientoDepura INTO @SocioDepura
  END   
  CLOSE CurSocVencimientoDepura  
  DEALLOCATE CurSocVencimientoDepura    

--DSG
-- Depurar la tabla CDIPasoSocBloqueo para dejar el movimiento de mayor peso que es la baja
  DECLARE CurSocVencimiento CURSOR FOR 	
   SELECT Empresa, Usuario, Membresia  
     FROM CDIPasoSocBloqueo 
    WHERE Mov = 'Baja' AND BajaTotal = 1
    GROUP BY Empresa, Usuario, Membresia      
    OPEN CurSocVencimiento
	FETCH NEXT FROM CurSocVencimiento INTO @Empresa,@Usuario, @Membresia
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 	  
		DELETE CDIPasoSocBloqueo WHERE Empresa = @Empresa AND Usuario = @Usuario AND Membresia = @Membresia AND Mov = 'Bloqueo'
		FETCH NEXT FROM CurSocVencimiento INTO @Empresa,@Usuario, @Membresia
	END 
	CLOSE CurSocVencimiento
	DEALLOCATE CurSocVencimiento

--DSG

    
	--Llena la tabla donde se encuentran los socios a bloquear y a dar de Baja
  -- 	EXEC SpCDISocLlenaSocBloqueo NULL
   		
    DECLARE CurSocVencimiento CURSOR FOR 	
    SELECT Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal, IDCxc
    FROM CDIPasoSocBloqueo 
    OPEN CurSocVencimiento
	FETCH NEXT FROM CurSocVencimiento INTO @Mov,@Empresa,@Usuario,@Socio,@Descripcion15,@Causa,@BajaTotal, @IDCxc
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 
		--SELECT @Empresa,@Usuario,@Socio,@Descripcion15,@BajaTotal 
			--IF @Mov='Baja'
			--IF @Mov='Bloqueo'
			--IF (SELECT Estatus FROM Cte WHERE CDISocio=1 AND  socio=@Socio)='ALTA'
				EXEC CDIinsertSocioBloqueo @Mov,@Empresa,@Usuario,@Socio,@Descripcion15,@Causa,@BajaTotal ,Null,null, @IDCxc
		
		FETCH NEXT FROM CurSocVencimiento INTO @Mov,@Empresa,@Usuario,@Socio,@Descripcion15,@Causa,@BajaTotal, @IDCxc
	END 
	CLOSE CurSocVencimiento
	DEALLOCATE CurSocVencimiento

--DSG
EXEC spCDIVisorMovJobMail 101, 'BLOQUEO SOCIOS'
   	
END
go

--EXEC CDSocBloqueoVencimiento
GO
IF EXISTS (select * from sysobjects where id = object_id('dbo.CDIinsertSocioBloqueo') and type = 'P') DROP PROCEDURE dbo.CDIinsertSocioBloqueo
GO 
CREATE PROCEDURE CDIinsertSocioBloqueo
@Mov varchar(20),
@Empresa varchar(5),
@Usuario varchar(10),
@Socio  varchar(30),
@Descripcion15 varchar(50),
@Causa varchar(50),
@BajaTotal bit ,
@IdAfectar int output,
@MovID varchar(20) output, 
@IDCxc    int 

AS
begin
DECLARE	
	  @Hoy            datetime,
	  @Sucursal       int,
	  @Moneda	        varchar(10),
    @TipoCambio	    float,
    @Proyecto       varchar(50),
  	@Ok							int,
		@OkRef					varchar(255),
    @MembresiaCDI   int,
    @SocioTitular   varchar (100),
    @ClienteTitular varchar (10),
    @NipCDTitular	  varchar (30), 
    @TextoBloqueo   nvarchar(MAX), 
    @EstatusPrev    varchar(15), 
    @AccesoPrev     varchar(50), 
    @CausaPrev      varchar(50), 
    @SQL            varchar(MAX), 
    @Parmetros      nvarchar(500),
    @TipoCte        varchar(15),
    @MovAnterior    varchar(100),
    @MovID2         varchar(20) 

    
    
    SET @hoy=getdate()
   	SET @hoy=dbo.FnFechaSinHora(@hoy)
	
    SELECT @Moneda = ContMoneda FROM EmpresaCfg WHERE Empresa = @Empresa
    SELECT @TipoCambio = TipoCambio FROM Mon WHERE Moneda = @Moneda
    SELECT @Sucursal=isnull(SucursalEmpresa,0),@Proyecto=Proyecto FROM Cte WHERE Socio=@Socio
	SELECT @Proyecto='Socios'
    /*
    SELECT Count(),Socio FROM Cte
    WHERE CDISocio=1 AND Estatus  IN ('ALTA','BLOQUEADO')
    GROUP BY Socio    
    HAVING Count()>1
    */
    
	--SELECT 8 FROM Cte WHERE Socio=@Socio
	IF EXISTS (SELECT 8 FROM Cte WHERE Socio=@Socio)
	BEGIN
		SET @Ok = NULL
		
		--SELECT * FROM cdisocio
		
		--IF (SELECT Estatus FROM Cte WHERE CDISocio=1 AND  socio=@Socio)<>'BLOQUEADO' AND @Mov='Bloqueo'
		--	SET @Ok=1
		--IF (SELECT Estatus FROM Cte WHERE CDISocio=1 AND  socio=@Socio)<>'BAJA' AND @Mov='Baja'
		--	SET @Ok=1
		
		IF EXISTS(SELECT Estatus FROM Cte WHERE CDISocio=1 AND  socio=@Socio AND ISNULL(Descripcion13, 'No') <> 'Si' /*Estatus <>'BLOQUEADO'*/) AND @Mov='Bloqueo'
		SET @Ok=1
		IF EXISTS (SELECT Estatus FROM Cte WHERE CDISocio=1 AND  socio=@Socio AND Estatus <>'BAJA') AND @Mov='Baja'
		SET @Ok=1
		
		--SELECT * FROM Cte
		
		
		IF @Ok=1
		BEGIN
		
			SELECT @MembresiaCDI= Membresia, @EstatusPrev = Estatus, @AccesoPrev = Descripcion13, @CausaPrev = Descripcion15, @TipoCte = Tipo from Cte where Socio=@Socio		
			SELECT @SocioTitular=Socio, @ClienteTitular=Cliente , @NipCDTitular= NIPCDI from Cte where Membresia=@MembresiaCDI and Titular=1
			
			INSERT INTO CDISocio (Estatus,Empresa,Mov,FechaEmision,UltimoCambio,Proyecto,Usuario,Observaciones,Causa,Sucursal,Moneda,TipoCambio,NIPCDI, Cliente, Membresia, Socio,BajaTotal, FechaRegistro,Referencia, Concepto)	
			SELECT         'SINAFECTAR',@Empresa,@Mov, @Hoy, GETDATE(),@Proyecto, @Usuario,@Causa,@Causa,@Sucursal,@Moneda, @TipoCambio,  NIPCDI, Cliente, Membresia, Socio,@BajaTotal, GETDATE (), 'Proceso Automático por Política', @Descripcion15
			FROM         Cte
			WHERE     Socio=@Socio
			SET @IdAfectar=SCOPE_IDENTITY()
					
			INSERT INTO CDISocioD (ID, Renglon, NipCDI, Cliente, Membresia, Socio, TipoSangre, Edad)	
			SELECT         @IdAfectar, 2048.0, NIPCDI, Cliente, Membresia, Socio, CDIMedTipoSangre, CONVERT (INT, (DATEDIFF (dd, FechaNacimiento, GETDATE()) - DATEDIFF (yy, FechaNacimiento, GETDATE()) / 4.25) / 365)
			FROM         Cte
			WHERE     Socio=@Socio
			
			EXEC spAfectar 'SOC', @IdAfectar, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=88,@EnSilencio=1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT 
			SELECT @MovID2 = MovID FROM CDISocio WHERE ID = @IdAfectar
--DSG            
      IF @Ok IS NOT NULL 
      BEGIN
        EXEC spCDIVisorMovJob 'BLOQUEO SOCIOS', 101, @Empresa, 'Contracargo', @MovID, '', @Socio, @IdAfectar, '', @Causa, @Hoy, 'SOC', @Usuario, @OK, @OkRef
      END            
			
			EXEC spAfectar 'SOC', @IdAfectar, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=88,@EnSilencio=1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
			SELECT @MovID2 = MovID FROM CDISocio WHERE ID = @IdAfectar
--DSG            
      IF @Ok IS NOT NULL 
      BEGIN
        EXEC spCDIVisorMovJob 'BLOQUEO SOCIOS', 101, @Empresa, 'Contracargo', @MovID2, '', @Socio, @IdAfectar, '', @Causa, @Hoy, 'SOC', @Usuario, @OK, @OkRef
      END            
			


			IF EXISTS (SELECT 1 FROM CDITextoMovBloq WHERE Mov = @Mov)
			BEGIN
			  
--DSG
        CREATE TABLE #MovAnterior (Socio VARCHAR(100), Movimiento VARCHAR(100), Fecha DATETIME)
        
        INSERT INTO #MovAnterior (Socio, Movimiento, Fecha)
        SELECT TOP 1 CDISocioD.Socio, RTRIM(LTRIM(Cdisocio.Mov))+' '+RTRIM(LTRIM(Cdisocio.MovID)), UltimoCambio 
          FROM dbo.CDISociod 
               JOIN dbo.CDISocio ON dbo.CDISocioD.ID = dbo.CDISocio.ID 
               JOIN dbo.MovTipo ON dbo.CDISocio.Mov = dbo.MovTipo.Mov AND Clave IN ('SOC.ACEPTA','SOC.ALTACOND','SOC.BAJA','SOC.DICTAMEN')
         WHERE dbo.CDISocioD.Socio=@Socio AND Cdisocio.id <> @IdAfectar AND Cdisocio.Estatus = 'CONCLUIDO'
         ORDER BY UltimoCambio DESC

        INSERT INTO #MovAnterior (Socio, Movimiento, Fecha)
        SELECT TOP 1 ClaveDemandado, RTRIM(LTRIM(Cdisocio.Mov))+' '+RTRIM(LTRIM(Cdisocio.MovID)), UltimoCambio 
          FROM dbo.CDISocio
               JOIN dbo.MovTipo ON dbo.CDISocio.Mov = dbo.MovTipo.Mov AND Clave IN ('SOC.HONOR') AND SubClave='SOC.CITACON'
         WHERE ClaveDemandado=@Socio AND dbo.CDISocio.Estatus='PENDIENTE' AND Cdisocio.id <> @IdAfectar
         ORDER BY UltimoCambio DESC

        INSERT INTO #MovAnterior (Socio, Movimiento, Fecha)
        SELECT TOP 1 ClaveDemandante, RTRIM(LTRIM(Cdisocio.Mov))+' '+RTRIM(LTRIM(Cdisocio.MovID)), UltimoCambio 
          FROM dbo.CDISocio
               JOIN dbo.MovTipo ON dbo.CDISocio.Mov = dbo.MovTipo.Mov AND Clave IN ('SOC.HONOR') AND SubClave='SOC.CITACON'
         WHERE ClaveDemandante =@Socio AND dbo.CDISocio.Estatus='PENDIENTE' AND Cdisocio.id <> @IdAfectar
         ORDER BY UltimoCambio DESC
         
         SELECT Top 1 @MovAnterior = Movimiento
           FROM #MovAnterior
          WHERE Socio = @Socio
          ORDER BY Fecha DESC
--DSG
			  
			  SELECT @TextoBloqueo = dbo.fnTextoRemplazaEtiq(Leyenda, @Mov, @EstatusPrev, @AccesoPrev, @CausaPrev, @IDCxc, @Socio, @TipoCte, @MovAnterior)
			  FROM CDITextoMovBloq WHERE Mov = @Mov

        SET @Parmetros = '@SQLOUT varchar(MAX) OUTPUT';

        SELECT @TextoBloqueo = @TextoBloqueo + 'AND CDISocio.ID = ' + STR(@IdAfectar) + ''

        EXECUTE sp_executesql @TextoBloqueo, @Parmetros, @SQLOUT = @SQL OUTPUT

        UPDATE CDISocio SET ComentBloqueo = @SQL WHERE ID = @IdAfectar

----DSG
--INSERT INTO DSG (Texto) Values ('SocioT: '+@Socio+' '+ISNULL(@TextoBloqueo, '@TextoBloqueo'))
--INSERT INTO DSG (Texto) Values ('SocioP: '+@Socio+' '+ISNULL(@Parmetros, '@Parmetros'))
--INSERT INTO DSG (Texto) Values ('SocioO: '+@Socio+' '+ISNULL(@SQL, '@SQL'))
----DSG                                 

			END
			
			SELECT @MovID=MovID FROM CDISocio WHERE Id=@IdAfectar
			
		END

			
	END
END 
GO
--EXEC CDSocBloqueoVencimiento

--EXEC CDIinsertSocioBloqueo 'CDI','SOCIO100','Falta de Pago',1
IF EXISTS (select * from sysobjects where id = object_id('dbo.CDIinsertSocioDesBloqueo') and type = 'P') DROP PROCEDURE dbo.CDIinsertSocioDesBloqueo
GO 
CREATE PROCEDURE CDIinsertSocioDesBloqueo @Empresa        varchar(5),
                                          @Usuario        varchar(10),
                                          @Socio          varchar(30),
                                          @Descripcion15  varchar(50),
                                          @Causa          varchar(50),
                                          @BajaTotal      bit,
                                          @IdAfectar      int output,
                                          @MovID          varchar(20) output

AS
BEGIN
  DECLARE	@Hoy              datetime,
          @Sucursal         int,
          @Moneda	          varchar(10),
          @TipoCambio	      float,
          @Proyecto         varchar(50),
          --@IdAfectar int    ,
          @Tipo	            varchar (15),
          @MembresiaCDI     int,
          @SocioTitular     varchar (100),
          @ClienteTitular   varchar (10),
          @NipCDTitular     varchar (30), 
          @PeriodoReingr    INT,
          @EstatusPrevioCDI  VARCHAR(20),
          @MovDesbloqueoCDI	VARCHAR(20)
         
 SELECT @EstatusPrevioCDI= Estatus  FROM dbo.Cte WHERE Socio=@Socio
  SELECT @Moneda = ContMoneda FROM EmpresaCfg WHERE Empresa = @Empresa
  SELECT @TipoCambio = TipoCambio FROM Mon WHERE Moneda = @Moneda
  SELECT @Sucursal = ISNULL(SucursalEmpresa, 0), @Proyecto = Proyecto FROM Cte WHERE Socio = @Socio
  
	SET @Hoy = GETDATE()
  SET @Hoy = dbo.FnFechaSinHora(@Hoy)

	SELECT @Tipo =Tipo FROM Cte WHERE socio=@Socio
 
  --SELECT @Tipo = Tipo FROM CDISocAcessoCfgVencimiento cacv WHERE AplicaA = 'Facturas'
		
	IF EXISTS(SELECT 8 FROM Cte WHERE Socio = @Socio AND Tipo = @Tipo) AND NOT EXISTS (SELECT 9 FROM CDIPasoSocBloqueo WHERE Socio = @Socio)
	BEGIN
	  --BEGM. 20120524. No se genera la Reinstalación si no cumple con la politica actual
	  SELECT @PeriodoReingr = ISNULL(CDIPeriodoReingreso, 0) FROM CDIEmpresaCfg WHERE Empresa = @Empresa

	  IF NOT EXISTS(SELECT 1 FROM Cxc c
	                INNER JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'CXC'
              	  INNER JOIN Cte cte ON c.Cliente = cte.Cliente
              	  WHERE mt.Clave = 'CXC.C' AND 
              	        c.Estatus = 'PENDIENTE' AND 
              	        cte.Socio = @Socio AND 
              	        cte.Tipo = @Tipo AND 
              	        DATEDIFF(DD, C.Vencimiento, GETDATE()) > @PeriodoReingr)
    BEGIN
      SELECT @MembresiaCDI = Membresia FROM Cte WHERE Socio = @Socio
      SELECT @SocioTitular = Socio, @ClienteTitular = Cliente, @NipCDTitular = NIPCDI FROM Cte WHERE Membresia = @MembresiaCDI AND Titular = 1
    	
     INSERT INTO CDISocio (Estatus, Empresa, Mov, FechaEmision, UltimoCambio, Proyecto, Usuario, Observaciones, Causa, Sucursal, Moneda, 
                            TipoCambio, NIPCDI, Cliente, Membresia, Socio, BajaTotal, FechaRegistro, Referencia)	
      SELECT 'SINAFECTAR', @Empresa, CASE WHEN @EstatusPrevioCDI='BAJA' THEN 'Reingreso' ELSE 'Auto Desbloqueo' END, @Hoy, GETDATE(), 'Socios', @Usuario, @Descripcion15, @Causa, @Sucursal, @Moneda, 
             @TipoCambio,  NIPCDI, Cliente, Membresia, Socio, @BajaTotal, GETDATE(), 'Proceso Automático por Política'
      FROM         Cte
      WHERE  Socio = @Socio

      SET @IdAfectar = SCOPE_IDENTITY()

      INSERT INTO CDISocioD (ID, Renglon, NipCDI, Cliente, Membresia, Socio, TipoSangre, Edad)	
      SELECT @IdAfectar, 2048.0, NIPCDI, Cliente, Membresia, Socio, CDIMedTipoSangre, CONVERT (INT, (DATEDIFF (dd, FechaNacimiento, GETDATE()) - DATEDIFF (yy, FechaNacimiento, GETDATE()) / 4.25) / 365)
      FROM   Cte
      WHERE  Socio = @Socio
    	
      EXEC spAfectar 'SOC', @IdAfectar, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=88, @EnSilencio=1 
      EXEC spAfectar 'SOC', @IdAfectar, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=88, @EnSilencio=1
      SELECT @MovID = MovID FROM CDISocio WHERE Id = @IdAfectar	
    END
  END
END 
GO



--SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
--DECLARE @F datetime SELECT @F = GETDATE() 
--EXEC xpAccesoControl @Empresa = 'CDI', @Sucursal = 0, @Usuario = 'MYKI', @Codigo = '010.010.010.110 q181632A1000000001000161241101009', @FechaHora = @F, @OrigenChecada = 1


/**************** SpCDICtrlAccesoDll ****************/
if exists (select * from sysobjects where id = object_id('dbo.SpCDICtrlAccesoDll') and type = 'P') drop procedure dbo.SpCDICtrlAccesoDll
GO
CREATE PROCEDURE SpCDICtrlAccesoDll  
@Persona Varchar(50),  
@Tipo varchar(1),  
@Torniquete bit ,
@Cadena     varchar(50)    
AS  
BEGIN  
   
 --DELETE CDICtrlAccesoDll WHERE persona=@Persona AND Tipo=@Tipo  
 --INSERT INTO CDICtrlAccesoDll (Persona,Tipo,Torniquete) values (@Persona,@Tipo,@Torniquete)   
 
 DELETE CDICtrlAccesoDll WHERE persona=@Persona AND Tipo=@Tipo      
 INSERT INTO CDICtrlAccesoDll (Persona,Tipo,Torniquete,Cadena,Estatus) values (@Persona,@Tipo,@Torniquete, SUBSTRING (@Cadena,1,37),'PENDIENTE')       
 
   
END  
go
/**********************************	SpCDISocAntesVencimiento		****************************************/
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCDISocAntesVencimiento') and type = 'P') DROP PROCEDURE dbo.SpCDISocAntesVencimiento
GO 
CREATE PROCEDURE SpCDISocAntesVencimiento
@Socio varchar(30),
@Causa varchar (30) output
AS
Begin
	
	
	DECLARE  @Tipo	VARCHAR (15)
	 --select * from CDISocAcessoCfgVencimiento
	 create table #pasoCDIPasoSocBloqueo
	 (ID int identity,
	 Mov varchar(20) null,
	 Empresa varchar(20) null,
	 Usuario varchar(20) null,
	 Socio varchar(20) null,
	 Descripcion15 varchar(20) null,
	 Causa varchar(20) null,
	 BajaTotal varchar(20) null	 
	 )
	 
	 
	 SELECT @Tipo ='Socio'
	
	if (select TOP 1 Admision from CDISocAcessoCfgVencimiento where tipo=@Tipo AND Admision = 1/*AplicaA = 'Facturas'*/)=1
		INSERT INTO #pasoCDIPasoSocBloqueo (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal)
   		SELECT 
		'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Admisión',CASE WHEN d.AdmisionBloqueo='Membresia' THEN 1 ELSE 0 END 
		FROM CXC a JOIN 
		Cte b ON a.Cliente=b.Cliente JOIN
		Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
		CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE WHEN m.Clave = 'CXC.F' THEN 'Facturas' 
		                                                                                            ELSE 'Documentos' END JOIN
		CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
		WHERE 1=1
		AND b.Socio=isnull(@Socio,b.Socio)
		AND m.Clave IN ('CXC.F', 'CXC.D')
		AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Admisión')
		AND a.Estatus IN ('PENDIENTE')
		AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.AdmisionAlta,0))
		AND c.Admision=1
		AND d.Admision=1
		AND b.Tipo=@Tipo
		AND b.CDISocio=1
		AND b.Estatus IN ('ALTA','BAJA')	
   		GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.AdmisionBloqueo='Membresia' THEN 1 ELSE 0 END 
   		
   		
   		
   	if (select cuota from CDISocAcessoCfgVencimiento where tipo=@Tipo AND AplicaA = 'Facturas')=1 and Exists (Select 8 from #pasoCDIPasoSocBloqueo)
   	INSERT INTO #pasoCDIPasoSocBloqueo (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Cuota',CASE WHEN d.CuotaBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE WHEN m.Clave = 'CXC.F' THEN 'Facturas' 
		                                                                                            ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Cuota')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.CuotaAlta,0))
	AND c.Cuota=1
	AND d.Cuota=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.CuotaBloqueo='Membresia' THEN 1 ELSE 0 END 
   	
   	if (select inscripcion from CDISocAcessoCfgVencimiento where tipo=@Tipo AND AplicaA = 'Facturas')=1 and Exists (Select 8 from #pasoCDIPasoSocBloqueo)
   	INSERT INTO #pasoCDIPasoSocBloqueo (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Inscripción',CASE WHEN d.InscripcionBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE WHEN m.Clave = 'CXC.F' THEN 'Facturas' 
		                                                                                            ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Inscripción')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.InscripcionAlta,0))
	AND c.Inscripcion=1
	AND d.Inscripcion=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.InscripcionBloqueo='Membresia' THEN 1 ELSE 0 END 
   	
   	if (select otrosingresos from CDISocAcessoCfgVencimiento where tipo=@Tipo AND AplicaA = 'Facturas')=1 and Exists (Select 8 from #pasoCDIPasoSocBloqueo)
    INSERT INTO #pasoCDIPasoSocBloqueo (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Otros Ingresos',CASE WHEN d.OtrosIngresosBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE WHEN m.Clave = 'CXC.F' THEN 'Facturas' 
		                                                                                            ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Otros Ingresos')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.OtrosIngresosAlta,0))
	AND c.OtrosIngresos=1
	AND d.OtrosIngresos=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.OtrosIngresosBloqueo='Membresia' THEN 1 ELSE 0 END    	
   	
   	if (select Credencial from CDISocAcessoCfgVencimiento where tipo=@Tipo AND AplicaA = 'Facturas' )=1 and Exists (Select 8 from #pasoCDIPasoSocBloqueo)
    INSERT INTO #pasoCDIPasoSocBloqueo (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Credencial',CASE WHEN d.CredencialBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE WHEN m.Clave = 'CXC.F' THEN 'Facturas' 
		                                                                                            ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Credencial')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.CredencialALta,0)+isnull(CredencialTolerancia,0))
	AND c.Credencial=1
	AND d.Credencial=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.CredencialBloqueo='Membresia' THEN 1 ELSE 0 END 
   	
   	if (select Casilleros from CDISocAcessoCfgVencimiento where tipo=@Tipo AND AplicaA = 'Facturas')=1 and Exists (Select 8 from #pasoCDIPasoSocBloqueo)
   	INSERT INTO #pasoCDIPasoSocBloqueo (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Casilleros',CASE WHEN d.CasillerosBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa AND c.AplicaA = CASE WHEN m.Clave = 'CXC.F' THEN 'Facturas' 
		                                                                                            ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Casilleros')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.CasillerosAlta,0))
	AND c.Casilleros=1
	AND d.Casilleros=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.CasillerosBloqueo='Membresia' THEN 1 ELSE 0 END 
   	
  	if (select TarjetasBancarias from CDISocAcessoCfgVencimiento where tipo=@Tipo AND AplicaA = 'Facturas')=1 and Exists (Select 8 from #pasoCDIPasoSocBloqueo)
  	INSERT INTO #pasoCDIPasoSocBloqueo (Mov,Empresa,Usuario,Socio,Descripcion15,Causa,BajaTotal)
   	SELECT 
	'Bloqueo',a.Empresa,'DEMO',b.Socio,a.Concepto,'Tarjetas Bancarias',CASE WHEN d.TarjetasBancariasBloqueo='Membresia' THEN 1 ELSE 0 END 
	FROM CXC a JOIN 
	Cte b ON a.Cliente=b.Cliente JOIN
	Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC' JOIN 
	CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa  AND c.AplicaA = CASE WHEN m.Clave = 'CXC.F' THEN 'Facturas' 
		                                                                                            ELSE 'Documentos' END JOIN
	CDISocAcessoCfgBloqueo d ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
	WHERE 1=1
	AND b.Socio=isnull(@Socio,b.Socio)
	AND m.Clave IN ('CXC.F', 'CXC.D')
	AND a.Concepto IN (Select Concepto from Concepto where Modulo = 'CXC' AND CdiCausaBloqueo = 'Tarjetas Bancarias')
	AND a.Estatus IN ('PENDIENTE')
	AND dateDiff(day,a.Vencimiento,Getdate())>(isnull(c.TarjetasBancariasAlta,0))
	AND c.TarjetasBancarias=1
	AND d.TarjetasBancarias=1
	AND b.Tipo=@Tipo
	AND b.CDISocio=1
	AND b.Estatus IN ('ALTA','BAJA')
   	GROUP BY a.Empresa,b.Socio,a.Concepto,CASE WHEN d.TarjetasBancariasBloqueo='Membresia' THEN 1 ELSE 0 END 
   	
   	select top 1 @Causa=Causa from #pasoCDIPasoSocBloqueo
 
 end   	
  
  go
  --declare @causa varchar(30)
  --exec SpCDISocAntesVencimiento '0001400',@causa output
  --select @causa 'causa'
  
  --select cliente,socio,Estatus,* from cte