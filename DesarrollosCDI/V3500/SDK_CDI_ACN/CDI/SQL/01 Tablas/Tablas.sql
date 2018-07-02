/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
---------------------------------------------------------------------------------------------


--------------------------------
---- A L T E R  T A B L E S ----
--------------------------------
EXEC spALTER_TABLE  'Parentesco', 'SufijosSocios',          'varchar(2)  NULL'
EXEC spALTER_TABLE  'Cte',        'Titular',                'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'Membresia',              'int NULL'
EXEC spALTER_TABLE  'Cte',        'Socio',                  'varchar(100)'
EXEC spALTER_TABLE  'Cte',        'Nacionalidad',           'varchar(30) NULL'
EXEC spALTER_TABLE  'Cte',        'Ocupacion',              'varchar(50) NULL'
EXEC spALTER_TABLE  'Cte',        'MismaDireccion',         'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'DireccionOtroSocio',     'varchar(10) NULL'
EXEC spALTER_TABLE  'Cte',        'RutaImagen',             'varchar(255) NULL'
EXEC spALTER_TABLE  'Cte',        'OtrosTelefonos',         'varchar(10) NULL'
EXEC spALTER_TABLE  'Cte',        'OtrasDirecciones',       'varchar(10) NULL'
EXEC spALTER_TABLE  'Cte',        'DireccionEnSuPais',      'varchar(255) NULL'
EXEC spALTER_TABLE  'Cte',        'NumeroPasaporte',        'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'DireccionUltimoEmpleo',  'varchar(255) NULL'
EXEC spALTER_TABLE  'Cte',        'InstitucionEnSuPais',    'varchar(100) NULL'
GO
EXEC spALTER_TABLE  'Cte',        'CDIEcoSocioEmpresa',       'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'CDIEcoPropietarioEmpresa', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'CDIEcoAccionistaEmpresa',  'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'CDIEcoEmpleadoEmpresa',    'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'CDIEcoNombreEmpresa',      'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoNombreGiro',         'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoDireccion',          'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoDireccionNumero',	  'varchar(20)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoDireccionNumeroInt', 'varchar(20)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoEntreCalles',	      'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoPlano',			  'varchar(15)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoObservaciones',	  'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoDelegacion',		  'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoColonia', 		      'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoPoblacion', 		  'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoEstado', 			  'varchar(30)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoPais', 			  'varchar(30)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoMail', 			  'varchar(50)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoTelefono',		      'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoFax', 			      'varchar(50)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoCodigoPostal',       'varchar(15) 	NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoIngresos',           'money 	    NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoCasa',               'varchar(10) 	NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoMontoRenta',         'money    	NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoMontoColegiatura',   'money        NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoColegio',            'varchar(100)	NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoGastosMensules',     'money        NULL'
EXEC spALTER_TABLE  'Cte',        'CDIEcoAutomoviles',        'varchar(10) 	NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedEstatura',           'float        NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMEdPeso',               'float        NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedTipoSangre',         'varchar(50)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedDonador',            'varchar(2)   NULL' 
EXEC spALTER_TABLE  'Cte',        'CDIMedEnfermo',            'varchar(2)   NULL' 
EXEC spALTER_TABLE  'Cte',        'CDIMedEnfermedad',         'varchar(10)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedAlergia',            'varchar(2)   NULL' 
EXEC spALTER_TABLE  'Cte',        'CDIMedAlergias',           'varchar(10)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedMedicamento',        'varchar(2)   NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedMedicamentos',       'varchar(10)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedSolicitudes',        'varchar(2)   NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedAvisar',             'varchar(50)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedTelefono',           'varchar(50)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedCelular',            'varchar(50)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedNombreMedico',       'varchar(60)  NULL' 
EXEC spALTER_TABLE  'Cte',        'CDIMedTeleMedico',         'varchar(50)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedCapacidades',        'varchar(255) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedCuidados',           'varchar(255) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedRecomenda',          'varchar(255) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedNoTarjeton',         'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedVigencia',           'datetime     NULL'
EXEC spALTER_TABLE  'Cte',        'CDIMedUltimoCambio',       'datetime     NULL'
GO
EXEC spALTER_TABLE  'Cte',        'CDITransServicio',       'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'CDITransHoraAscenso',    'varchar(5) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransMismaDir',       'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'CDITransDirOtroSocio',   'varchar(10) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransDireccion',      'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransNumero',	        'varchar(20)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransNumeroInt',      'varchar(20)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransEntreCalles',	'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransPlano',			'varchar(15)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransCodigoPostal',   'varchar(15)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransDelegacion',		'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransColonia', 		'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransPoblacion', 		'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransEstado', 		'varchar(30)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransNombreResp',   	'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransTelefono',       'varchar(50)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransLLevarDom',      'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'CDITransHoraSalida',     'varchar(5) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransMismaDir2',      'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',        'CDITransDirOtroSocio2',  'varchar(10) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransDireccion2',     'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransNumero2',	    'varchar(20)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransNumeroInt2',     'varchar(20)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransEntreCalles2',	'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransPlano2',			'varchar(15)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransCodigoPostal2',  'varchar(15)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransDelegacion2',	'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransColonia2', 		'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransPoblacion2', 	'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransEstado2', 		'varchar(30)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransNombreResp2',   	'varchar(100) NULL'
EXEC spALTER_TABLE  'Cte',        'CDITransTelefono2',      'varchar(50)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIDatosBancarios',      'varchar(10)  NULL'
EXEC spALTER_TABLE  'Cte',        'CDIAutorizacionCargos',  'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',		  'NIPCDI',				    'varchar (30) NULL'	
EXEC spALTER_TABLE  'Cte',		  'CDISubsidio',			'money        NULL'	
EXEC spALTER_TABLE  'Cte',		  'CDICuotaMembresia',		'money        NULL'	
EXEC spALTER_TABLE  'Cte',        'CDISocio',               'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'Cte',		  'CDIFacturarA',		    'varchar(10)  NULL'
-----------------------------------			4668   C A R G O S  R E C U R R E N T E S 
EXEC spALTER_TABLE 'Cte',		  'CDICargosRecurrentes',		'bit NULL DEFAULT 0'	
GO

----------------------- 4554	ACCESO ESPECIFICO A CATALOGOS
--- C L I E N T E S ---			EMM 
-----------------------
EXEC spALTER_TABLE 'Usuario', 'ClDatosGenerales',		'bit NULL DEFAULT 0'	--- PESTAÑA FICHA
EXEC spALTER_TABLE 'Usuario', 'ClDatosPersonales',		'bit NULL DEFAULT 0'	--- PESTAÑA PERSONAL
EXEC spALTER_TABLE 'Usuario', 'ClFiscal',				'bit NULL DEFAULT 0'	--- PESTAÑA FISCAL
EXEC spALTER_TABLE 'Usuario', 'ClSeguro',				'bit NULL DEFAULT 0'	--- PESTAÑA SEGURO
EXEC spALTER_TABLE 'Usuario', 'ClDatosVentas',			'bit NULL DEFAULT 0'	--- PESTAÑA VENTA
EXEC spALTER_TABLE 'Usuario', 'ClReglaNegocio',			'bit NULL DEFAULT 0'	--- PESTAÑA REGLA NEGOCIO
EXEC spALTER_TABLE 'Usuario', 'ClUsoServicio',			'bit NULL DEFAULT 0'	--- PESTAÑA USO DE SERVICIOS
EXEC spALTER_TABLE 'Usuario', 'ClPerfiles',				'bit NULL DEFAULT 0'	--- PESTAÑA PERFILES
EXEC spALTER_TABLE 'Usuario', 'ClFord',					'bit NULL DEFAULT 0'	--- PESTAÑA FORD
EXEC spALTER_TABLE 'Usuario', 'ClCRM',					'bit NULL DEFAULT 0'	--- PESTAÑA CRM
EXEC spALTER_TABLE 'Usuario', 'ClInternet',				'bit NULL DEFAULT 0'	--- PESTAÑA INTERNET
EXEC spALTER_TABLE 'Usuario', 'ClOtros',				'bit NULL DEFAULT 0'	--- PESTAÑA OTROS
EXEC spALTER_TABLE 'Usuario', 'ClComentarios',			'bit NULL DEFAULT 0'	--- PESTAÑA COMENTARIOS
EXEC spALTER_TABLE 'Usuario', 'ClCaracteristicas',		'bit NULL DEFAULT 0'	--- PESTAÑA FORMA EXTRA VALOR
EXEC spALTER_TABLE 'Usuario', 'ClSituacionesArea',		'bit NULL DEFAULT 0'	--- PESTAÑA SITUACION CTA
EXEC spALTER_TABLE 'Usuario', 'ClEcuador',				'bit NULL DEFAULT 0'	--- PESTAÑA ECUADOR
EXEC spALTER_TABLE 'Usuario', 'ClRolesAsignados',		'bit NULL DEFAULT 0'	--- PESTAÑA ROLES ASIGNADOS
GO
-----------------------------	EMM 
--- P R O V E E D O R E S ---
-----------------------------
EXEC spALTER_TABLE 'Usuario', 'PrDatosGenerales',		'bit NULL DEFAULT 0'	--- PESTAÑA FICHA
EXEC spALTER_TABLE 'Usuario', 'PrReglaNegocio',			'bit NULL DEFAULT 0'	--- PESTAÑA REGLA NEGOCIO
EXEC spALTER_TABLE 'Usuario', 'PrComprasPagos',			'bit NULL DEFAULT 0'	--- PESTAÑA COMPRAS
EXEC spALTER_TABLE 'Usuario', 'PrFiscal',				'bit NULL DEFAULT 0'	--- PESTAÑA FISCAL
EXEC spALTER_TABLE 'Usuario', 'PrOtrosDatos',			'bit NULL DEFAULT 0'	--- PESTAÑA OTROS
EXEC spALTER_TABLE 'Usuario', 'PrCaracteristicas',		'bit NULL DEFAULT 0'	--- PESTAÑA FORMA EXTRA VALOR
EXEC spALTER_TABLE 'Usuario', 'PrSituacionesArea',		'bit NULL DEFAULT 0'	--- PESTAÑA SITUACION CTA
EXEC spALTER_TABLE 'Usuario', 'PrEcuador',				'bit NULL DEFAULT 0'	--- PESTAÑA ECUADOR
EXEC spALTER_TABLE 'Usuario', 'PrRolesAsignados',		'bit NULL DEFAULT 0'	--- PESTAÑA ROLES ASIGNADOS
GO
-----------------------			EMM 
--- P E R S O N A L ---
-----------------------
EXEC spALTER_TABLE 'Usuario', 'PeDatosGenerales',		'bit NULL DEFAULT 0'	--- PESTAÑA DETALLE
EXEC spALTER_TABLE 'Usuario', 'PeBeneficiarios',		'bit NULL DEFAULT 0'	--- PESTAÑA BENEFICIARIOS
EXEC spALTER_TABLE 'Usuario', 'PeRecursosHumanos',		'bit NULL DEFAULT 0'	--- PESTAÑA RH
EXEC spALTER_TABLE 'Usuario', 'PeAspiraciones',			'bit NULL DEFAULT 0'	--- PESTAÑA ASPIRACIONES
EXEC spALTER_TABLE 'Usuario', 'PeReglaNegocio',			'bit NULL DEFAULT 0'	--- PESTAÑA NOMINA
EXEC spALTER_TABLE 'Usuario', 'PeComisionesEspeciales',	'bit NULL DEFAULT 0'	--- PESTAÑA COMISIONES ESP
EXEC spALTER_TABLE 'Usuario', 'PeOtrosDatos',			'bit NULL DEFAULT 0'	--- PESTAÑA OTROS DATOS
EXEC spALTER_TABLE 'Usuario', 'PePerfiles',				'bit NULL DEFAULT 0'	--- PESTAÑA PERFILES
EXEC spALTER_TABLE 'Usuario', 'PeCaracteristicas',		'bit NULL DEFAULT 0'	--- PESTAÑA FORMA EXTRA VALOR
EXEC spALTER_TABLE 'Usuario', 'PeSituacionesArea',		'bit NULL DEFAULT 0'	--- PESTAÑA SITUACION CTA
EXEC spALTER_TABLE 'Usuario', 'PeRolesAsignados',		'bit NULL DEFAULT 0'	--- PESTAÑA ROLES ASIGNADOS
GO
-----------------				EMM 
--- S O C I O ---
-----------------
EXEC spALTER_TABLE 'Usuario', 'SoDatosGenerales',		'bit NULL DEFAULT 0'	--- PESTAÑA FICHA
EXEC spALTER_TABLE 'Usuario', 'SoEconomicos',			'bit NULL DEFAULT 0'	--- PESTAÑA ECONOMICOS
EXEC spALTER_TABLE 'Usuario', 'SoDatosMedicos',			'bit NULL DEFAULT 0'	--- PESTAÑA DATOS MEDICOS
EXEC spALTER_TABLE 'Usuario', 'SoPreferencias',			'bit NULL DEFAULT 0'	--- PESTAÑA PREFERENCIAS
EXEC spALTER_TABLE 'Usuario', 'SoTransporte',			'bit NULL DEFAULT 0'	--- PESTAÑA TRANSPORTE
EXEC spALTER_TABLE 'Usuario', 'SoDatosBancarios',		'bit NULL DEFAULT 0'	--- PESTAÑA DATOS BANCARIOS
EXEC spALTER_TABLE 'Usuario', 'SoDatosAcademicos',		'bit NULL DEFAULT 0'	--- PESTAÑA DATOS ACADEMICOS
EXEC spALTER_TABLE 'Usuario', 'SoEstudioSocioeconomico','bit NULL DEFAULT 0'	--- PESTAÑA ESTUDIOSOCIOECONOMICO
EXEC spALTER_TABLE 'Usuario', 'SoReglaNegocio',			'bit NULL DEFAULT 0'	--- PESTAÑA REGLA NEGOCIO
EXEC spALTER_TABLE 'Usuario', 'SoRolesAsignados',		'bit NULL DEFAULT 0'	--- PESTAÑA ROLES ASIGNADOS
GO
---------------------			4554   C A T A L O G O   R O L E S
--- U S U A R I O ---			E M M
---------------------
EXEC spALTER_TABLE 'Usuario',	'CDIRelacionesRestringidasRoles',	'bit NULL DEFAULT 0'				--- ELIMINA Y MODIFICA TABLA CDIRelacionesRestringidasRoles							
EXEC spALTER_TABLE 'Usuario',	'CDIDescripContable',				'bit NULL DEFAULT 0 WITH VALUES'	--- 4697  P A R T I D A S  P R E S U P U E S T A L E S 
EXEC spALTER_TABLE 'Usuario',	'CDIDescripClavePresupuestal',		'bit NULL DEFAULT 0 WITH VALUES'	--- 4697  P A R T I D A S  P R E S U P U E S T A L E S 

-------------------------------------------
--- Desarrollo. PARTIDAS PRESUPUESTALES ---
--- Cliente   . CDI                     ---
--- Folio     . 4697                    ---
--- Fecha     . 21 / 10 / 10            ---
--- Autor     . EDER MENDOZA            ---
-------------------------------------------   
EXEC spALTER_TABLE  'ClavePresupuestal',	'Rama',							'varchar(20) NULL'
EXEC spALTER_TABLE  'ClavePresupuestal',    'EsAcumulativa',				'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'ClavePresupuestal',    'ExcluirPlaneacion',			'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'ClavePresupuestal',    'Moderado',						'float NULL'
EXEC spALTER_TABLE  'ClavePresupuestal',    'Optimista',					'float NULL'
EXEC spALTER_TABLE  'ClavePresupuestal',    'Pesimista',					'float NULL'
EXEC spALTER_TABLE  'ClavePresupuestal',    'Especificar',					'varchar(50) NULL'
EXEC spALTER_TABLE  'ClavePresupuestal',    'Proyecto',						'varchar(50) NULL'
EXEC spALTER_TABLE  'ClavePresupuestal',    'EsIngresos',                   'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE  'ClavePresupuestal',    'ClavesRelacionadas',			'varchar(50) NULL'
--SELECT * FROM ClavePresupuestal


----------------------------------			4554   C A T A L O G O   R O L E S
--- T A B L A  P E R S O N A L ---			E M M
----------------------------------
EXEC spALTER_TABLE 'Personal',	'NIPCDI',				'varchar (30) NULL'	
------------------------------------		4554   C A T A L O G O   R O L E S
--- T A B L A  P R O V E E D O R ---		E M M
------------------------------------
EXEC spALTER_TABLE 'Prov',		'NIPCDI',				'varchar (30) NULL'	
EXEC spALTER_TABLE 'Prov',		'CDIApellidoPaterno',	'varchar (30) NULL'	
EXEC spALTER_TABLE 'Prov',		'CDIApellidoMaterno',	'varchar (30) NULL'	
EXEC spALTER_TABLE 'Prov',		'CDINombre',	        'varchar (30) NULL'	
EXEC spALTER_TABLE 'Prov',		'CDIFechaNacimiento',   'datetime     NULL'	
EXEC spALTER_TABLE 'Prov',		'CDINacionalidad',	    'varchar (30) NULL'	
EXEC spALTER_TABLE 'Prov',		'CDIRelacionNIPCDI',    'varchar (10) NULL'	
---SELECT * FROM Usuario
GO

---------------------------------
--- T A B L A  M O V T I P O  ---		
---------------------------------
EXEC spALTER_TABLE 'MovTipo', 'FlujoAutorizacion',			'bit NULL'
EXEC spALTER_TABLE 'MovTipo', 'FlujoAutorizacionEstatus',	'varchar(15) NULL'
EXEC spALTER_TABLE 'MovTipo', 'CDICargosRecurrentes',		'bit NULL DEFAULT 0'	
EXEC spALTER_TABLE 'MovTipo', 'CDICancMovOp', 'bit  NULL DEFAULT 0'
EXEC spALTER_TABLE 'MovTipo', 'CDIProcMismoMes', 'bit  NULL DEFAULT 0'
EXEC spALTER_TABLE 'MovTipo', 'CDICalendarizacion',	'varchar(10) NULL'
GO

-----------------------------------			4668   C A R G O S  R E C U R R E N T E S 
--- T A B L A   A R T I C U L O ---			E M M
-----------------------------------
EXEC spALTER_TABLE 'Art', 'CDICargosRecurrentes',		'bit NULL DEFAULT 0'	
EXEC spALTER_TABLE 'Art', 'CDICondicion',				'varchar (50) NULL'	
EXEC spALTER_TABLE 'Art', 'CDIInterfazPuntos',			'bit NULL DEFAULT 0'	--- 4560   S O L   P U N T O S 
EXEC spALTER_TABLE 'Art', 'CDIAplicaSubs',			'bit NULL DEFAULT 0'	--- BEGM. Subsidio en Cargo Recurrente
EXEC spALTER_TABLE 'Art', 'CDIClavePresupuestal',			'Varchar (50) NULL'
GO

-----------------------------				4668   C A R G O S  R E C U R R E N T E S 
--- T A B L A   V E N T A ---				E M M
-----------------------------	
EXEC spALTER_TABLE 'Venta', 'CDICargoAutomatico',		'bit NULL DEFAULT 0'	
EXEC spALTER_TABLE 'Venta', 'CDISocio',			        'varchar(100) NULL'	
EXEC spALTER_TABLE 'Venta', 'CDITarjetaCargo',			'varchar(16) NULL'
EXEC spALTER_TABLE 'Venta', 'CDIFacturarA',	            'varchar(10)  NULL'
GO


-----------------------------				4694   V E N T A - C O B R O
--- T A B L A   C X C -------				BEGM 20101020
-----------------------------	
EXEC spALTER_TABLE 'Cxc', 'CDICargoAutomatico',			'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Cxc', 'CDISocio',			          'varchar(100) NULL'		
EXEC spALTER_TABLE 'Cxc', 'CDIFacturarA',           'varchar(10)  NULL'
EXEC spALTER_TABLE 'Cxc', 'CDIClavePresupuestal',   'varchar(50)  NULL' --BEGM 20120620 Comparativo Ingreso
GO


-------------------------	 VENTAS - COBRO
--- F O R M A P A G O ---	 BEGM 20101019
-------------------------
EXEC spALTER_TABLE 'FormaPago', 'CDICargoAutom',	'bit NULL DEFAULT 0' 
GO
EXEC spALTER_TABLE 'FormaPago', 'CDIPorDefault', 'bit NULL DEFAULT 0' --BEGM 20101110. Ventas Condiciones y Formas Cobro
GO

-------------------------	 
--- C O N D I C I O N ---	 
-------------------------
EXEC spALTER_TABLE 'Condicion', 'CDIPorDefault', 'bit NULL DEFAULT 0' --BEGM 20101111. Ventas Condiciones y Formas Cobro
GO


EXEC spALTER_TABLE 'Version',      'CDIProfile',           'varchar(50) NULL'
EXEC spALTER_TABLE 'Version',      'CDIServer',            'varchar(50) NULL'
EXEC spALTER_TABLE 'Version',      'CDIImagen',            'varchar(255) NULL' 	 	  
GO

EXEC spALTER_TABLE 'Venta',         'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Compra',        'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Inv',           'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Prod',          'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Cxc',           'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Cxp',           'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Dinero',        'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'ActivoFijo',    'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Soporte',       'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Asiste',        'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Nomina',        'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Cont',          'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Embarque',      'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Gasto',         'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'Oferta',        'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'RH',            'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'CP',            'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'CE',            'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'CA',            'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
EXEC spALTER_TABLE 'CDISocio',      'CDIFlujoAutorizacion', 'bit NULL DEFAULT 0'
GO

EXEC spALTER_TABLE 'Venta',         'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Compra',        'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Inv',           'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Prod',          'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Cxc',           'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Cxp',           'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Dinero',        'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'ActivoFijo',    'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Soporte',       'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Asiste',        'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Nomina',        'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Cont',          'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Embarque',      'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Gasto',         'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'Oferta',        'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'RH',            'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'CP',            'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'CE',            'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'CA',            'CDIEstado',            'varchar (20) NULL'
EXEC spALTER_TABLE 'CDISocio',      'CDIEstado',            'varchar (20) NULL'
GO

EXEC spALTER_TABLE 'Venta',         'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'Compra',        'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'Inv',           'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
--EXEC spALTER_TABLE 'Prod',          'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'Cxc',           'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'Cxp',           'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'Dinero',        'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'ActivoFijo',    'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
--EXEC spALTER_TABLE 'Soporte',       'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'Asiste',        'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'Nomina',        'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'Cont',          'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
--EXEC spALTER_TABLE 'Embarque',      'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'Gasto',         'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
--EXEC spALTER_TABLE 'Oferta',        'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'RH',            'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'CP',            'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'CE',            'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'CA',            'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
EXEC spALTER_TABLE 'CDISocio',      'CDIPermiteEditar',     'bit NULL DEFAULT(1) WITH VALUES'
GO

EXEC spALTER_TABLE 'Inv',           'CDIDiasPrestamo',      'int         NULL'
EXEC spALTER_TABLE 'Inv',           'CDIFechaVigencia',     'datetime    NULL'
EXEC spALTER_TABLE 'Inv',           'CDIMembresia',         'int         NULL'
EXEC spALTER_TABLE 'Inv',           'CDISocio',             'varchar(10) NULL'
GO

EXEC spALTER_TABLE 'VentaD',        'CDIClavePresupuestal', 'varchar(50) NULL'
GO

-------------------------	 DEVOLUCIONES PRESUPUESTALES
------ C O M P R A ------	 BEGM 20101105
-------------------------
EXEC spAlter_Table 'Compra', 'CDIEstatusCompra',		'varchar(15) NULL'
EXEC spAlter_Table 'Compra', 'CDIQuejasProveedor',		'float NULL'  --- EVALUACION PROVEEDORES 4573
EXEC spAlter_Table 'Compra', 'CDISatisfaccionTE',		'float NULL'  --- EVALUACION PROVEEDORES 4573
EXEC spAlter_Table 'Compra', 'CDIRechazosMercancia',	'float NULL'  --- EVALUACION PROVEEDORES 4573
EXEC spAlter_Table 'Compra', 'CDICalificacion',			'float NULL'  --- EVALUACION PROVEEDORES 4573
GO
-- Faltaba este campo al abrir formas JB 29082011
EXEC spALTER_TABLE  'CompraD', 'CDIAutorizaCompra', 'Varchar(2) NULL'
GO
UPDATE EmpresaGral SET ExpresionAlIniciar = "Forma('CDITareasPendientes')" WHERE Empresa = 'CDI'
GO
----------------------------------------------------------
---------------    Tabla de Automoviles    ---------------
----------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE name='CDIAutomovil') 
CREATE TABLE CDIAutomovil 
 (
  Cliente varchar(10), 
  Año     int,
  Marca   varchar(50),
  Modelo  varchar(50),
  CONSTRAINT pCCDIAutomovil PRIMARY KEY  CLUSTERED (Cliente, Año, Marca, Modelo)
 )
GO

-----------------------------------------------------------
---------------    Tabla de Enfermedades    ---------------
-----------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIEnfermedades')
CREATE TABLE CDIEnfermedades 
 (
  Cliente      varchar(10), 
  Enfermedad   varchar(100),
  Descripcion  varchar(255) NULL,
  CONSTRAINT pCDIEnfermedades PRIMARY KEY  CLUSTERED (Cliente, Enfermedad)  
 )
GO

-----------------------------------------------------------
-----------------    Tabla de Alergias    -----------------
-----------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIAlergias')
CREATE TABLE CDIAlergias 
 (
  Cliente      varchar(10), 	
  Alergia      varchar(100),
  Descripcion  varchar(255) NULL,
  CONSTRAINT pCDIAlergias PRIMARY KEY  CLUSTERED (Cliente, Alergia)  
 )
GO

---------------------------------------------------------------
-----------------    Tabla de Medicamentos    -----------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIMedicamentos')
CREATE TABLE CDIMedicamentos 
 (
  Cliente      varchar(10) , 	 	
  Medicamento  varchar(100),
  Descripcion  varchar(255) NULL,
  CONSTRAINT pCDIMedicamentos PRIMARY KEY  CLUSTERED (Cliente, Medicamento)    
 )
GO

---------------------------------------------------------------------------
-----------------    Tabla de Instituciones Acedemicas    -----------------
---------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIInstitucionesAcademicas')
CREATE TABLE CDIInstitucionesAcademicas 
 (
  Clave        varchar(20)  NULL,
  Institucion  varchar(100) NULL,
 )
GO

---------------------------------------------------------------
-----------------    Tabla de Colegiaturas    -----------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIColegiaturas')
CREATE TABLE CDIColegiaturas 
 (
  Cliente      varchar(10) , 	 	  
  Institucion  varchar(100),
  Grado        varchar(50) ,
  Monto        money   NULL,  
  CONSTRAINT pCDIColegiaturas PRIMARY KEY  CLUSTERED (Cliente, Institucion, Grado)
 
 )
GO

---------------------------------------------------------------
-----------------    Tabla de EstadoCivil    ------------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIEstadoCivil')
CREATE TABLE CDIEstadoCivil 
 (
  EstadoCivil  varchar(20)
 )
GO

---------------------------------------------------------------
-----------------    Tabla de TipoSangre    -------------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDITipoSangre')
CREATE TABLE CDITipoSangre 
 (
  TipoSangre  varchar(50)
 )
GO

---------------------------------------------------------------
------------    Tabla de Socio Nacionalidades    --------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDINacionalidad')
CREATE TABLE CDINacionalidad 
 (
  Cliente      varchar(10) , 	 	  
  Nacionalidad varchar(30),
  CONSTRAINT pCDINacionalidad PRIMARY KEY  CLUSTERED (Cliente, Nacionalidad)
 
 )
GO

---------------------------------------------------------------
------------    Tabla de Otras Direcciones    --------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIOtrasDirecciones')
CREATE TABLE CDIOtrasDirecciones 
 (
  Cliente             varchar(10), 	 	  
  Direccion 		  varchar(100) 	NULL,
  DireccionNumero	  varchar(20)	NULL,
  DireccionNumeroInt  varchar(20)	NULL,
  EntreCalles	      varchar(100) 	NULL,
  Plano			      varchar(15)   NULL,
  Observaciones		  varchar(100)  NULL,
  Delegacion		  varchar(100) 	NULL,
  Colonia 		      varchar(100) 	NULL,
  Poblacion 		  varchar(100) 	NULL,
  Estado 			  varchar(30) 	NULL,
  Pais 			      varchar(30)   NULL,
  Zona 			      varchar(30) 	NULL,
  CodigoPostal 		  varchar(15) 	NULL
  )
GO

--DROP TABLE CDISociosPreferencias

---------------------------------------------------------------
----------------    Tabla de Preferencias    ------------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDISociosPreferencias')
CREATE TABLE CDISociosPreferencias 
    (
    Cliente        varchar(10),
    CDIPrefCheck1  bit NULL DEFAULT 0,
    CDIPrefCheck2  bit NULL DEFAULT 0,
    CDIPrefCheck3  bit NULL DEFAULT 0,
    CDIPrefCheck4  bit NULL DEFAULT 0,
    CDIPrefCheck5  bit NULL DEFAULT 0,
    CDIPrefCheck6  bit NULL DEFAULT 0,
    CDIPrefCheck7  bit NULL DEFAULT 0,
    CDIPrefCheck8  bit NULL DEFAULT 0,
    CDIPrefCheck9  bit NULL DEFAULT 0,
    CDIPrefCheck10 bit NULL DEFAULT 0,
    CDIPrefCheck11 bit NULL DEFAULT 0,
    CDIPrefCheck12 bit NULL DEFAULT 0,
    CDIPrefCheck13 bit NULL DEFAULT 0,
    CDIPrefCheck14 bit NULL DEFAULT 0,
    CDIPrefCheck15 bit NULL DEFAULT 0,
    CDIPrefCheck16 bit NULL DEFAULT 0,
    CDIPrefCheck17 bit NULL DEFAULT 0,
    CDIPrefCheck18 bit NULL DEFAULT 0,
    CDIPrefCheck19 bit NULL DEFAULT 0,
    CDIPrefCheck20 bit NULL DEFAULT 0,
    CDIPrefCheck21 bit NULL DEFAULT 0,
    CDIPrefCheck22 bit NULL DEFAULT 0,
    CDIPrefCheck23 bit NULL DEFAULT 0,
    CDIPrefCheck24 bit NULL DEFAULT 0,
    CDIPrefCheck25 bit NULL DEFAULT 0,
    CDIPrefCheck26 bit NULL DEFAULT 0,
    CDIPrefCheck27 bit NULL DEFAULT 0,
    CDIPrefCheck28 bit NULL DEFAULT 0,
    CDIPrefCheck29 bit NULL DEFAULT 0,
    CDIPrefCheck30 bit NULL DEFAULT 0,
    CDIPrefCheck31 bit NULL DEFAULT 0,
    CDIPrefCheck32 bit NULL DEFAULT 0,
    CDIPrefCheck33 bit NULL DEFAULT 0,
    CDIPrefCheck34 bit NULL DEFAULT 0,
    CDIPrefCheck35 bit NULL DEFAULT 0,
    CDIPrefCheck36 bit NULL DEFAULT 0,
    CDIPrefCheck37 bit NULL DEFAULT 0,
    CDIPrefCheck38 bit NULL DEFAULT 0,
    CDIPrefCheck39 bit NULL DEFAULT 0,
    CDIPrefCheck40 bit NULL DEFAULT 0,
    CDIPrefCheck41 bit NULL DEFAULT 0,
    CDIPrefCheck42 bit NULL DEFAULT 0,
    CDIPrefCheck43 bit NULL DEFAULT 0,
    CDIPrefCheck44 bit NULL DEFAULT 0,
    CDIPrefCheck45 bit NULL DEFAULT 0,
    CDIPrefCheck46 bit NULL DEFAULT 0,
    CDIPrefCheck47 bit NULL DEFAULT 0,
    CDIPrefCheck48 bit NULL DEFAULT 0,
    CDIPrefCheck49 bit NULL DEFAULT 0,
    CDIPrefCheck50 bit NULL DEFAULT 0,
    )
GO

----------------------------------------------------------------
----------------    Tabla de Datos Bancarios    ----------------
----------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIDatosBancarios')
CREATE TABLE CDIDatosBancarios 
 (
  ID              int           NOT NULL IDENTITY(1,1),	
  Cliente         varchar(10), 	 	  
  NoTarjeta       varchar(16)   NULL,
  Vigencia        datetime      NULL,
  Institucion     varchar(20)   NULL,
  NoSeguridad     varchar(100)  NULL,
  CtaBancariaDom  varchar(100)  NULL,
  VigenciaDom     datetime      NULL,
  InstitucionDom  varchar(100)  NULL,
  AMEX            varchar(15)   NULL,
  NoSeguridadAMEX varchar(4)    NULL,  
  VigenciaAMEX    datetime      NULL,
  NombreTarjeta   varchar(100)  NULL, 
  DefCargAuto     bit           NULL DEFAULT 0
  )
GO
EXEC spALTER_TABLE 'CDIDatosBancarios', 'ID', 'int NOT NULL IDENTITY(1,1)' 
GO
EXEC spALTER_TABLE 'CDIDatosBancarios', 'DefCargAuto',	'bit NULL DEFAULT 0' -- BEGM 20101008 CARGOS AUTOMATICOS
GO

---------------------------------------------------------------
---------------    Tabla de Cargos Automaticos   --------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIArticulosCargos')
CREATE TABLE CDIArticulosCargos 
 (
  Cliente   varchar(10), 	 	  
  Articulo  varchar(20),
  CONSTRAINT pCDIArticulosCargos PRIMARY KEY  CLUSTERED (Cliente, Articulo)
 )
GO

---------------------------------------------------------------
--------------    Tabla de Datos Academicos    ----------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIDatosAcademicos')
CREATE TABLE CDIDatosAcademicos 
 (
  Cliente       varchar(10), 	 	  
  Institucion   varchar(100) NULL,
  Nivel         varchar(20)  NULL,
  Grado         varchar(20)  NULL,
  Direccion     varchar(100) NULL,
  Numero        varchar(20)  NULL,
  NumeroInt     varchar(20)  NULL,
  EntreCalles   varchar(100) NULL,
  Plano         varchar(15)  NULL,
  CodigoPostal  varchar(15)  NULL,
  Delegacion    varchar(100) NULL,
  Colonia       varchar(100) NULL,
  Poblacion     varchar(100) NULL,
  Estado        varchar(30)  NULL,
  Pais          varchar(30)  NULL,
  )
GO
---------------------------------------------------------------
-----------    Tabla de Estudio Socioeconomico    -------------
---------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIEstudioSocioeconomico')
CREATE TABLE CDIEstudioSocioeconomico 
 (
  Cliente           varchar(10), 	 	  
  IngresoMensual    money       NULL, 
  Alimentacion      money       NULL, 
  GastosMedicos     money       NULL, 
  Gas               money       NULL, 
  Recracion         money       NULL, 
  Agua              money       NULL, 
  AbonosCreditos    money       NULL, 
  Predial           money       NULL, 
  RopaCalzado       money       NULL, 
  Telefono          money       NULL, 
  FondoAhorro       money       NULL, 
  TelefonoCelular   money       NULL, 
  Transporte        money       NULL, 
  Otros             money       NULL, 
  ViviendaPropia    bit         NULL DEFAULT 0,
  MontoRentaMes     money       NULL,
  OtrosDependientes money       NULL,
  Colegiaturas      varchar(10) NULL
  )
GO
EXEC spDROP_COLUMN 	'CDIEstudioSocioeconomico', 'ViviendaRentada'
GO
EXEC spALTER_COLUMN 'CDIEstudioSocioeconomico', 'OtrosDependientes', 'money NULL'
GO
EXEC spALTER_TABLE 'CDIEstudioSocioeconomico', 'TotalColegiaturas', 'money NULL'
GO
EXEC spALTER_TABLE 'CDIEstudioSocioeconomico', 'TotalIngresos',     'money NULL'
GO
  -- Desarrollo. CATALOGO DE ROLES
  -- Cliente   . CDI
  -- Folio     . 4554
  -- Fecha     . 24 / 08 / 10
  -- Autor     . EDER MENDOZA

-------------------------	4554
---- C D I R O L E S ----
-------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIRoles') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIRoles (	
		Catalogo 		varchar(50)	COLLATE Database_Default	NOT NULL DEFAULT '',
        Rol		 		varchar(50)	COLLATE Database_Default	NOT NULL DEFAULT '',
  CONSTRAINT [PK_CDIRoles] PRIMARY KEY CLUSTERED (        
		Rol			ASC	 
    )WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]    
  )
END
GO



------------------------------------------------	4554
---- C D I R O L  A N T E R I O R N U E V O ----
------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIRolAnteriorNuevo') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIRolAnteriorNuevo (	
		RolAnterior 		varchar(50)	COLLATE Database_Default	DEFAULT '',
        RolNuevo 		varchar(50)	COLLATE Database_Default	DEFAULT '',
        EstacionTrabajo	int  
  )
END
GO


---------------------------------------------------------------------	4554
---- C D I R E L A C I O N E S R E S T R I N G I D A S R O L E S ----
---------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIRelacionesRestringidasRoles') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIRelacionesRestringidasRoles (	
        ID					int	IDENTITY(1,1)	NOT NULL,	
		Rol 				varchar(50)	COLLATE Database_Default	NOT NULL,
        NoPermiteRel		varchar(50)	COLLATE Database_Default	NOT NULL,
		BajoAutorizacion	bit,
		Observaciones		varchar(255)COLLATE Database_Default	NULL,
  CONSTRAINT [PK_CDIRelacionesRestringidasRoles] PRIMARY KEY CLUSTERED (
        Rol				ASC,
		NoPermiteRel	ASC	 
    )WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]    
  )
END
GO


---------------------------------------------------------------		4554
---- C D I U S U A R I O A U T O R I Z A R R E L A C I O N ----
---------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIUsuarioAutorizaRelacion') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIUsuarioAutorizaRelacion (	
        RID					int	IDENTITY(1,1)	NOT NULL,	
        ID					int					NOT NULL,	--- R E L A C I O N        I D      C D I R E L A C I O N E S R E S T R I N G I D A S R O L E S 
		Usuario 			varchar(10)	COLLATE Database_Default	NOT NULL,
  CONSTRAINT [PK_CDIUsuarioAutorizaRelacion] PRIMARY KEY CLUSTERED (
        ID		ASC,
		Usuario	ASC	 
    )WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]    
  )
END
GO


---------------------------------------------	4554	
---- C D I A S I G N A C I O N R O L E S ----
---------------------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIAsignacionRoles') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIAsignacionRoles (	
		ID				int	IDENTITY(1,1)	NOT NULL,	
        NIPCDI	 		varchar(50)	COLLATE Database_Default	NOT NULL,	
		Catalogo 		varchar(50)	COLLATE Database_Default	NOT NULL,	
        Rol		 		varchar(50)	COLLATE Database_Default	NOT NULL,	
        Personal 		varchar(10)	COLLATE Database_Default	NOT NULL,	
  CONSTRAINT [PK_CDIAsignacionRoles] PRIMARY KEY CLUSTERED (
        NIPCDI		ASC,
        Catalogo	ASC,
		Rol			ASC,
		Personal    ASC 
    )WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]      
  )
END
GO


-------------------------------------------------------------------------	4554
---- C D I R E L A C I O N E S P E N D I E N T E S  A U TO R I Z A R ----
-------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIRelacionesPendiente') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIRelacionesPendiente (	
		ID					int	IDENTITY(1,1)	NOT NULL,	
        NIPCDI	 			varchar(50)	COLLATE Database_Default	NOT NULL,
		Catalogo 			varchar(50)	COLLATE Database_Default	NOT NULL,
        RolAnterior			varchar(50)	COLLATE Database_Default	NOT NULL,
		PermiteRelacionCon	varchar(50)	COLLATE Database_Default	NOT NULL,
        Personal 			varchar(10)	COLLATE Database_Default	NOT NULL,
		FechaEmision		datetime,
		Estatus             varchar(15) COLLATE Database_Default	NOT NULL,
  CONSTRAINT [PK_CDIRelacionesPendiente] PRIMARY KEY CLUSTERED (
        NIPCDI				ASC,
        Catalogo			ASC,
		RolAnterior			ASC,
		PermiteRelacionCon	ASC,
		Personal			ASC 
    )WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]      
  )
END
GO

EXEC spALTER_TABLE  'CDIRelacionesPendiente',        'CatalogoNuevo',		'varchar(50)	COLLATE Database_Default	NULL'
EXEC spALTER_TABLE  'CDIRelacionesPendiente',        'PersonalNuevo',		'varchar(10)	COLLATE Database_Default	NULL'
EXEC spALTER_TABLE  'CDIRelacionesPendiente',        'FechaAutorizacion',	'datetime		NULL'
EXEC spALTER_TABLE  'CDIRelacionesPendiente',        'Usuario',				'varchar(10)	COLLATE Database_Default	NULL'


---------------------	4554
---- C D I N I P ----
---------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDINip') AND Type = 'U') 
BEGIN

  CREATE TABLE CDINip (	
		NIPCDI	 			varchar(50)		COLLATE Database_Default	NULL,
		ClavePersona		varchar(10)		COLLATE Database_Default	NULL,
        NombrePersonal      varchar(100)	COLLATE Database_Default	NULL, 
		Estacion			int	
  )
END
GO

--------------------------------------------------------------------
------------    Relacion de Proveedores con NIPCDI    --------------
--------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIRelacionProvNIPCDI')
CREATE TABLE CDIRelacionProvNIPCDI 
 (
  Proveedor           varchar(10), 	 	  
  NIPCDI     		  varchar(30),
  Tipo       		  varchar(20),
  CONSTRAINT pCDIRelacionProvNIPCDI PRIMARY KEY  CLUSTERED (Proveedor, NIPCDI, Tipo)
  )
GO

---------------------------------------------------------------------
----------------    Tabla de Sector Comunitario    ------------------
---------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDISectorComunitario')
CREATE TABLE CDISectorComunitario 
 (
  SectorComunitario varchar(50)  
  )
GO

--------------------------------------------------------------------
--------------    Relacion de Cliente con NIPCDI    ----------------
--------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Sys.tables WHERE Name='CDIRelacionClienteNIPCDI')
CREATE TABLE CDIRelacionClienteNIPCDI 
 (
  Cliente   varchar(10), 	 	  
  NIPCDI    varchar(30),
  Tipo      varchar(20),
  CONSTRAINT pCDIRelacionClienteNIPCDI PRIMARY KEY  CLUSTERED (Cliente, NIPCDI, Tipo)
  )
GO

--------------------------------------------------------------------
--------------    Proyectos que autorizaran    ----------------
--------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM sysobjects WHERE TYPE = 'U' AND NAME = 'CDIMovTipoFAProyecto') -- DROP TABLE CDIMovTipoFAProyecto
CREATE TABLE CDIMovTipoFAProyecto
    (
    	Mov                     VARCHAR(20)     NOT NULL,
    	Modulo                  VARCHAR(5)      NOT NULL,
    	Proyecto                VARCHAR(50)     NOT NULL,
    	
	    CONSTRAINT priCDIMovTipoFAProyecto PRIMARY KEY  CLUSTERED (Mov, Modulo, Proyecto)
    )
GO

--------------------------------------------------------------------
--------------    Usuarios Que pueden Autorizar    ----------------
--------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM sysobjects WHERE TYPE = 'U' AND NAME = 'CDIMovTipoFAUsuario') -- DROP TABLE CDIMovTipoFAUsuario
CREATE TABLE CDIMovTipoFAUsuario
    (
    	ID                      INT IDENTITY(1, 1),
    	Mov                     VARCHAR(20)     NULL,
    	Modulo                  VARCHAR(5)      NULL,
    	Proyecto                VARCHAR(50)     NULL,
    	Usuario                 VARCHAR(10)     NULL,
    	Orden                   INT             NULL,
    	Editar                  BIT             NULL DEFAULT(0),
    	Correo                  BIT             NULL DEFAULT(0),
    	Tarea                   BIT             NULL DEFAULT(0),
    	Autorizacion            BIT             NULL DEFAULT(0),
    	Tiempo                  INT             NULL
    	
	    CONSTRAINT priCDIMovTipoFAUsuario PRIMARY KEY  CLUSTERED (ID)
    )
GO
--EXEC spDROP_COLUMN 'CDIMovTipoFAUsuario', 'ID'
IF NOT EXISTS(SELECT * FROM SysCampo sc WHERE sc.Tabla = 'CDIMovTipoFAUsuario' AND sc.Campo = 'ID')
BEGIN
  EXEC spALTER_TABLE 'CDIMovTipoFAUsuario', 'ID', 'INT IDENTITY(1, 1)'
  ALTER TABLE CDIMovTipoFAUsuario DROP CONSTRAINT priCDIMovTipoFAUsuario
  ALTER TABLE CDIMovTipoFAUsuario ALTER COLUMN Mov      VARCHAR(20) NULL
  ALTER TABLE CDIMovTipoFAUsuario ALTER COLUMN Modulo   VARCHAR(5)  NULL
  ALTER TABLE CDIMovTipoFAUsuario ALTER COLUMN Proyecto VARCHAR(50) NULL
  ALTER TABLE CDIMovTipoFAUsuario ALTER COLUMN Usuario  VARCHAR(10) NULL
  ALTER TABLE CDIMovTipoFAUsuario ADD CONSTRAINT priCDIMovTipoFAUsuario PRIMARY KEY (ID)
END
GO

--------------------------------------------------------------------
--------------    Usuarios Que pueden Autorizar    ----------------
--------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM sysobjects WHERE TYPE = 'U' AND NAME = 'CDIMovFAUsuario') -- DROP TABLE CDIMovFAUsuario
CREATE TABLE CDIMovFAUsuario
    (
    	ID                      INT             NOT NULL,
    	Mov                     VARCHAR(20)     NOT NULL,
    	Modulo                  VARCHAR(5)      NOT NULL,
    	Proyecto                VARCHAR(50)     NOT NULL,
    	Usuario                 VARCHAR(10)     NULL,
    	Orden                   INT             NOT NULL,
    	Editar                  BIT             NULL DEFAULT(0),
    	Correo                  BIT             NULL DEFAULT(0),
    	Tarea                   BIT             NULL DEFAULT(0),
    	Autorizacion            BIT             NULL DEFAULT(0),
    	Tiempo                  INT             NULL,
    	Autorizado              BIT             NULL DEFAULT(0),
    	Rechazado               BIT             NULL DEFAULT(0),
    	UsuarioAutoriza         VARCHAR(10)     NULL,
    	FechaAutoriza           DATETIME        NULL
    	
	    CONSTRAINT priCDIMovFAUsuarioA PRIMARY KEY  CLUSTERED (ID, Mov, Modulo, Proyecto, Orden)
    )
GO

EXEC spALTER_TABLE 'CDIMovFAUsuario', 'FechaAutoriza',  'DATETIME NULL'
EXEC spALTER_TABLE 'CDIMovFAUsuario', 'Rechazado',      'BIT NULL DEFAULT(0)'
GO

IF EXISTS(SELECT * FROM SysPK sp WHERE sp.pk = 'priCDIMovFAUsuario')
BEGIN
  ALTER TABLE CDIMovFAUsuario DROP CONSTRAINT priCDIMovFAUsuario
  ALTER TABLE CDIMovFAUsuario ALTER COLUMN Usuario  VARCHAR(10) NULL
  ALTER TABLE CDIMovFAUsuario ALTER COLUMN Orden    INT         NOT NULL
  ALTER TABLE CDIMovFAUsuario ADD CONSTRAINT priCDIMovFAUsuarioA PRIMARY KEY (ID, Mov, Modulo, Proyecto, Orden)
END
GO
--------------------------------------
--- Desarrollo. CARGOS RECURRENTES ---
--- Cliente   . CDI                ---
--- Folio     . 4668               ---
--- Fecha     . 11 / 10 / 10       ---
--- Autor     . EDER MENDOZA       ---
--------------------------------------   

-----------------------------------
---- C D I T I P O S O C I O S ----
-----------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDITipoSocios') AND Type = 'U') 
BEGIN

  CREATE TABLE CDITipoSocios (	
        Tipo			varchar(50)	COLLATE Database_Default	NOT NULL, 	 	  
		Orden			int										NULL		
        CONSTRAINT PK_CDITipoSocios PRIMARY KEY  CLUSTERED 
       (Tipo	ASC) 
       )
END
GO


-----------------------------------------
---- C D I E S T A T U S S O C I O S ----
-----------------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIEstatusSocios') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIEstatusSocios (	
        Estatus			varchar(15)	COLLATE Database_Default	NOT NULL, 	 	  
		Orden			int										NULL		
        CONSTRAINT PK_CDIEstatusSocios PRIMARY KEY  CLUSTERED 
       (Estatus	ASC) 
       )
END
GO


-------------------------------------------------------
---- C D I A R T C A R G O S R E C U R R E N T E S ----
-------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIArtCargosRecurrentes') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIArtCargosRecurrentes (	
        Cliente			varchar(10)	COLLATE Database_Default	NOT NULL, 	 	  
		Articulo		varchar(20)	COLLATE Database_Default	NOT NULL,
		FechaInicio	 	datetime,
		FechaFin	 	datetime NULL
        CONSTRAINT PK_CDIArtCargosRecurrentes PRIMARY KEY  CLUSTERED 
       (Cliente		ASC, 
        Articulo	ASC) 
       )
END
GO

EXEC spALTER_TABLE 'CDIArtCargosRecurrentes', 'Cantidad',  'float NULL'
EXEC spALTER_TABLE 'CDIArtCargosRecurrentes', 'EsCuota', 'bit NULL DEFAULT 0'
GO

-----------------------------------------------------------
---- C D I C O N D I C I O N E S R E C U R R E N T E S ----
-----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDICondicionesRecurrentes') AND Type = 'U') 
BEGIN

  CREATE TABLE CDICondicionesRecurrentes (	
        Condicion			varchar(50)	COLLATE Database_Default	NOT NULL, 	 	  
		NumeroDocumentos	int,
		Orden				int
        CONSTRAINT PK_CDICondicionesRecurrentes PRIMARY KEY  CLUSTERED 
       (Condicion	ASC) 
       )
END
GO


--------------------------------------
--- Desarrollo. SOLICITUD PUNTOS   ---
--- Cliente   . CDI                ---
--- Folio     . 4560               ---
--- Fecha     . 30 / 09 / 10       ---
--- Autor     . EDER MENDOZA       ---
--------------------------------------   

---------------------------
---- C D I P U N T O S ----
---------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIPuntos') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIPuntos (	
        Empresa			varchar(5)	COLLATE Database_Default	NULL,	
        Mov		 		varchar(20)	COLLATE Database_Default	NULL,	
		MovID	 		varchar(20)	COLLATE Database_Default	NULL,	
        ClaveSocio 		varchar(10)	COLLATE Database_Default	NULL,	
        Membresia 		varchar(50)	COLLATE Database_Default	NULL,	
		SubSocio 		varchar(10)	COLLATE Database_Default	NULL,	
		FechaMovimiento	datetime								NULL,	
		Puntos			float									NULL)
END
GO


-----------------------------------------------
---- C D S E R V I D O R V I N C U L A D O ----
-----------------------------------------------
IF NOT EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.CDIServidorVinculado') AND Type = 'U') 
BEGIN

  CREATE TABLE CDIServidorVinculado (	
        Empresa 		varchar(5)	COLLATE Database_Default	NOT NULL,
        Servidor 		varchar(50)	COLLATE Database_Default	NOT NULL,
		Producto		varchar(50)	COLLATE Database_Default	NOT NULL,		
		NombreUsuario	varchar(50)	COLLATE Database_Default	NULL,	
        Passwords	 	varchar(50)	COLLATE Database_Default	NULL,	
		BaseDatos	 	varchar(50)	COLLATE Database_Default	NULL,
		TablaVinculada 	varchar(50)	COLLATE Database_Default	NULL,        
		Proceso	 		varchar(50)	COLLATE Database_Default	NULL,        
  CONSTRAINT pCDIServidorVinculado PRIMARY KEY  CLUSTERED (Empresa, Servidor, Producto))

END
GO

--BEGM 20101021. Ventas Condiciones
---------------------------------------
---- C D I F O R M A P A G O C T E ----
---------------------------------------
IF OBJECT_ID('CDIFormaPagoCte', 'U') IS NULL
  CREATE TABLE CDIFormaPagoCte(Cliente varchar(10) NOT NULL, 
                               FormaPago varchar(50) NOT NULL, 
               CONSTRAINT priCDIFormaPagoCte PRIMARY KEY CLUSTERED (Cliente, FormaPago)
                              )
GO

---------------------------------------
---- C D I C O N D P A G O C T E ------
---------------------------------------
IF OBJECT_ID('CDICondPagoCte', 'U') IS NULL
  CREATE TABLE CDICondPagoCte(Cliente varchar(10) NOT NULL, 
                              CondPago varchar(50) NOT NULL, 
               CONSTRAINT priCDICondPagoCte PRIMARY KEY CLUSTERED (Cliente, CondPago)
                              )
GO

-----------------------------------------
---- C D I F O R M A P A G O P R O G ----
-----------------------------------------
IF OBJECT_ID('CDIFormaPagoProg', 'U') IS NULL
  CREATE TABLE CDIFormaPagoProg(Programa varchar(10) NOT NULL, 
                                FormaPago varchar(50) NOT NULL, 
               CONSTRAINT priCDIFormaPagoProg PRIMARY KEY CLUSTERED (Programa, FormaPago)
                              )
GO

-----------------------------------------
---- C D I C O N D P A G O P R O G ------
-----------------------------------------
IF OBJECT_ID('CDICondPagoProg', 'U') IS NULL
  CREATE TABLE CDICondPagoProg(Programa varchar(10) NOT NULL, 
                               CondPago varchar(50) NOT NULL, 
               CONSTRAINT priCDICondPagoProg PRIMARY KEY CLUSTERED (Programa, CondPago)
                              )
GO


---------------------------------------------
---- C D I F O R M A P A G O T I P S O C ----
---------------------------------------------
IF OBJECT_ID('CDIFormaPagoTipSoc', 'U') IS NULL
  CREATE TABLE CDIFormaPagoTipSoc(Tipo varchar(50) NOT NULL, 
                                  FormaPago varchar(50) NOT NULL, 
               CONSTRAINT priCDIFormaPagoTipSoc PRIMARY KEY CLUSTERED (Tipo, FormaPago)
                              )
GO

---------------------------------------------
---- C D I C O N D P A G O T I P S O C ------
---------------------------------------------
IF OBJECT_ID('CDICondPagoTipSoc', 'U') IS NULL
  CREATE TABLE CDICondPagoTipSoc(Tipo varchar(50) NOT NULL, 
                                 CondPago varchar(50) NOT NULL, 
               CONSTRAINT priCDICondPagoTipSoc PRIMARY KEY CLUSTERED (Tipo, CondPago)
                              )
GO

---------------------------------------------------
---- C D I A R C H P R O C C A R G O A U T O ------
---------------------------------------------------
IF OBJECT_ID('CDIArchProcCargoAuto', 'U') IS NULL
  CREATE TABLE CDIArchProcCargoAuto(Archivo varchar(1000) NOT NULL )
GO


---------------------------------------
---- C D I C P E S T R U C T U R A ----
---------------------------------------
IF NOT EXISTS (SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.CDICPEstructura') AND Type = 'U') 

CREATE TABLE dbo.CDICPEstructura (
	ClavePresupuestal		varchar(20) 	NOT NULL,
	Descripcion				varchar(100)    NOT NULL,
	Estacion				int
	CONSTRAINT priCDICPEstructura PRIMARY KEY  CLUSTERED (ClavePresupuestal)
   )

GO

/****** CDIMovTiempo ******/
if not exists (select * from SysTabla where SysTabla = 'CDIMovTiempo') 
INSERT INTO SysTabla (SysTabla,Tipo) VALUES ('CDIMovTiempo','Movimiento')
if not exists (select * from sysobjects where id = object_id('dbo.CDIMovTiempo') and type = 'U') 
CREATE TABLE dbo.CDIMovTiempo (
        Modulo                  varchar(5)  NOT NULL,
        ID                      int         NOT NULL,
        IDOrden                 int         NOT NULL IDENTITY(1,1),
    
        FechaComenzo            datetime    NULL,
        FechaTermino            datetime    NULL,
        FechaInicio             datetime    NULL,
        Estatus                 varchar(15) NULL,
        Sucursal                int         NOT NULL DEFAULT 0,
        Usuario                 varchar(10) NULL,

    CONSTRAINT priCDIMovTiempo PRIMARY KEY CLUSTERED (ID, Modulo, IDOrden)
)
GO


-------------------------------------------------
--- Desarrollo. VALIDA PARTIDA PRESUPUESTAL   ---
--- Cliente   . CDI                           ---
--- Folio     . 4647                          ---
--- Fecha     . 29 / 10 / 10                  ---
--- Autor     . EDER MENDOZA                  ---
-------------------------------------------------   

-------------------------------
---- C D I C P A R T C A T ----
-------------------------------
IF NOT EXISTS (SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.CDICPArtCat') AND Type = 'U') 

CREATE TABLE dbo.CDICPArtCat (
	ID					int			NOT NULL,
	ClavePresupuestal	varchar(50)	NOT NULL,	
	Categoria			varchar(50)	NOT NULL,
    Tipo				varchar(20)	    NULL,	
	Cantidad			float			NULL,
	Precio				float			NULL,
	Referencia			varchar(50)		NULL,
	Observaciones		varchar(255)	NULL,
	EnMov				bit				NULL,	
	CONSTRAINT priCDICPArtCat PRIMARY KEY CLUSTERED (ID, ClavePresupuestal, Categoria)
  )
GO

-----------------------------------
---- C D I C P C O N C E P T O ----
-----------------------------------
IF NOT EXISTS (SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.CDICPConcepto') AND Type = 'U') 

CREATE TABLE dbo.CDICPConcepto (
	ID					int			NOT NULL,
	ClavePresupuestal	varchar(50)	NOT NULL,	
    Modulo				varchar(5)	NOT NULL,
	Concepto			varchar(50)	NOT NULL,
    Tipo				varchar(20)	    NULL,	
	Cantidad			float			NULL,
	Precio				float			NULL,
	Referencia			varchar(50)		NULL,
	Observaciones		varchar(255)	NULL,
	EnMov				bit				NULL,	
	CONSTRAINT priCDICPConcepto PRIMARY KEY CLUSTERED (ID, ClavePresupuestal, Modulo, Concepto)
  )
GO
  
---------------------------------------------
---- C D I C P C L A S I F I C A C I O N ----
---------------------------------------------
IF NOT EXISTS (SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.CDICPClasificacion') AND Type = 'U') 

CREATE TABLE dbo.CDICPClasificacion (
	ID					int			NOT NULL,
	ClavePresupuestal	varchar(50)	NOT NULL,	
    Modulo				varchar(5)	NOT NULL,
	Clasificacion		varchar(50)	NOT NULL,
    Tipo				varchar(20)	    NULL,	
	Cantidad			float			NULL,
	Precio				float			NULL,
	Referencia			varchar(50)		NULL,
	Observaciones		varchar(255)	NULL,
	EnMov				bit				NULL,	
	CONSTRAINT priCDICPClasificacion PRIMARY KEY CLUSTERED (ID,ClavePresupuestal, Modulo, Clasificacion)
  )
GO

---------------------------
---- C D I C P P R O Y ----
---------------------------
IF NOT EXISTS (SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.CDICPProy') AND Type = 'U') 

CREATE TABLE dbo.CDICPProy (	
    Proyecto			varchar(50)	NOT NULL,		
	ClavePresupuestal	varchar(50)	NOT NULL,	    
	CONSTRAINT priCDICPProy PRIMARY KEY CLUSTERED (Proyecto,ClavePresupuestal)
  )
GO

---------------------------
---- CDIUsuarioeMail ----
---------------------------
IF NOT EXISTS (SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.CDIUsuarioeMail') AND Type = 'U') 

CREATE TABLE dbo.CDIUsuarioeMail (	
    Usuario             varchar(50) NOT NULL,		
	eMail               varchar(50) NOT NULL,	    
	CONSTRAINT priCDIUsuarioeMail PRIMARY KEY CLUSTERED (Usuario, email)
  )
GO


  -- Desarrollo. PRESUPUESTO AÑO SIGUIENTE
  -- Cliente   . CDI
  -- Folio     . 4696
  -- Fecha     . 22 / 11 / 10
  -- Autor     . EDER MENDOZA

-------------------------------------------------
---- C D I P R E S U P U E S T O A N O S I G ----
-------------------------------------------------
IF NOT EXISTS (SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.CDIPresupuestoAnoSig') AND Type = 'U') 

CREATE TABLE dbo.CDIPresupuestoAnoSig (			
    Empresa				varchar(5)	NOT NULL,
    FechaEmision		datetime	NULL,  
	Ejercicio			int			NULL,
    Proyecto			varchar(50)	NULL,
    Mov					varchar(20)	NULL,
    Moderado			float		NULL,
	Optimista			float		NULL,
	Pesimista			float		NULL,		
	InflacionAnual		float		NULL,				
	PorcentajeANivel	varchar(50)	NULL,		
	Metodo				varchar(50)	NULL,			
	CONSTRAINT priCDIPresupuestoAnoSig PRIMARY KEY CLUSTERED (Empresa)
  )
GO


--BEGM 20101220. Herramienta Cambio de Categoria
IF OBJECT_ID('CDICambioCategoria', 'U') IS NULL
  CREATE TABLE CDICambioCategoria (ID           int IDENTITY(1,1), 
                                   Estacion     int, 
                                   Membresia    int NULL, 
                                   Socio        varchar(100) NULL, 
                                   Cliente      varchar(10) NULL, 
                                   Nombre       varchar(50) NULL, 
                                   APaterno     varchar(50) NULL, 
                                   AMaterno     varchar(50) NULL, 
                                   Estatus      varchar(15) NULL, 
                                   Titular      bit NULL, 
                                   MotivoCambio varchar(255) NULL,
                                   Categoria    varchar(50) NULL, 
                                   CategoriaSug varchar(50) NULL, 
                                   Tipo         varchar(15) NULL, 
                                   NumMemb      int NULL, 
                                   Edad         int NULL,
                  CONSTRAINT priCDICambioCategoria PRIMARY KEY CLUSTERED (ID)
                                   )
GO

-- LAGT Relacion de ClavesPresupuestales
IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE name='CDIClavePresupuestalRelacion') 
CREATE TABLE CDIClavePresupuestalRelacion 
 (
  ClavePresupuestal     varchar(50), 
  ClaveRelacionada      varchar(50),
  CONSTRAINT priCDIClavePresupuestalRelacion PRIMARY KEY  CLUSTERED (ClavePresupuestal, ClaveRelacionada)
 )
GO

-----***** CDIMesNombre *****-----
IF OBJECT_ID('CDIMesNombre', 'U') IS NULL
  CREATE TABLE CDIMesNombre ( Mes   int, 
                              Nombre  varchar(15),
               CONSTRAINT priCDIMesNombre PRIMARY KEY CLUSTERED (Mes)
 )
GO

IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 1)  INSERT INTO CDIMesNombre VALUES(1,  'Enero')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 2)  INSERT INTO CDIMesNombre VALUES(2,  'Febrero')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 3)  INSERT INTO CDIMesNombre VALUES(3,  'Marzo')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 4)  INSERT INTO CDIMesNombre VALUES(4,  'Abril')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 5)  INSERT INTO CDIMesNombre VALUES(5,  'Mayo')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 6)  INSERT INTO CDIMesNombre VALUES(6,  'Junio')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 7)  INSERT INTO CDIMesNombre VALUES(7,  'Julio')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 8)  INSERT INTO CDIMesNombre VALUES(8,  'Agosto')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 9)  INSERT INTO CDIMesNombre VALUES(9,  'Septiembre')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 10) INSERT INTO CDIMesNombre VALUES(10, 'Octubre')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 11) INSERT INTO CDIMesNombre VALUES(11, 'Noviembre')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 12) INSERT INTO CDIMesNombre VALUES(12, 'Diciembre')
IF NOT EXISTS(SELECT 1 FROM CDIMesNombre WHERE Mes = 13) INSERT INTO CDIMesNombre VALUES(13, 'Mes 13')
GO

/****** CDICFGMovCP ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDICFGMovCP') and type = 'U')-- drop table CDICFGMovCP 
CREATE TABLE dbo.CDICFGMovCP (
  MovOrigen  VARCHAR(20),
  MovDestino VARCHAR(20),
  CONSTRAINT priCDICFGMovCP PRIMARY KEY CLUSTERED (MovOrigen, MovDestino)
)
GO

/****** CDIAlmacenReorden ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDIAlmacenReorden') and type = 'U')-- drop table CDIAlmacenReorden 
 CREATE TABLE CDIAlmacenReorden ( Articulo    VARCHAR(20), 
                      Descripcion VARCHAR(100), 
                      Almacen     VARCHAR(10), 
                      Minimo      Float, 
                      Disponible  FLOAT 
)
GO
EXEC spALTER_TABLE 'Alm',	'CDICorreoPuntoReorden',	'varchar(500)'  --BEGM 20120604. Envio de correo archivo cargos automaticos
GO

IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE name='CDITitulos') 
CREATE TABLE CDITitulos (Estacion   INT,
                         Semana1    VARCHAR(2), 
                         Semana2    VARCHAR(2), 
                         Semana3    VARCHAR(2), 
                         Ejercicio1 VARCHAR(4), 
                         Ejercicio2 VARCHAR(4))

GO
IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE name='CDIVisorJob') 
CREATE TABLE CDIVisorJob (
  NombreJob  VARCHAR(255), 
  Mail       VARCHAR(255),
  CONSTRAINT priCDIVisorJob PRIMARY KEY CLUSTERED (NombreJob)                           
)

GO
IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE name='CDIErrorJob') 
CREATE TABLE CDIErrorJob ( 
  Estacion      INT, 
  NombrePaso    VARCHAR(50), 
  Error         NVARCHAR(1000), 
  Fecha         INT, 
  Hora          INT, 
  Duracion      INT, 
  NumeroMensaje INT )

GO

IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE name='CDIVisorMovJob') -- DROP TABLE CDIVisorMovJob
CREATE TABLE CDIVisorMovJob (
  ID         INT IDENTITY,
  Estacion   INT,
  NombreJob  VARCHAR(100) NULL,
  Modulo     VARCHAR(5)   NULL,   
  Mov        VARCHAR(20)  NULL,
  MovID      VARCHAR(20)  NULL, 
  IDMov      INT          NULL,
  Fecha      DATETIME     NULL,
  Usuario    VARCHAR(10)  NULL,    
  Empresa    VARCHAR(5)   NULL,    
  Concepto   VARCHAR(50)  NULL,
  Socio      VARCHAR(20)  NULL,
  Cliente    VARCHAR(10)  NULL,       
  Ok         INT          NULL,
  OkRef      VARCHAR(255) NULL,
  Mensaje    VARCHAR(255) NULL,
)
GO

