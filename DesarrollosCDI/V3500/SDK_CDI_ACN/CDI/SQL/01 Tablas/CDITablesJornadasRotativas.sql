/* Configuracion MS SQL Server */
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

GO
EXEC spALTER_TABLE 'Jornada', 'EsRotativa', 'bit NULL DEFAULT 0 WITH VALUES'
GO
EXEC spALTER_TABLE 'Jornada', 'EsNocturna', 'bit NULL DEFAULT 0 WITH VALUES'
GO
EXEC spALTER_TABLE 'Jornada', 'ToleranciaEntrada', 'int NULL DEFAULT 0 WITH VALUES'
GO
EXEC spALTER_TABLE 'Jornada', 'ToleranciaSalida', 'int NULL DEFAULT 0 WITH VALUES'
GO
----------------------------------------------------------
---------------    Tabla de                ---------------
----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='PersonalJornadaMes') 
CREATE TABLE dbo.PersonalJornadaMes 
(
     ID               int   IDENTITY(1,1),
     Personal         varchar(10) collate DataBase_Default  NULL,
     PeriodoTipo      varchar (20) collate DataBase_Default NULL,
     FechaD			  datetime null,
     FechaA			  datetime null,
     Area			varchar(50)collate DataBase_Default NULL,
     Sucursal		Int NULL,
     Empresa		varchar (5) collate DataBase_Default null,   
     Usuario          varchar(10)collate DataBase_Default null, 
     D01              varchar(20)collate DataBase_Default null, 
     D02              varchar(20)collate DataBase_Default null, 
     D03              varchar(20)collate DataBase_Default null, 
     D04              varchar(20)collate DataBase_Default null, 
     D05              varchar(20)collate DataBase_Default null, 
     D06              varchar(20)collate DataBase_Default null, 
     D07              varchar(20)collate DataBase_Default null, 
	 Estatus varchar(15) default 'SINAFECTAR' collate DataBase_Default null,
	 Bloqueado int default 0 null

)
GO

----------------------------------------------------------
---------------    Tabla de                ---------------
----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='PersonalJornadaMesHist') 
CREATE TABLE dbo.PersonalJornadaMesHist 
(
     ID               int   IDENTITY(1,1),
     Personal         varchar(10) collate DataBase_Default  NULL,
	 Sucursal		  int, 		
	 Empresa		  varchar(5) collate DataBase_Default NULL, 	
     Grupo			  varchar(50)collate DataBase_Default NULL,
     Departamento	  varchar(50)collate DataBase_Default NULL,
	 CentroCostos	  varchar(20)collate DataBase_Default NULL,
     Puesto           varchar(50)collate DataBase_Default NULL,
     PeriodoTipo      varchar (20) collate DataBase_Default NULL,
	 Periodo		  int,	
     Area			  varchar(50)collate DataBase_Default NULL,
     Usuario          varchar(10)collate DataBase_Default null, 
     Mes int NULL,
     Anio int NULL,
     D1              varchar(20)collate DataBase_Default null, 
     D2              varchar(20)collate DataBase_Default null, 
     D3              varchar(20)collate DataBase_Default null, 
     D4              varchar(20)collate DataBase_Default null, 
     D5              varchar(20)collate DataBase_Default null, 
     D6              varchar(20)collate DataBase_Default null, 
     D7              varchar(20)collate DataBase_Default null, 
     D8              varchar(20)collate DataBase_Default null, 
     D9              varchar(20)collate DataBase_Default null, 
     D10              varchar(20)collate DataBase_Default null, 
     D11              varchar(20)collate DataBase_Default null, 
     D12              varchar(20)collate DataBase_Default null, 
     D13              varchar(20)collate DataBase_Default null, 
     D14              varchar(20)collate DataBase_Default null, 
     D15              varchar(20)collate DataBase_Default null, 
     D16              varchar(20)collate DataBase_Default NULL,
     D17              varchar(20)collate DataBase_Default NULL,
     D18              varchar(20)collate DataBase_Default NULL,
     D19              varchar(20)collate DataBase_Default NULL,
     D20              varchar(20)collate DataBase_Default NULL,
     D21              varchar(20)collate DataBase_Default NULL,
     D22              varchar(20)collate DataBase_Default NULL,
     D23              varchar(20)collate DataBase_Default NULL,
     D24              varchar(20)collate DataBase_Default NULL,
     D25              varchar(20)collate DataBase_Default NULL,
     D26              varchar(20)collate DataBase_Default NULL,
     D27              varchar(20)collate DataBase_Default NULL,
     D28              varchar(20)collate DataBase_Default NULL,
     D29              varchar(20)collate DataBase_Default NULL,
     D30              varchar(20)collate DataBase_Default NULL,
     D31              varchar(20)collate DataBase_Default NULL, 
					  CONSTRAINT PK_PersonalJornadaMesHist  PRIMARY KEY  CLUSTERED (ID) 
)
GO
----------------------------------------------------------
---------------    Tabla de                ---------------
----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='UsuarioJornadasAdmin') 
CREATE TABLE dbo.UsuarioJornadasAdmin 
(
     ID              int IDENTITY(1,1),
     UsuarioInt      varchar(10) NULL,
     Area            varchar(50)  NULL,
     Admin           Bit default 0 null 
)
GO
----------------------------------------------------------
---------------    Tabla de                ---------------
----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='PersonalJornadaTiempos') 
CREATE TABLE dbo.PersonalJornadaTiempos
(
     ID              int          NOT NULL IDENTITY(1,1),
     Personal        varchar(10)   NULL,
     Fecha			Datetime NULL,
     Entrada         datetime      NULL,
     Salida          datetime      NULL,
     EntradaTolerancia         datetime      NULL,
     SalidaTolerancia         datetime      NULL
     CONSTRAINT  PK_PersonalJornadaTiempos PRIMARY KEY CLUSTERED (id) 

)
GO
IF NOT EXISTS (select * from sysobjects where Name='PK_PersonalJornadaTiempos')
  ALTER TABLE dbo.PersonalJornadaTiempos ADD CONSTRAINT
	  PK_PersonalJornadaTiempos PRIMARY KEY CLUSTERED 
	  (
	  ID
	  ) ON [PRIMARY]
GO

if not exists(select * from SysTabla where SysTabla = 'PersonalJornadaTiempos')
INSERT INTO SysTabla (SysTabla, Tipo) VALUES ('PersonalJornadaTiempos', 'Cuenta')
EXEC spSincroNivelRegistroCampos 'PersonalJornadaTiempos'
go
----------------------------------------------------------
---------------    Tabla de                ---------------
----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='EspecificarJornadaArea') 
CREATE TABLE dbo.EspecificarJornadaArea (
			ID              int          NOT NULL IDENTITY(1,1),
			PeriodoTipo varchar(20),
			FechaD			Datetime NULL,
			FechaA			dateTime NULL,
			Area varchar(50) null

			)
GO
TRUNCATE TABLE EspecificarJornadaArea
GO
INSERT INTO EspecificarJornadaArea (PeriodoTipo,Area) VALUES ('Quincenal','')
GO
----------------------------------------------------------
---------------    Tabla de                ---------------
----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='UsuarioDepartamentoJornada') 
CREATE  TABLE dbo.UsuarioDepartamentoJornada 
(
     ID              int          NOT NULL IDENTITY(1,1),
     Usuario         varchar(10)  NOT NULL ,
     Departamento    varchar(50)  NOT NULL ,
     UsuarioCambio   varchar(10)  NOT NULL ,
     Fecha           datetime     DEFAULT GETDATE(),
     CONSTRAINT  PK_UsuarioDepartamentoJornada PRIMARY KEY CLUSTERED (id) 
)
GO
----------------------------------------------------------
---------------    Tabla de                ---------------
----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='ExcedenteHrs') 
CREATE TABLE [dbo].[ExcedenteHrs]
(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FechaAplicacion] [datetime] NULL,
	[Personal] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[JornadaEntrada] [datetime] NULL,
	[FechaEntrada] [datetime] NULL,
	[JornadaSalida] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[DEBEEntrada] [int] NULL,
	[DEBOEntrada] [int] NULL,
	[DEBESalida] [int] NULL,
	[DEBOSalida] [int] NULL,
	[Mov] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HoraD] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HoraA] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaAplicacionPermiso] [datetime] NULL,
	[Cantidad] [int] NULL,
	[SaldoHrs] [int] NULL
) ON [PRIMARY]
GO
----------------------------------------------------------
---------------    Tabla de                ---------------
----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='CopiarDiasJornadaMes')
CREATE TABLE dbo.CopiarDiasJornadaMes
(
     ID               int          NOT NULL,
     Estacion         int
)

GO
EXEC spALTER_TABLE 'PersonalJornadaMes', 'Sucursal', 'Int NULL'
GO
EXEC spALTER_TABLE 'PersonalJornadaMes', 'Empresa', 'varchar (5) collate DataBase_Default null'
GO
EXEC spALTER_TABLE 'PersonalJornadaMesHist', 'FechaD', 'datetime'
go
EXEC spALTER_TABLE 'PersonalJornadaTiempos', 'Jornada', 'varchar(20) collate DataBase_Default null '
