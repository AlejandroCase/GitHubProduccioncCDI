SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

EXEC spALTER_TABLE 'CEPlan', 'CDIPermiteBeca', 'bit NULL Default 0 WITH VALUES'
EXEC spALTER_TABLE 'CEPlan', 'CDIConcepto', 'varchar(50) NULL'
EXEC spALTER_TABLE 'CEPlan', 'CDIComite', 'varchar(50) NULL'
EXEC spALTER_TABLE 'CEPlan', 'CDIEdadMinima', 'int NULL'
EXEC spALTER_TABLE 'CEPlan', 'CDIEdadMaxima', 'int NULL'
EXEC spALTER_TABLE 'CEPlan', 'CDIEstaturaMinima', 'money NULL'
EXEC spALTER_TABLE 'CEPlan', 'CDIPesoMinimo', 'money NULL'
EXEC spALTER_TABLE 'CEPlan', 'CDISexo', 'varchar(10) NULL'
EXEC spALTER_TABLE 'CEPlan', 'CDICoberturaMedica', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'CEPlan', 'CDIEvaluacionProfesor', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'CEPlan', 'CDIEvaluacionPsicologica', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'CEPlan', 'CDICondicionFisica', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'CEPlan', 'CDIDatosMedicos', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'CEPlan', 'CDIDatosTransporte', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'CEPlan', 'CDIMostrarInternet', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'CEPlan', 'CDIDiasVigenciaPreRegistro', 'int NULL'
EXEC spALTER_TABLE 'CEPlan', 'CDILimiteMesesDatosMedicos', 'int NULL'
EXEC spALTER_TABLE 'CEPlan', 'CDICentroCostos', 'varchar(20) NULL'
GO
EXEC spALTER_TABLE 'CE', 'CDICentroCostos', 'varchar(20) NULL'
GO
EXEC spALTER_TABLE 'CED', 'CDIBeca', 'money NULL'
EXEC spALTER_TABLE 'CED', 'CDIBecaAplicada', 'int NULL'
GO
EXEC spALTER_COLUMN 'CED', 'GRUPO', 'varchar(10) NULL'
GO

IF NOT EXISTS(SELECT * FROM MovClave mc WHERE mc.Modulo = 'CE' AND mc.Clave = 'CE.BEA')
  INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.BEA',  'Asignacion Beca',			NULL)
IF NOT EXISTS(SELECT * FROM MovClave mc WHERE mc.Modulo = 'CE' AND mc.Clave = 'CE.BEAU')
  INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.BEAU',  'Aumento Beca',			NULL)
IF NOT EXISTS(SELECT * FROM MovClave mc WHERE mc.Modulo = 'CE' AND mc.Clave = 'CE.BED')
  INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.BED',  'Disminucion Beca',			NULL)
IF NOT EXISTS(SELECT * FROM MovClave mc WHERE mc.Modulo = 'CE' AND mc.Clave = 'CE.BES')
  INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.BES',  'Solicitud Beca',			NULL)

--DSG 
IF NOT EXISTS(SELECT * FROM MovClave mc WHERE mc.Modulo = 'CE' AND mc.Clave = 'CE.DESC')
  INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion) VALUES ('CE',	'CE.DESC',  'Solicitud Descuento',			NULL)
  
IF NOT EXISTS(SELECT * FROM MovTipo mt WHERE mt.Modulo = 'CE' AND mt.Clave = 'CE.BEA')
  INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	50,	'Asignacion Beca',	'CE.BEA', 'CE', 'Asignacion Beca')
IF NOT EXISTS(SELECT * FROM MovTipo mt WHERE mt.Modulo = 'CE' AND mt.Clave = 'CE.BEAU')
  INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	60,	'Aumento Beca',	'CE.BEAU', 'CE', 'Aumento Beca')
IF NOT EXISTS(SELECT * FROM MovTipo mt WHERE mt.Modulo = 'CE' AND mt.Clave = 'CE.BED')
  INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	70,	'Disminucion Beca',	'CE.BED', 'CE', 'Disminucion Beca')
IF NOT EXISTS(SELECT * FROM MovTipo mt WHERE mt.Modulo = 'CE' AND mt.Clave = 'CE.BES')
  INSERT MovTipo (Modulo, Orden, Mov, Clave, ConsecutivoModulo, ConsecutivoMov) VALUES ('CE',	80,	'Solicitud Beca',	'CE.BES', 'CE', 'Solicitud Beca')
GO

--BEGM 20120430
IF NOT EXISTS(SELECT 1 FROM MovClave WHERE Modulo = 'CP' AND Clave = 'CP.TAMTR')
  INSERT INTO MovClave(Modulo, Clave, NombreOmision, EstatusContabilizar, SubClaveDe)
  VALUES('CP', 'CP.TAMTR', 'Traspaso a Mes 13', 'CONCLUIDO', 'CP.TA')
GO
--DSG
if not exists(select * from MovTipo WHERE Modulo = 'CE' and Clave = 'CE.BES' AND SubClave = 'CE.DESC') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('CE', 100, 'Solicitud Descuento', 'CE.BES', 'CE.DESC', 'CE', 'Solicitud Descuento')

IF NOT EXISTS(SELECT * FROM MovClave mc WHERE mc.Modulo = 'CP' AND mc.Clave = 'CP.DEV')
  INSERT MovClave (Modulo, Clave, NombreOmision, Descripcion, SubClaveDe) VALUES ('CP',	'CP.DEV',  'Devoluciones', NULL, 'CP.AS')

IF not exists(select * from MovTipo WHERE Modulo = 'CP' and Clave = 'CP.AS' AND SubClave = 'CP.DEV' AND Mov = 'Devoluciones') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('CP', 100, 'Devoluciones', 'CP.AS', 'CP.DEV', 'CP', 'Devoluciones')



if not exists (select * from sysobjects where id = object_id('dbo.CDICEBeca') and type = 'U')  -- drop table CDICEBeca
CREATE TABLE dbo.CDICEBeca(
		Empresa			    varchar(5),
		Programa        varchar(10),
		CEPlan          varchar(10),
		Materia         varchar(10),
		Importe         money,
		Reservado       money,
		Ejercido        money
		CONSTRAINT priCDICEBeca PRIMARY KEY CLUSTERED (Materia, CEPlan, Programa, Empresa)
  )
GO

EXEC spALTER_TABLE 'CDICEBeca', 'ImporteOriginal', 'money NULL'   --BEGM 20110728. Req. 5163. Error Becas
GO


if not exists (select * from sysobjects where id = object_id('dbo.CDIEmpresaCfg') and type = 'U')  -- drop table CDIEmpresaCfg
CREATE TABLE dbo.CDIEmpresaCfg(
		Empresa			            varchar(5),
		CEArtCoberturaMedica    varchar(20)
		CONSTRAINT priCDIEmpresaCfg PRIMARY KEY CLUSTERED (Empresa)
  )
GO

EXEC spALTER_TABLE 'CDIEmpresaCFG', 'CDIMovTraspMes13', 'varchar(20)'
GO

---------------------------------			4652   V A L I D A C I O N   P R E S U P U E S T A L
--- C D I E M P R E S A C F G ---			E M M
---------------------------------
EXEC spALTER_TABLE 'CDIEmpresaCfg',	'AplicaComprometido',	'bit NULL DEFAULT 0'	--- V A L I D A C I O N  C P   C O M P R O M E T I D O  O  E J E R C I D O
EXEC spALTER_TABLE 'CDIEmpresaCfg',	'CDIMovRenovacion',	    'varchar(20)'	        --- M O D U L O   D E   S O C I O S
EXEC spALTER_TABLE 'CDIEmpresaCfg',	'CDIPeriodoReingreso',	'int'	                --- M O D U L O   D E   S O C I O S
EXEC spALTER_TABLE 'CDIEmpresaCfg',	'CDIMovReingreso',	    'varchar(20)'	        --- M O D U L O   D E   S O C I O S
----------------------------------			4650 SIMULACION DEL MES 13 
EXEC spALTER_TABLE 'CDIEmpresaCfg',	'CDIMovSimulacion',			'varchar(20)'	    --- M O D U L O   D E   C P
EXEC spALTER_TABLE 'CDIEmpresaCfg',	'CDIUsuarioSimulacion',	    'varchar(10)'	    --- M O D U L O   D E   C P
EXEC spALTER_TABLE 'CDIEmpresaCfg',	'CDISucursalSimulacion',	'int'				--- M O D U L O   D E   C P

EXEC spALTER_TABLE 'CDIEmpresaCfg',	'CDICorreoCargosAutom',	'varchar(500)'  --BEGM 20120604. Envio de correo archivo cargos automaticos
EXEC spALTER_TABLE 'CDIEmpresaCfg',	'CDIDiaCargoAnual',	'int'  --BEGM 20120605. 5750. Cargos Recurrentes
GO
