/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spIntelisisServiceProcesar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spIntelisisServiceProcesar') and type = 'P') drop procedure dbo.spIntelisisServiceProcesar
GO             
CREATE PROCEDURE spIntelisisServiceProcesar
				@ID	int
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Sistema		varchar(100),
    @Contenido		varchar(100),
    @Referencia		varchar(100),
    @SubReferencia  varchar(100),
    @Version		float,
    @Estatus		varchar(15),
    @EstatusNuevo	varchar(15),
    @Solicitud		varchar(max),
    @iSolicitud		int,
    @Resultado		varchar(max),
    @Ok			int,
    @OkRef		varchar(255),
    @CambiarEstatus	bit--EMG
    
  SELECT @Ok = NULL, @OkRef = NULL, @CambiarEstatus = 1 --EMG
  SELECT @Sistema = Sistema, @Contenido = Contenido, @Referencia = Referencia, @SubReferencia = SubReferencia, @Version = Version, @Estatus = Estatus, @Solicitud = Solicitud 
    FROM IntelisisService
   WHERE ID = @ID
   
  IF @Estatus = 'SINPROCESAR'
  BEGIN
    IF @Sistema IN('Intelisis', 'SDK')--EMG
    BEGIN
      IF @Contenido = 'Solicitud'
      BEGIN
        EXEC sp_xml_preparedocument @iSolicitud OUTPUT, @Solicitud
        --IF @Referencia = 'Infor_Art' EXEC spInfor_Art @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT        
        IF @Referencia = 'Intelisis.CXP.InsertarMov.CXP_F' EXEC spISIntelisisCXPInsertarMovCXP_F @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT ELSE
        IF @Referencia = 'Intelisis.CXP.InsertarMov.CXP_CA' EXEC spISIntelisisCXPInsertarMovCXP_CA @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT ELSE
        IF @Referencia = 'Intelisis.Cuenta.Alm.Listado' EXEC spIntelisisCuentaAlmListado @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT ELSE
        IF @Referencia = 'Intelisis.Interfaz.Infor.Transferencia.Alm' EXEC spIntelisisInterfazInforTransferenciaAlm @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT ELSE
	IF @Referencia = 'Intelisis.Cuenta.CteTipo.Listado' EXEC spIntelisisCuentaCteTipoListado @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT ELSE
	IF @Referencia = 'Intelisis.Interfaz.Infor.Transferencia.Cte' EXEC spIntelisisInterfazInforTransferenciaCte @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT ELSE
        IF @Referencia = 'Intelisis.Cuenta.Mon.Listado' EXEC spIntelisisMonTipoListado @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT ELSE
	IF @Referencia = 'Intelisis.Interfaz.Infor.Transferencia.Mon' EXEC spIntelisisInterfazInforTransferenciaMon @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT ELSE
        IF @Referencia = 'Intelisis.Interfaz.Infor.Transferencia.Prov' EXEC spIntelisisInterfazInforTransferenciaProv @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT ELSE
        IF @Referencia = 'Intelisis.Cuenta.Prov.Listado' EXEC spIntelisisCuentaProvListado @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT  ELSE
        IF @Referencia = 'SDK.ReportePDF' EXEC spISSDKReportePDF @ID, @iSolicitud, @Version, @Resultado OUTPUT, @Ok OUTPUT, @OkRef OUTPUT, @CambiarEstatus OUTPUT--EMG
        

        EXEC sp_xml_removedocument @iSolicitud  
        
        
        IF @CambiarEstatus = 1 --EMG
        BEGIN--EMG      
        IF @Ok IN (NULL, 80030) 
          SELECT @EstatusNuevo = 'PROCESADO' 
        ELSE 
          SELECT @EstatusNuevo = 'ERROR' 
          
        UPDATE IntelisisService
           SET Estatus = @EstatusNuevo,
               Resultado = @Resultado,
               Ok = @Ok,
               OkRef = @OkRef
         WHERE ID = @ID
        END--EMG
      END
    END
  END
  RETURN
END
GO