/**************** spSoporteAfectar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spSoporteAfectar') and type = 'P') drop procedure dbo.spSoporteAfectar
GO             
CREATE PROCEDURE spSoporteAfectar
    		   @ID                		int,

		   @Accion			char(20),
    		   @Empresa	      		char(5),
    		   @Modulo	      		char(5),
    		   @Mov	  	      		char(20),
    		   @MovID             		varchar(20)	OUTPUT,
    		   @MovTipo     		char(20),
    		   @FechaEmision      		datetime,
    		   @FechaAfectacion      	datetime,
    		   @FechaConclusion		datetime,

		   @Cliente			char(10),
		   @EnviarA			int,
                   @Agente			char(10),

    	 	   @Proyecto	      		varchar(50),
    		   @Usuario	      		char(10),
    		   @Autorizacion      		char(10),
    		   @DocFuente	      		int,
    		   @Observaciones     		varchar(255),
    		   @Concepto     		varchar(50),
    		   @Estatus           		char(15),
 	    	   @EstatusNuevo	      	char(15),
    		   @FechaRegistro     		datetime,
    		   @Ejercicio	      		int,
    		   @Periodo	      		int,
		   @MovUsuario			char(10),

		   @RefInicial			char(20),
		   @RefInicialID		char(20),

		   @Conexion			bit,
                   @SincroFinal			bit,
                   @Sucursal			int,
                   @SucursalDestino		int,
                   @SucursalOrigen		int,

		   @CfgContX			bit,
		   @CfgContXGenerar		char(20),
		   @GenerarPoliza		bit,

		   @Generar			bit,
    		   @GenerarMov			char(20),
	           @GenerarAfectado		bit,
		   @IDGenerar			int	     	OUTPUT,	
    		   @GenerarMovID	  	varchar(20)	OUTPUT,

       		   @Ok                		int          OUTPUT,
    		   @OkRef             		varchar(255) OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE
    @FechaCancelacion	datetime,
    @GenerarMovTipo	char(20),
    @GenerarPeriodo	int,
    @GenerarEjercicio	int,
    @Renglon		float,
    @OrigenID		int,
    @AvanceID		int,
    @Destino		varchar(50)
    
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
    EXEC spMovGenerar @Sucursal, @Empresa, @Modulo, @Ejercicio, @Periodo, @Usuario, @FechaRegistro, 'SINAFECTAR', 
		      NULL, NULL, 
                      @Mov, @MovID, 0,
		      @GenerarMov, NULL, @GenerarMovID OUTPUT, @IDGenerar OUTPUT, @Ok OUTPUT, @OkRef OUTPUT
    -- Leer MovTipo, Periodo y Ejercicio	
    EXEC spMovTipo @Modulo, @GenerarMov, @FechaAfectacion, @Empresa, NULL, NULL, @GenerarMovTipo OUTPUT, @GenerarPeriodo OUTPUT, @GenerarEjercicio OUTPUT, @Ok OUTPUT

/*    IF @MovTipo = 'ST.A'
      INSERT INTO SoporteD (Sucursal, ID,  Renglon, Aplica, AplicaID) 
      SELECT @Sucursal, @IDGenerar, d.Renglon, d.Aplica, d.AplicaID
        FROM SoporteD d, MovTipo mt
       WHERE d.ID = @ID AND mt.Modulo = 'ST' AND mt.Mov = d.Aplica AND mt.Clave = 'ST.I'
*/
    IF @Ok IS NULL
    BEGIN
      /*IF @MovTipo IN ('ST.I', 'ST.A')
      BEGIN
        UPDATE Soporte SET ReferenciaInicial = CASE WHEN @MovTipo = 'ST.I' THEN RTRIM(@Mov)+' '+RTRIM(@MovID) ELSE RTRIM(@RefInicial)+' '+RTRIM(@RefInicialID) END WHERE ID = @IDGenerar
      END*/

      IF @MovTipo <> 'ST.I'
      BEGIN
        SELECT @Renglon = ISNULL(MAX(Renglon), 0) + 2048 FROM SoporteD WHERE ID = @IDGenerar
        INSERT INTO SoporteD (Sucursal, ID,  Renglon, Aplica, AplicaID) VALUES (@Sucursal, @IDGenerar, @Renglon, @Mov, @MovID)
      END
      IF @Ok IS NULL SELECT @Ok = 80030
    END
    RETURN
  END


  IF @Conexion = 0 
    BEGIN TRANSACTION

    -- Poner el Estatus del Movimiento en "AFECTANDO"
    EXEC spMovEstatus @Modulo, 'AFECTANDO', @ID, @Generar, @IDGenerar, @GenerarAfectado, @Ok OUTPUT

    IF @Accion <> 'CANCELAR' 
      -- Registrar el Movimiento en "Mov"
      EXEC spRegistrarMovimiento @Sucursal, @Empresa, @Modulo, @Mov, @MovID, @ID, @Ejercicio, @Periodo, @FechaRegistro, @FechaEmision,
                       	         NULL, @Proyecto, NULL, NULL,
                       	         @Usuario, @Autorizacion, NULL, @DocFuente, @Observaciones,
			         @Generar, @GenerarMov, @GenerarMovID, @IDGenerar,
				 @Ok OUTPUT

    -- Aqui va el detalle de la afectacion
    IF @Proyecto IS NOT NULL 
      UPDATE Soporte 
         SET ProyectoFolio = (SELECT COUNT(*) FROM Soporte WHERE Empresa = @Empresa AND Mov = @Mov AND Proyecto = @Proyecto)
       WHERE ID = @ID

    IF @MovTipo = 'ST.I'
      UPDATE Soporte SET ReferenciaInicial = RTRIM(@Mov)+' '+RTRIM(@MovID) WHERE ID = @ID

    IF @MovTipo IN ('ST.P', 'ST.S', 'ST.A', 'ST.F', 'ST.SP')
      EXEC spSoporteAplicacion @ID, @Accion, @Sucursal, @Empresa, @Mov, @MovID, @MovTipo, 0, @FechaRegistro, @CfgContX, @CfgContXGenerar, @GenerarPoliza, @Ok OUTPUT, @OkRef OUTPUT

    IF @MovTipo = 'ST.F'
      EXEC spSoporteAplicacionRef @ID, @Accion, @Sucursal, @Empresa, @Mov, @MovID, @MovTipo, 0, @FechaRegistro, @CfgContX, @CfgContXGenerar, @GenerarPoliza, @RefInicial, @RefInicialID, @Ok OUTPUT, @OkRef OUTPUT

    -- Checar despues de Aplicar
    IF @MovTipo = 'ST.A' AND @Accion <> 'CANCELAR' AND @Ok IS NULL
    BEGIN
      SELECT @AvanceID = NULL
      SELECT @AvanceID = MIN(s.ID) FROM Soporte s, MovTipo mt WHERE s.ID <> @ID AND s.Estatus = 'PENDIENTE' AND s.Empresa = @Empresa AND mt.Modulo = 'ST' AND mt.Mov = s.Mov AND mt.Clave = 'ST.A' AND s.ReferenciaInicial = RTRIM(@RefInicial)+' '+RTRIM(@RefInicialID)
      IF @AvanceID IS NOT NULL
        SELECT @Ok = 26030, @OkRef = RTRIM(Mov)+' '+RTRIM(MovID) FROM Soporte WHERE ID = @AvanceID
    END

    -- Actualizar Movimiento
    IF @Ok IS NULL
      EXEC spSoporteEstatus @Empresa, @ID, @Estatus, @EstatusNuevo, @FechaEmision, @FechaRegistro, @CfgContX, @CfgContXGenerar, @GenerarPoliza, @Ok OUTPUT, @OkRef OUTPUT
 
    -- Agregar a Estatus Log
    IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
      EXEC spMovFinal @Empresa, @Sucursal, @Modulo, @ID, @Estatus, @EstatusNuevo, @Usuario, @FechaEmision, @FechaRegistro, @Mov, @MovID, @MovTipo, @IDGenerar, @Ok OUTPUT, @OkRef OUTPUT

    -- Cancelar el Flujo
    IF @Accion = 'CANCELAR' AND @EstatusNuevo = 'CANCELADO' AND @Ok IS NULL
      EXEC spCancelarFlujo @Empresa, @Modulo, @ID, @Ok OUTPUT 

    IF @Cliente IS NOT NULL
    BEGIN
      IF (SELECT TieneMovimientos FROM Cte WHERE Cliente = @Cliente) = 0
        UPDATE Cte SET TieneMovimientos = 1 WHERE Cliente = @Cliente 
    END
    IF @Cliente IS NOT NULL AND @EnviarA IS NOT NULL
    BEGIN
      IF (SELECT TieneMovimientos FROM CteEnviarA WHERE Cliente = @Cliente AND ID = @EnviarA) = 0
        UPDATE CteEnviarA SET TieneMovimientos = 1 WHERE Cliente = @Cliente AND ID = @EnviarA
    END
    IF @Agente IS NOT NULL	   
    BEGIN
      IF (SELECT TieneMovimientos FROM Agente WHERE Agente = @Agente) = 0
        UPDATE Agente SET TieneMovimientos = 1 WHERE Agente = @Agente 
    END

    IF @MovTipo IN ('ST.A', 'ST.F')
    BEGIN
      SELECT @OrigenID = NULL
      SELECT @OrigenID = MIN(ID) FROM Soporte WHERE ID <> @ID AND Estatus NOT IN ('SINAFECTAR', 'CANCELADO') AND Empresa = @Empresa AND Mov = @RefInicial AND MovID = @RefInicialID
      IF @OrigenID IS NOT NULL
      BEGIN
        IF @Accion <> 'CANCELAR' 
          SELECT @Destino = RTRIM(@Mov) + ' ' +RTRIM(@MovID)
        ELSE
          SELECT @Destino = RTRIM(MAX(Mov))+' '+ISNULL(RTRIM(MAX(MovID)), '') 
            FROM Soporte 
           WHERE Estatus NOT IN ('SINAFECTAR', 'CANCELADO') AND Empresa = @Empresa AND ReferenciaInicial = RTRIM(@RefInicial) + ' ' + @RefInicialID AND Mov <> @RefInicial AND MovID <> @RefInicialID

        UPDATE Soporte SET Destino = NULLIF(RTRIM(@Destino), '') WHERE ID = @OrigenID
      END
    END
  IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
    EXEC xpSoporteAfectar @ID, @Accion, @Empresa, @Modulo, @Mov, @MovID, @MovTipo, @FechaEmision, @FechaAfectacion, @FechaConclusion, @Ok OUTPUT, @OkRef OUTPUT

  IF @Conexion = 0
    IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
      COMMIT TRANSACTION
    ELSE
      ROLLBACK TRANSACTION
    
  RETURN
END
GO
