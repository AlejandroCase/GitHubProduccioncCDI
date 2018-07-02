/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

if exists (select * from sysobjects where id = object_id('dbo.tgCDISocioValida') and sysstat & 0xf = 8) drop trigger dbo.tgCDISocioValida
GO
CREATE TRIGGER tgCDISocioValida ON Cte
--//WITH ENCRYPTION
FOR INSERT, UPDATE
AS BEGIN
  DECLARE
    @Cliente            varchar(10),
    @Tipo   	        bit,
    @ApellidoPaterno	varchar(20),
    @ApellidoMaterno	varchar(20),
    @PersonalNombres    varchar(50),
    @Sexo               varchar(20),
    @FechaNacimiento    datetime,
    @EstadoCivil        varchar(20),
    @Pais               varchar(30),
    @Nacionalidad       varchar(30),
    @Ocupacion          varchar(50),
    @Direccion          varchar(100),
    @Delegacion         varchar(100),
    @Colonia            varchar(100),
    @CodigoPostal       varchar(15),
    @Estado             varchar(30),
    @Telefono           varchar(100),
    @CDIMedDonador      varchar(2),
    @CDIMedAvisar       varchar(50),
    @CDIMedTelefono     varchar(100),
    @CDIMedCelular      varchar(100),
    @CDIMedEnfermo      varchar(2), 
    @CDIMedAlergia      varchar(2), 
    @CDIMedMedicamento  varchar(2),
    @Estatus            varchar(15),
    @Mensaje		    varchar(255)
    

--SELECT c.PersonalNombres, c.Sexo, c.FechaNacimiento, c.EstadoCivil, c.Pais, c.Ocupacion, c.Direccion, c.Delegacion, c.Colonia, c.CodigoPostal, c.Estado
--        c.Telefonos, c.CDIMedDonador, c.CDIMedAvisar, c.CDIMedTelefono, c.CDIMedCelular, c.CDIMedEnfermo, c.CDIMedAlergia, c.CDIMedMedicamento
--  FROM Cte c

  SELECT @Cliente           = Cliente, 
         @Tipo              = CDISocio , 
         @ApellidoPaterno   = isnull(PersonalApellidoPaterno, ''), 
         @ApellidoMaterno   = isnull(PersonalApellidoMaterno, ''),
         @PersonalNombres   = isnull(PersonalNombres, ''),
         @Sexo              = isnull(Sexo, ''),
         @FechaNacimiento   = isnull(FechaNacimiento, ''),
         @EstadoCivil       = isnull(EstadoCivil, ''),
         @Pais              = isnull(Pais, ''),
         @Ocupacion         = isnull(Ocupacion, ''),
         @Direccion         = ISNULL(Direccion, ''),
         @Delegacion        = isnull(Delegacion, ''),
         @Colonia           = isnull(Colonia, ''),
         @CodigoPostal      = isnull(CodigoPostal, ''),
         @Estado            = isnull(Estado, ''),
         @Telefono          = isnull(Telefonos, ''),
         @CDIMedDonador     = isnull(CDIMedDonador, ''),
         @CDIMedAvisar      = isnull(CDIMedAvisar, ''),
         @CDIMedTelefono    = isnull(CDIMedTelefono, ''),
         @CDIMedCelular     = isnull(CDIMedCelular, ''),
         @CDIMedEnfermo     = isnull(CDIMedEnfermo, ''),
         @CDIMedAlergia     = isnull(CDIMedAlergia, ''),
         @CDIMedMedicamento = isnull(CDIMedMedicamento, ''),
         @Estatus           = isnull(Estatus, '')
    FROM INSERTED
    
  SELECT @Nacionalidad = isnull(c.Nacionalidad, '') FROM CDINacionalidad c WHERE c.Cliente = @Cliente
    
  SELECT @Mensaje = 'Son Obligatorios Los Campos: ' 
  
  IF @Tipo = 1 AND @Estatus = 'ASPIRANTE'
  BEGIN
  	IF @ApellidoPaterno = ''
  	  SELECT @Mensaje = @Mensaje + 'Apellido Paterno, '
  	IF @ApellidoMaterno = ''
  	  SELECT @Mensaje = @Mensaje + 'Apellido Materno, '
  	IF @PersonalNombres = ''
  	  SELECT @Mensaje = @Mensaje + 'Nombres, '
  	IF @Sexo = ''
  	  SELECT @Mensaje = @Mensaje + 'Sexo, '
  	IF @FechaNacimiento = ''
  	  SELECT @Mensaje = @Mensaje + 'Fecha Nacimiento, '
  	IF @EstadoCivil= ''
  	  SELECT @Mensaje = @Mensaje + 'Estado Civil, '
  	IF @Pais = ''
  	  SELECT @Mensaje = @Mensaje + 'Pais, '
  	IF @Nacionalidad = ''
  	  SELECT @Mensaje = @Mensaje + 'Nacionalidad, '
  	IF @Ocupacion = ''
  	  SELECT @Mensaje = @Mensaje + 'Ocupación, '
  	IF @Direccion = ''
  	  SELECT @Mensaje = @Mensaje + 'Dirección, '
  	IF @Delegacion = ''
  	  SELECT @Mensaje = @Mensaje + 'Delegación, '
  	IF @Colonia = ''
  	  SELECT @Mensaje = @Mensaje + 'Colonia, '
  	IF @CodigoPostal = ''
  	  SELECT @Mensaje = @Mensaje + 'Codigo Postal, '
  	IF @Estado = ''
  	  SELECT @Mensaje = @Mensaje + 'Estado, '
  	IF @Telefono = ''
  	  SELECT @Mensaje = @Mensaje + 'Telefono, '
  	IF @CDIMedDonador = ''
  	  SELECT @Mensaje = @Mensaje + 'Donador, '
  	IF @CDIMedAvisar = ''
  	  SELECT @Mensaje = @Mensaje + 'Avisar Emergencia, '
  	IF @CDIMedTelefono= ''
  	  SELECT @Mensaje = @Mensaje + 'Telefono Emergencia, '
  	IF @CDIMedCelular = ''
  	  SELECT @Mensaje = @Mensaje + 'Celular Emergencia, '
  	IF @CDIMedEnfermo = ''
  	  SELECT @Mensaje = @Mensaje + 'Padece Enfermedad, '
  	IF @CDIMedAlergia = ''
  	  SELECT @Mensaje = @Mensaje + 'Padece Alergias, '
  	IF @CDIMedMedicamento = ''
  	  SELECT @Mensaje = @Mensaje + 'Toma Medicamento, '  	
  	IF @Mensaje <> 'Son Obligatorios Los Campos: '
  	BEGIN         
        RAISERROR (@Mensaje,16,-1) 
    END 
  END
 

 IF @Tipo = 1 AND NOT UPDATE (TieneMovimientos) AND NOT UPDATE (Estatus) AND NOT UPDATE (CdiEstaPresente) AND NOT UPDATE (Categoria) AND NOT UPDATE (CDISubsidio)
  BEGIN  --- S O C I O
    ---------------------------------------------------- E M M 
    IF NOT EXISTS (SELECT * FROM CDIAsignacionRoles WHERE  Catalogo = 'Socios' AND Personal = @Cliente AND ISNULL(NIPCDI,'') <> '')           
    BEGIN --- A S I G N A C I O N
      IF NOT EXISTS (SELECT * FROM CDIRelacionesPendiente WHERE  CatalogoNuevo = 'Socios' AND PersonalNuevo = @Cliente  AND Estatus = 'PENDIENTE') 
      BEGIN --- P E N D I E N T E S
        SELECT @Mensaje = 'Se requiere que se tenga dado de Alta por lo menos un Rol. '         
        IF @Mensaje <> 'Son Obligatorios Los Campos: ' RAISERROR (@Mensaje,16,-1) 
      END   --- P E N D I E N T E S
    END   --- A S I G N A C I O N
    ---------------------------------------------------- E M M   	  
  END    --- S O C I O

END
GO


---------------------------------------------------------
--- T G C D I V A L I D A N I P C D I P E R S O N A L ---
---------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.tgCDIValidaNIPCDIPersonal') and sysstat & 0xf = 8) drop trigger dbo.tgCDIValidaNIPCDIPersonal
GO
CREATE TRIGGER tgCDIValidaNIPCDIPersonal ON Personal
--//WITH ENCRYPTION
FOR INSERT, UPDATE
AS 
BEGIN
  DECLARE
  	@NipCDI     varchar(30),
  	@Personal   varchar(10),
    @Bandera    int
    	
    SELECT @Bandera = 0 -- C O R R E C T O
  	SELECT  @Personal = Personal, @NipCDI = NIPCDI  
  	  FROM INSERTED 
  	
  	IF EXISTS (SELECT * FROM Personal p  WHERE p.Personal <> @Personal AND p.NIPCDI = @NipCDI) AND ISNULL(@NipCDI,'') <> ''
    BEGIN
   	  RAISERROR ('Ya existe un Personal con este NIPCDI', 16,-1)
      SELECT @Bandera = 1 -- I N C O R R E C T O 
    END  
  	---------------------------------------------------- E M M 
    IF @Bandera = 0 AND NOT UPDATE (TieneMovimientos) AND NOT UPDATE(Estatus) AND NOT UPDATE(UltimoPago)
    BEGIN --- C O R R E C T O
      IF NOT EXISTS (SELECT * FROM CDIAsignacionRoles WHERE  Catalogo = 'Personal' AND Personal = @Personal AND ISNULL(NIPCDI,'') <> '')           
      BEGIN --- S I N  R O L
        IF NOT EXISTS (SELECT * FROM CDIRelacionesPendiente WHERE  CatalogoNuevo = 'Personal' AND PersonalNuevo = @Personal  AND Estatus = 'PENDIENTE') 
        BEGIN --- P E N D I E N T E S
          RAISERROR ('Se requiere que se tenga dado de Alta por lo menos un Rol. ' , 16,-1)
          SELECT @Bandera = 1 -- I N C O R R E C T O 
        END   --- P E N D I E N T E S
      END   --- S I N  R O L       
    END   --- C O R R E C T O
    ---------------------------------------------------- E M M  
END 
GO

-----------------------------------------------------------
--- T G C D I V A L I D A N I P C D I P R O V E E D O R ---
-----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.tgCDIValidaNIPCDIProveedor') and sysstat & 0xf = 8) drop trigger dbo.tgCDIValidaNIPCDIProveedor
GO
CREATE TRIGGER tgCDIValidaNIPCDIProveedor ON Prov
--//WITH ENCRYPTION
FOR INSERT, UPDATE
AS 
BEGIN
  DECLARE
  	@NipCDI     varchar(30),
  	@Proveedor  varchar(10),
    @Bandera    int
    	
    SELECT @Bandera = 0 -- C O R R E C T O
  	
  	SELECT  @Proveedor = Proveedor, @NipCDI = NIPCDI  
  	  FROM INSERTED 
  	
  	IF EXISTS (SELECT * FROM Prov p  WHERE p.Proveedor <> @Proveedor AND p.NIPCDI = @NipCDI) AND ISNULL(@NipCDI,'') <> ''
    BEGIN
   	  RAISERROR ('Ya existe un Proveedor con este NIPCDI', 16,-1)
      SELECT @Bandera = 1 -- I N C O R R E C T O  
    END 
    ---------------------------------------------------- E M M 
    IF @Bandera = 0 AND NOT UPDATE (TieneMovimientos)
    BEGIN --- C O R R E C T O
      IF NOT EXISTS (SELECT * FROM CDIAsignacionRoles WHERE  Catalogo = 'Proveedor' AND Personal = @Proveedor AND ISNULL(NIPCDI,'') <> '')           
      BEGIN --- S I N  R O L
        IF NOT EXISTS (SELECT * FROM CDIRelacionesPendiente WHERE  CatalogoNuevo = 'Proveedor' AND PersonalNuevo = @Proveedor  AND Estatus = 'PENDIENTE') 
        BEGIN --- P E N D I E N T E S
          RAISERROR ('Se requiere que se tenga dado de Alta por lo menos un Rol. ' , 16,-1)
          SELECT @Bandera = 1 -- I N C O R R E C T O 
        END   --- P E N D I E N T E S
      END   --- S I N  R O L       
    END   --- C O R R E C T O
    ---------------------------------------------------- E M M  
END 
GO


-------------------------------------------------------
--- T G C D I V A L I D A N I P C D I C L I E N T E ---
-------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.tgCDIValidaNIPCDICliente') and sysstat & 0xf = 8) drop trigger dbo.tgCDIValidaNIPCDICliente
GO
CREATE TRIGGER tgCDIValidaNIPCDICliente ON Cte
--//WITH ENCRYPTION
FOR INSERT, UPDATE
AS 
BEGIN
  DECLARE
  	@NipCDI   varchar(30),
  	@Cliente  varchar(10),
	@Bandera  int,
	@Tipo	  bit		
    	
    SELECT @Bandera = 0 -- C O R R E C T O
  	
  	SELECT  @Cliente = Cliente, @NipCDI = isnull(NIPCDI, ''), @Tipo = CDISocio
  	  FROM INSERTED 
  	
  	IF EXISTS (SELECT * FROM Cte c  WHERE c.Cliente <> @Cliente AND c.NIPCDI = @NipCDI) AND ISNULL(@NipCDI,'') <> ''
    BEGIN
   	  RAISERROR ('Ya existe un Cliente con este NIPCDI', 16,-1)
      SELECT @Bandera = 1 -- I N C O R R E C T O   
    END
    ---------------------------------------------------- E M M 
    IF @Bandera = 0 AND NOT UPDATE (TieneMovimientos) AND NOT UPDATE (Estatus) AND NOT UPDATE (CdiEstaPresente)
    BEGIN --- C O R R E C T O
      IF ISNULL(@Tipo,0) = 0
      BEGIN --- C T E
        IF NOT EXISTS (SELECT * FROM CDIAsignacionRoles WHERE  Catalogo = 'Clientes' AND Personal = @Cliente AND ISNULL(NIPCDI,'') <> '')           
        BEGIN --- S I N  R O L
          IF NOT EXISTS (SELECT * FROM CDIRelacionesPendiente WHERE  CatalogoNuevo = 'Clientes' AND PersonalNuevo = @Cliente  AND Estatus = 'PENDIENTE') 
          BEGIN --- P E N D I E N T E S
            RAISERROR ('Se requiere que se tenga dado de Alta por lo menos un Rol. ' , 16,-1)
            SELECT @Bandera = 1 -- I N C O R R E C T O 
          END   --- P E N D I E N T E S
        END   --- S I N  R O L       
      END   --- C T E
    END   --- C O R R E C T O
    ---------------------------------------------------- E M M  
END 
GO
