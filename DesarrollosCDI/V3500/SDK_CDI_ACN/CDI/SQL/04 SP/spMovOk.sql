/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spMovOk ****************/
if exists (select * from sysobjects where id = object_id('dbo.spMovOk') and type = 'P') drop procedure dbo.spMovOk
GO             
CREATE PROCEDURE spMovOk
		   @SincroFinal		bit,
		   @ID			int,
		   @Estatus		char(15),
		   @Sucursal		int,
                   @Accion		char(20),
		   @Empresa		char(5),
		   @Usuario		char(10),
      		   @Modulo		char(5),
		   @Mov			char(20),
		   @FechaAfectacion	datetime,
                   @FechaRegistro	datetime,
		   @Ejercicio		int,
		   @Periodo		int,
		   @Proyecto		varchar(50),		
		   @Ok			int 		OUTPUT,
		   @OkRef		varchar(255)	OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE 
    @EstatusProyecto	char(15),
    @ValidarFechas	char(20),
    @EjercicioInicio	datetime,
    @EjercicioFinal	datetime,
    @MovTipo		char(20),
    @EjercicioEsp	int,
    @PeriodoEsp		int,
    @CFD			bit, --Cambio CFD Flexible
    @CFDFlex		bit  --Cambio CFD Flexible


  IF (SELECT COUNT(0) FROM Empresa WHERE Empresa = ISNULL(@Empresa,'')) = 0 SET @Ok = 26070
  IF (SELECT COUNT(0) FROM Sucursal WHERE Sucursal = @Sucursal) = 0 SET @Ok = 72060
  IF (SELECT COUNT(0) FROM Usuario WHERE Usuario = ISNULL(@Usuario,'')) = 0 SET @Ok = 71020

  IF @SincroFinal = 0 AND @Estatus IN ('SINAFECTAR', 'BORRADOR', 'EMAIL', 'CONFIRMAR') AND @Modulo <> 'CONT'
    EXEC spSincroSemillaOk @Modulo, @ID, @Mov, @Ok OUTPUT, @OkRef OUTPUT

  IF @Accion = 'GENERAR' RETURN
  EXEC spExtraerFecha @FechaAfectacion OUTPUT
  EXEC spExtraerFecha @FechaRegistro OUTPUT

  SELECT @ValidarFechas = NULL
  SELECT @ValidarFechas = NULLIF(UPPER(RTRIM(ValidarFechas)), '')
    FROM EmpresaCfgModulo 
   WHERE Empresa = @Empresa
     AND Modulo  = @Modulo

  IF @FechaAfectacion > DATEADD(month, 1, @FechaRegistro) 
  BEGIN
    SELECT @MovTipo = Clave 
      FROM MovTipo
     WHERE Modulo = @Modulo AND Mov = @Mov

    IF RIGHT(@MovTipo, 3) <> '.PR' AND RIGHT(@MovTipo, 4) <> '.EST' AND @Modulo NOT IN ('CONT', 'FIS', 'GAS') AND @MovTipo NOT IN ('VTAS.P', 'VTAS.S', 'GAS.S', 'CXC.DP', 'CXC.NCP','CXP.DP', 'CXP.NCP', 'DIN.SD', 'DIN.D', 'DIN.DE', 'DIN.SCH', 'DIN.CH', 'DIN.CHE', 'AF.DP', 'AF.DT', 'AF.RV', 'GAS.DPR', 'CXC.INT', 'CXP.INT', 'NOM.NE') 
    BEGIN
      SELECT @Ok = 60170
      IF EXISTS(SELECT Empresa FROM EmpresaGral WHERE Empresa = @Empresa AND (AC = 1 OR Ford = 1 OR Chrysler = 1))-- Hay que quitar esto
        SELECT @Ok = NULL
    END
  END

  IF @ValidarFechas <> 'NO' AND NOT EXISTS(SELECT * FROM EmpresaCfgValidarFechasEx WHERE Empresa = @Empresa AND Modulo = @Modulo AND Mov = @Mov) AND @Accion NOT IN ('RESERVAR', 'DESRESERVAR', 'RESERVARPARCIAL', 'ASIGNAR', 'DESASIGNAR')
  BEGIN
    IF @ValidarFechas = 'EJERCICIO'
    BEGIN
      SELECT @EjercicioInicio = EjercicioInicio, @EjercicioFinal = EjercicioFinal
        FROM EmpresaGral
       WHERE Empresa = @Empresa
      EXEC spExtraerFecha @EjercicioInicio OUTPUT
      EXEC spExtraerFecha @EjercicioFinal OUTPUT
      IF @FechaAfectacion NOT BETWEEN @EjercicioInicio AND @EjercicioFinal SELECT @Ok = 50050
    END 

    IF @ValidarFechas = 'DENTRO DEL MES' 
      IF DATEPART(yy, @FechaAfectacion) <> DATEPART(yy, @FechaRegistro) OR
         DATEPART(mm, @FechaAfectacion) <> DATEPART(mm, @FechaRegistro) SELECT @Ok = 60170

    IF @ValidarFechas = 'NO ADELANTARSE'
      IF @FechaAfectacion > @FechaRegistro SELECT @Ok = 60170

    IF @ValidarFechas = 'MISMO DIA' 
      IF @FechaAfectacion <> @FechaRegistro SELECT @Ok = 60170

    IF @ValidarFechas = 'CIERRE DIARIO'
      IF @FechaAfectacion <> ISNULL((SELECT FechaTrabajo FROM FechaTrabajo WHERE Empresa = @Empresa AND Sucursal = @Sucursal), @FechaRegistro) SELECT @Ok = 60175
  END

/** AR 9.3.2007 se agrego para que valide un Periodo Cerrado de acuerdo a la configuracion de Periodos Especiales*/
  SELECT @PeriodoEsp = NULL, @EjercicioEsp = NULL
  EXEC spPeriodoEjercicio @Empresa, @Modulo, @FechaAfectacion, @PeriodoEsp OUTPUT, @EjercicioEsp OUTPUT, @Ok OUTPUT
  IF @PeriodoEsp IS NOT NULL AND @EjercicioEsp IS NOT NULL
    SELECT @Periodo = @PeriodoEsp, @Ejercicio = @EjercicioEsp
/** AR 9.3.2007 **/

  IF @Accion <> 'GENERAR' AND @Ok IS NULL 
    IF EXISTS (SELECT * 
                 FROM CerrarPeriodo 
                WHERE Empresa = @Empresa 
                  AND Rama = @Modulo
                  AND Ejercicio = @Ejercicio
                  AND Periodo = @Periodo)
	IF @Accion <> 'CANCELAR' OR NOT EXISTS(SELECT * FROM EmpresaCfgCancelarMov WHERE Empresa = @Empresa AND Modulo = @Modulo AND Mov = @Mov)
          SELECT @Ok = 60110   			-- Periodo Cerrado
  IF @@ERROR <> 0 SELECT @Ok = 1

  IF NULLIF(RTRIM(@Proyecto), '') IS NOT NULL AND @Ok IS NULL AND @Accion <> 'CANCELAR'
  BEGIN
    SELECT @EstatusProyecto = Estatus FROM Proy WHERE Proyecto = @Proyecto
    IF @EstatusProyecto = 'BLOQUEADO' SELECT @Ok = 26010 ELSE
    IF @EstatusProyecto = 'BAJA'      SELECT @Ok = 26020  
  END

  IF @Accion = 'CANCELAR'
    IF EXISTS(SELECT * FROM UsuarioMovCancelacionEx WHERE Usuario = @Usuario AND Modulo = @Modulo AND Mov = @Mov)
      SELECT @Ok = 20766

  IF @Accion IN ('VERIFICAR', 'AFECTAR') AND @Estatus IN ('SINAFECTAR', 'BORRADOR', 'EMAIL', 'CONFIRMAR')  AND @Ok IS NULL
  BEGIN
    EXEC spMovTipoCFD @Empresa, @Modulo, @Mov, @CFD OUTPUT, @CFDFlex OUTPUT --Cambio CFD Flexible
    IF @CFD = 1 AND ISNULL(@CFDFlex,0) = 0 --Cambio CFD Flexible
      EXEC spGenerarCFD NULL, @Modulo, @ID, NULL, @Validar = 1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
  END
  RETURN
END
GO
