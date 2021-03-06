/**************** spCPAfectar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCPAfectar') and type = 'P') drop procedure dbo.spCPAfectar
GO             
CREATE PROCEDURE spCPAfectar
    		   @ID                		int,

		   @Accion			char(20),
    		   @Empresa	      		char(5),
    		   @Modulo	      		char(5),
    		   @Mov	  	      		char(20),
    		   @MovID             		varchar(20)	OUTPUT,
    		   @MovTipo     		char(20),
		   @MovMoneda			char(10),
		   @MovTipoCambio		float,
    		   @FechaEmision      		datetime,
    		   @FechaAfectacion      	datetime,
    		   @FechaConclusion		datetime,

    	 	   @Proyecto	      		varchar(50),
    		   @Usuario	      		char(10),
    		   @Autorizacion      		char(10),
    		   @DocFuente	      		int,
    		   @Observaciones     		varchar(255),
    		   @Concepto     		varchar(50),
		   @Referencia			varchar(50),

    		   @Estatus           		char(15),
 	    	   @EstatusNuevo	      	char(15),
    		   @FechaRegistro     		datetime,
    		   @Ejercicio	      		int,
    		   @Periodo	      		int,
		   @MovUsuario			char(10),
		   
		   @OrigenTipo			varchar(10),
		   @Origen			varchar(20),
		   @OrigenID			varchar(20),
		   @OrigenMovTipo		varchar(20),

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
    @CxMov		varchar(20),
    @CxMovID		varchar(20),
    @CxImporte		money,
    @ClavePresupuestal	varchar(50),
    @CPID		int,
    @CPMov		varchar(20),
    @CPMovID		varchar(20)

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

    IF @Ok IS NULL
    BEGIN
      INSERT CPD (
             Sucursal,  ID,         Renglon, ClavePresupuestal, Tipo, Importe) 
      SELECT @Sucursal, @IDGenerar, Renglon, ClavePresupuestal, Tipo, Importe
        FROM CPD
       WHERE ID = @ID

      INSERT CPCal (
             Sucursal,  ID,         ClavePresupuestal, Tipo, Ejercicio, Periodo, Importe) 
      SELECT @Sucursal, @IDGenerar, ClavePresupuestal, Tipo, Ejercicio, Periodo, Importe
        FROM CPCal
       WHERE ID = @ID

      INSERT CPArt (
             Sucursal,  ID,         ClavePresupuestal, Tipo, Articulo, Cantidad, Precio, Referencia, Observaciones) 
      SELECT @Sucursal, @IDGenerar, ClavePresupuestal, Tipo, Articulo, Cantidad, Precio, Referencia, Observaciones
        FROM CPArt
       WHERE ID = @ID

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
                       	         NULL, @Proyecto, @MovMoneda, @MovTipoCambio,
                       	         @Usuario, @Autorizacion, NULL, @DocFuente, @Observaciones,
			         @Generar, @GenerarMov, @GenerarMovID, @IDGenerar,
				 @Ok OUTPUT

    IF @Accion IN ('AFECTAR', 'CANCELAR')
    BEGIN
      IF @MovTipo IN ('CP.AS', 'CP.TA')
      BEGIN      	
      	UPDATE CPD 
      	   SET Presupuesto = CASE WHEN UPPER(Tipo) = 'REDUCCION' THEN -Importe ELSE Importe END
      	 WHERE ID = @ID

        IF @OrigenMovTipo = 'CP.AP'
          UPDATE CP 
             SET Estatus         = CASE WHEN @Accion = 'AFECTAR' THEN 'CONCLUIDO'   ELSE 'PENDIENTE' END,
                 FechaConclusion = CASE WHEN @Accion = 'AFECTAR' THEN @FechaEmision ELSE NULL        END
           WHERE Empresa = @Empresa AND Mov = @Origen AND MovID = @OrigenID AND Estatus IN ('CONCLUIDO', 'PENDIENTE')
           
			SELECT @CPMov= c.Origen, @CPMovID= c.OrigenID  FROM CP c WHERE c.Empresa=@Empresa  AND c.Mov=@Mov AND c.MovID=@MovID
			
			SELECT @CPID= ID FROM CP c WHERE c.Mov= @CPMov AND c.MovID=@CPMovID
			
			EXEC spMovFlujo @Sucursal, 'AFECTAR', @Empresa, @Modulo,  @CPID , @CPMov , @CPMovID , 'CP', @ID, @Mov, @MovID, @Ok OUTPUT
      END
      IF @MovTipo = 'CP.TR'
      	UPDATE CPD 
      	   SET Presupuesto         = CASE WHEN UPPER(Tipo) = 'AMPLIACION' THEN Importe  ELSE -Importe END,
      	       RemanenteDisponible = CASE WHEN UPPER(Tipo) = 'REDUCCION'  THEN -Importe ELSE NULL END
      	 WHERE ID = @ID
      
      -- Actualizar Movimiento
      IF @Ok IN (NULL, 80030)
      BEGIN
        IF @EstatusNuevo = 'CANCELADO' SELECT @FechaCancelacion = @FechaRegistro ELSE SELECT @FechaCancelacion = NULL
        IF @EstatusNuevo = 'CONCLUIDO' SELECT @FechaConclusion  = @FechaEmision  ELSE IF @EstatusNuevo <> 'CANCELADO' SELECT @FechaConclusion  = NULL
        IF @CfgContX = 1 AND @CfgContXGenerar <> 'NO'
        BEGIN
	  IF @Estatus IN ('SINAFECTAR', 'CONFIRMAR', 'BORRADOR') AND @EstatusNuevo <> 'CANCELADO' SELECT @GenerarPoliza = 1 ELSE
          IF @Estatus NOT IN ('SINAFECTAR', 'CONFIRMAR', 'BORRADOR') AND @EstatusNuevo =  'CANCELADO' IF @GenerarPoliza = 1 SELECT @GenerarPoliza = 0 ELSE SELECT @GenerarPoliza = 1
        END  

        EXEC spValidarTareas @Empresa, @Modulo, @ID, @EstatusNuevo, @Ok OUTPUT, @OkRef OUTPUT
        UPDATE CP
           SET FechaConclusion  = @FechaConclusion, 
               FechaCancelacion = @FechaCancelacion, 
               UltimoCambio     = CASE WHEN UltimoCambio IS NULL THEN @FechaRegistro ELSE UltimoCambio END,
	       Estatus          = @EstatusNuevo,
               Situacion 	= CASE WHEN @Estatus<>@EstatusNuevo THEN NULL ELSE Situacion END,
               GenerarPoliza    = @GenerarPoliza
         WHERE ID = @ID 
        IF @@ERROR <> 0 SELECT @Ok = 1
      END

      -- checar que no quede el disponible en rojo bajo ningun motivo
      IF @Ok IN (NULL, 80030)
      BEGIN
      	SELECT @ClavePresupuestal = NULL

      	SELECT @ClavePresupuestal = MIN(n.ClavePresupuestal)
      	  FROM CPNeto n
      	 WHERE n.Empresa = @Empresa AND n.Proyecto = @Proyecto 
      	   AND n.ClavePresupuestal IN (SELECT DISTINCT d.ClavePresupuestal FROM CPD d WHERE d.ID = @ID)
    	   AND (ISNULL(ROUND(n.Presupuesto, 2), 0.0) < 0.0 OR ISNULL(ROUND(n.Comprometido, 2), 0.0) < 0.0 OR ISNULL(ROUND(n.Comprometido2, 2), 0.0) < 0.0 OR (ISNULL(ROUND(n.Devengado, 2), 0.0) + ISNULL(ROUND(n.Anticipos, 2), 0.0) < 0.0) OR ISNULL(ROUND(n.Devengado2, 2), 0.0) < 0.0 OR ISNULL(ROUND(n.Ejercido, 2), 0.0) < 0.0 OR ISNULL(ROUND(n.EjercidoPagado, 2), 0.0) < 0.0 OR ISNULL(ROUND(n.RemanenteDisponible, 2), 0.0) < 0.0 OR ISNULL(ROUND(n.Sobrante, 2), 0.0) < 0.0 OR ISNULL(ROUND(n.Disponible, 2), 0.0) < 0.0)
      	IF @ClavePresupuestal IS NOT NULL SELECT @Ok = 25580
      	  
        IF @ClavePresupuestal IS NULL
      	BEGIN
          SELECT @ClavePresupuestal = MIN(n.ClavePresupuestal)
      	    FROM CPArtNeto n 
      	   WHERE n.Empresa = @Empresa AND n.Proyecto = @Proyecto 
      	   AND n.ClavePresupuestal IN (SELECT DISTINCT d.ClavePresupuestal FROM CPD d WHERE d.ID = @ID)
    	   AND ISNULL(n.Importe, 0.0) < 0.0
          IF @ClavePresupuestal IS NOT NULL SELECT @Ok = 25590
      	END

        IF @ClavePresupuestal IS NULL
      	BEGIN
          SELECT @ClavePresupuestal = MIN(n.ClavePresupuestal)
      	    FROM CPCalDisponible n 
      	   WHERE n.Empresa = @Empresa AND n.Proyecto = @Proyecto 
      	   AND n.ClavePresupuestal IN (SELECT DISTINCT d.ClavePresupuestal FROM CPD d WHERE d.ID = @ID)
    	   AND ISNULL(n.Presupuesto, 0.0) < 0.0
          IF @ClavePresupuestal IS NOT NULL SELECT @Ok = 25600
          
          IF @MovTipo = 'CP.RF'
          BEGIN
            SELECT @ClavePresupuestal = MIN(n.ClavePresupuestal)
              FROM CPCalReservado n 
      	     WHERE n.Empresa = @Empresa AND n.Proyecto = @Proyecto 
      	     AND n.ClavePresupuestal IN (SELECT DISTINCT d.ClavePresupuestal FROM CPD d WHERE d.ID = @ID)
    	     AND ISNULL(n.Presupuesto, 0.0) < 0.0
            --IF @ClavePresupuestal IS NOT NULL SELECT @Ok = 25601           
          END
      	END

      	IF @ClavePresupuestal IS NOT NULL SELECT @OkRef = RTRIM(@Mov)+'<BR>'+@ClavePresupuestal
      END
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
      BEGIN
        DECLARE @PolizaDescuadrada TABLE (Cuenta varchar(20) NULL, SubCuenta varchar(50) NULL, Concepto varchar(50) NULL, Debe money NULL, Haber money NULL, SucursalContable int NULL)
        IF EXISTS(SELECT * FROM PolizaDescuadrada WHERE Modulo = @Modulo AND ID = @ID)
        INSERT @PolizaDescuadrada (Cuenta, SubCuenta, Concepto, Debe, Haber, SucursalContable) SELECT Cuenta, SubCuenta, Concepto, Debe, Haber, SucursalContable FROM PolizaDescuadrada WHERE Modulo = @Modulo AND ID = @ID 
        ROLLBACK TRANSACTION
        DELETE PolizaDescuadrada WHERE Modulo = @Modulo AND ID = @ID
        INSERT PolizaDescuadrada (Modulo, ID, Cuenta, SubCuenta, Concepto, Debe, Haber, SucursalContable) SELECT @Modulo, @ID, Cuenta, SubCuenta, Concepto, Debe, Haber, SucursalContable FROM @PolizaDescuadrada
      END
    
  RETURN
END
GO
