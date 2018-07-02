/**************** spNominaSugerirSDI ****************/
if exists (select * from sysobjects where id = object_id('dbo.spNominaSugerirSDI') and type = 'P') drop procedure dbo.spNominaSugerirSDI
GO             
CREATE PROCEDURE spNominaSugerirSDI
		   @Accion			char(20),
		   @Sucursal			int,
    		   @Empresa	      		char(5),
    		   @FechaEmision      		datetime,
    	 	   @Proyecto	      		varchar(50),
    		   @Usuario	      		char(10),
    		   @Modulo	      		char(5),
    		   @Mov	  	      		char(20),
    		   @MovID             		varchar(20),
		   @MovMoneda			char(10),
		   @MovTipoCambio		float,
		   @FechaRegistro		datetime,

       		   @Ok                		int          OUTPUT,
    		   @OkRef             		varchar(255) OUTPUT

--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @RHID		int,
    @RHMov		char(20),
    @RHMovID		varchar(20),
    @IDGenerar		int

  SELECT @RHMov = RHModificaciones
    FROM EmpresaCfgMov
   WHERE Empresa = @Empresa

  IF @Accion = 'CANCELAR'
  BEGIN
    SELECT @RHID = NULL
    SELECT @RHID = MIN(ID) FROM RH WHERE Mov = @RHMov AND OrigenTipo = @Modulo AND Origen = @Mov AND OrigenID = @MovID AND Estatus NOT IN ('SINAFECTAR', 'CANCELADO')
    IF @RHID IS NOT NULL      
      EXEC spRH @RHID, 'RH', @Accion, 'TODO', @FechaRegistro, NULL, @Usuario, 0, 0, @RHMov, @RHMovID OUTPUT, @IDGenerar, @Ok OUTPUT, @OkRef OUTPUT
  END ELSE
  BEGIN
    IF NOT EXISTS(SELECT * FROM #SDI s, Personal p WHERE s.Personal = p.Personal AND s.SDI <> p.SDI) RETURN 

    INSERT RH (Sucursal, SucursalOrigen, Empresa,  Mov,    FechaEmision,  Proyecto,  Usuario,  Moneda,     TipoCambio,     OrigenTipo, Origen, OrigenID, Estatus)
       VALUES (@Sucursal, @Sucursal,     @Empresa, @RHMov, @FechaEmision, @Proyecto, @Usuario, @MovMoneda, @MovTipoCambio, @Modulo,    @Mov,   @MovID,   'CONFIRMAR')
    SELECT @RHID = @@IDENTITY

    INSERT RHD (ID,    Renglon,   Personal,   SueldoDiario,   SDI,   TipoContrato,   VencimientoContrato,   PeriodoTipo,   Jornada,   TipoSueldo,   Puesto,   Departamento,   Categoria,   Grupo,   SucursalTrabajo,   CentroCostos,   FechaAlta,   FechaAntiguedad, ChecadaLibre,
				ChecadaLibreFechaD,ChecadaLibreFechaA,ChecarConTeclado)
    SELECT      @RHID, s.Renglon, p.Personal, p.SueldoDiario, s.SDI, p.TipoContrato, p.VencimientoContrato, p.PeriodoTipo, p.Jornada, p.TipoSueldo, p.Puesto, p.Departamento, p.Categoria, p.Grupo, p.SucursalTrabajo, p.CentroCostos, p.FechaAlta, p.FechaAntiguedad, p.ChecadaLibre,
				p.ChecadaLibreFechaD,p.ChecadaLibreFechaA,p.ChecarConTeclado
      FROM #SDI s, Personal p
     WHERE s.Personal = p.Personal AND s.SDI <> p.SDI

    SELECT @Ok = 80030, @OkRef = ISNULL(@OkRef, '') + '<BR>- Modificaciones al SDI, en Recursos Humanos (por Confirmar)'
  END
  RETURN
END
GO

