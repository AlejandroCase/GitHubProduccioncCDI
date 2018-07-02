/*********************** tgCDIVentaC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDIVentaC') and sysstat & 0xf = 8) drop trigger dbo.tgCDIVentaC
GO
CREATE TRIGGER tgCDIVentaC ON Venta
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'VTAS', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDICxcC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDICxcC') and sysstat & 0xf = 8) drop trigger dbo.tgCDICxcC
GO
CREATE TRIGGER tgCDICxcC ON Cxc
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'CXC', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDICxpC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDICxpC') and sysstat & 0xf = 8) drop trigger dbo.tgCDICxpC
GO
CREATE TRIGGER tgCDICxpC ON Cxp
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'CXP', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDIDineroC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDIDineroC') and sysstat & 0xf = 8) drop trigger dbo.tgCDIDineroC
GO
CREATE TRIGGER tgCDIDineroC ON Dinero
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'DIN', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDIGastoC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDIGastoC') and sysstat & 0xf = 8) drop trigger dbo.tgCDIGastoC
GO
CREATE TRIGGER tgCDIGastoC ON Gasto
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'GAS', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDIInvC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDIInvC') and sysstat & 0xf = 8) drop trigger dbo.tgCDIInvC
GO
CREATE TRIGGER tgCDIInvC ON Inv
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'INV', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDICompraC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDICompraC') and sysstat & 0xf = 8) drop trigger dbo.tgCDICompraC
GO
CREATE TRIGGER tgCDICompraC ON Compra
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'COMS', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDIContC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDIContC') and sysstat & 0xf = 8) drop trigger dbo.tgCDIContC
GO
CREATE TRIGGER tgCDIContC ON Cont
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'CONT', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDINominaC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDINominaC') and sysstat & 0xf = 8) drop trigger dbo.tgCDINominaC
GO
CREATE TRIGGER tgCDINominaC ON Nomina
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'NOM', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDIRHC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDIRHC') and sysstat & 0xf = 8) drop trigger dbo.tgCDIRHC
GO
CREATE TRIGGER tgCDIRHC ON RH
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'RH', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO

/*********************** tgCDIAsisteC **********************/
if exists (select * from sysobjects where id = object_id('dbo.tgCDIAsisteC') and sysstat & 0xf = 8) drop trigger dbo.tgCDIAsisteC
GO
CREATE TRIGGER tgCDIAsisteC ON Asiste
--//WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Ok            int,
    @Modulo        varchar(5),
    @Mov        varchar(20),
    @Empresa        varchar(5),
    @Sucursal        int,
    @ID            int,
    @FechaInicio    datetime,
    @Ahora         datetime,
    @FechaAnterior    datetime,
    @UsuarioA        varchar(10),
    @UsuarioN        varchar(10),
    @EstatusNuevo   VARCHAR(15)

  SELECT @Modulo = 'ASIS', @Ok = NULL
  SELECT @UsuarioA = Usuario FROM Deleted
  SELECT @UsuarioN = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @EstatusNuevo    = NULLIF(RTRIM(Estatus), '') FROM Inserted

  IF @UsuarioA <> @UsuarioN
  BEGIN
    SELECT @Ahora = GETDATE(), @FechaInicio = NULL
    SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM CDIMovTiempo WHERE Modulo = @Modulo AND ID = @ID 

    IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
      UPDATE CDIMovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
    IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

    INSERT INTO CDIMovTiempo (Modulo,  Sucursal,  ID,  Usuario,   FechaInicio,  FechaComenzo, Estatus)
                     VALUES (@Modulo, @Sucursal, @ID, @UsuarioN, @FechaInicio, @Ahora,       @EstatusNuevo)
  END

END
GO
