SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

-----------------------------------------
--- Desarrollo. SIMULACION DEL MES 13 ---
--- Cliente   . CDI                   ---
--- Folio     . 4650                  ---
--- Fecha     . 04 / 11 / 10          ---
--- Autor     . EDER MENDOZA          ---
-----------------------------------------   


---------------------
--- M O V T I P O ---
---------------------
IF NOT EXISTS(SELECT * FROM MovTipo WHERE Modulo = 'CP' AND Clave = 'CP.OP' AND Mov = 'A Mes 13') 
  INSERT MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) VALUES ('CP', 330, 'A Mes 13', 'CP.OP', NULL, 'CP', 'A Mes 13')
GO

  
----------------------------------------------
---- S P C D I C P I N S E R T M E S 1 3 -----
----------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Id = Object_id('dbo.spCDICPInsertMes13') AND Type = 'P') DROP PROCEDURE dbo.spCDICPInsertMes13
GO
CREATE PROCEDURE spCDICPInsertMes13
                    @Empresa		varchar(50),
					@Mov			varchar(20),
					@Sucursal		int,
					@Usuario		varchar(10),	
                    @Proyecto		varchar(50),
					@FechaEmision	datetime,
					@UltimoCambio	datetime	
AS BEGIN   
   DECLARE  @ID             int,            			
			      @Ok	            int,				
			      @Moneda         varchar(10),						
			      @Observaciones  varchar(100),	           
			      @TipoCambio	    float,
			      @Importe        money, 
			      @MaxRenglon     float,
			      @MovID          varchar(20),
			      @OkRef          varchar(255)   

   SELECT @Moneda = 'Pesos', @Observaciones = 'JOB MES 13'
   SELECT @TipoCambio =  TipoCambio  FROM Mon WHERE Moneda   = @Moneda

   SELECT @Importe = SUM(ISNULL(Importe,0))
     FROM #CDIProyectoClaves         
    WHERE Proyecto          = @Proyecto
      AND ISNULL(Importe,0) > 0 
      
   IF ISNULL(@Importe,0) > 0
   BEGIN --- I M P O R T E   
     INSERT INTO CP (Empresa,				Mov,				MovID,			FechaEmision,	UltimoCambio,   Concepto,			Proyecto,			Moneda,		
	 				 TipoCambio,			Usuario,			Autorizacion,	Referencia,		DocFuente,		Observaciones,		Estatus,			Situacion, 
				     SituacionFecha,		SituacionUsuario,	SituacionNota,	OrigenTipo,		Origen,			OrigenID,			Poliza,				PolizaID, 
				     GenerarPoliza,			ContID,				Ejercicio,		Periodo,		FechaRegistro,	FechaConclusion,	FechaCancelacion,	Sucursal, 
				     SucursalOrigen,		UEN,				Agente,			Personal,		Comentarios)
     VALUES         (@Empresa,				@Mov,				NULL,			@FechaEmision,  @UltimoCambio,	NULL,				@Proyecto,			@Moneda,	
				     ISNULL(@TipoCambio,1),	@Usuario,			NULL,			NULL,			NULL,			@Observaciones,		'SINAFECTAR',		NULL, 
				     NULL,					NULL,				NULL,			NULL,			NULL,			NULL,				NULL,				NULL, 
				     @Sucursal,				NULL,				NULL,			NULL,			NULL,			NULL,				NULL,				0, 
				     @Sucursal,				NULL,				NULL,			NULL,			'')

     SELECT @ID = SCOPE_IDENTITY()
     
     IF @ID > 0
     BEGIN --- I D
       /*INSERT INTO CPD (ID,			ClavePresupuestal,	Renglon,												Sucursal,		SucursalOrigen, 
						Tipo,		Importe,			Presupuesto,											Comprometido,	Comprometido2,	
						Devengado,	Devengado2,			Ejercido,												EjercidoPagado, Sobrante,	
						Anticipos,	RemanenteDisponible)
       SELECT           @ID,		ClavePresupuestal,	ROW_NUMBER()OVER(ORDER BY ClavePresupuestal) * 2048.0,	@Sucursal,		@Sucursal,		
						NULL,		NULL,				NULL,													NULL,			NULL,			
						NULL,		NULL,				NULL,													NULL,			Importe,	
						NULL,		NULL 
         FROM #CDIProyectoClaves         
        WHERE Proyecto          = @Proyecto
          AND ISNULL(Importe,0) > 0 */
          
       INSERT INTO CPD (ID,	ClavePresupuestal, Renglon, Tipo, Importe, Sucursal, SucursalOrigen/*, Sobrante*/)
       SELECT @ID, ClavePresupuestal,	ROW_NUMBER() OVER(ORDER BY ClavePresupuestal) * 2048.0,	'Ampliacion', Importe, @Sucursal,	@Sucursal/*, Importe*/
         FROM #CDIProyectoClaves 
        WHERE Proyecto = @Proyecto
              AND ISNULL(Importe, 0) > 0 
              
       SELECT @MaxRenglon = MAX(Renglon) FROM CPD WHERE ID = @ID
       
       INSERT INTO CPD (ID,	ClavePresupuestal, Renglon, Tipo, 
                        Importe, Sucursal, SucursalOrigen)
       SELECT @ID, ClavePresupuestal,	ISNULL(@MaxRenglon, 0.00) + ROW_NUMBER() OVER(ORDER BY ClavePresupuestal) * 2048.0,	'Reduccion', 
              Importe, @Sucursal,	@Sucursal
         FROM #CDIProyectoClaves 
        WHERE Proyecto = @Proyecto
              AND ISNULL(Importe, 0) > 0 

      --Calendarización
       INSERT INTO CPCal (ID, ClavePresupuestal, Tipo, Ejercicio, Periodo, Importe)
       SELECT ID, ClavePresupuestal, Tipo, YEAR(@FechaEmision), CASE WHEN Tipo = 'Ampliacion' THEN 13 ELSE MONTH(@FechaEmision) END, Importe
       FROM CPD
       WHERE ID = @ID
       ORDER BY ClavePresupuestal, Tipo

       IF EXISTS (SELECT 1 FROM CPD WHERE ID = @ID)
         EXEC spAfectar 'CP', @ID, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=101, @EnSilencio = 1, @Conexion = 0, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
       		
		--DSG            
      IF @Ok IS NOT NULL 
      BEGIN
        SELECT @MovID = MovID FROM CP WHERE ID = @ID
        EXEC spCDIVisorMovJob 'Simulación del Mes 13. Ultimo Día del Mes CDI', 103, @Empresa, @Mov, @MovID, '', '', @ID, '', '', @FechaEmision, 'CP', @Usuario, @OK, @OkRef
      END            
         
         
     END   --- I D
   END   --- I M P O R T E   
   
 RETURN
END
GO


----------------------------------------------------------
------- S P C D I J O B S I M U L A CI O N M E S 1 3 -----
----------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE Type='p' AND ID=Object_ID('dbo.spCDIJobSimulacionMes13')) DROP PROCEDURE dbo.spCDIJobSimulacionMes13
GO

CREATE PROCEDURE spCDIJobSimulacionMes13
                 @Empresa		char(5)
AS BEGIN
   DECLARE	@IDMin				int,
			@IDMax				int,	
		    @Periodo			int,
			@Ejercicio			int,				
			@Sucursal			int,
			@ClavePresupuestal	varchar(50),
			@Proyecto			varchar(50),
			@Mov				varchar(20),
			@Usuario			varchar(10),
			@FechaEmision		datetime,
			@UltimoCambio		datetime
 
  CREATE TABLE #CDIProyecto        (ID					int IDENTITY (1,1),			
						  	        Proyecto			varchar(50)			NULL							        
								    )   
  CREATE TABLE #CDIProyectoClaves  (ID					int     IDENTITY (1,1),			                                    
									Proyecto			varchar(50)			NULL,	
									ClavePresupuestal	varchar(50)			NULL,
									Importe				money,
								    )  
  SELECT @FechaEmision = GETDATE()
  SELECT @UltimoCambio = @FechaEmision
  EXEC spExtraerFecha @FechaEmision OUTPUT 
  SELECT @Periodo      = DATEPART(mm,@FechaEmision)  
  SELECT @Ejercicio    = DATEPART(yy,@FechaEmision)
  SELECT @Mov = CDIMovTraspMes13/*CDIMovSimulacion*/, @Usuario = CDIUsuarioSimulacion, @Sucursal = ISNULL(CDISucursalSimulacion,0) 
  FROM CDIEmpresaCfg WHERE Empresa = @Empresa

  INSERT INTO #CDIProyectoClaves (Proyecto,   ClavePresupuestal, Importe)
   SELECT                         E.Proyecto,   D.ClavePresupuestal, dbo.fnCDIImporteSimMes13 (@Empresa,Proyecto,d.ClavePresupuestal,@Ejercicio,@Periodo)    
      
			  FROM CPD D     
			JOIN CP E ON E.ID = D.ID AND E.Estatus = 'CONCLUIDO'    
			JOIN MovTipo MT ON MT.Modulo = 'CP' AND MT.Mov = E.Mov AND MT.Clave IN ('CP.AS', 'CP.TA', 'CP.TR', 'CP.OP')  
			LEFT OUTER JOIN CPCal c3 ON c3.ID = d.ID       
			WHERE   
					E.Empresa         = @Empresa    
					AND ISNULL(Proyecto,'') <> ''    
					AND ISNULL(d.ClavePresupuestal,'') <> ''      
					AND E.Ejercicio         = @Ejercicio      
					AND e.Periodo           = @Periodo    -- '<' Solo el periodo a cerrar, no anteriores
				or	E.Empresa         = @Empresa    
					AND ISNULL(Proyecto,'') <> ''    
					AND ISNULL(d.ClavePresupuestal,'') <> ''      
					AND E.Ejercicio         = @Ejercicio      
					AND c3.Periodo           = @Periodo    -- '<' Solo el periodo a cerrar, no anteriores
				OR	E.Origen    = 'Cargo por Aj. Provee'    
					AND E.Empresa   = @Empresa    
					AND ISNULL(Proyecto,'') <> ''    
					AND ISNULL(d.ClavePresupuestal,'') <> ''     
					AND E.Ejercicio         = @Ejercicio      
					AND e.Periodo           = @Periodo    -- '<' Solo el periodo a cerrar, no anteriores
					AND D.Comprometido2  > 0    
				OR	D.RemanenteDisponible IS NOT NULL  
					AND E.Empresa   = @Empresa    
					AND ISNULL(Proyecto,'') <> ''    
					AND ISNULL(d.ClavePresupuestal,'') <> ''       
					AND E.Ejercicio         = @Ejercicio    
					AND e.Periodo           = @Periodo    -- '<' Solo el periodo a cerrar, no anteriores
				OR  E.Empresa         = @Empresa    
					AND ISNULL(Proyecto,'') <> ''    
					AND ISNULL(d.ClavePresupuestal,'') <> ''      
					AND E.Ejercicio         = @Ejercicio      
					AND e.Periodo           = @Periodo    -- '<' Solo el periodo a cerrar, no anteriores
					AND D.Comprometido   > 0    
			   
			   GROUP BY E.Proyecto,D.ClavePresupuestal  
			  ORDER BY D.ClavePresupuestal  
    
       
  INSERT INTO #CDIProyecto
  SELECT Proyecto FROM #CDIProyectoClaves GROUP BY Proyecto

  IF EXISTS (SELECT * FROM #CDIProyecto) 
  BEGIN 
    SELECT @IDMin = 0, @IDMax = 0
    SELECT @IDMax = MAX(ID) FROM #CDIProyecto
    SELECT @IDMin = MIN(ID) FROM #CDIProyecto
    WHILE(@IDMax >= @IDMin) 
    BEGIN --- P R O Y E C T O S
      SELECT @Proyecto = ''
      SELECT @Proyecto = ISNULL(Proyecto,'') FROM #CDIProyecto WHERE ID = @IDMin     
      IF ISNULL(@Proyecto,'')<>'' AND ISNULL(@Mov,'') <> ''
        EXEC spCDICPInsertMes13 @Empresa,@Mov,@Sucursal,@Usuario,@Proyecto,@FechaEmision,@UltimoCambio
      SELECT @IDMin = @IDMin + 1
    END   --- P R O Y E C T O S
  END
--DSG
EXEC spCDIVisorMovJobMail 103, 'Simulación del Mes 13. Ultimo Día del Mes CDI'

RETURN
END
GO
--EXEC spCDIJobSimulacionMes13 'DEMO'
--SELECT * FROM CPCalDisponible WHERE Periodo = 11


-------------------------------------------------
----- S P C D I G E N E R A J O B M E S 1 3 -----
-------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.spCDIGeneraJobMes13')) DROP PROCEDURE dbo.spCDIGeneraJobMes13
GO

CREATE PROCEDURE spCDIGeneraJobMes13
                 @Empresa			varchar(15), 
				 @Periodo			int,	
				 @Ejercicio			int
				
AS BEGIN
  DECLARE
    @SQL				varchar(max),
    @BaseLocal			varchar(100),
    @ServicioLocal		varchar(100),
    @UsuarioLocal		varchar(100),
    @NombreJobs			varchar(100),
    @FechaDia1			datetime,	
    @FechaDia1L			varchar(20),
	@FechaHoraDia1L		datetime,	   
	@Hora1InicioJob		varchar(20),	
    @Hora1Inicio		varchar(20),
	@Dia				int	
	

  SELECT @Hora1Inicio = '23:59:00.000', @Hora1InicioJob = '235900'

  SELECT @FechaDia1L  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)
  SELECT @FechaDia1   = CONVERT(datetime,@FechaDia1L)
  SELECT @FechaDia1   = DATEADD (mm, 1, @FechaDia1)
  SELECT @FechaDia1   = DATEDIFF(dd, 1, @FechaDia1) 
  SELECT @Dia         = DATEPART(dd,@FechaDia1)
  SELECT @FechaDia1L  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),@Dia),2)
  SELECT @FechaHoraDia1L = @FechaDia1 + @Hora1Inicio


  SET @NombreJobs     = 'Simulación del Mes 13. Ultimo Día del Mes ' + @Empresa 
  SET @ServicioLocal  =  CONVERT(char(100), SERVERPROPERTY('ServerName')) 

  CREATE TABLE #Resultado (ID int IDENTITY(1,1) NOT NULL PRIMARY KEY, SQL varchar(255) NULL)
  SELECT @BaseLocal = DB_NAME()
  INSERT #Resultado (SQL) SELECT CHAR(45)+CHAR(45)+' GENERA JOB MES 13'
  INSERT #Resultado (SQL) SELECT 'SET DATEFIRST 7'
  INSERT #Resultado (SQL) SELECT 'SET ANSI_NULLS OFF'
  INSERT #Resultado (SQL) SELECT 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED'
  INSERT #Resultado (SQL) SELECT 'SET LOCK_TIMEOUT -1'
  INSERT #Resultado (SQL) SELECT 'SET QUOTED_IDENTIFIER OFF'
  INSERT #Resultado (SQL) SELECT 'GO'

  ---E L I M I N A  J O B  D I A  1 
  INSERT #Resultado (SQL) SELECT 'USE msdb'
  INSERT #Resultado (SQL) SELECT 'IF  EXISTS (SELECT job_id FROM SysJobs_View WHERE NAME = N' + CHAR(39) + @NombreJobs + CHAR(39) + ' )' 
  INSERT #Resultado (SQL) SELECT 'EXEC sp_delete_job @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ', @delete_unused_schedule=1'
  ---C R E A  J O B   D I A  1 
  INSERT #Resultado (SQL) SELECT 'USE msdb'
  INSERT #Resultado (SQL) SELECT 'DECLARE @jobId BINARY(16)'	
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'EXEC  msdb.dbo.sp_add_job @job_name=N'+ CHAR(39)+ @NombreJobs + CHAR(39) + ', '
  INSERT #Resultado (SQL) SELECT '@enabled=1,'
  INSERT #Resultado (SQL) SELECT '@notify_level_eventlog=0,'
  INSERT #Resultado (SQL) SELECT '@notify_level_email=2,'
  INSERT #Resultado (SQL) SELECT '@notify_level_netsend=2,'
  INSERT #Resultado (SQL) SELECT '@notify_level_page=2,'
  INSERT #Resultado (SQL) SELECT '@delete_level=0,'
  INSERT #Resultado (SQL) SELECT '@description=N'  + CHAR(39) + 'Genera Simulacion Mes 13 Folio_4650' + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@category_name=N' + CHAR(39) + '[Uncategorized (Local)]' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@owner_login_name=N' + CHAR(39) + 'sa' + CHAR(39) +', @job_id = @jobId OUTPUT'
  INSERT #Resultado (SQL) SELECT 'select @jobId' 
  INSERT #Resultado (SQL) SELECT '' 
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_add_jobserver @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ', @server_name = N'+ CHAR(39) + @ServicioLocal + CHAR(39)
  INSERT #Resultado (SQL) SELECT '' 
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_add_jobstep @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ', @step_name=N' + CHAR(39) +'Ejecutar SP' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@step_id=1,' 
  INSERT #Resultado (SQL) SELECT '@cmdexec_success_code=0,' 
  INSERT #Resultado (SQL) SELECT '@on_success_action=1,' 
  INSERT #Resultado (SQL) SELECT '@on_fail_action=2,'  
  INSERT #Resultado (SQL) SELECT '@retry_attempts=0,' 
  INSERT #Resultado (SQL) SELECT '@retry_interval=0,' 
  INSERT #Resultado (SQL) SELECT '@os_run_priority=0, @subsystem=N' + CHAR(39) + 'TSQL' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@command=N' + CHAR(39) + 'Exec spCDIJobSimulacionMes13' +  ' ' +@Empresa + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@database_name=N' + CHAR(39)+ @BaseLocal + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@flags=0' 
  INSERT #Resultado (SQL) SELECT '' 
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_update_job @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@enabled=1,' 
  INSERT #Resultado (SQL) SELECT '@start_step_id=1,' 
  INSERT #Resultado (SQL) SELECT '@notify_level_eventlog=0,' 
  INSERT #Resultado (SQL) SELECT '@notify_level_email=2,'  			 
  INSERT #Resultado (SQL) SELECT '@notify_level_netsend=2,'
  INSERT #Resultado (SQL) SELECT '@notify_level_page=2,'
  INSERT #Resultado (SQL) SELECT '@delete_level=0,'
  INSERT #Resultado (SQL) SELECT '@description=N' + CHAR(39) + 'Genera Simulacion Mes 13 Folio_4650' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@category_name=N' + CHAR(39) + '[Uncategorized (Local)]' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@owner_login_name=N' + CHAR(39) + 'sa' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@notify_email_operator_name=N' + CHAR(39) + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@notify_netsend_operator_name=N' + CHAR(39) + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@notify_page_operator_name=N' + CHAR(39)+ CHAR(39) 
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'DECLARE @schedule_id int'
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_add_jobschedule @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ',@name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@enabled=1,'
  INSERT #Resultado (SQL) SELECT '@freq_type=32,'
  INSERT #Resultado (SQL) SELECT '@freq_interval=8,'
  INSERT #Resultado (SQL) SELECT '@freq_relative_interval=16,'
  INSERT #Resultado (SQL) SELECT '@freq_recurrence_factor=1,'
  INSERT #Resultado (SQL) SELECT '@active_start_date='+@FechaDia1L+','
  INSERT #Resultado (SQL) SELECT '@active_end_date=99991231,'
  INSERT #Resultado (SQL) SELECT '@active_start_time='+@Hora1InicioJob+','  
  INSERT #Resultado (SQL) SELECT '@active_end_time=235959, @schedule_id = @schedule_id OUTPUT'
  INSERT #Resultado (SQL) SELECT 'select @schedule_id'
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'SET DATEFORMAT YMD'
  INSERT #Resultado (SQL) SELECT 'UPDATE sysjobs_view SET date_created =' + CHAR(39) + CONVERT(varchar,@FechaHoraDia1L,21) + CHAR(39) + ',date_modified =' + CHAR(39) + CONVERT(varchar,@FechaHoraDia1L,21) + CHAR(39) + ' WHERE (Name=N' + CHAR(39) + @NombreJobs + CHAR(39) + 'and category_id=N' + CHAR(39) + CONVERT(varchar(1),0) + CHAR(39) + ')'
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'GO'
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT ''
  
  SELECT SQL FROM #Resultado ORDER BY ID

RETURN
END
GO

--EXEC spCDIGeneraJobMes13 'DEMO', 10,2010
