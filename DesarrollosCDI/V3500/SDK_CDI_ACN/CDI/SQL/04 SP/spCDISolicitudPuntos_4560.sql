SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--------------------------------------
--- Desarrollo. SOLICITUD PUNTOS   ---
--- Cliente   . CDI                ---
--- Folio     . 4560               ---
--- Fecha     . 30 / 09 / 10       ---
--- Autor     . EDER MENDOZA       ---
--------------------------------------   

---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 10552) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (10552,	'No se Genero Vinculo con el Servidor.',	'ERROR',	0)		
GO

IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 10553) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (10553,	'Tabla No existe en esa Base de Datos.',	'ERROR',	0)		
GO

---------------------------------------------------
----- S P C D I V I N C U L O S E R V I D O R -----
---------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.spCDIVinculoServidor')) DROP PROCEDURE dbo.spCDIVinculoServidor
GO

CREATE PROCEDURE spCDIVinculoServidor
                 @Empresa	varchar(5) 

AS BEGIN
  DECLARE
    @SQL				varchar(max),
    @Servidor			varchar(50),
    @Producto			varchar(50),
    @Usuario			varchar(50),
    @Password			varchar(50),
	@Proveedor			varchar(50),
	@BaseDatos			varchar(50)	

  SELECT @Proveedor = 'MSDASQL'
  SELECT @Producto  = Producto,
         @Servidor  = Servidor, 
         @Usuario   = NombreUsuario, 
         @Password  = ISNULL(Passwords,''),
         @BaseDatos = BaseDatos FROM CDIServidorVinculado WHERE Empresa = @Empresa AND Producto = 'MYSQL' AND Proceso = 'INTERFAZ SOLICITUD PUNTOS'

  IF ISNULL(@Password,'') = '' SELECT @Password = ''

  CREATE TABLE #Resultado (ID int IDENTITY(1,1) NOT NULL PRIMARY KEY, SQL varchar(255) NULL)
  
  -- E L I M I N A  V I N C U L O 
  INSERT #Resultado (SQL) SELECT 'USE master'
  INSERT #Resultado (SQL) SELECT 'GO'	  
  INSERT #Resultado (SQL) SELECT 'IF  EXISTS (SELECT * FROM SYS.Servers AS SRV WHERE SRV.Server_id <> 0 AND SRV.Name=N' + CHAR(39) + @Servidor + CHAR(39) + ' )' 
  INSERT #Resultado (SQL) SELECT 'EXEC sp_dropserver                    @server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @droplogins=' + CHAR(39)+ 'droplogins' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT ''
  -- C R E A R  V I N C U L O 
  INSERT #Resultado (SQL) SELECT 'USE master'
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_addlinkedserver	@server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @srvproduct=N' + CHAR(39)+ @Producto + CHAR(39) + ', @provider=N' + CHAR(39)+ @Proveedor + CHAR(39) + ', @provstr=N' + CHAR(39)+ 'DRIVER={MySQL ODBC 5.1 Driver};SERVER=' + @Servidor + ';PORT=3306;DATABASE=' + @BaseDatos + '; USER=' + @Usuario + ';PASSWORD=' + @Password + ';OPTION=3;' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_serveroption	    @server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @optname=N' + CHAR(39)+ 'collation compatible' + CHAR(39) + ', @optvalue=N' + CHAR(39)+ 'false' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_serveroption	    @server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @optname=N' + CHAR(39)+ 'data access' + CHAR(39) + ', @optvalue=N' + CHAR(39)+ 'true' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_serveroption		@server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @optname=N' + CHAR(39)+ 'rpc' + CHAR(39) + ', @optvalue=N' + CHAR(39)+ 'true' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_serveroption		@server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @optname=N' + CHAR(39)+ 'rpc out' + CHAR(39) + ', @optvalue=N' + CHAR(39)+ 'true' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_serveroption		@server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @optname=N' + CHAR(39)+ 'connect timeout' + CHAR(39) + ', @optvalue=N' + CHAR(39)+ '0' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_serveroption		@server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @optname=N' + CHAR(39)+ 'collation name' + CHAR(39) + ', @optvalue=N' + CHAR(39)+ 'NULL' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_serveroption		@server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @optname=N' + CHAR(39)+ 'query timeout' + CHAR(39) + ', @optvalue=N' + CHAR(39)+ '0' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'		
  INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_serveroption		@server=N'		+ CHAR(39)+ @Servidor + CHAR(39) + ', @optname=N' + CHAR(39)+ 'use remote collation' + CHAR(39) + ', @optvalue=N' + CHAR(39)+ 'true' + CHAR(39)
  INSERT #Resultado (SQL) SELECT 'GO'	
  INSERT #Resultado (SQL) SELECT 'USE master'
  INSERT #Resultado (SQL) SELECT 'GO'
  
  IF @Producto = 'MYSQL'
  BEGIN --- P R O V E E D O R
    INSERT #Resultado (SQL) SELECT ''	
    INSERT #Resultado (SQL) SELECT ''
    -- C O N F I G U R A C I O N  P R O V E E D O R  M S D A S Q L 
    INSERT #Resultado (SQL) SELECT 'USE master'
    INSERT #Resultado (SQL) SELECT 'GO'
    INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_MSset_oledb_prop N' + CHAR(39)+ @Proveedor + CHAR(39)+ ', N' + CHAR(39)+ 'LevelZeroOnly' + CHAR(39)+ ', ' +  '1' 
    INSERT #Resultado (SQL) SELECT 'GO'
    INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_MSset_oledb_prop N' + CHAR(39)+ @Proveedor + CHAR(39)+ ', N' + CHAR(39)+ 'NestedQueries' + CHAR(39)+ ', ' +  '1' 
    INSERT #Resultado (SQL) SELECT 'GO'
    INSERT #Resultado (SQL) SELECT 'EXEC master.dbo.sp_MSset_oledb_prop N' + CHAR(39)+ @Proveedor + CHAR(39)+ ', N' + CHAR(39)+ 'SqlServerLIKE' + CHAR(39)+ ', ' +  '1' 
    INSERT #Resultado (SQL) SELECT 'GO'
    INSERT #Resultado (SQL) SELECT ''
    INSERT #Resultado (SQL) SELECT ''
  END   --- P R O V E E D O R

  SELECT SQL FROM #Resultado ORDER BY ID

RETURN
END
GO

--EXEC spCDIVinculoServidor 'DEMO'

-------------------------------------------------------------------------
----- S P C D I V I N C U L O S E R V I D O R P R U E B A C O N E X -----
-------------------------------------------------------------------------
SET ANSI_NULLS ON
GO 

IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.spCDIVinculoServidorPruebaConex')) DROP PROCEDURE dbo.spCDIVinculoServidorPruebaConex
GO

CREATE PROCEDURE spCDIVinculoServidorPruebaConex
                 @Empresa	varchar(5) 

AS BEGIN
  DECLARE
    @OK					int,
	@OKRef				varchar(255),
    @SQL				varchar(max),
    @Servidor			varchar(50),
    @TablaVinculada		varchar(50),
	@ServidorBaseTabla	varchar(200) 

  SET ANSI_NULLS ON
  SET ANSI_WARNINGS ON
 
  CREATE TABLE #ExisteTabla (Numero int)
   
  SELECT @Servidor = Servidor, @TablaVinculada = ISNULL(TablaVinculada,'') FROM CDIServidorVinculado WHERE Empresa = @Empresa
  SELECT @ServidorBaseTabla = 'SELECT COUNT(0) FROM ' + @Servidor +  '...' + @TablaVinculada 
  SELECT @OK = 0 
      
  IF  EXISTS (SELECT * FROM SYS.Servers AS SRV WHERE SRV.Server_id <> 0 AND SRV.Name=@Servidor)
  BEGIN --- C R E O  V I N C U L O  S E R V I D O R 
    INSERT INTO #ExisteTabla
    EXEC(@ServidorBaseTabla)    
    IF (SELECT COUNT(0) FROM #ExisteTabla) >= 0   
    BEGIN --- E X I S T E  T A B L A  E N  S E R V I D O R
      SELECT @OK = 0 
    END   --- E X I S T E  T A B L A  E N  S E R V I D O R    
  END   --- C R E O  V I N C U L O  S E R V I D O R
  ELSE SELECT @OK = 10552 

  SELECT @OKRef = Descripcion FROM MensajeLista WHERE Mensaje =  @OK
  IF @OK = 0 SELECT 'Conexión Realizada con Exito.'
  ELSE SELECT @OKRef

  SET ANSI_NULLS OFF
  SET ANSI_WARNINGS OFF
 
RETURN
END
GO

SET ANSI_NULLS OFF
GO 
--EXEC spCDIVinculoServidorPruebaConex 'DEMO'


-----------------------------------------------------
----- S P C D I R E P O R T E S O L P U N T O S -----
-----------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.spCDIReporteSolPuntos')) DROP PROCEDURE dbo.spCDIReporteSolPuntos
GO

CREATE PROCEDURE spCDIReporteSolPuntos
				@Empresa			varchar(5),
                @SocioD				varchar(10),
				@SocioA				varchar(10),
				@FechaD				datetime,
				@FechaA				datetime,
				@Mov				varchar(20),
				@Nivel				varchar(50)

AS BEGIN
  CREATE TABLE #Puntos
               (ID int IDENTITY(1,1) NOT NULL PRIMARY KEY, 
				EmpresaPunto	varchar(5)   NULL,
				Mov				varchar(20)  NULL,
				MovID			varchar(20)  NULL,
				ClaveSocio		varchar(10)  NULL,
				Membresia		varchar(50)  NULL,
				SubSocio		varchar(10)  NULL,
				FechaMovimiento	datetime     NULL,
				Puntos			float        NULL,
				NombreSocio		varchar(255) NULL,
				Abono			float        NULL,
				Cargo			float        NULL,						
               )


  IF @Mov IS NULL OR @Mov = ' ' OR @Mov = 'NULL' OR @Mov = 'Todo' OR @Mov = 'Todos' OR @Mov = '(Todos)'  SELECT @Mov = NULL 
  
  INSERT INTO #Puntos
  SELECT CDIP.Empresa, CDIP.Mov, CDIP.MovID, CDIP.ClaveSocio, CDIP.Membresia, CDIP.SubSocio, CDIP.FechaMovimiento, CDIP.Puntos, dbo.fnCDINombreCompletoCat('Socios', C.Cliente) AS NombreSocio,
         CASE WHEN CDIP.Mov = 'Consumo'  THEN 0
              WHEN CDIP.Mov = 'Consumos' THEN 0 
              ELSE CDIP.Puntos END  AS Abono,
         CASE WHEN CDIP.Mov = 'Consumo'  THEN CDIP.Puntos
              WHEN CDIP.Mov = 'Consumos' THEN CDIP.Puntos 
              ELSE 0 END  AS Cargo
    FROM CDIPuntos CDIP
   INNER JOIN Cte C
      ON C.Socio = CDIP.ClaveSocio
   WHERE Empresa = @Empresa
     AND ISNULL(CDIP.Mov,'')  = ISNULL(ISNULL(@Mov,CDIP.Mov),'') 
     AND CDIP.FechaMovimiento >= @FechaD
     AND CDIP.FechaMovimiento < DATEADD(d,1,@FechaA)
     AND CDIP.ClaveSocio BETWEEN @SocioD AND @SocioA
   ORDER BY CDIP.ClaveSocio

   IF @Nivel = 'Desglosado' SELECT EmpresaPunto,					Mov AS Movimiento,				MovID AS MovimientoID, 
						  		   ClaveSocio      AS Socio,		Membresia,						SubSocio,
								   FechaMovimiento AS FechaM,		Puntos,							NombreSocio, 
								   Abono,							Cargo,							ABS(ISNULL(Cargo,0)      - ISNULL (Abono,0))     AS Saldo  
                              FROM #Puntos ORDER BY ClaveSocio, FechaMovimiento
   IF @Nivel = 'Concentrado'SELECT EmpresaPunto,					''  AS Movimiento,				''    AS MovimientoID, 
							 	   ''              AS Socio,		Membresia,						SubSocio,
								   @FechaA         AS FechaM,		SUM(ISNULL(Puntos,0)) AS Punto,	NombreSocio,
								   SUM(ISNULL(Abono,0)) AS Abono,   SUM(ISNULL(Cargo,0))  AS Cargo, ABS(SUM(ISNULL(Cargo,0)) - SUM(ISNULL(Abono,0))) AS Saldo  
                              FROM #Puntos GROUP BY EmpresaPunto,ClaveSocio,Membresia,SubSocio,NombreSocio ORDER BY ClaveSocio, FechaMovimiento

RETURN
END 
GO

--SET DATEFORMAT YMD
--EXEC spCDIReporteSolPuntos 'DEMO', '5367005', '5367005', '2010-10-19 00:00:00.000', '2010-10-20 00:00:00.000', '', 'Desglosado'
--SELECT Cliente, Socio, * FROM Cte


