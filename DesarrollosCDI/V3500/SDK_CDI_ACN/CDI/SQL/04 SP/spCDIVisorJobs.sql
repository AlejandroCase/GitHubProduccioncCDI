SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

/**************** spCDIVisorJobs ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIVisorJobs') and type = 'P') drop procedure dbo.spCDIVisorJobs
GO
CREATE  PROCEDURE spCDIVisorJobs (@Estacion INT, @NombreTrabajo VARCHAR(100))   
AS  
BEGIN  
  DECLARE  
    @ProfileCfg       VARCHAR(50),   
    @Destinat         VARCHAR(MAX),   
    @Result           VARCHAR(500),  
    @ServidorCorreo   VARCHAR(50),  
    @Sentencia        nVARCHAR(MAX),
    @Sentencia2        nVARCHAR(MAX),    
    @Subject          VARCHAR(100),  
    @Variables        nVARCHAR(MAX),  
    @SQL              VARCHAR(MAX),  
    @body_format      VARCHAR(20),  
    @FileName         VARCHAR(255),  
    @Body             VARCHAR(MAX),  
    @DB               VARCHAR(100),  
    @Job_ID           VARCHAR(100),  
    @Job_History_id   INT,  
    @Run_Date         INT,
    @Fecha            DATETIME

  
  DELETE CDIErrorJob WHERE Estacion = @Estacion  
  SELECT @Destinat = Mail FROM CDIVisorJob WHERE NombreJob = @NombreTrabajo  
  
  IF isnull(@Destinat, '') <> ''  
  BEGIN    
  
    SELECT @Fecha = dbo.fnFechaSinHora(GETDATE())
    SELECT @Run_Date = CONVERT(INT, CONVERT(Varchar(4),YEAR(@Fecha)) + CASE WHEN LEN(CONVERT(Varchar(4),MONTH(@Fecha))) = 1 THEN '0'+CONVERT(Varchar(4),MONTH(@Fecha)) ELSE CONVERT(Varchar(4),MONTH(@Fecha)) END + CASE WHEN LEN(CONVERT(Varchar(4),DAY(@Fecha))) = 1 THEN '0'+CONVERT(Varchar(4),DAY(@Fecha)) ELSE CONVERT(Varchar(4),DAY(@Fecha)) END )

    SELECT @Job_ID = job_id FROM msdb.dbo.sysjobs WHERE name = @NombreTrabajo  
      
    INSERT INTO CDIErrorJob (Estacion,  NombrePaso, Error,   Fecha,    Hora,     Duracion,     NumeroMensaje)  
    SELECT                   @Estacion, step_name,  message, run_date, run_time, run_duration, sql_message_id   
      FROM msdb.dbo.sysjobhistory   
     WHERE job_id =  @Job_ID AND run_date = @Run_Date AND run_status = 0 
      
    SELECT @Sentencia = NULL, @Variables = NULL, @Subject = 'Error en el Job '+ @NombreTrabajo, @body_format = 'HTML', @Body = 'Se produjo un error en el Job ' + @NombreTrabajo +' revisar el archivo adjunto',  
           @FileName = 'ErrorJOB_'+@NombreTrabajo + '.txt', @DB = DB_NAME()  
  
    SELECT @ProfileCfg = CDIProfile, @ServidorCorreo = NULLIF(CDIServer, '') FROM Version      
    SELECT @Sentencia = @ServidorCorreo + '.msdb.dbo.sysmail_start_sp'  
    EXEC (@Sentencia)  
    SET @SQL = 'SELECT RTRIM(NombrePaso), Fecha,    Hora,     Duracion,     NumeroMensaje, Error FROM '+RTRIM(@ServidorCorreo)+'.'+RTRIM(@DB)+'.dbo.CDIErrorJob' + ' WHERE Estacion =' + CONVERT(Varchar(100),@Estacion)+' ORDER BY Hora DESC'    

    SELECT @Variables = '  
        @Profile        varchar(50),  
        @Destinatarios  varchar(MAX),  
        @Subject        varchar(100),  
        @SQL            varchar(MAX),  
        @FileName       varchar(255),  
        @Body           varchar(MAX),  
        @body_format    varchar(50)'  
          
    SELECT @Sentencia = 'EXEC ' + @ServidorCorreo  + '.msdb.dbo.sp_send_dbmail   
         @profile_name                  = @Profile,  
         @recipients                    = @Destinatarios,  
         @subject                       = @Subject,  
         @query                         = @SQL,  
         @attach_query_result_as_file   = 1,  
         @query_result_header           = 0,  
         @query_result_separator        = ''|'',   
         @query_attachment_filename     = @FileName,  
         @body                          = @Body,   
         @body_format                   = @body_format'  
  

  EXEC sp_ExecuteSQL @Sentencia, @Variables, @ProfileCfg, @Destinat, @Subject, @SQL, @FileName, @Body, @body_format  
  END  
    
END
GO
--EXEC spCDIVisorJobs  1, 'Prueba 1'

IF EXISTS (SELECT * FROM Sysobjects WHERE Id = Object_id('dbo.spCDIVisorMovJob') AND Type = 'P') DROP PROCEDURE dbo.spCDIVisorMovJob
GO
CREATE PROCEDURE spCDIVisorMovJob
                    @NombreJob        VARCHAR(100),
                    @Estacion         INT,
                    @Empresa			    VARCHAR(5)  = NULL,
                    @Mov			        VARCHAR(20) = NULL,
                    @MovID  	        VARCHAR(20) = NULL,
					          @Cliente			    VARCHAR(10) = NULL,
					          @Socio            VARCHAR(20) = NULL,
					          @ID               INT         = NULL,					          					          
					          @Articulo		      VARCHAR(20) = NULL,					          
					          @Concepto         VARCHAR(50) = NULL,
					          @FechaEmision		  DATETIME    = NULL,					          
					          @Modulo           VARCHAR(5)  = NULL,
					          @Usuario          VARCHAR(10) = NULL,
					          @OK               INT         = NULL,
					          @OkRef            VARCHAR(255)= NULL
AS 
BEGIN   
  DECLARE 
    @Mensaje VARCHAR(255)  
 Select 1
 SELECT @Mensaje = Descripcion FROM MensajeLista where Mensaje = @Ok

 Insert INTO CDIVisorMovJob ( Estacion,  NombreJob,  Modulo,  Mov,  MovID,  IDMov, Fecha,         Usuario,  Empresa,  Concepto,  Socio,  Cliente,  Ok,  OkRef,  Mensaje)
 VALUES                     ( @Estacion, @NombreJob, @Modulo, @Mov, @MovID, @ID,   @FechaEmision, @Usuario, @Empresa, @Concepto, @Socio, @Cliente, @Ok, @OkRef, @Mensaje )
   
END

GO


/**************** spCDIVisorMovJobMail ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIVisorMovJobMail') and type = 'P') drop procedure dbo.spCDIVisorMovJobMail
GO
CREATE  PROCEDURE spCDIVisorMovJobMail (@Estacion INT, @NombreTrabajo VARCHAR(100))   
AS  
BEGIN  
  DECLARE  
    @ProfileCfg       VARCHAR(50),   
    @Destinat         VARCHAR(MAX),   
    @Result           VARCHAR(500),  
    @ServidorCorreo   VARCHAR(50),  
    @Sentencia        nVARCHAR(MAX),
    @Sentencia2        nVARCHAR(MAX),    
    @Subject          VARCHAR(100),  
    @Variables        nVARCHAR(MAX),  
    @SQL              VARCHAR(MAX),  
    @body_format      VARCHAR(20),  
    @FileName         VARCHAR(255),  
    @Body             VARCHAR(MAX),  
    @DB               VARCHAR(100),  
    @Job_ID           VARCHAR(100),  
    @Job_History_id   INT,  
    @Run_Date         INT,
    @Fecha            DATETIME

  
  SELECT @Destinat = Mail FROM CDIVisorJob WHERE NombreJob = @NombreTrabajo  
  
  IF isnull(@Destinat, '') <> ''  
  BEGIN    
  
    SELECT @Fecha = dbo.fnFechaSinHora(GETDATE())
    SELECT @Run_Date = CONVERT(INT, CONVERT(Varchar(4),YEAR(@Fecha)) + CASE WHEN LEN(CONVERT(Varchar(4),MONTH(@Fecha))) = 1 THEN '0'+CONVERT(Varchar(4),MONTH(@Fecha)) ELSE CONVERT(Varchar(4),MONTH(@Fecha)) END + CASE WHEN LEN(CONVERT(Varchar(4),DAY(@Fecha))) = 1 THEN '0'+CONVERT(Varchar(4),DAY(@Fecha)) ELSE CONVERT(Varchar(4),DAY(@Fecha)) END )

    SELECT @Job_ID = job_id FROM msdb.dbo.sysjobs WHERE name = @NombreTrabajo  
      
    SELECT @Sentencia = NULL, @Variables = NULL, @Subject = 'Error en el Job '+ @NombreTrabajo, @body_format = 'HTML', @Body = 'Existen errores en los movimientos que genera Job ' + @NombreTrabajo +' revisar el archivo adjunto',  
           @FileName = 'ErrorMovJOB_'+@NombreTrabajo + '.txt', @DB = DB_NAME()  
  
    SELECT @ProfileCfg = CDIProfile, @ServidorCorreo = NULLIF(CDIServer, '') FROM Version      
    SELECT @Sentencia = @ServidorCorreo + '.msdb.dbo.sysmail_start_sp'  
    EXEC (@Sentencia)  
    SET @SQL = 'SELECT * FROM '+RTRIM(@ServidorCorreo)+'.'+RTRIM(@DB)+'.dbo.CDIVisorMovJob' + ' WHERE Estacion =' + CONVERT(Varchar(100),@Estacion)+' ORDER BY ID'    

    SELECT @Variables = '  
        @Profile        varchar(50),  
        @Destinatarios  varchar(MAX),  
        @Subject        varchar(100),  
        @SQL            varchar(MAX),  
        @FileName       varchar(255),  
        @Body           varchar(MAX),  
        @body_format    varchar(50)'  
          
    SELECT @Sentencia = 'EXEC ' + @ServidorCorreo  + '.msdb.dbo.sp_send_dbmail   
         @profile_name                  = @Profile,  
         @recipients                    = @Destinatarios,  
         @subject                       = @Subject,  
         @query                         = @SQL,  
         @attach_query_result_as_file   = 1,  
         @query_result_header           = 0,  
         @query_result_separator        = ''|'',   
         @query_attachment_filename     = @FileName,  
         @body                          = @Body,   
         @body_format                   = @body_format'  
  
  IF EXISTS (SELECT * FROM CDIVisorMovJob WHERE Estacion = @Estacion  )
    EXEC sp_ExecuteSQL @Sentencia, @Variables, @ProfileCfg, @Destinat, @Subject, @SQL, @FileName, @Body, @body_format  
  END  
  DELETE CDIVisorMovJob WHERE Estacion = @Estacion  
    
END
GO
