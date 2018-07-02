SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

  -- Desarrollo. CATALOGO DE ROLES
  -- Cliente   . CDI
  -- Folio     . 4554
  -- Fecha     . 24 / 08 / 10
  -- Autor     . EDER MENDOZA

-------------------------------------------------------------------------------------
-------- S P C D I R E L A C I O N E S R E S T R I N G I D A S R O L E S ------------
-------------------------------------------------------------------------------------
IF exists (select * from sysobjects where id = object_id('dbo.spCDIRelacionesRestringidasRoles') and type = 'P') drop procedure dbo.spCDIRelacionesRestringidasRoles
GO

CREATE PROCEDURE spCDIRelacionesRestringidasRoles
		@ID		int
		
		 
AS
BEGIN   
  SELECT Rol + ' - ' + NoPermiteRel FROM CDIRelacionesRestringidasRoles WHERE ID = @ID
RETURN 
END
GO


-----------------------------------------------------------
-------- S P C D I P E R S O N A L N O M B R E ------------
-----------------------------------------------------------
IF exists (select * from sysobjects where id = object_id('dbo.spCDIPersonalNombre') and type = 'P') drop procedure dbo.spCDIPersonalNombre
GO

CREATE PROCEDURE spCDIPersonalNombre
        @Catalogo		varchar(50),
		@ClavePersona	varchar(10)
				 
AS
BEGIN   
  DECLARE @NombreCompleto varchar(100)
  IF @Catalogo = 'Proveedor'			
  BEGIN
    IF EXISTS (SELECT * FROM Prov  WHERE Proveedor  = @ClavePersona AND ISNULL(CDINombre,'') <> '')
      SELECT @NombreCompleto = ISNULL(CDINombre,'') + '  ' + ISNULL(CDIApellidoPaterno,'') + '  ' + ISNULL(CDIApellidoMaterno,'') FROM Prov     WHERE Proveedor  = @ClavePersona
    ELSE
      SELECT @NombreCompleto = ISNULL(Nombre,'') FROM Prov     WHERE Proveedor  = @ClavePersona
  END
  IF @Catalogo = 'Personal'				SELECT @NombreCompleto = ISNULL(Nombre,'')    + '  ' + ISNULL(ApellidoPaterno,'')    + '  ' + ISNULL(ApellidoMaterno,'')    FROM Personal WHERE Personal   = @ClavePersona
  IF @Catalogo IN ('Socios','Clientes') SELECT @NombreCompleto = ISNULL(Nombre,'')    + '  '                                                                        FROM Cte      WHERE Cliente    = @ClavePersona
  
  SELECT @NombreCompleto

RETURN 
END
GO


-------------------------------------------------------------------------------------------------------
-------- S P C D I R E L A C I O N E S R E S T R I N G I D A S R O L E S V A L I D A R O L ------------
-------------------------------------------------------------------------------------------------------
IF exists (select * from sysobjects where id = object_id('dbo.spCDIRelacionesRestringidasRolesValidaRol') and type = 'P') drop procedure dbo.spCDIRelacionesRestringidasRolesValidaRol
GO

CREATE PROCEDURE spCDIRelacionesRestringidasRolesValidaRol	
		@Rol			varchar(50),
		@NoPermiteRel	varchar(50)
				 
AS
BEGIN   

  IF ISNULL(@Rol,'') <> ''
  BEGIN --- C O N D A T O S
    IF EXISTS (SELECT  * FROM CDIRoles WHERE Rol = @Rol)
    BEGIN --- E X I S T S
      IF ISNULL(@Rol,'') <> ISNULL(@NoPermiteRel,'')
      BEGIN  --- D I F E R E N T E S
        SELECT 0
      END    --- D I F E R E N T E S
      ELSE SELECT 3 --- I G U A L E S
    END   --- E X I S T S
    ELSE SELECT 2 --- N O E X I S T E
  END   --- C O N D A T O S
  ELSE SELECT 1 --- S I N D A T O S

RETURN 
END
GO


-------------------------------------------------------------------------------------------------------------------
-------- S P C D I R E L A C I O N E S R E S T R I N G I D A S R O L E S V A L I D A N O P E R M I T E ------------
-------------------------------------------------------------------------------------------------------------------
IF exists (select * from sysobjects where id = object_id('dbo.spCDIRelacionesRestringidasRolesValidaNoPermite') and type = 'P') drop procedure dbo.spCDIRelacionesRestringidasRolesValidaNoPermite
GO

CREATE PROCEDURE spCDIRelacionesRestringidasRolesValidaNoPermite	
		@Rol			varchar(50),
		@NoPermiteRel	varchar(50)
				 
AS
BEGIN   

  IF ISNULL(@NoPermiteRel,'') <> ''
  BEGIN --- C O N D A T O S
    IF EXISTS (SELECT  * FROM CDIRoles WHERE Rol = @NoPermiteRel)
    BEGIN --- E X I S T S
      IF ISNULL(@Rol,'') <> ISNULL(@NoPermiteRel,'')
      BEGIN  --- D I F E R E N T E S
        SELECT 0
      END    --- D I F E R E N T E S
      ELSE SELECT 3 --- I G U A L E S
    END   --- E X I S T S
    ELSE SELECT 2 --- N O E X I S T E
  END   --- C O N D A T O S
  ELSE SELECT 1 --- S I N D A T O S

RETURN 
END
GO


-------------------------------------------------------------------------------
-------- S P C D I A S I G N A C I O N R O L E S V A L I D A R O L ------------
--------------------------------------------------------------------------------
IF exists (select * from sysobjects where id = object_id('dbo.spCDIAsignacionRolesValidaRol') and type = 'P') drop procedure dbo.spCDIAsignacionRolesValidaRol
GO

CREATE PROCEDURE spCDIAsignacionRolesValidaRol            
			@Catalogo			varchar(50),
			@RolNuevo			varchar(50),
			@Personal			varchar(10),
			@NipCDI				varchar(50),
			@EstacionTrabajo	int
				 
AS
BEGIN   
  DECLARE @Bandera	int,
		  @OK		int,
		  @IDMax	int,		
		  @IDMin 	int,
		  @Rol1		varchar(50),		
		  @Rol2		varchar(50),
		  @Estatus	varchar(15)

  CREATE TABLE #Roles(
		ID			int	IDENTITY(1,1)	NOT NULL,	
        Rol1	 	varchar(50)			NULL,
		Rol2	 	varchar(50)			NULL)

  SET @Bandera = 0
  DELETE CDIRolAnteriorNuevo WHERE EstacionTrabajo = @EstacionTrabajo
 
  IF EXISTS (SELECT * FROM CDIAsignacionRoles WHERE NipCDI = @NipCDI)
  BEGIN --- E X I S T S
    INSERT INTO #Roles
    SELECT Rol, @RolNuevo FROM CDIAsignacionRoles WHERE NipCDI = @NipCDI AND ISNULL(Rol,'') <> @RolNuevo ORDER BY ID
  END   --- E X I S T S
  ELSE INSERT INTO #Roles VALUES (@RolNuevo, '')

  ------------------------------- 
  --- V A L I D A C I O N E S --- 
  -------------------------------
  IF ISNULL(@RolNuevo,'') <> ''
  BEGIN --- C O N D A T O S
    IF EXISTS (SELECT  * FROM CDIRoles WHERE Rol = @RolNuevo)
    BEGIN --- E X I S T S
      IF NOT EXISTS(SELECT * FROM CDIAsignacionRoles WHERE NIPCDI = @NipCDI AND Catalogo = @Catalogo AND Rol = @RolNuevo )
      BEGIN -- N O T E X I S T S  A S I G N A C I O N  
        ----------------> R O L E S  R E S T R I N G I D O S     
        SELECT @IDMax = 0, @IDMin = 0 
        SELECT @IDMin = MIN(ID) FROM #Roles 
        SELECT @IDMax = MAX(ID) FROM #Roles 
        WHILE(@IDMax >= @IDMin)
        BEGIN --- I D 
          SELECT @Rol1 = '', @Rol2 = '' 
          SELECT @Rol1 = Rol1, @Rol2 = Rol2 FROM #Roles WHERE ID = @IDMin 
           
          IF EXISTS(SELECT * FROM CDIRelacionesRestringidasRoles WHERE ISNULL(Rol,'') = @Rol1 AND ISNULL(NoPermiteRel,'') = @Rol2) SET @Bandera = 1
          IF EXISTS(SELECT * FROM CDIRelacionesRestringidasRoles WHERE ISNULL(Rol,'') = @Rol2 AND ISNULL(NoPermiteRel,'') = @Rol1) SET @Bandera = 1
          IF @Bandera = 1
          BEGIN --- B A N D E R A                             
            IF NOT EXISTS(SELECT * FROM CDIRelacionesPendiente WHERE NipCDI = @NipCDI AND CatalogoNuevo =@Catalogo AND RolAnterior = @Rol1 AND PermiteRelacionCon = @Rol2 AND PersonalNuevo = @Personal)              
            BEGIN --- N O T  E X I S T S                     
              INSERT INTO CDIRolAnteriorNuevo
              VALUES      (@Rol1, @Rol2, @EstacionTrabajo)   
              BREAK 
            END   --- N O T  E X I S T S          
            ELSE
            BEGIN 
              SELECT @Estatus = Estatus FROM CDIRelacionesPendiente WHERE NipCDI = @NipCDI AND CatalogoNuevo =@Catalogo AND RolAnterior = @Rol1 AND PermiteRelacionCon = @Rol2 AND PersonalNuevo = @Personal            
              IF @Estatus = 'PENDIENTE'
              BEGIN --- P E N D I E N T E
                SELECT @Bandera = 2 --- I N C O R R E C T O
				BREAK
              END   --- P E N D I E N T E
              IF @Estatus IN ('AUTORIZADO','AUTORIZAR') SELECT @Bandera = 0 --- C O R R E C T O
            END
          END   --- B A N D E R A
          SELECT @IDMin = @IDMin + 1 
        END   --- I D 
        ----------------> R O L E S  R E S T R I N G I D O S  
        IF @Bandera = 1 SELECT @OK = 5 --- I N C O R R E C T O
        IF @Bandera = 2 SELECT @OK = 7 --- I N C O R R E C T O   P E N D I E N T E S
        IF @Bandera = 0 SELECT @OK = 0 --- C O R R E C T O        
      END   -- N O T E X I S T S  A S I G N A C I O N   
      ELSE SELECT @OK = 4
    END   --- E X I S T S
    ELSE SELECT @OK = 2 --- N O E X I S T E
  END   --- C O N D A T O S
  ELSE SELECT @OK = 1 --- S I N D A T O S

  IF ISNULL(@OK,0) = 0 SELECT @OK = 0
  SELECT @OK 
RETURN 
END
GO

--EXEC spCDIAsignacionRolesValidaRol 'Proveedor', 'Proveedor2', 'PRESUP', 'PRESUP10000', 0


-----------------------------------------------------------------------
-------- S P C D I R E L A C I O N E S P E N D I E N T E S ------------
-----------------------------------------------------------------------
IF exists (select * from sysobjects where id = object_id('dbo.spCDIRelacionesPendiente') and type = 'P') drop procedure dbo.spCDIRelacionesPendiente
GO

CREATE PROCEDURE spCDIRelacionesPendiente
			@CatalogoNuevo		varchar(50),
			@RolNuevo			varchar(50),
			@PersonalNuevo		varchar(10),
			@NipCDI				varchar(50),
			@EstacionTrabajo	int,
			@Usuario			varchar(10)	 
AS
BEGIN   
  DECLARE @OK				int,
          @ID				int,
		  @Rol1				varchar(50),		
		  @Rol2				varchar(50),
		  @BajoAutorizacion	bit,
		  @FechaEmision		datetime,
		  @CatalogoAnterior	varchar(50),
		  @PersonalAnterior	varchar(10)
		  
  ---F E C H A    H O Y 
  SELECT  @FechaEmision = GETDATE()
  EXEC    spExtraerFecha @FechaEmision OUTPUT
  SELECT @Rol1 = RolAnterior, @Rol2 = RolNuevo  FROM CDIRolAnteriorNuevo WHERE EstacionTrabajo = @EstacionTrabajo
  
  IF EXISTS(SELECT * FROM CDIAsignacionRoles WHERE NipCDI = @NipCDI AND ISNULL(Rol,'') = @Rol1) 
  BEGIN --- A S I G N A D O       
    SELECT @ID = MAX(ID)                                              FROM CDIAsignacionRoles WHERE NipCDI = @NipCDI AND ISNULL(Rol,'') = @Rol1
    SELECT @CatalogoAnterior = Catalogo, @PersonalAnterior = Personal FROM CDIAsignacionRoles WHERE NipCDI = @NipCDI AND ISNULL(Rol,'') = @Rol1 AND ID = @ID
  END   --- A S I G N A D O
  ELSE SELECT @CatalogoAnterior = @CatalogoNuevo, @PersonalAnterior = @PersonalNuevo   
  
  IF EXISTS(SELECT * FROM CDIRelacionesRestringidasRoles WHERE ISNULL(Rol,'') = @Rol1 AND ISNULL(NoPermiteRel,'') = @Rol2) 
    SELECT @BajoAutorizacion = BajoAutorizacion FROM CDIRelacionesRestringidasRoles WHERE ISNULL(Rol,'') = @Rol1 AND ISNULL(NoPermiteRel,'') = @Rol2
  IF EXISTS(SELECT * FROM CDIRelacionesRestringidasRoles WHERE ISNULL(Rol,'') = @Rol2 AND ISNULL(NoPermiteRel,'') = @Rol1) 
    SELECT @BajoAutorizacion = BajoAutorizacion FROM CDIRelacionesRestringidasRoles WHERE ISNULL(Rol,'') = @Rol2 AND ISNULL(NoPermiteRel,'') = @Rol1

  IF ISNULL(@BajoAutorizacion,0)= 0 SET @BajoAutorizacion = 0

  IF NOT EXISTS (SELECT * FROM CDIRelacionesPendiente WHERE NipCDI = @NipCDI AND Catalogo = @CatalogoAnterior AND RolAnterior = @Rol1 AND PermiteRelacionCon = @Rol2 AND Personal = @PersonalAnterior)
  BEGIN --- N O T  E X I S T S			
    IF @BajoAutorizacion = 1 
    BEGIN --- P E R M I S O           
      INSERT INTO CDIRelacionesPendiente (NIPCDI,  Catalogo,		  RolAnterior, PermiteRelacionCon,Personal,			 FechaEmision,  Estatus,     CatalogoNuevo, PersonalNuevo, FechaAutorizacion, Usuario)
      VALUES                             (@NipCDI, @CatalogoAnterior, @Rol1,       @Rol2,             @PersonalAnterior, @FechaEmision, 'PENDIENTE', @CatalogoNuevo,@PersonalNuevo,@FechaEmision,     @Usuario)
      IF EXISTS (SELECT * FROM CDIRelacionesPendiente WHERE NipCDI = @NipCDI AND Catalogo = @CatalogoAnterior AND RolAnterior = @Rol1 AND PermiteRelacionCon = @Rol2 AND Personal = @PersonalAnterior) SET @OK = 6
      ELSE SET @OK = 6666 --- E R R O R
    END   --- P E R M I S O
    ELSE SET @OK = 6666 --- E R R O R
  END   --- N O T  E X I S T S
  ELSE SET @OK = 6666 --- E R R O R

  SELECT @OK 
RETURN 
END
GO

--EXEC spCDIRelacionesPendiente 'Personal', 'Consecionaria', 'XXX', 'NIP10000', 3
--SELECT * FROM CDIRelacionesPendiente
--DELETE FROM CDIRelacionesPendiente

-------------------------------------------------------------------------------
-------- S P C D I R E L A C I O N E S P E N D I E N T E E S T A T U S --------
-------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = Object_ID('dbo.spCDIRelacionesPendienteEstatus') AND Type = 'P') DROP PROCEDURE dbo.spCDIRelacionesPendienteEstatus
GO

CREATE PROCEDURE spCDIRelacionesPendienteEstatus
			@Estatus			varchar(15),
			@EstacionTrabajo	int,
			@Usuario			varchar(10)
				 
AS
BEGIN   
  DECLARE @IDMax		int,		
		  @IDMin 		int,
          @IDA	 		int,
		  @FechaEmision	datetime		  
 
  CREATE TABLE #AutorizarRoles(
		ID		int	IDENTITY(1,1)	NOT NULL,	
        IDA	 	int )

  INSERT INTO #AutorizarRoles
  SELECT CAST(Clave AS int) FROM ListaST WHERE Estacion = @EstacionTrabajo
  ---F E C H A    H O Y 
  SELECT  @FechaEmision = GETDATE()
  EXEC    spExtraerFecha @FechaEmision OUTPUT
	
  ------------------------------- 
  --- V A L I D A C I O N E S --- 
  -------------------------------
  IF EXISTS (SELECT  * FROM #AutorizarRoles)
  BEGIN --- E X I S T S
    SELECT @IDMax = 0, @IDMin = 0 
    SELECT @IDMin = MIN(ID) FROM #AutorizarRoles 
    SELECT @IDMax = MAX(ID) FROM #AutorizarRoles 
    WHILE(@IDMax >= @IDMin)
    BEGIN --- I D 
      SELECT @IDA = 0
      SELECT @IDA = IDA FROM #AutorizarRoles WHERE ID = @IDMin 
      UPDATE CDIRelacionesPendiente SET Estatus = @Estatus, FechaAutorizacion = @FechaEmision, Usuario = @Usuario WHERE ID = @IDA                 
      INSERT CDIAsignacionRoles (NIPCDI,Catalogo,     Rol,               Personal)
      SELECT                     NIPCDI,CatalogoNuevo,PermiteRelacionCon,PersonalNuevo FROM CDIRelacionesPendiente WHERE ID = @IDA
      SELECT @IDMin = @IDMin + 1 
    END   --- I D   
  END   --- E X I S T S
    
RETURN 
END
GO

--EXEC spCDIRelacionesPendienteEstatus 'AUTORIZAR', 1



-----------------------------------------------------------------
-------- S P N I P C D I P E R S O N A L N O M B R E ------------
-----------------------------------------------------------------
IF exists (select * from sysobjects where id = object_id('dbo.spNIPCDIPersonalNombre') and type = 'P') drop procedure dbo.spNIPCDIPersonalNombre
GO

CREATE PROCEDURE spNIPCDIPersonalNombre
    	  @EstacionTrabajo	int
AS
BEGIN   
  DECLARE @NIPCDI			varchar(50),
		  @ClavePersona		varchar(10),
          @NombreCompleto	varchar(100),
		  @IDMax			int,	
		  @IDMin			int         

  CREATE TABLE #NIPCDI(
		ID				int	IDENTITY(1,1)	NOT NULL,	
        NIPCDI			varchar(50),
		ClavePersona	varchar(10),
		NombreCompleto	varchar(100))

  DELETE FROM CDINip WHERE Estacion = @EstacionTrabajo

  INSERT INTO  #NIPCDI
  SELECT NIPCDI, Personal, '' FROM CDIAsignacionRoles 
   WHERE ISNULL(NIPCDI,'') >= ISNULL(ISNULL(@NIPCDI,NIPCDI),'') 
   GROUP BY NIPCDI, Personal
  ---------------------
  --- N O M B R E S --- 
  ---------------------
  IF EXISTS (SELECT  * FROM #NIPCDI)
  BEGIN --- E X I S T S
    SELECT @IDMax = 0, @IDMin = 0 
    SELECT @IDMin = MIN(ID) FROM #NIPCDI 
    SELECT @IDMax = MAX(ID) FROM #NIPCDI 
    WHILE(@IDMax >= @IDMin)
    BEGIN --- I D 
      SELECT @NIPCDI = '',     @ClavePersona = '',          @NombreCompleto = ''
      SELECT @NIPCDI = NIPCDI, @ClavePersona = ClavePersona FROM #NIPCDI WHERE ID = @IDMin 
 
      IF EXISTS (SELECT * FROM Prov     WHERE Proveedor  = @ClavePersona) 
      BEGIN --- P R O V E D O R
        IF EXISTS (SELECT * FROM Prov  WHERE Proveedor  = @ClavePersona AND ISNULL(CDINombre,'') <> '')
          SELECT @NombreCompleto = ISNULL(CDINombre,'') + '  ' + ISNULL(CDIApellidoPaterno,'') + '  ' + ISNULL(CDIApellidoMaterno,'') FROM Prov     WHERE Proveedor  = @ClavePersona
        ELSE
          SELECT @NombreCompleto = ISNULL(Nombre,'') FROM Prov     WHERE Proveedor  = @ClavePersona
      END   --- P R O V E D O R
 
      IF EXISTS (SELECT * FROM Cte      WHERE Cliente    = @ClavePersona)  
        SELECT @NombreCompleto = Nombre + '  '                                                  FROM Cte      WHERE Cliente    = @ClavePersona 
      IF EXISTS (SELECT * FROM Personal WHERE Personal   = @ClavePersona) 
        SELECT @NombreCompleto = Nombre + '  ' + ISNULL(ApellidoPaterno,'')    + '  ' + ISNULL(ApellidoMaterno,'')     FROM Personal WHERE Personal   = @ClavePersona
     
      IF ISNULL(@NombreCompleto,'') <> '' UPDATE #NIPCDI SET NombreCompleto = ISNULL(@NombreCompleto,'') WHERE ID = @IDMin                 
      SELECT @IDMin = @IDMin + 1 
    END   --- I D   
  END   --- E X I S T S

  INSERT INTO CDINip
  SELECT NIPCDI,ClavePersona,NombreCompleto,@EstacionTrabajo FROM #NIPCDI ORDER BY NIPCDI,ClavePersona       
RETURN 
END
GO

--EXEC spNIPCDIPersonalNombre 1
--SELECT * FROM CDINip

		
-----------------------------------------------
-------- S P C D I R E P R O L E S ------------
-----------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepRoles') AND type = 'P') DROP PROCEDURE dbo.spCDIRepRoles
GO

CREATE PROCEDURE spCDIRepRoles
    	  @NIPCDI			varchar(50),
		  @EstatusRol		varchar(15),
		  @FechaD			datetime,	
		  @FechaA			datetime 
AS
BEGIN   
  IF @NIPCDI     IS NULL OR @NIPCDI = ' '     OR @NIPCDI     = 'NULL' SELECT @NIPCDI     = NULL 
  
  IF @EstatusRol = 'PENDIENTE'
    SELECT CDIR.ID,					CDIR.NIPCDI,				CDIR.Estatus,			CDIR.Usuario AS UsuarioModificacion,
           CDIR.Catalogo,			CDIR.RolAnterior,			CDIR.Personal,			CDIR.FechaEmision,	
           dbo.fnCDINombreCompletoCat (CDIR.Catalogo, CDIR.Personal)           AS NombrePersonalAsignado,
           CDIR.CatalogoNuevo,		CDIR.PermiteRelacionCon,	CDIR.PersonalNuevo,		CDIR.FechaAutorizacion,	
           dbo.fnCDINombreCompletoCat (CDIR.CatalogoNuevo, CDIR.PersonalNuevo) AS NombrePersonalNuevo,  
           CDIR.FechaEmision AS Fecha        
      FROM CDIRelacionesPendiente CDIR
     WHERE ISNULL(CDIR.NIPCDI,'')  = ISNULL(ISNULL(@NIPCDI,CDIR.NIPCDI),'') 	   	
       AND ISNULL(CDIR.Estatus,'') = @EstatusRol
       AND CDIR.FechaEmision       >= @FechaD
       AND CDIR.FechaEmision       < DATEADD(d,1,@FechaA)
  ELSE 
    SELECT CDIR.ID,					CDIR.NIPCDI,				CDIR.Estatus,			CDIR.Usuario AS UsuarioModificacion,
           CDIR.Catalogo,			CDIR.RolAnterior,			CDIR.Personal,			CDIR.FechaEmision,	
           dbo.fnCDINombreCompletoCat (CDIR.Catalogo, CDIR.Personal)           AS NombrePersonalAsignado,
           CDIR.CatalogoNuevo,		CDIR.PermiteRelacionCon,	CDIR.PersonalNuevo,		CDIR.FechaAutorizacion,	
           dbo.fnCDINombreCompletoCat (CDIR.CatalogoNuevo, CDIR.PersonalNuevo) AS NombrePersonalNuevo,
           CDIR.FechaAutorizacion AS Fecha
      FROM CDIRelacionesPendiente CDIR
     WHERE ISNULL(CDIR.NIPCDI,'')  = ISNULL(ISNULL(@NIPCDI,CDIR.NIPCDI),'') 	   	
       AND ISNULL(CDIR.Estatus,'') = @EstatusRol
       AND CDIR.FechaAutorizacion  >= @FechaD
       AND CDIR.FechaAutorizacion  < DATEADD(d,1,@FechaA)   
  
RETURN 
END
GO

--SET DATEFORMAT YMD
--EXEC spCDIRepRoles '','AUTORIZADO', '2010-10-07 00:00:00.000', '2010-10-08 00:00:00.000'
--SELECT * FROM CDIRelacionesPendiente


