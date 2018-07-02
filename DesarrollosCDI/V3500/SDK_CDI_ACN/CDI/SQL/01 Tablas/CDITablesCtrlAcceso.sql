/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

GO
EXEC spALTER_TABLE 'Personal', 'CDIPerImagen', 'Varchar(500)'
GO
EXEC spALTER_TABLE 'Cte', 'CdiEstaPresente', 'Bit Default 0'
GO
EXEC spALTER_TABLE 'Concepto', 'CdiCausaBloqueo', 'VARCHAR(20)'
GO

if not exists (select * from sysobjects where id = object_id('dbo.CDIJornadaTemp') and type = 'U')  -- drop table CDIJornadaTemp
CREATE TABLE dbo.CDIJornadaTemp(
		Empresa		   varchar(5) null,
		Usuario        varchar(10)null,
		FechaEmision          datetime null,
		Personal varchar(10) ,
		FechaD datetime ,
		FechaA	datetime null,
		Jornada varchar(20)null,
		Referencia varchar(20) null,
		CONSTRAINT PriCDIJornadaTemp PRIMARY KEY CLUSTERED (Personal,FechaD)
  )
GO
if not exists (select * from sysobjects where id = object_id('dbo.PasoRepPersonalFirma') and type = 'U')  -- drop table PasoRepPersonalFirma
CREATE TABLE PasoRepPersonalFirma 
(Id int IDENTITY(1,1),
personal varchar(10) NULL,
Nombre  varchar(30) NULL,
ApellidoPaterno varchar(30) NULL,
ApellidoMaterno varchar(30) NULL,
Departamento varchar(30) NULL,
CDIDia varchar(15) NULL,
Fecha smalldatetime NULL,
Checada varchar (50) null,
Tipo varchar (50) NULL,
Concepto varchar (50) NULL,
Jornada varchar(20)NULL, 
ReportaA varchar(50) NULL)
GO
EXEC spALTER_TABLE 'PasoRepPersonalFirma', 'Concepto', 'Varchar (50) null'
GO
if not exists (select * from sysobjects where id = object_id('dbo.CDIRetardos') and type = 'U')  -- drop table CDIRetardos
CREATE TABLE CDIRetardos 
(personal varchar(10) NULL ,
Fecha datetime null,
Tipo varchar(50) null,
Concepto varchar(50) null)
GO
if not exists (select * from sysobjects where id = object_id('dbo.PasoPerFechas') and type = 'U')  -- drop table PasoPerFechas
CREATE TABLE PasoPerFechas 
(id int IDENTITY(1,1),  
personal varchar(10) NULL,
Fecha datetime NULL, 
Tipo varchar(30) NULL,
Observaciones varchar(50) NULL,
Jornada varchar(20) null)	
GO
if not exists (select * from sysobjects where id = object_id('dbo.CDINomRetardosFestDesc') and type = 'U')  -- drop table CDINomRetardosFestDesc
CREATE TABLE CDINomRetardosFestDesc 
(Id int IDENTITY(1,1),
Personal varchar(30) NULL, 
Fecha datetime NULL,
CAntidad int null)
GO
if not exists (select * from sysobjects where id = object_id('dbo.CDISocAcessoCfgBloqueo') and type = 'U')  -- drop table CDISocAcessoCfgBloqueo
CREATE TABLE dbo.CDISocAcessoCfgBloqueo(
		Empresa					varchar(5) NOT null,
		Tipo	varchar	(50) NOT NULL,
		Usuario        varchar(10)null,
		FechaEmision          datetime null,
		FechaUltimoCambio datetime null,
		Admision	bit DEFAULT 0 NULL,
		AdmisionBloqueo	Varchar (30) NULL,
		Cuota	bit DEFAULT 0 NULL,
		CuotaBloqueo	Varchar (30) NULL,
		Inscripcion	bit DEFAULT 0 NULL,
		InscripcionBloqueo	Varchar (30) NULL,
		OtrosIngresos	bit DEFAULT 0 NULL,
		OtrosIngresosBloqueo	Varchar (30) NULL,
		Credencial				bit DEFAULT 0 NULL,
		CredencialBloqueo	Varchar (30) NULL,
		Casilleros	bit DEFAULT 0 NULL,
		CasillerosBloqueo	Varchar (30) NULL,
		TarjetasBancarias	bit DEFAULT 0 NULL,	
		TarjetasBancariasBloqueo	Varchar (30) NULL,
		AdmisionDesbloqueo bit DEFAULT 0 NULL, 
		CuotaDesbloqueo bit DEFAULT 0 NULL, 
		InscripcionDesbloqueo bit DEFAULT 0 NULL, 
		OtrosIngresosDesbloqueo bit DEFAULT 0 NULL, 
		CredencialDesbloqueo bit DEFAULT 0 NULL, 
		CasillerosDesbloqueo bit DEFAULT 0 NULL, 
		TarjetasBancariasDesbloqueo bit DEFAULT 0 NULL, 
		CONSTRAINT PriCDISocAcessoCfgBloqueo PRIMARY KEY CLUSTERED (Empresa,Tipo)
  )
GO

EXEC spALTER_TABLE 'CDISocAcessoCfgBloqueo', 'AdmisionDesbloqueo', 'bit DEFAULT 0 NULL'
EXEC spALTER_TABLE 'CDISocAcessoCfgBloqueo', 'CuotaDesbloqueo', 'bit DEFAULT 0 NULL'
EXEC spALTER_TABLE 'CDISocAcessoCfgBloqueo', 'InscripcionDesbloqueo', 'bit DEFAULT 0 NULL'
EXEC spALTER_TABLE 'CDISocAcessoCfgBloqueo', 'OtrosIngresosDesbloqueo', 'bit DEFAULT 0 NULL'
EXEC spALTER_TABLE 'CDISocAcessoCfgBloqueo', 'CredencialDesbloqueo', 'bit DEFAULT 0 NULL'
EXEC spALTER_TABLE 'CDISocAcessoCfgBloqueo', 'CasillerosDesbloqueo', 'bit DEFAULT 0 NULL'
EXEC spALTER_TABLE 'CDISocAcessoCfgBloqueo', 'TarjetasBancariasDesbloqueo', 'bit DEFAULT 0 NULL'
GO

if not exists (select * from sysobjects where id = object_id('dbo.CDISocAcessoCfgVencimiento') and type = 'U')  -- drop table CDISocAcessoCfgVencimiento
CREATE TABLE dbo.CDISocAcessoCfgVencimiento(
		Empresa		   varchar(5) NOT null,
		Tipo	varchar	(50) NOT NULL,
		Usuario        varchar(10)null,
		FechaEmision          datetime null,
		FechaUltimoCambio datetime null,
		Admision	bit DEFAULT 0 NULL,
		AdmisionAlta int null,
		AdmisionBloqueado int null,
		AdmisionBaja int null,
		AdmisionTolerancia int NULL,
		Cuota	bit DEFAULT 0 NULL,
		CuotaAlta int null,
		CuotaBloqueado int null,
		CuotaBaja int null,
		CuotaTolerancia int NULL,
		Inscripcion	bit DEFAULT 0 NULL,
		InscripcionAlta int null,
		InscripcionBloqueado int null,
		InscripcionBaja int null,
		InscripcionTolerancia int NULL,
		OtrosIngresos	bit DEFAULT 0 NULL,
		OtrosIngresosAlta int null,
		OtrosIngresosBloqueado int null,
		OtrosIngresosBaja int null,
		OtrosIngresosTolerancia int NULL,
		Credencial	bit DEFAULT 0 NULL,
		CredencialAlta int null,
		CredencialBloqueado int null,
		CredencialBaja int null,
		CredencialTolerancia int NULL,
		Casilleros	bit DEFAULT 0 NULL,
		CasillerosAlta int null,
		CasillerosBloqueado int null,
		CasillerosBaja int null,
		CasillerosTolerancia int NULL,
		TarjetasBancarias	bit DEFAULT 0 NULL,
		TarjetasBancariasAlta int null,
		TarjetasBancariasBloqueado int null,
		TarjetasBancariasBaja int null,
		TarjetasBancariasTolerancia int NULL,	
    AplicaA                     varchar(20) NOT NULL, 
		CONSTRAINT PriCDISocAcessoCfgVencimiento PRIMARY KEY CLUSTERED (Empresa,Tipo,AplicaA)
  )
GO

EXEC spALTER_TABLE 'CDISocAcessoCfgVencimiento', 'AplicaA', 'varchar(20) NULL'
GO
IF (SELECT COUNT(*) FROM CDISocAcessoCfgVencimiento) = 1
  UPDATE CDISocAcessoCfgVencimiento SET AplicaA = 'Facturas'
GO
EXEC spALTER_COLUMN 'CDISocAcessoCfgVencimiento', 'AplicaA', 'varchar(20) NOT NULL'
GO
EXEC spDROP_PK 'CDISocAcessoCfgVencimiento'
GO
EXEC spADD_PK 'CDISocAcessoCfgVencimiento', 'Empresa,Tipo,AplicaA'
GO

if not exists (select * from sysobjects where id = object_id('dbo.CDISocAcessoCfgPases') and type = 'U')  -- drop table CDISocAcessoCfgPases
CREATE TABLE dbo.CDISocAcessoCfgPases(
		Empresa		   varchar(5) NOT null,
		Tipo	varchar	(50) NOT NULL,
		Usuario        varchar(10)null,
		FechaEmision          datetime null,
		FechaUltimoCambio datetime null,
		Admision	bit DEFAULT 0 NULL,
		AdmisionMaxDisponible int NULL, 
		AdmisionTipoPeriodo varchar (30) NULL,
		AdmisionMaxAnual int NULL, 
		Cuota	bit DEFAULT 0 NULL,
		CuotaMaxDisponible int NULL, 
		CuotaTipoPeriodo varchar (30) NULL,
		CuotaMaxAnual int NULL, 
		Inscripcion	bit DEFAULT 0 NULL,
		InscripcionMaxDisponible int NULL, 
		InscripcionTipoPeriodo varchar (30) NULL,
		InscripcionMaxAnual int NULL, 
		CargosVarios	bit DEFAULT 0 NULL,
		CargosVariosMaxDisponible int NULL, 
		CargosVariosTipoPeriodo varchar (30) NULL,
		CargosVariosMaxAnual int NULL, 
		
		OtrosIngresos	bit DEFAULT 0 NULL,
		OtrosIngresosMaxDisponible int NULL, 
		OtrosIngresosTipoPeriodo varchar (30) NULL,
		OtrosIngresosMaxAnual int NULL, 
		
		Credencial	bit DEFAULT 0 NULL,
		CredencialMaxDisponible int NULL, 
		CredencialTipoPeriodo varchar (30) NULL,
		CredencialMaxAnual int NULL, 
		Casilleros	bit DEFAULT 0 NULL,
		CasillerosMaxDisponible int NULL, 
		CasillerosTipoPeriodo varchar (30) NULL,
		CasillerosMaxAnual int NULL,
		HonorJusticia	bit DEFAULT 0 NULL,
		HonorJusticiaMaxDisponible int NULL, 
		HonorJusticiaTipoPeriodo varchar (30) NULL,
		HonorJusticiaMaxAnual int NULL, 
		CONSTRAINT PriCDISocAcessoCfgPases PRIMARY KEY CLUSTERED (Empresa,Tipo)
  )
GO
if not exists (select * from sysobjects where id = object_id('dbo.CDISocPasesCfg') and type = 'U')  -- drop table CDISocPasesCfg
CREATE TABLE dbo.CDISocPasesCfg(
		Empresa		   varchar(5) NOT null,
		Tipo	varchar	(50) NOT NULL,
		Usuario        varchar(10)null,
		FechaEmision          datetime null,
		FechaUltimoCambio datetime null,
		InvitadoMaxPeriodo int NULL,
		InvitadoDiasPeriodo int NULL,
		InvitadoMaxEjercicio int NULL,
		SocioMaxPeriodo int NULL,
		SocioDiasPeriodo int NULL,
		SocioMaxEjercicio int NULL,		
		CONSTRAINT PriCDISocPasesCfg PRIMARY KEY CLUSTERED (Empresa,Tipo)
  )
GO
--SELECT * FROM CDISocAcessoCfgBloqueo
--SELECT * FROM CDISocAcessoCfgVencimiento
--SELECT * FROM CDISocAcessoCfgPases
--SELECT * FROM CDISocPasesCfg
if not exists (select * from sysobjects where id = object_id('dbo.CDIPasoSocBloqueo') and type = 'U')  -- drop table CDIPasoSocBloqueo
CREATE TABLE CDIPasoSocBloqueo(
	id int IDENTITY,	
	Empresa varchar(5) null,
	Usuario varchar(10) null,
	Socio  varchar(30) null,
	Descripcion15 varchar(50) null,
	Causa varchar(50) null,
	BajaTotal bit NULL,
	Mov Varchar (20) NULL ,
	Estatus		VARCHAR(20)NULL ,
	Vencimiento	FLOAT NULL, 
	Titular		BIT DEFAULT 0 NULL, 
	IDCxc     int NULL
)
GO
EXEC spALTER_TABLE 'CDIPasoSocBloqueo', 'Mov', 'Varchar(20) null' --select Mov from CDIPasoSocBloqueo
GO
EXEC spALTER_TABLE 'CDIPasoSocBloqueo', 'IDCxc', 'int NULL' --select * from CDIPasoSocBloqueo
GO
EXEC spALTER_TABLE 'CDIPasoSocBloqueo', 'Membresia', 'int NULL' --select * from CDIPasoSocBloqueo
GO

-- Tabla para depurar los Movimientos 

if not exists (select * from sysobjects where id = object_id('dbo.CDIPasoSocBloqueoDepura') and type = 'U')  -- drop table CDIPasoSocBloqueoDepura
CREATE TABLE CDIPasoSocBloqueoDepura(
	id int IDENTITY,	
	Empresa varchar(5) null,
	Usuario varchar(10) null,
	Socio  varchar(30) null,
	Descripcion15 varchar(50) null,
	Causa varchar(50) null,
	BajaTotal bit NULL,
	Mov Varchar (20) NULL ,
	Estatus		VARCHAR(20)NULL ,
	Vencimiento	FLOAT NULL, 
	Titular		BIT DEFAULT 0 NULL, 
	IDCxc     int NULL
)
GO
EXEC spALTER_TABLE 'CDIPasoSocBloqueoDepura', 'Mov', 'Varchar(20) null' --select Mov from CDIPasoSocBloqueo
GO
EXEC spALTER_TABLE 'CDIPasoSocBloqueoDepura', 'IDCxc', 'int NULL' --select * from CDIPasoSocBloqueo
GO
EXEC spALTER_TABLE 'CDIPasoSocBloqueoDepura', 'Prioridad', 'int NULL' --select * from CDIPasoSocBloqueo
GO


if not exists (select * from sysobjects where id = object_id('dbo.CDIPasoSocBloqueoAcum') and type = 'U')  -- drop table CDIPasoSocBloqueoAcum

CREATE TABLE CDIPasoSocBloqueoAcum(
	id int IDENTITY,	
	Empresa varchar(5) null,
	Usuario varchar(10) null,
	Socio  varchar(30) null,
	Descripcion15 varchar(50) null,
	Causa varchar(50) null,
	BajaTotal bit NULL,
	Mov Varchar (20) NULL ,
	Estatus			VARCHAR(20)NULL,
	Vencimiento FLOAT NULL,
	Titular		BIT DEFAULT 0 NULL
)
GO

if not exists (select * from sysobjects where id = object_id('dbo.CDISocioTarjeta') and type = 'U')  -- drop table CDISocioTarjeta
CREATE TABLE dbo.CDISocioTarjeta(
		Empresa		   varchar(5) NOT null,
		Usuario        varchar(10)null,
		FechaEmision          datetime null,
		Cte varchar(10) NOT NULL ,
		Tarjeta varchar(20) 	NOT NULL ,	
		Estatus	varchar(30) null, 
		Socio   varchar(100) NULL, 
		CONSTRAINT PriCDISocioTarjeta PRIMARY KEY CLUSTERED (Empresa,Cte,Tarjeta)
  )
GO

EXEC spALTER_TABLE 'CDISocioTarjeta', 'Socio', 'varchar(100)'
GO

if not exists (select * from sysobjects where id = object_id('dbo.CDIAccesoIp') and type = 'U')  -- drop table CDIAccesoIp
CREATE TABLE dbo.CDIAccesoIp(
		Empresa		   varchar(5)  NOT null,
		Usuario        varchar(10)null,
		FechaEmision          datetime null,
		Origen varchar(10) NOT NULL ,
		Ip varchar(20) NOT  NULL ,
		Estatus	varchar(30) null
		CONSTRAINT PriCDIAccesoIp PRIMARY KEY CLUSTERED (Empresa,Origen,Ip)
  )
GO
if not exists (select * from sysobjects where id = object_id('dbo.CDIAccesoOrigen') and type = 'U')  -- drop table CDIAccesoOrigen
CREATE TABLE dbo.CDIAccesoOrigen(
		Empresa		   varchar(5) NOT null,
		Usuario        varchar(10)null,
		FechaEmision          datetime null,
		Tipo varchar(10) NOT NULL ,
		Origen varchar(10) NOT NULL ,
		Clave varchar(10) NOT  NULL ,
		Estatus	varchar(30) null
		CONSTRAINT PriCDIAccesoOrigen PRIMARY KEY CLUSTERED (Empresa,Tipo,Origen,Clave)
  )
GO
IF EXISTS(SELECT * FROM Sys.Tables WHERE Name='CDICtrlAccesoDll')
 DROP TABLE CDICtrlAccesoDll
 GO
CREATE TABLE CDICtrlAccesoDll
 (
	Persona    varchar(50) NOT NULL,
	Tipo       varchar(1)  NOT NULL,
	Torniquete varchar(1)  NULL DEFAULT (0),
	Cadena     varchar(50) NULL,
	Estatus    varchar(15) NULL,
	Fecha      AS         Getdate()
CONSTRAINT [pk_CDICtrlAccesoDll] PRIMARY KEY CLUSTERED(Persona,Tipo)
 )
 GO

--SELECT * FROM CDIAccesoIp
--SELECT name FROM sysobjects WHERE xtype='U' AND name LIKE '%CDI%'

