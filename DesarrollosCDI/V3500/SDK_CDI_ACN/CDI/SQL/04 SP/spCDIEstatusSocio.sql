SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

IF EXISTS(SELECT * FROM sysobjects WHERE type ='p' AND name = 'spCDIEstatusSocio') DROP PROCEDURE spCDIEstatusSocio
GO  
CREATE PROCEDURE spCDIEstatusSocio 
            @Empresa                VARCHAR(5),
            @Sucursal               int,
            @Usuario                varchar(10),
            @Tipo                   varchar(20),
            @Cuenta                 varchar(10),
            @Estatus                VARCHAR(15)
AS     
BEGIN    
 DECLARE 
            @FechaHoy               DATETIME,
            @EstatusActal           VARCHAR(15),
            
            @Ok                     int,
            @OkRef                  VARCHAR(255)
    
  SELECT @FechaHoy = GETDATE()
  
  EXEC spExtraerFecha @FechaHoy OUTPUT
  
  IF NULLIF(@Cuenta, '') IS NULL
    SELECT @Ok = 10060, @OkRef = 'Es necesario indicar una cuenta'
    
  IF @Tipo = 'Socio' AND @Ok IS NULL
  BEGIN
    SELECT @EstatusActal = Estatus FROM Cte c WHERE c.Cliente = @Cuenta
    
    IF @Estatus <> @EstatusActal
      UPDATE Cte SET Estatus = @Estatus WHERE Cliente = @Cuenta
    ELSE
      SELECT @Ok = 10045, @OkRef = 'El' + @Tipo + 'Ya tiene el Estatus: ' + @Estatus
  END
  ELSE IF @Tipo = 'Personal' AND @Ok IS NULL
  BEGIN
    SELECT @EstatusActal = Estatus FROM Personal c WHERE c.Personal = @Cuenta
    
    IF @Estatus <> @EstatusActal
      UPDATE Personal SET Estatus = @Estatus WHERE Personal = @Cuenta
    ELSE
      SELECT @Ok = 10045, @OkRef = 'El' + @Tipo + 'Ya tiene el Estatus: ' + @Estatus
  END

  IF @Ok IS NULL
    SELECT 'Proceso Generado con exito'
  ELSE
    SELECT ml.Descripcion + '<BR>' + ISNULL(@OkRef, '') FROM MensajeLista ml WHERE ml.Mensaje = @Ok  

  RETURN    
END  
GO