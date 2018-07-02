SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

EXEC spAlter_Table 'Cxc', 'HHCobroIntegrado', 'bit NULL DEFAULT 0 WITH VALUES'
GO

EXEC spAlter_Table 'Cte', 'CECliente', 'varchar(10) NULL'
-- EXEC spAlter_Table 'Cte', 'CEPlan', 'varchar(10) NULL'
EXEC spAlter_Table 'Cte', 'CEClientePorcentaje', 'float NULL'
-- EXEC spAlter_Table 'Cte', 'CEFechaIngreso', 'datetime NULL'
GO
	
if not exists(select * from SysTabla where SysTabla = 'CEC')
INSERT INTO SysTabla (SysTabla, Tipo) VALUES ('CEC', 'Movimiento')
if not exists (select * from sysobjects where id = object_id('dbo.CEC') and type = 'U') 
CREATE TABLE dbo.CEC (
		ID			int		NOT NULL IDENTITY (1,1),

		Empresa			char(5)         NULL,
		Mov 		        char(20) 	NULL,
		Serie			varchar(20)	NULL,
		Periodo			int		NULL,
		Ejercicio		int		NULL,
		
		Consecutivo 		int		NOT NULL DEFAULT 0,
		Sucursal		int		NOT NULL DEFAULT 0,
		
		CONSTRAINT priCEC PRIMARY KEY CLUSTERED (ID)
  )
GO

if not exists(select * from SysTabla where SysTabla = 'CAC')
INSERT INTO SysTabla (SysTabla, Tipo) VALUES ('CAC', 'Movimiento')
if not exists (select * from sysobjects where id = object_id('dbo.CAC') and type = 'U') 
CREATE TABLE dbo.CAC (
		ID			int		NOT NULL IDENTITY (1,1),

		Empresa			char(5)         NULL,
		Mov 		        char(20) 	NULL,
		Serie			varchar(20)	NULL,
		Periodo			int		NULL,
		Ejercicio		int		NULL,
		
		Consecutivo 		int		NOT NULL DEFAULT 0,
		Sucursal		int		NOT NULL DEFAULT 0,
		
		CONSTRAINT priCAC PRIMARY KEY CLUSTERED (ID)
  )
GO

if not exists (select * from SysTabla where SysTabla = 'CEPlan') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CEPlan','Maestro',NULL)
/****** CEPlan ******/
if not exists (select * from sysobjects where id = object_id('CEPlan') and type = 'U')
CREATE TABLE dbo.CEPlan(
		CEPlan			char(10)		NOT NULL,
		Descripcion		char(100)		NOT NULL,
		Nivel			varchar(50)		NULL,
		Area			varchar(50)		NULL,
		CreditoDirecto		bit			NULL DEFAULT 1,
		Creditos		int			NULL,
		CreditosOpcional	int			NULL,
		Inscripcion		money			NULL,
		Precio			money			NULL,
		MonedaPrecio		varchar(10)		NULL,
		Impuesto1		float			NULL,
		Condicion		varchar(50)		NULL,		
		Estatus			char(15)		NOT NULL DEFAULT 'ALTA',
		TieneMovimientos	bit			NOT NULL DEFAULT 0,
		HorarioVariable		bit			NOT NULL DEFAULT 0,
		Coordinacion		varchar(50)		NULL,
		Evaluacion		varchar(20)		NULL,
		Aprobacion		varchar(50)		NULL,
		CONSTRAINT priCEPlan PRIMARY KEY CLUSTERED (CEPlan)
)
GO

if not exists (select * from SysTabla where SysTabla = 'CEPlanD') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CEPlanD','Maestro',NULL)
/****** CEPlanD ******/
if not exists (select * from sysobjects where id = object_id('CEPlanD') and type = 'U')
CREATE TABLE dbo.CEPlanD (
		CEPlan			char(10)		NOT NULL,
		Materia			char(10)		NOT NULL,
		Tipo			varchar(15)		NOT NULL DEFAULT 'Obligatoria', -- Opcional 
		Precio			money			NULL,
		Creditos		int			NULL,
		CONSTRAINT priCEPlanD PRIMARY KEY CLUSTERED (CEPlan, Materia)
)
GO

if not exists (select * from SysTabla where SysTabla = 'Coordinacion') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('Coordinacion','Maestro',NULL)
/****** Coordinacion ******/
if not exists (select * from sysobjects where id = object_id('Coordinacion') and type = 'U')
CREATE TABLE dbo.Coordinacion (
		Coordinacion		varchar(50),
		CONSTRAINT priCoordinacion PRIMARY KEY CLUSTERED (Coordinacion)
)
GO


if not exists (select * from SysTabla where SysTabla = 'CEMateria') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CEMateria','Maestro',NULL)
/****** CEMateria ******/
if not exists (select * from sysobjects where id = object_id('CEMateria') and type = 'U')
CREATE TABLE dbo.CEMateria (
		Materia			char(10)		NOT NULL,
		Descripcion		varchar(50)		NOT NULL,
		Precio			money			NULL,
		Grado			int			NULL,
		Estatus			char(15)		NOT NULL DEFAULT 'ALTA',
		TieneMovimientos	bit			NOT NULL DEFAULT 0,
		CONSTRAINT priCEMateria PRIMARY KEY CLUSTERED (Materia)
)
GO

if not exists (select * from SysTabla where SysTabla = 'CEMateriaDependencia') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CEMateriaDependencia','Maestro',NULL)
/****** CEMateriaDependencia ******/
if not exists (select * from sysobjects where id = object_id('CEMateriaDependencia') and type = 'U')
CREATE TABLE dbo.CEMateriaDependencia (
		CEPlan			char(10)		NOT NULL,
		Materia			char(10)		NOT NULL,
		Dependencia		char(10)		NOT NULL,
		CONSTRAINT priCEMateriaDependencia PRIMARY KEY CLUSTERED (CEPlan, Materia, Dependencia)
)
GO

if not exists (select * from SysTabla where SysTabla = 'CEPrograma') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CEPrograma','Maestro',NULL)
/****** CEPrograma ******/
if not exists (select * from sysobjects where id = object_id('dbo.CEPrograma') and type = 'U')
CREATE TABLE dbo.CEPrograma (
		Programa		char(10)		NOT NULL,
		Ciclo			char(50)		NULL,
		FechaInicio		datetime		NULL,
		FechaFin		datetime		NULL,
		Estatus			char(15)		NOT NULL DEFAULT 'ALTA', -- APROBAR, VIGENTE, VENCIDO
		TieneMovimientos	bit			NOT NULL DEFAULT 0,
		CONSTRAINT priCEPrograma PRIMARY KEY CLUSTERED (Programa)
)
GO

if not exists (select * from SysTabla where SysTabla = 'CEProgramaD') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CEProgramaD','Movimiento',NULL)
/****** CEProgramaD ******/
if not exists (select * from sysobjects where id = object_id('dbo.CEProgramaD') and type = 'U')
CREATE TABLE dbo.CEProgramaD (
		ID			int IDENTITY,
		Empresa			char(5),		
		Sucursal		int,
		Programa		char(10),
		CEPlan			char(10),
		Materia			char(10),
		Grupo			varchar(10),

		Espacio			varchar(10)		NULL,
		Profesor		char(10)		NULL,
		Horario			varchar(30)		NULL, -- Maestro de Horario

		Cupo			int			NULL,
		Reservado		int			NULL,
		Disponible		int			NULL,

		CONSTRAINT priCEProgramaD PRIMARY KEY CLUSTERED (ID)
)
GO

if not exists (SELECT * FROM sysindexes, sysobjects WHERE sysobjects.name = 'CEProgramaD' AND sysindexes.name = 'Consulta' AND sysobjects.id = sysindexes.id)
  CREATE INDEX Consulta ON dbo.CEProgramaD (Grupo, Materia, Programa, CEPlan, Sucursal, Empresa)
GO

if not exists (select * from SysTabla where SysTabla = 'CeProgramaDProfesor') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CeProgramaDProfesor','Movimiento',NULL)
/****** CeProgramaDProfesor ******/
if not exists (select * from sysobjects where id = object_id('dbo.CeProgramaDProfesor') and type = 'U')
CREATE TABLE dbo.CeProgramaDProfesor (
		ID			int,
		Profesor		char(10),
		Tipo			varchar(15)

		CONSTRAINT priCEProgramaDProfesor PRIMARY KEY CLUSTERED (ID, Profesor)
)
GO

if not exists (select * from SysTabla where SysTabla = 'Profesor') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('Profesor','Maestro',NULL)
/****** Profesor ******/
if not exists (select * from sysobjects where id = object_id('Profesor') and type = 'U')
CREATE TABLE dbo.Profesor (
		Profesor		char(10)		NOT NULL,
		Nombre			char(50)		NULL,
		Estatus			char(15)		NOT NULL DEFAULT 'ALTA',
		Proveedor		char(10)		NULL,
		Personal		char(10)		NULL,
		Cliente			char(10)		NULL,
		Categoria		varchar(50)		NULL,
		Nivel			varchar(50)		NULL,
		Area			varchar(50)		NULL,
		TieneMovimientos	bit			NOT NULL DEFAULT 0,
		CONSTRAINT priProfesor PRIMARY KEY CLUSTERED (Profesor)
)
GO

if not exists (select * from SysTabla where SysTabla = 'ProfesorTipo') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('ProfesorTipo','Maestro',NULL)
/****** ProfesorTipo ******/
if not exists (select * from sysobjects where id = object_id('ProfesorTipo') and type = 'U')
CREATE TABLE dbo.ProfesorTipo (

		ProfesorTipo		char(15)
		CONSTRAINT priProfesorTipo PRIMARY KEY CLUSTERED (ProfesorTipo)
)
GO

if not exists (select * from SysTabla where SysTabla = 'ProfCat') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('ProfCat','Maestro',NULL)
/****** ProfCat ******/
if not exists (select * from sysobjects where id = object_id('ProfCat') and type = 'U')
CREATE TABLE dbo.ProfCat (
		Categoria		varchar(50)
		CONSTRAINT priProfCat PRIMARY KEY CLUSTERED (Categoria)
)
GO


if not exists (select * from SysTabla where SysTabla = 'EmpresaCfgCE') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('EmpresaCfgCE','Cuenta',NULL)
/****** EmpresaCfgCE ******/
if not exists (select * from sysobjects where id = object_id('EmpresaCfgCE') and type = 'U')
CREATE TABLE dbo.EmpresaCfgCE (
		Empresa			char(5),
		ArticuloInscripcion	varchar(20),
		ArticuloMateria		varchar(20),
		MovVenta		char(20),
		EstatusVenta		char(15)
		CONSTRAINT priEmpresaCfgCE PRIMARY KEY CLUSTERED (Empresa)
)
GO

EXEC spAlter_Table 'EmpresaCfgCE', 'HHArticuloSEP', 'varchar(20) NULL'
GO

/****** CE ******/
if not exists (select * from SysTabla where SysTabla = 'CE') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CE','Movimiento','CE')
if not exists (select * from sysobjects where id = object_id('dbo.CE') and type = 'U') 
  CREATE TABLE dbo.CE (
	ID			int 	    	NOT NULL IDENTITY(1,1),

	Empresa			char(5)	        NOT NULL,
	Mov 			char(20)        NOT NULL,
	MovID			varchar(20)    	NULL,
	FechaEmision 		datetime    	NULL,
	UltimoCambio 		datetime    	NULL,
	Concepto		varchar(50)	NULL,
	Proyecto		varchar(50)   	NULL,
	UEN			int		NULL,
	Moneda  		char(10)   	NOT NULL,
	TipoCambio		float		NULL,
	Usuario 		char(10)   	NULL,
	Autorizacion		char(10)	NULL,
	Referencia 		varchar(50) 	NULL,
	Observaciones 		varchar(100) 	NULL,
	Estatus 		char(15)   	NULL,
	Situacion		varchar(50)	NULL,
	SituacionFecha		datetime	NULL,
	SituacionUsuario	varchar(10)	NULL,
	SituacionNota		varchar(100)	NULL,
	Programa		char(10)	NULL,
	CEPlan			char(10)	NULL,
	FechaInicio		datetime	NULL,
	FechaFin		datetime	NULL,
--	TipoExamen		varchar(20)	NULL, -- Normal, Especial, Extraordinario
	
	Condicion		varchar(50)	NULL,

	Poliza			varchar(20)     NULL,
	PolizaID		varchar(20)	NULL,
	GenerarPoliza		bit	    	NOT NULL DEFAULT 0,
	ContID			int		NULL,

	Ejercicio		int		NULL,
	Periodo			int		NULL,
	FechaRegistro		datetime	NULL,  
	FechaConclusion		datetime    	NULL,
	FechaCancelacion	datetime    	NULL,

	Sucursal		int		NOT NULL DEFAULT 0,
	Importe			money		NULL,
	Impuestos		money		NULL,
	Descuento		varchar(30)	NULL,
	DescuentoGlobal		float		NULL,
	DescuentoLineal		money		NULL,
	Inscripcion		money		NULL,

	Cliente			char(10)	NULL,
	Cliente2		char(10)	NULL,
	Porcentaje		float		NULL,
	Porcentaje2		float		NULL,

	Personal		varchar(10)	NULL,

	CONSTRAINT priCE PRIMARY KEY CLUSTERED (ID)
  )
  
EXEC spAlter_Table 'CE', 'HHCuotaSEP', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spAlter_Table 'CE', 'HHCuotaSEPImporte', 'money NULL'
EXEC spAlter_Table 'CE', 'HHInscripcion', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spAlter_Table 'CE', 'HHVencimiento', 'datetime NULL'


EXEC spADD_INDEX 'CE', 'Abrir', 'Mov, Estatus, Sucursal, FechaEmision, Usuario'
EXEC spADD_INDEX 'CE', 'Consecutivo', 'MovID, Mov'
EXEC spADD_INDEX 'CE', 'FechaEmision', 'FechaEmision, Estatus, Empresa'
EXEC spADD_INDEX 'CE', 'Cliente', 'Cliente, FechaEmision, Estatus, Empresa'
GO

/****** CED (Detalle) ******/
if not exists (select * from SysTabla where SysTabla = 'CED') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CED','Movimiento','CE')
if not exists (select * from sysobjects where id = object_id('dbo.CED') and type = 'U') 
CREATE TABLE dbo.CED (
	ID 			int       	NOT NULL,
 	Renglon			float	  	NOT NULL,
	CEPlan			char(10)	NULL,
	Materia			char(10)	NULL,
	Grupo			varchar(10)	NOT NULL,
	Espacio			varchar(10)	NULL,
	Profesor		varchar(10)	NULL,
	Cupo			int		NULL,
	Horario			varchar(30)	NULL, -- Maestro de Horario

	EspacioN		varchar(10)	NULL,
	ProfesorN		varchar(10)	NULL,
	HorarioN		varchar(30)	NULL, -- Maestro de Horario

	HoraD			varchar(5)	NULL, -- Si no se define el horario, se coloca de que hora a que hora
	HoraA			varchar(5)	NULL,
	Sucursal		int		NOT NULL,
	Inscripcion		money		NULL,
	Precio			money		NULL,
	DescuentoLineal		money		NULL,
	DescripcionExtra	varchar(100) 	NULL,
	Aplica   	        varchar(20)     NULL,
        AplicaID	        varchar(20)     NULL,
	Reservado		int		NULL,
	CONSTRAINT priCED PRIMARY KEY CLUSTERED (ID, Renglon)
)
GO

/****** CA ******/
if not exists (select * from SysTabla where SysTabla = 'CA') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CA','Movimiento','CA')
if not exists (select * from sysobjects where id = object_id('dbo.CA') and type = 'U') 
  CREATE TABLE dbo.CA (
	ID			int 	    	NOT NULL IDENTITY(1,1),

	Empresa			char(5)	        NOT NULL,
	Mov 			char(20)        NOT NULL,
	MovID			varchar(20)    	NULL,
	FechaEmision 		datetime    	NULL,
	UltimoCambio 		datetime    	NULL,
	Concepto		varchar(50)	NULL,
	Proyecto		varchar(50)   	NULL,
	UEN			int		NULL,
	Usuario 		char(10)   	NULL,
	Referencia 		varchar(50) 	NULL,
	Observaciones 		varchar(100) 	NULL,
	Estatus 		char(15)   	NULL,
	Situacion		varchar(50)	NULL,
	SituacionFecha		datetime	NULL,
	SituacionUsuario	varchar(10)	NULL,
	SituacionNota		varchar(100)	NULL,
	Programa		char(10)	NULL,
	CEPlan			char(10)	NULL,
	Materia			char(10)	NULL,
	Grupo			char(10)	NULL,

	Poliza			varchar(20)     NULL,
	PolizaID		varchar(20)	NULL,
	GenerarPoliza		bit	    	NOT NULL DEFAULT 0,
	ContID			int		NULL,

	Ejercicio		int		NULL,
	Periodo			int		NULL,
	FechaRegistro		datetime	NULL,  
	FechaConclusion		datetime    	NULL,
	FechaCancelacion	datetime    	NULL,

	Sucursal		int		NOT NULL DEFAULT 0,

	Cliente			char(10)	NULL,
--	Profesor		varchar(10)	NULL,
--	Personal		char(10)	NULL,

	CONSTRAINT priCA PRIMARY KEY CLUSTERED (ID)
)
GO

EXEC spADD_INDEX 'CA', 'Abrir', 'Mov, Estatus, Sucursal, FechaEmision, Usuario'
EXEC spADD_INDEX 'CA', 'Consecutivo', 'MovID, Mov'
EXEC spADD_INDEX 'CA', 'FechaEmision', 'FechaEmision, Estatus, Empresa'
EXEC spADD_INDEX 'CA', 'Consulta', 'Materia, Grupo, CEPlan, Programa, Estatus, Empresa'
EXEC spADD_INDEX 'CA', 'Cliente', 'Cliente, Estatus, Empresa'
GO


/****** CAD (Detalle) ******/
if not exists (select * from SysTabla where SysTabla = 'CAD') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CAD','Movimiento','CAD')
if not exists (select * from sysobjects where id = object_id('dbo.CAD') and type = 'U') 
CREATE TABLE dbo.CAD (
	ID 			int       	NOT NULL,
 	Renglon			float	  	NOT NULL,

	Materia			char(10)	NULL,
	Cliente			char(10)	NULL,
	Personal		char(10)	NULL,
	Profesor		char(10)	NULL,
	Asistencia		bit		NULL,
	Observaciones		varchar(100)	NULL,
	Referencia		varchar(50)	NULL,
	Calificacion		varchar(50)	NULL,
	Valor			float		NULL
	CONSTRAINT priCAD PRIMARY KEY CLUSTERED (ID, Renglon)
)
GO

/****** Horario ******/
if not exists (select * from SysTabla where SysTabla = 'Horario') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('Horario','Maestro',NULL)
if not exists (select * from sysobjects where id = object_id('dbo.Horario') and type = 'U') 
CREATE TABLE dbo.Horario(
	Horario			varchar(30)    	NOT NULL,
	Turno			varchar(20)	NULL, -- Matutino, Vespertino, Nocturno
	Domingo			bit		NOT NULL Default 0,
	Lunes			bit		NOT NULL Default 0,
	Martes			bit		NOT NULL Default 0,
	Miercoles		bit		NOT NULL Default 0,
	Jueves			bit		NOT NULL Default 0,
	Viernes			bit		NOT NULL Default 0,
	Sabado			bit		NOT NULL Default 0,
	HoraD			varchar(5)	NULL,
	HoraA			varchar(5)	NULL,
	CONSTRAINT priHorario PRIMARY KEY CLUSTERED (Horario)
)
GO

if not exists (select * from SysTabla where SysTabla = 'CEAlumnoHist') 
INSERT INTO SysTabla (SysTabla,Tipo,Modulo) VALUES ('CEAlumnoHist','Movimiento',NULL)
/********** CEAlumnoHist **********/
if not exists(select * from sysobjects where id = object_id ('dbo.CEAlumnoHist') and type = 'U')
CREATE TABLE dbo.CEAlumnoHist(
	Empresa			char(5),
	Sucursal		int,
	Alumno			char(10),
	AlumnoTipo		varchar(15), -- Cliente, Personal
	Programa		char(10),
	CEPlan			char(10),
	Materia			char(10),
	Grupo			char(10),

	Estatus			char(15)	NOT NULL, -- Revision, ALTA, Baja, APROBADO, REPROBADO
	Tipo			varchar(20)	NULL, -- Normal, Especial, Extraordinario
	Asistencia		int		NULL,
	PorcentajeAsistencia	float		NULL,
	Calificacion		varchar(50)	NULL,
	Valor			float		NULL,
	Observaciones		varchar(100)	NULL,
CONSTRAINT priCEAlumnoHist PRIMARY KEY(Alumno, AlumnoTipo, Materia, Programa, Grupo, CEPlan, Sucursal, Empresa)
)
GO

EXEC spAlter_Table 'CEAlumnoHist', 'Modulo', 'varchar(5) NULL'
EXEC spAlter_Table 'CEAlumnoHist', 'ModuloID', 'int NULL'
GO

/********** CECalendario **********/
if not exists(select * from sysobjects where id = object_id ('dbo.CECalendario') and type = 'U')
CREATE TABLE dbo.CECalendario(
	ID			int	IDENTITY,
	Empresa			char(5),
	Modulo			char(10),
	ModuloID		int,
	Sucursal		int,
	Programa		char(10),

	Espacio			char(10),
	Profesor		char(10),

	CEPlan			char(10),
	Grupo			char(10),
	Materia			char(10),

	Estatus			char(15)	NOT NULL, -- Activo, Borrador

	Inicio			datetime,
	Fin			datetime

CONSTRAINT priCECalendario PRIMARY KEY(ID)
)
GO

if not exists (SELECT * FROM sysindexes, sysobjects WHERE sysobjects.name = 'CECalendario' AND sysindexes.name = 'Consulta' AND sysobjects.id = sysindexes.id)
  CREATE INDEX Consulta ON dbo.CECalendario (CEPlan, Materia, Grupo, Espacio, Profesor)
GO
if not exists (SELECT * FROM sysindexes, sysobjects WHERE sysobjects.name = 'CECalendario' AND sysindexes.name = 'Profesor' AND sysobjects.id = sysindexes.id)
  CREATE INDEX Profesor ON dbo.CECalendario (Profesor, Programa)
GO
if not exists (SELECT * FROM sysindexes, sysobjects WHERE sysobjects.name = 'CECalendario' AND sysindexes.name = 'Espacio' AND sysobjects.id = sysindexes.id)
  CREATE INDEX Espacio ON dbo.CECalendario (Espacio, Programa)
GO
if not exists (SELECT * FROM sysindexes, sysobjects WHERE sysobjects.name = 'CECalendario' AND sysindexes.name = 'ModuloID' AND sysobjects.id = sysindexes.id)
  CREATE INDEX ModuloID ON dbo.CECalendario (ModuloID, Modulo)
GO


/********** CECalendarioGeneral **********/
if not exists(select * from sysobjects where id = object_id ('dbo.CECalendarioGeneral') and type = 'U')
CREATE TABLE dbo.CECalendarioGeneral(
	ID			int	IDENTITY,
	Empresa			char(5),
	Modulo			char(10),
	ModuloID		int,
	Sucursal		int,
	Programa		char(10),

	Espacio			char(10),
	Profesor		char(10),

	CEPlan			char(10),
	Grupo			char(10),
	Materia			char(10),

	Estatus			char(15)	NOT NULL, -- Activo, Borrador

	Domingo			bit		NULL,
	Lunes			bit		NULL,
	Martes			bit		NULL,
	Miercoles		bit		NULL,
	Jueves			bit		NULL,
	Viernes			bit		NULL,
	Sabado			bit		NULL,
	HoraD			varchar(5)	NULL,
	HoraA			varchar(5)	NULL,

CONSTRAINT priCECalendarioGeneral PRIMARY KEY(ID)
)
GO

/****** CEPlanAsigna ******/
if not exists (select * from sysobjects where id = object_id('CEPlanAsigna') and type = 'U')
CREATE TABLE dbo.CEPlanAsigna(
		Estacion		int,

		Empresa			char(5)			NOT NULL,		
		Sucursal		int			NOT NULL,
		Programa		char(10)		NOT NULL,

		CEPlan			char(10)		NOT NULL,
		Materia			char(10)		NOT NULL,
		Grupo			varchar(10)		NOT NULL
		CONSTRAINT priCEPlanAsigna PRIMARY KEY CLUSTERED (Estacion)
)
GO

/****** CEPlanAsigna2 ******/
if not exists (select * from sysobjects where id = object_id('CEPlanAsigna2') and type = 'U')
CREATE TABLE dbo.CEPlanAsigna2(
		Estacion		int,

		Empresa			char(5)			NOT NULL,		
		Sucursal		int			NOT NULL,
		Programa		char(10)		NOT NULL,

		CEPlan			char(10)		NOT NULL,
		Grupo			varchar(10)		NOT NULL,
		Digito			int			NULL,
		CONSTRAINT priCEPlanAsigna2 PRIMARY KEY CLUSTERED (Estacion)
)
GO

--  RegistrarSeleccionID( [carpeta] ), tabla ListaID
/****** CEPlanAsignaPlantilla ******/
if not exists (select * from sysobjects where id = object_id('CEPlanAsignaPlantilla') and type = 'U')
CREATE TABLE dbo.CEPlanAsignaPlantilla(
		Estacion		int,
		ID			int			IDENTITY,

		Materia			char(10)		NOT NULL,
		Grupo			varchar(10)		NOT NULL,
		Espacio			char(10)		NULL, 
		Profesor		char(10)		NULL, 
		Horario			varchar(30)		NULL, 
		Sucursal		int
		CONSTRAINT priCEPlanAsignaPlantilla PRIMARY KEY CLUSTERED (Estacion, ID)
)
GO

if not exists (select * from sysobjects where id = object_id('dbo.HHCEMateriaArt') and type = 'U')  -- drop table HHCEMateriaArt
CREATE TABLE dbo.HHCEMateriaArt(
		Materia				char(10),
		Articulo			varchar(20)
		CONSTRAINT priHHCEMateriaArt PRIMARY KEY CLUSTERED (Materia, Articulo)
  )
GO

if NOT exists (select * from sysobjects where id = object_id('dbo.fkHHCEMateria') and type = 'F')
ALTER TABLE HHCEMateriaArt ADD CONSTRAINT fkHHCEMateria FOREIGN KEY(Materia) REFERENCES CEMateria(Materia) ON UPDATE CASCADE ON DELETE CASCADE
GO

if NOT exists (select * from sysobjects where id = object_id('dbo.fkHHCEArt') and type = 'F')
ALTER TABLE HHCEMateriaArt ADD CONSTRAINT fkHHCEArt FOREIGN KEY(Articulo) REFERENCES Art(Articulo) ON UPDATE CASCADE ON DELETE CASCADE
GO

if not exists (select * from sysobjects where id = object_id('dbo.HHCEArt') and type = 'U')  -- drop table HHCEArt
CREATE TABLE dbo.HHCEArt(
		ID					int,
		Renglon				float,
		Articulo			varchar(20)	NOT NULL,
		Cantidad			float		NOT NULL,
		Precio				money		NULL,
		Descuento			money		NULL
		CONSTRAINT priHHCEArt PRIMARY KEY CLUSTERED (ID, Renglon)
  )
GO

if NOT exists (select * from sysobjects where id = object_id('dbo.fkHHCEArt') and type = 'F')
ALTER TABLE HHCEArt ADD CONSTRAINT fkHHCEMovArt FOREIGN KEY(ID) REFERENCES CE(ID) ON UPDATE NO ACTION ON DELETE CASCADE
GO

if not exists (select * from sysobjects where id = object_id('dbo.HHCEVentaCobro') and type = 'U') 
CREATE TABLE dbo.HHCEVentaCobro(
	ID 					int         	NOT NULL,

	Importe1			money			NULL,
	Importe2			money			NULL,
	Importe3			money			NULL,
	Importe4			money			NULL,
	Importe5			money			NULL,

	FormaCobro1 		varchar(50)   	NULL,
	FormaCobro2 		varchar(50)   	NULL,
	FormaCobro3 		varchar(50)   	NULL,
	FormaCobro4 		varchar(50)   	NULL,
	FormaCobro5 		varchar(50)   	NULL,

	Referencia1			varchar(50)   	NULL,
	Referencia2			varchar(50)   	NULL,
	Referencia3			varchar(50)   	NULL,
	Referencia4			varchar(50)   	NULL,
	Referencia5			varchar(50)		NULL,

	Cambio				money		NULL,
--	Redondeo			money		NULL,
--	DelEfectivo			money		NULL,
--	Sucursal			int		NOT NULL DEFAULT 0,
	CtaDinero		varchar(10)	NULL,
	Cajero			varchar(10)	NULL,
--	Condicion		varchar(50)	NULL,
--	Vencimiento		datetime	NULL,
	Actualizado		bit		NULL,

	TotalCobrado 		AS (ISNULL(Importe1, 0.0) + ISNULL(Importe2, 0.0) + ISNULL(Importe3, 0.0) + ISNULL(Importe4, 0.0) + ISNULL(Importe5, 0.0) - ISNULL(Cambio, 0.0)),

	CONSTRAINT priHHCEVentaCobro PRIMARY KEY CLUSTERED (ID)
)
GO

if not exists (select * from sysobjects where id = object_id('dbo.HHCECfgCambio') and type = 'U')  -- drop table HHCECfgCambio
CREATE TABLE dbo.HHCECfgCambio(
	Empresa				varchar(5),
	MovAltaPospuesto	varchar(20),
	MovBajaPospuesto	varchar(20),
	MovAltaCambio		varchar(20),
	MovBajaCambio		varchar(20)
	CONSTRAINT priHHCECfgCambio PRIMARY KEY CLUSTERED (Empresa)
)
GO

if not exists (select * from sysobjects where id = object_id('dbo.HHCECambio') and type = 'U')  -- drop table HHCECambio
CREATE TABLE dbo.HHCECambio(
		Estacion			int,
		IDInterno			int	IDENTITY,
		Empresa				varchar(5),
		Sucursal			int,
		Alumno				varchar(10),
		Programa			varchar(10),
		CEPlan				varchar(10),
		Materia				varchar(10)		NULL,
		Grupo				varchar(10),
		ProgramaN			varchar(10),
		GrupoN				varchar(10)		NULL,
		CONSTRAINT priHHCECambio PRIMARY KEY CLUSTERED (Estacion, IDInterno)
  )
GO

EXEC spAlter_Table 'HHCECambio', 'Modulo', 'varchar(5) NULL'
EXEC spAlter_Table 'HHCECambio', 'ModuloID', 'int NULL'
EXEC spAlter_Table 'HHCECambio', 'MateriaN', 'varchar(10) NULL'
EXEC spAlter_Table 'HHCECambio', 'CEPlanN', 'varchar(10) NULL'
GO

if not exists (select * from sysobjects where id = object_id('dbo.HHCECambioLog') and type = 'U')  -- drop table HHCECambioLog
CREATE TABLE dbo.HHCECambioLog(
		Estacion			int,
		ID					int
		CONSTRAINT priHHCECambioLog PRIMARY KEY CLUSTERED (Estacion, ID)
  )
GO

if not exists (select * from sysobjects where id = object_id('dbo.HHCEInscripcionVentaExcluir') and type = 'U') 
CREATE TABLE dbo.HHCEInscripcionVentaExcluir(
		Mov				varchar(20)
		CONSTRAINT priHHCEInscripcionVentaExcluir PRIMARY KEY CLUSTERED (Mov)
  )
GO

/* Movimientos

Alta Programa
Baja Programa
Cambio Programa


Pre-registro
Inscripcion
Baja
Cambio

*/


/***************** Control Escolar ***************/

IF NOT EXISTS (SELECT * FROM OtrosModulos WHERE Modulo = 'CE')
  INSERT OtrosModulos VALUES ('CE', 'Control Escolar')

/***************** Control Académico ***************/

IF NOT EXISTS (SELECT * FROM OtrosModulos WHERE Modulo = 'CA')
  INSERT OtrosModulos VALUES ('CA', 'Control Academico')


/***************** Control Modulos ***************/

if not exists(SELECT * FROM Modulo WHERE Modulo = 'CE')
INSERT INTO Modulo(Modulo, Nombre) VALUES('CE', 'Control Escolar')

if not exists(SELECT * FROM Modulo WHERE Modulo = 'CA')
INSERT INTO Modulo(Modulo, Nombre) VALUES('CA', 'Control Academico')

if not exists(SELECT * FROM MovClave WHERE Modulo = 'CE')
BEGIN
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.AP',  'Alta Programa',			NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.BP',  'Baja Programa',			NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.CP',  'Cambio Programa',			NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.P',  'PreRegistro',				NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.I',  'Inscripcion',				NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.B',  'Baja',				NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.C',  'Cambio',				NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.IE',  'Inscripcion Examen',			NULL)
END
GO

if not exists(SELECT * FROM MovClave WHERE Modulo = 'CA')
BEGIN
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.AC',   'Asist Participante',			NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.APE',  'Asistencia Personal',		NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.APR',  'Asistencia Expositor',		NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.CC',   'Evaluacion Alumno',			NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.CPE',  'Evaluacion Personal',		NULL)
-- INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.CPR',  'Evaluacion Profesor',		NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.R',    'Revalidacion',			NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.JC',   'Ajuste Calificacion',		NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.JAC',  'Ajuste Asistencia',			NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.JAPE', 'Ajuste Asist. Pers.',		NULL)
INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CA',	'CA.JAPR', 'Ajuste Asist. Prof.',		NULL)
END
GO

if not exists(SELECT * FROM MovTipo WHERE Modulo = 'CE')
BEGIN
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	5,	'Alta Programa',	'CE.AP', 'CE', 'Alta Programa')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	10,	'Baja Programa',	'CE.BP', 'CE', 'Baja Programa')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	15,	'Cambio Programa',	'CE.CP', 'CE', 'Cambio Programa')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	20,	'PreRegistro',		'CE.P', 'CE', 'PreRegistro')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	25,	'Inscripcion',		'CE.I', 'CE', 'Inscripcion')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	30,	'Baja',			'CE.B', 'CE', 'Baja')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	35,	'Cambio',		'CE.C', 'CE', 'Cambio')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	40,	'Inscripcion Examen',	'CE.IE', 'CE', 'Inscripcion Examen')
END
GO

if not exists(SELECT * FROM MovTipo WHERE Modulo = 'CA')
BEGIN
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	5,	'Asist Participante',	'CA.AC', 'CA', 'Asist Participante')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	10,	'Asistencia Personal',	'CA.APE', 'CA', 'Asistencia Personal')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	15,	'Asistencia Expositor',	'CA.APR', 'CA', 'Asistencia Expositor')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	20,	'Evaluacion Alumno',	'CA.CC', 'CA', 'Evaluacion Alumno')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	25,	'Evaluacion Personal','CA.CPE', 'CA', 'Evaluacion Personal')
-- INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	30,	'Evaluacion Profesor','CA.CPR', 'CA', 'Evaluacion Profesor')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	35,	'Revalidacion', 'CA.R', 'CA', 'Revalidacion')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	40,	'Ajuste Calificacion', 'CA.JC', 'CA', 'Ajuste Calificacion')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	45,	'Ajuste Asist. Alumno', 'CA.JAC', 'CA', 'Ajuste Asist. Alumno')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	50,	'Ajuste Asist. Pers.', 'CA.JAPE', 'CA', 'Ajuste Asist. Pers.')
INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CA',	55,	'Ajuste Asist. Prof.', 'CA.JAPR', 'CA', 'Ajuste Asist. Prof.')

END
GO

if exists (select * from sysobjects where id = object_id('dbo.tgCEPlan') and sysstat & 0xf = 8) drop trigger dbo.tgCEPlan
GO
CREATE TRIGGER tgCEPlan ON CEPlan
-- WITH ENCRYPTION
FOR UPDATE, DELETE
AS BEGIN
  DECLARE
    @CEPlanN		Char(10),
    @CEPlanA		Char(10),
    @Mensaje 		char(255)

  SELECT @CEPlanN = CEPlan
    FROM Inserted

  SELECT @CEPlanA = CEPlan
    FROM Deleted

-- Modifica
	IF @CEPlanN IS NOT NULL AND @CEPlanA IS NOT NULL AND @CEPlanN <> @CEPlanA
		BEGIN
			UPDATE CEPlanD SET CEPlan = @CEPlanN WHERE CEPlan = @CEPlanA
			UPDATE CEMateriaDependencia SET CEPlan = @CEPlanN WHERE CEPlan = @CEPlanA
		END

-- Elimina
	IF @CEPlanN IS NULL AND @CEPlanA IS NOT NULL
		BEGIN
			DELETE CEPlanD WHERE CEPlan = @CEPlanA
			DELETE CEMateriaDependencia WHERE CEPlan = @CEPlanA
		END
END
GO

if exists (select * from sysobjects where id = object_id('dbo.tgCEPlanD') and sysstat & 0xf = 8) drop trigger dbo.tgCEPlanD
GO
CREATE TRIGGER tgCEPlanD ON CEPlanD
-- WITH ENCRYPTION
FOR INSERT, UPDATE, DELETE
AS BEGIN
  DECLARE
    @CEPlanDN		char(10),
    @CEPlanDA		char(10),
    @MateriaN		char(10),
    @MateriaA		char(10),
    @CreditosN		int,
    @CreditosA		int,
    @Mensaje 		char(255),
    @Obligatorios	int,
    @Opcionales		int

  SELECT @CEPlanDN = CEPlan, @MateriaN = Materia, @CreditosN = Creditos
    FROM Inserted

  SELECT @CEPlanDA = CEPlan, @MateriaA = Materia, @CreditosA = Creditos
    FROM Deleted

-- Inserta
	IF @MateriaN IS NOT NULL AND @MateriaA IS NULL
		BEGIN
			SELECT @Obligatorios = SUM(Creditos) FROM CEPlanD WHERE CEPlan = @CEPlanDN AND Tipo = 'Obligatoria'
			SELECT @Opcionales = SUM(Creditos) FROM CEPlanD WHERE CEPlan = @CEPlanDN AND Tipo <> 'Obligatoria'

			UPDATE CEPlan SET Creditos = @Obligatorios, CreditosOpcional = @Opcionales WHERE CEPlan = @CEPlanDN
		END

-- Modifica
-- select @MateriaN, @MateriaA, @CreditosN, @CreditosA
	IF @MateriaN IS NOT NULL AND @MateriaA IS NOT NULL AND (@MateriaN <> @MateriaA OR @CreditosN <> @CreditosA)
		BEGIN
			IF @MateriaN <> @MateriaA DELETE CEMateriaDependencia WHERE CEPlan = @CEPlanDA AND Materia = @MateriaA
			SELECT @Obligatorios = SUM(Creditos) FROM CEPlanD WHERE CEPlan = @CEPlanDN AND Tipo = 'Obligatoria'
			SELECT @Opcionales = SUM(Creditos) FROM CEPlanD WHERE CEPlan = @CEPlanDN AND Tipo <> 'Obligatoria'
-- select @obligatorios, @opcionales
			UPDATE CEPlan SET Creditos = @Obligatorios, CreditosOpcional = @Opcionales WHERE CEPlan = @CEPlanDN
		END

-- Elimina
	IF @MateriaN IS NULL AND @MateriaA IS NOT NULL
		BEGIN
			DELETE CEMateriaDependencia WHERE CEPlan = @CEPlanDA AND Materia = @MateriaA

			SELECT @Obligatorios = SUM(Creditos) FROM CEPlanD WHERE CEPlan = @CEPlanDN AND Tipo = 'Obligatoria'
			SELECT @Opcionales = SUM(Creditos) FROM CEPlanD WHERE CEPlan = @CEPlanDN AND Tipo <> 'Obligatoria'

			UPDATE CEPlan SET Creditos = @Obligatorios, CreditosOpcional = @Opcionales WHERE CEPlan = @CEPlanDN

		END
END
GO

if exists (select * from sysobjects where id = object_id('dbo.tgCEMateriaDependencia') and sysstat & 0xf = 8) drop trigger dbo.tgCEMateriaDependencia
GO
CREATE TRIGGER tgCEMateriaDependencia ON CEMateriaDependencia
-- WITH ENCRYPTION
FOR INSERT, UPDATE
AS BEGIN
  DECLARE
    @Materia		char(10),
    @DependenciaN	char(10),
    @DependenciaA	char(10),
    @Mensaje 		char(255)

  SELECT @Materia = Materia, @DependenciaN = Dependencia
    FROM Inserted

  SELECT @DependenciaN = Dependencia
    FROM Deleted

-- Inserta
	IF @DependenciaN IS NOT NULL AND @DependenciaA IS NULL
		BEGIN
			IF @Materia = @DependenciaN
			BEGIN
				SELECT @Mensaje = 'La Dependencia no puede ser igual que la Materia'
				RAISERROR (@Mensaje,16,-1) 
			END
		END

-- Modifica
	IF @DependenciaN IS NOT NULL AND @DependenciaA IS NOT NULL AND @DependenciaN <> @DependenciaA
		BEGIN
			IF @Materia = @DependenciaN
			BEGIN
				SELECT @Mensaje = 'La Dependencia no puede ser igual que la Materia'
				RAISERROR (@Mensaje,16,-1) 
			END

		END

RETURN
END
GO

if exists (select * from sysobjects where id = object_id('dbo.tgCEA') and sysstat & 0xf = 8) drop trigger dbo.tgCEA
GO
CREATE TRIGGER tgCEA ON CE
-- WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Modulo 		char(5),
    @Mov		char(20),
    @Sucursal		int,
    @ID			int,
    @FechaInicio	datetime,
    @Ahora 		datetime,
    @FechaAnterior	datetime,
    @EstatusNuevo 	char(15),
    @EstatusAnterior 	char(15),
    @SituacionNueva 	varchar(50),
    @SituacionAnterior 	varchar(50),
    @Usuario		char(10),
    @ProgramaN		char(10),
    @ProgramaA		char(10),
    @Mensaje		char(255)

  SELECT @Modulo = 'CE'
  SELECT @EstatusAnterior = NULLIF(RTRIM(Estatus), ''), @SituacionAnterior = NULLIF(RTRIM(Situacion), ''), @ProgramaA = NULLIF(RTRIM(Programa),'') FROM Deleted
  SELECT @EstatusNuevo    = NULLIF(RTRIM(Estatus), ''), @SituacionNueva    = NULLIF(RTRIM(Situacion), ''), @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @Usuario = Usuario, @ProgramaN = NULLIF(RTRIM(Programa),'') FROM Inserted
  IF @EstatusNuevo <> @EstatusAnterior AND 
     ((@EstatusNuevo = 'SINAFECTAR' AND @EstatusAnterior IN ('PENDIENTE', 'CONCLUIDO', 'CANCELADO') AND @EstatusAnterior NOT IN (NULL, 'AFECTANDO')) OR
      (@EstatusNuevo = 'CONFIRMAR'  AND @EstatusAnterior IN ('PENDIENTE', 'CONCLUIDO', 'CANCELADO')) OR
      (@EstatusNuevo IN ('PENDIENTE', 'CONCLUIDO') AND @EstatusAnterior = 'CANCELADO'))
  BEGIN
    SELECT @Mensaje = Descripcion FROM MensajeLista WHERE Mensaje = 60090
    RAISERROR (@Mensaje,16,-1) 
  END 
  ELSE
  BEGIN
    IF @EstatusNuevo NOT IN (NULL, 'AFECTANDO') AND (@EstatusAnterior <> @EstatusNuevo OR @SituacionAnterior <> @SituacionNueva)
    BEGIN
/*      IF @EstatusAnterior <> @EstatusNuevo AND (@EstatusAnterior <> 'AFECTANDO' OR @SituacionAnterior IS NULL OR @SituacionNueva IS NULL)
      BEGIN
        EXEC spMovSituacionNueva @Modulo, @Mov, @EstatusNuevo, @EstatusAnterior, @SituacionNueva OUTPUT
        UPDATE CE SET Situacion = @SituacionNueva, SituacionFecha = NULL, SituacionUsuario = NULL, SituacionNota = NULL WHERE ID = @ID 
      END*/
      SELECT @Ahora = GETDATE(), @FechaInicio = NULL
      SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM MovTiempo WHERE Modulo = @Modulo AND ID = @ID

      IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
        UPDATE MovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
      IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

      INSERT INTO MovTiempo (Modulo,  Sucursal,  ID,  Usuario,  FechaInicio,  FechaComenzo, Estatus,       Situacion) 
                     VALUES (@Modulo, @Sucursal, @ID, @Usuario, @FechaInicio, @Ahora,       @EstatusNuevo, @SituacionNueva)
    END

      IF @EstatusNuevo = 'SINAFECTAR' AND @ProgramaN <> @ProgramaA AND Exists(SELECT * FROM CED WHERE ID = @ID AND ISNULL(Reservado,0) > 0)
      BEGIN
	    SELECT @Mensaje = 'Ya existen Materias Reservadas en el Movimiento con el Programa Indicado. No puede modificar el Programa.'
	    RAISERROR (@Mensaje,16,-1) 
      END

/*	SELECT @ESTATUSNUEVO, @PROGRAMAN, @PROGRAMAA
	SELECT * FROM CED WHERE ID = @ID AND ISNULL(Reservado,0) > 0
*/
  END

  EXEC spMovAlActualizar @Modulo, @ID, @Mov, @EstatusNuevo, @EstatusAnterior, @SituacionNueva, @SituacionAnterior

/*
  -- Para que cancele la poliza cuando Maneja SincroContabilidadMatriz
  IF @EstatusNuevo = 'CANCELADO' AND @EstatusAnterior IN ('PENDIENTE', 'CONCLUIDO') AND EXISTS(SELECT * FROM Version WHERE Sucursal = 0 AND SincroContabilidadMatriz = 1)
    UPDATE CE SET GenerarPoliza = 1 WHERE ID = @ID AND GenerarPoliza = 0 AND ContID IS NOT NULL 
*/
RETURN
END
GO

if exists (select * from sysobjects where id = object_id('dbo.tgCEB') and sysstat & 0xf = 8) drop trigger dbo.tgCEB
GO
CREATE TRIGGER tgCEB ON CE
-- WITH ENCRYPTION
FOR DELETE
AS BEGIN
  DECLARE
    @ID		int,
    @Mov	char(20),
    @MovID	varchar(20),
    @MovTipo	char(10),
    @Empresa	char(5),
    @Estatus 	char(15),

    @Renglon	float,
    @Sucursal	int,
    @Programa   char(10),
    @Plan	char(10),
    @Materia    char(10),
    @Grupo	char(10),
    @Reservado	int,

    @Mensaje	char(255)


  SELECT @ID = ID, @Mov = Mov, @MovID = MovID, @Estatus = Estatus, @Empresa = Empresa, @Programa = Programa FROM Deleted
  IF (@Estatus IS NOT NULL AND @Estatus NOT IN ('SINAFECTAR', 'CONFIRMAR', 'BORRADOR')) OR (ISNULL(@MovID,'') <> '')
  BEGIN
    SELECT @Mensaje = Descripcion FROM MensajeLista WHERE Mensaje = 60090
    RAISERROR (@Mensaje,16,-1) 
  END ELSE
	IF Exists(SELECT * FROM CED WHERE ID = @ID)
	  BEGIN
	     DECLARE crDesReservarCED CURSOR FOR
	     SELECT ID, Renglon, Sucursal, CEPlan, ISNULL(Materia,''), Grupo, ISNULL(Reservado,0)
	       FROM CED WHERE ID = @ID
	        AND ISNULL(Reservado,0)>0
	
	     OPEN crDesReservarCED
	     FETCH NEXT FROM crDesReservarCED INTO @ID, @Renglon, @Sucursal, @Plan, @Materia, @Grupo, @Reservado
	     WHILE @@FETCH_STATUS = 0
	     BEGIN

		UPDATE CEProgramaD SET Reservado = ISNULL(Reservado,0) - 1*@Reservado, Disponible = ISNULL(Disponible,0) + 1*@Reservado
		WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo
	     	FETCH NEXT FROM crDesReservarCED INTO @ID, @Renglon, @Sucursal, @Plan, @Materia, @Grupo, @Reservado
	     END

	    CLOSE crDesReservarCED
	    DEALLOCATE crDesReservarCED

/*	    SELECT @Mensaje = 'Elimine primero las partidas del movimiento'
	    RAISERROR (@Mensaje,16,-1) */
	  END
END
GO

if exists (select * from sysobjects where id = object_id('dbo.tgCED') and sysstat & 0xf = 8) drop trigger dbo.tgCED
GO
CREATE TRIGGER tgCED ON CED
-- WITH ENCRYPTION
FOR DELETE
AS BEGIN
  DECLARE
    @ID		int,
    @Renglon	float,
    @Empresa	char(5),
    @Sucursal	int,
    @Programa   char(10),
    @Plan	char(10),
    @Materia    char(10),
    @Grupo	char(10),
    @Reservado	int,
    @Mensaje	char(255)

     SELECT @ID = ID, @Renglon = Renglon, @Sucursal = Sucursal, @Plan = CEPlan, @Materia = Materia, @Grupo = Grupo , @Reservado = ISNULL(Reservado,0)
       FROM Deleted

     SELECT @Empresa = Empresa, @Programa = Programa FROM CE WHERE ID = @ID

     IF @Reservado > 0
     UPDATE CEProgramaD SET Reservado = ISNULL(Reservado,0) - 1*@Reservado, Disponible = ISNULL(Disponible,0) + 1*@Reservado
      WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Materia = @Materia AND Grupo = @Grupo

END
GO

if exists (select * from sysobjects where id = object_id('dbo.tgCAA') and sysstat & 0xf = 8) drop trigger dbo.tgCAA
GO
CREATE TRIGGER tgCAA ON CA
-- WITH ENCRYPTION
FOR UPDATE
AS BEGIN
  DECLARE
    @Modulo 		char(5),
    @Mov		char(20),
    @Sucursal		int,
    @ID			int,
    @FechaInicio	datetime,
    @Ahora 		datetime,
    @FechaAnterior	datetime,
    @EstatusNuevo 	char(15),
    @EstatusAnterior 	char(15),
    @SituacionNueva 	varchar(50),
    @SituacionAnterior 	varchar(50),
    @Usuario		char(10),
    @Mensaje		char(255)

  SELECT @Modulo = 'CA'
  SELECT @EstatusAnterior = NULLIF(RTRIM(Estatus), ''), @SituacionAnterior = NULLIF(RTRIM(Situacion), '') FROM Deleted
  SELECT @EstatusNuevo    = NULLIF(RTRIM(Estatus), ''), @SituacionNueva    = NULLIF(RTRIM(Situacion), ''), @Sucursal = Sucursal, @ID = ID, @Mov = NULLIF(RTRIM(Mov), ''), @Usuario = Usuario FROM Inserted
  IF @EstatusNuevo <> @EstatusAnterior AND 
     ((@EstatusNuevo = 'SINAFECTAR' AND @EstatusAnterior IN ('PENDIENTE', 'CONCLUIDO', 'CANCELADO') AND @EstatusAnterior NOT IN (NULL, 'AFECTANDO')) OR
      (@EstatusNuevo = 'CONFIRMAR'  AND @EstatusAnterior IN ('PENDIENTE', 'CONCLUIDO', 'CANCELADO')) OR
      (@EstatusNuevo IN ('PENDIENTE', 'CONCLUIDO') AND @EstatusAnterior = 'CANCELADO'))
  BEGIN
    SELECT @Mensaje = Descripcion FROM MensajeLista WHERE Mensaje = 60090
    RAISERROR (@Mensaje,16,-1) 
  END 
  ELSE
  BEGIN
    IF @EstatusNuevo NOT IN (NULL, 'AFECTANDO') AND (@EstatusAnterior <> @EstatusNuevo OR @SituacionAnterior <> @SituacionNueva)
    BEGIN
/*      IF @EstatusAnterior <> @EstatusNuevo AND (@EstatusAnterior <> 'AFECTANDO' OR @SituacionAnterior IS NULL OR @SituacionNueva IS NULL)
      BEGIN
        EXEC spMovSituacionNueva @Modulo, @Mov, @EstatusNuevo, @EstatusAnterior, @SituacionNueva OUTPUT
        UPDATE CE SET Situacion = @SituacionNueva, SituacionFecha = NULL, SituacionUsuario = NULL, SituacionNota = NULL WHERE ID = @ID 
      END*/
      SELECT @Ahora = GETDATE(), @FechaInicio = NULL
      SELECT @FechaInicio = MIN(FechaInicio), @FechaAnterior = MAX(FechaComenzo) FROM MovTiempo WHERE Modulo = @Modulo AND ID = @ID

      IF @FechaInicio IS NOT NULL AND @FechaAnterior IS NOT NULL
        UPDATE MovTiempo SET FechaTermino = @Ahora WHERE Modulo = @Modulo AND ID = @ID AND FechaComenzo = @FechaAnterior
      IF @FechaInicio IS NULL SELECT @FechaInicio = @Ahora

      INSERT INTO MovTiempo (Modulo,  Sucursal,  ID,  Usuario,  FechaInicio,  FechaComenzo, Estatus,       Situacion) 
                     VALUES (@Modulo, @Sucursal, @ID, @Usuario, @FechaInicio, @Ahora,       @EstatusNuevo, @SituacionNueva)
    END

/*	SELECT @ESTATUSNUEVO, @PROGRAMAN, @PROGRAMAA
	SELECT * FROM CED WHERE ID = @ID AND ISNULL(Reservado,0) > 0
*/
  END

  EXEC spMovAlActualizar @Modulo, @ID, @Mov, @EstatusNuevo, @EstatusAnterior, @SituacionNueva, @SituacionAnterior

/*
  -- Para que cancele la poliza cuando Maneja SincroContabilidadMatriz
  IF @EstatusNuevo = 'CANCELADO' AND @EstatusAnterior IN ('PENDIENTE', 'CONCLUIDO') AND EXISTS(SELECT * FROM Version WHERE Sucursal = 0 AND SincroContabilidadMatriz = 1)
    UPDATE CE SET GenerarPoliza = 1 WHERE ID = @ID AND GenerarPoliza = 0 AND ContID IS NOT NULL 
*/
RETURN
END
GO




/*Reiniciiar Bases*/
--Drop table EmpresaCfgCE
--Drop table CeProgramaDProfesor
--Drop table CeProgramaD

