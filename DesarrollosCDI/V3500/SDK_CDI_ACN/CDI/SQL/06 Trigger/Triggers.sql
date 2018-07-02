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

---------------------------------------------------------------------------
---- T R I G G E R   C D I R E L A C I O N E S R E S T R I N G I D A S ----
----------------------------------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE NAME = 'trCDIRelacionesRestringidasRoles' AND type = 'tr') DROP TRIGGER trCDIRelacionesRestringidasRoles
GO

CREATE TRIGGER trCDIRelacionesRestringidasRoles ON CDIRelacionesRestringidasRoles
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  DECLARE @Bandera							int,
		  @ID								int,
		  @AccesoID							int,
		  @Usuario							varchar(10),
		  @OKRef							varchar(255),	
		  @CDIRelacionesRestringidasRoles	bit

  IF EXISTS    (SELECT * FROM Inserted) AND NOT EXISTS(SELECT * FROM Deleted) SET @Bandera = 1 --- I N S E R T    N O   E X I S T E   E N   D E L E T E D
  IF EXISTS    (SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 2 --- U P D A T E    E X I S T E   E N   L A S   D O S    
  IF NOT EXISTS(SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 3 --- D E L E T E    N O   E X I S T E   E N   I N S E R T E D

  SELECT @AccesoID = MAX(ID) FROM Acceso WHERE SPID = @@SPID
  SELECT @Usuario  = Usuario FROM Acceso WHERE ID   = @AccesoID
  SELECT @CDIRelacionesRestringidasRoles = CDIRelacionesRestringidasRoles FROM Usuario WHERE Usuario = @Usuario 
   
  IF @Bandera IN (2,3) AND ISNULL(@CDIRelacionesRestringidasRoles, 0) = 0
  BEGIN --- 2 3
    SET @OKRef = 'Usuario No tiene Permiso para Modificar...'  
    RAISERROR (@OKRef , 16, -1)
    RETURN
  END  --- 2 3


  IF @Bandera = 3
  BEGIN --- D E L E T E
    DECLARE C1 CURSOR FOR 
    SELECT ID FROM Deleted 
    OPEN C1
      FETCH NEXT FROM C1 INTO @ID
      WHILE @@Fetch_Status =0
      BEGIN --- U S U A R I O S  A C C E S O S
         DELETE FROM CDIUsuarioAutorizaRelacion WHERE ID = @ID
      FETCH NEXT FROM C1 INTO @ID
      END   --- U S U A R I O S  A C C E S O S
    CLOSE C1
    DEALLOCATE C1 
  END   --- D E L E T E
	
RETURN
END
GO



-------------------------------------------------------------
---- T R I G G E R   C D I A S I G N A C I O N R O L E S ----
-------------------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE NAME = 'trCDIAsignacionRoles' AND type = 'tr') DROP TRIGGER trCDIAsignacionRoles
GO

CREATE TRIGGER trCDIAsignacionRoles ON CDIAsignacionRoles
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  DECLARE @Bandera							int,
		  @ID								int,
		  @OKRef							varchar(255)

  IF EXISTS    (SELECT * FROM Inserted) AND NOT EXISTS(SELECT * FROM Deleted) SET @Bandera = 1 --- I N S E R T    N O   E X I S T E   E N   D E L E T E D
  IF EXISTS    (SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 2 --- U P D A T E    E X I S T E   E N   L A S   D O S    
  IF NOT EXISTS(SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 3 --- D E L E T E    N O   E X I S T E   E N   I N S E R T E D

   
  IF @Bandera IN (1,2) 
  BEGIN --- 1 2
    IF EXISTS (SELECT * FROM Inserted WHERE ISNULL(Rol,'') = '')
    BEGIN 
      SET @OKRef = 'Rol Vacio...'  
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END
  END  --- 1 2
	
RETURN
END
GO


-------------------------------------------
--- Desarrollo. PARTIDAS PRESUPUESTALES ---
--- Cliente   . CDI                     ---
--- Folio     . 4697                    ---
--- Fecha     . 21 / 10 / 10            ---
--- Autor     . EDER MENDOZA            ---
-------------------------------------------   
-----------------------------------------------------------
---- T R I G G E R   C L A V E P R E S U P U E S T A L ----
-----------------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE NAME = 'trClavePresupuestal' AND type = 'tr') DROP TRIGGER trClavePresupuestal
GO

CREATE TRIGGER trClavePresupuestal ON ClavePresupuestal
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  DECLARE @Bandera	int,		 
		  @OKRef	varchar(255)
          

  IF EXISTS    (SELECT * FROM Inserted) AND NOT EXISTS(SELECT * FROM Deleted) SET @Bandera = 1 --- I N S E R T    N O   E X I S T E   E N   D E L E T E D
  IF EXISTS    (SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 2 --- U P D A T E    E X I S T E   E N   L A S   D O S    
  IF NOT EXISTS(SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 3 --- D E L E T E    N O   E X I S T E   E N   I N S E R T E D
       
  IF @Bandera IN (1) 
  BEGIN --- I N S E R T
    IF EXISTS (SELECT * FROM Inserted WHERE Rama = '')
    BEGIN      
      SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 20920
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END
  END   --- I N S E R T  
RETURN
END
GO


-------------------------------------------------
--- Desarrollo. VALIDA PARTIDA PRESUPUESTAL   ---
--- Cliente   . CDI                           ---
--- Folio     . 4647                          ---
--- Fecha     . 29 / 10 / 10                  ---
--- Autor     . EDER MENDOZA                  ---
-------------------------------------------------   

-----------------------------------------
---- T R I G G E R   C D I C P A R T ----
-----------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE NAME = 'trCDICPArt' AND type = 'tr') DROP TRIGGER trCDICPArt
GO

CREATE TRIGGER trCDICPArt ON CPArt
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  DECLARE @Bandera							int,		  
		  @OKRef							varchar(255)

  IF EXISTS    (SELECT * FROM Inserted) AND NOT EXISTS(SELECT * FROM Deleted) SET @Bandera = 1 --- I N S E R T    N O   E X I S T E   E N   D E L E T E D
  IF EXISTS    (SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 2 --- U P D A T E    E X I S T E   E N   L A S   D O S    
  IF NOT EXISTS(SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 3 --- D E L E T E    N O   E X I S T E   E N   I N S E R T E D
  
  IF EXISTS(SELECT * FROM CP C 
             INNER JOIN Inserted I
                ON I.ID = C.ID
             WHERE C.Estatus = 'CONCLUIDO') OR
     EXISTS(SELECT * FROM CP C 
             INNER JOIN Deleted D
                ON D.ID = C.ID
             WHERE C.Estatus = 'CONCLUIDO') 
  BEGIN --- M O V I M I E N T O   C O N C L U I D O S
    SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 30150
    RAISERROR (@OKRef , 16, -1)
    RETURN
  END   --- M O V I M I E N T O   C O N C L U I D O S
	
RETURN
END
GO


-----------------------------------------------
---- T R I G G E R   C D I C P A R T C A T ----
-----------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE NAME = 'trCDICPArtCat' AND type = 'tr') DROP TRIGGER trCDICPArtCat
GO

CREATE TRIGGER trCDICPArtCat ON CDICPArtCat
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  DECLARE @Bandera							int,		  
		  @OKRef							varchar(255)

  IF EXISTS    (SELECT * FROM Inserted) AND NOT EXISTS(SELECT * FROM Deleted) SET @Bandera = 1 --- I N S E R T    N O   E X I S T E   E N   D E L E T E D
  IF EXISTS    (SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 2 --- U P D A T E    E X I S T E   E N   L A S   D O S    
  IF NOT EXISTS(SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 3 --- D E L E T E    N O   E X I S T E   E N   I N S E R T E D
  
  IF EXISTS(SELECT * FROM CP C 
             INNER JOIN Inserted I
                ON I.ID = C.ID
             WHERE C.Estatus = 'CONCLUIDO') OR
     EXISTS(SELECT * FROM CP C 
             INNER JOIN Deleted D
                ON D.ID = C.ID
             WHERE C.Estatus = 'CONCLUIDO') 
  BEGIN --- M O V I M I E N T O   C O N C L U I D O S
    SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 30150
    RAISERROR (@OKRef , 16, -1)
    RETURN
  END   --- M O V I M I E N T O   C O N C L U I D O S
 
  IF @Bandera IN (1,2) 
  BEGIN --- 1 2
    IF EXISTS (SELECT * FROM Inserted WHERE ISNULL(ClavePresupuestal,'') = '')
    BEGIN 
      SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 25640 --- Clave Presupuestal      
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END
 
    IF EXISTS (SELECT * FROM Inserted WHERE ISNULL(Categoria,'') = '')
    BEGIN 
      SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 44115 --- Categoria del Articulo      
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END
  END  --- 1 2
	
RETURN
END
GO


---------------------------------------------------
---- T R I G G E R   C D I C P C O N C E P T O ----
---------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE NAME = 'trCDICPConcepto' AND type = 'tr') DROP TRIGGER trCDICPConcepto
GO

CREATE TRIGGER trCDICPConcepto ON CDICPConcepto
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  DECLARE @Bandera							int,		  
		  @OKRef							varchar(255)

  IF EXISTS    (SELECT * FROM Inserted) AND NOT EXISTS(SELECT * FROM Deleted) SET @Bandera = 1 --- I N S E R T    N O   E X I S T E   E N   D E L E T E D
  IF EXISTS    (SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 2 --- U P D A T E    E X I S T E   E N   L A S   D O S    
  IF NOT EXISTS(SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 3 --- D E L E T E    N O   E X I S T E   E N   I N S E R T E D

  IF EXISTS(SELECT * FROM CP C 
             INNER JOIN Inserted I
                ON I.ID = C.ID
             WHERE C.Estatus = 'CONCLUIDO') OR
     EXISTS(SELECT * FROM CP C 
             INNER JOIN Deleted D
                ON D.ID = C.ID
             WHERE C.Estatus = 'CONCLUIDO') 
  BEGIN --- M O V I M I E N T O   C O N C L U I D O S
    SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 30150
    RAISERROR (@OKRef , 16, -1)
    RETURN
  END   --- M O V I M I E N T O   C O N C L U I D O S
  
  IF @Bandera IN (1,2) 
  BEGIN --- 1 2
    IF EXISTS (SELECT * FROM Inserted WHERE ISNULL(ClavePresupuestal,'') = '')
    BEGIN 
      SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 25640 --- Clave Presupuestal
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END
 
    IF EXISTS (SELECT * FROM Inserted WHERE ISNULL(Concepto,'') = '')
    BEGIN 
      SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 20480 --- Concepto             
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END
  END  --- 1 2
	
RETURN
END
GO


-------------------------------------------------------------
---- T R I G G E R   C D I C P C L A S I F I C A C I O N ----
-------------------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE NAME = 'trCDICPClasificacion' AND type = 'tr') DROP TRIGGER trCDICPClasificacion
GO

CREATE TRIGGER trCDICPClasificacion ON CDICPClasificacion
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  DECLARE @Bandera							int,		  
		  @OKRef							varchar(255)

  IF EXISTS    (SELECT * FROM Inserted) AND NOT EXISTS(SELECT * FROM Deleted) SET @Bandera = 1 --- I N S E R T    N O   E X I S T E   E N   D E L E T E D
  IF EXISTS    (SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 2 --- U P D A T E    E X I S T E   E N   L A S   D O S    
  IF NOT EXISTS(SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 3 --- D E L E T E    N O   E X I S T E   E N   I N S E R T E D

  IF EXISTS(SELECT * FROM CP C 
             INNER JOIN Inserted I
                ON I.ID = C.ID
             WHERE C.Estatus = 'CONCLUIDO') OR
     EXISTS(SELECT * FROM CP C 
             INNER JOIN Deleted D
                ON D.ID = C.ID
             WHERE C.Estatus = 'CONCLUIDO') 
  BEGIN --- M O V I M I E N T O   C O N C L U I D O S
    SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 30150
    RAISERROR (@OKRef , 16, -1)
    RETURN
  END   --- M O V I M I E N T O   C O N C L U I D O S
    
  IF @Bandera IN (1,2) 
  BEGIN --- 1 2
    IF EXISTS (SELECT * FROM Inserted WHERE ISNULL(ClavePresupuestal,'') = '')
    BEGIN 
      SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 25640 --- Clave Presupuestal
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END
 
    IF EXISTS (SELECT * FROM Inserted WHERE ISNULL(Clasificacion,'') = '')
    BEGIN 
      SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 10080 --- Clasificacion       
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END
  END  --- 1 2
	
RETURN
END
GO


-------------------------------------------
---- T R I G G E R   C D I C P P R O Y ----
-------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE NAME = 'trCDICPProy' AND type = 'tr') DROP TRIGGER trCDICPProy
GO

CREATE TRIGGER trCDICPProy ON CDICPProy
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  DECLARE @Bandera							int,		  
		  @OKRef							varchar(255)

  IF EXISTS    (SELECT * FROM Inserted) AND NOT EXISTS(SELECT * FROM Deleted) SET @Bandera = 1 --- I N S E R T    N O   E X I S T E   E N   D E L E T E D
  IF EXISTS    (SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 2 --- U P D A T E    E X I S T E   E N   L A S   D O S    
  IF NOT EXISTS(SELECT * FROM Inserted) AND EXISTS    (SELECT * FROM Deleted) SET @Bandera = 3 --- D E L E T E    N O   E X I S T E   E N   I N S E R T E D

   
  IF @Bandera IN (1,2) 
  BEGIN --- 1 2
    IF EXISTS (SELECT * FROM Inserted WHERE ISNULL(ClavePresupuestal,'') = '')
    BEGIN 
      SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 25640 --- Clave Presupuestal
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END

    IF EXISTS (SELECT * FROM Inserted WHERE ISNULL(Proyecto,'') = '')
    BEGIN 
      SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje = 15010 --- Proyecto      
      RAISERROR (@OKRef , 16, -1)
      RETURN
    END     
  END  --- 1 2
	
RETURN
END
GO

--SELECT Descripcion, * FROM MensajeLista WHERE Descripcion like ('%Categoria del Articulo%')

IF OBJECT_ID('tgCDISocioSubsidioHist', 'TR') IS NOT NULL
  DROP TRIGGER tgCDISocioSubsidioHist
GO

CREATE TRIGGER tgCDISocioSubsidioHist ON CDISocioSubsidio
FOR UPDATE
AS 
BEGIN
  DECLARE @SubsidioN    varchar(30),
          @Importe    float

  SELECT @SubsidioN = Subsidio, @Importe = Importe FROM Inserted

  IF UPDATE(Importe)
    INSERT INTO CDISocioSubsidioHist(Subsidio, Importe, Fecha) VALUES (@SubsidioN, @Importe, GETDATE())
 
END
GO

--BEGM 20120605. 5750. Cargos Recurrentes
IF OBJECT_ID('tgCDICDIEmpresaCfgCargoAnual', 'TR') IS NOT NULL
  DROP TRIGGER tgCDICDIEmpresaCfgCargoAnual
GO

CREATE TRIGGER tgCDICDIEmpresaCfgCargoAnual ON CDIEmpresaCfg
FOR UPDATE
AS 
BEGIN
  DECLARE @Ejercicio  int, 
          @Periodo    int, 
          @Empresa    varchar(5)
          
  IF UPDATE(CDIDiaCargoAnual)
  BEGIN
    SELECT @Ejercicio = YEAR(GETDATE()), @Periodo = MONTH(GETDATE())
    SELECT @Empresa = Empresa FROM Inserted
    
    IF @Periodo > 1
      SELECT @Ejercicio = @Ejercicio + 1, @Periodo = 1
      
    EXEC spCDIGeneraJobCargosAnuales @Empresa, @Periodo, @Ejercicio
  END
 
END
GO

