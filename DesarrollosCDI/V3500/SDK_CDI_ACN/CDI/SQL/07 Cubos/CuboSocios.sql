SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF 
GO
---------------------------------------------------------------------
-- Desarrollador: Oscar Danell Moran
-- Fecha: 22-Noviembre-2010
-- Descripcion: Cubo de el Modulo de Socios CDI
---------------------------------------------------------------------

EXEC spLimpiarCubo 'Cubo_Socios'
EXEC spInsertarCubo 'Cubo_Socios','Socios','Socios','Cubo_Socios',0,1
GO
EXEC spInsertarMedida 'Cubo_Socios','CDIEcoIngresos','Ingresos','Ingresos','aggSum'
EXEC spInsertarMedida 'Cubo_Socios','CDIEcoMontoColegiatura','Colegiatura','Colegiatura','aggSum'
--EXEC spInsertarMedida 'Cubo_Socios','CDIEcoGastosMensuales','Gastos','Gastos','aggSum'
EXEC spInsertarMedida 'Cubo_Socios','CDIEcoMontoRenta','Renta','Renta','aggSum'
EXEC spInsertarMedida 'Cubo_Socios','CDICuotaMembresia','Cuota','Cuota','aggSum'
EXEC spInsertarMedida 'Cubo_Socios','CDISubsidio','Subsidio','Subsidio','aggSum'
GO
EXEC spInsertarDimension 'Cubo_Socios','Cliente','Normal','Cliente',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Cliente','Cliente','Cliente','Cliente',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Direccion','Normal','Direccion',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Direccion','Direccion','Direccion','Direccion',1
GO
EXEC spInsertarDimension 'Cubo_Socios','DireccionNumero','Normal','DireccionNumero',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DireccionNumero','DireccionNumero','DireccionNumero','DireccionNumero',1
GO
EXEC spInsertarDimension 'Cubo_Socios','DireccionNumeroInt','Normal','DireccionNumeroInt',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DireccionNumeroInt','DireccionNumeroInt','DireccionNumeroInt','DireccionNumeroInt',1
GO
EXEC spInsertarDimension 'Cubo_Socios','EntreCalles','Normal','EntreCalles',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','EntreCalles','EntreCalles','EntreCalles','EntreCalles',4
GO
EXEC spInsertarDimension 'Cubo_Socios','Delegacion','Normal','Delegacion',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Delegacion','Delegacion','Delegacion','Delegacion',5
GO
EXEC spInsertarDimension 'Cubo_Socios','Colonia','Normal','Colonia',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Colonia','Colonia','Colonia','Colonia',6
GO
EXEC spInsertarDimension 'Cubo_Socios','Poblacion','Normal','Poblacion',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Poblacion','Poblacion','Poblacion','Poblacion',7
GO
EXEC spInsertarDimension 'Cubo_Socios','Estado','Normal','Estado',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Estado','Estado','Estado','Estado',8
GO
EXEC spInsertarDimension 'Cubo_Socios','Pais','Normal','Pais',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Pais','Pais','Pais','Pais',9
GO
EXEC spInsertarDimension 'Cubo_Socios','CodigoPostal','Normal','CodigoPostal',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','CodigoPostal','CodigoPostal','CodigoPostal','CodigoPostal',10
GO
EXEC spInsertarDimension 'Cubo_Socios','RFC','Normal','RFC',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','RFC','RFC','RFC','RFC',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Telefonos','Normal','Telefonos',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Telefonos','TelefonosLada','TelefonosLada','TelefonosLada',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Telefonos','Telefonos','Telefonos','Telefonos',2
GO
EXEC spInsertarDimension 'Cubo_Socios','eMail','Normal','eMail',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','eMail','eMail1','eMail1','eMail1',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','eMail','eMail2','eMail2','eMail2',2
GO
EXEC spInsertarDimension 'Cubo_Socios','Categoria','Normal','Categoria',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Categoria','Categoria','Categoria','Categoria',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Tipo','Normal','Tipo',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Tipo','Tipo','Tipo','Tipo',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Agente','Normal','Agente',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Agente','Agente','Agente','Agente',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Estatus','Normal','Estatus',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Estatus','Estatus','Estatus','Estatus',1
GO
EXEC spInsertarDimension 'Cubo_Socios','FechaAlta','Tiempo','FechaAlta',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','FechaAlta','Alta','FechaAlta','FechaAlta',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Nombre','Normal','Nombre',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Nombre','PersonalNombres','Nombre','Nombre',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Nombre','PersonalApellidoPaterno','ApellidoPaterno','ApellidoPaterno',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','Nombre','PersonalApellidoMaterno','ApellidoMaterno','ApellidoMaterno',3
GO
EXEC spInsertarDimension 'Cubo_Socios','PersonalPais','Normal','PersonalPais',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','PersonalPais','PersonalPais','PersonalPais','PersonalPais',1
GO
EXEC spInsertarDimension 'Cubo_Socios','FechaNacimiento','Tiempo','FechaNacimiento',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','FechaNacimiento','FechaNacimiento','FechaNacimiento','FechaNacimiento',1
GO
EXEC spInsertarDimension 'Cubo_Socios','EstadoCivil','Normal','EstadoCivil',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','EstadoCivil','EstadoCivil','EstadoCivil','EstadoCivil',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Sexo','Normal','Sexo',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Sexo','Sexo','Sexo','Sexo',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Parentesco','Normal','Parentesco',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Parentesco','Parentesco','Parentesco','Parentesco',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Membresia','Normal','Membresia',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Membresia','Membresia','Membresia','Membresia',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Socio','Normal','Socio',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Socio','Socio','Socio','Socio',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Nacionalidad','Normal','Nacionalidad',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Nacionalidad','Nacionalidad','Nacionalidad','Nacionalidad',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Ocupacion','Normal','Ocupacion',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Ocupacion','Ocupacion','Ocupacion','Ocupacion',1
GO
EXEC spInsertarDimension 'Cubo_Socios','OtrasDirecciones','Normal','OtrasDirecciones',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones','ODir','ODireccion','ODireccion',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones','ODirNum','ODireccionNumero','ODireccionNumero',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones','ODirNumInt','ODireccionNumeroInt','ODireccionNumeroInt',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones','OEntreCalles','OEntreCalles','OEntreCalles',4
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones','ODeleg','ODelegacion','ODelegacion',5
GO
EXEC spInsertarDimension 'Cubo_Socios','OtrasDirecciones2','Normal','OtrasDirecciones2',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones2','OCol','OColonia','OColonia',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones2','OPoblacion','OPoblacion','OPoblacion',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones2','OEdo','OEdo','OEdo',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones2','OPais','OPais','OPais',4
EXEC spInsertarDimensionNivel 'Cubo_Socios','OtrasDirecciones2','OCP','OCodigoPostal','OCodigoPostal',5
GO
EXEC spInsertarDimension 'Cubo_Socios','DireccionPais','Normal','DireccionPais',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DireccionPais','DireccionEnSuPais','DireccionEnSuPais','DireccionEnSuPais',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Pasaporte','Normal','Pasaporte',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Pasaporte','NumeroPasaporte','Pasaporte','Pasaporte',1
GO
EXEC spInsertarDimension 'Cubo_Socios','DireccUltEmpleo','Normal','DireccUltEmpleo',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DireccUltEmpleo','DireccionUltimoEmpleo','DireccionUltimoEmpleo','DireccionUltimoEmpleo',1
GO
EXEC spInsertarDimension 'Cubo_Socios','InstitucionPais','Normal','InstitucionPais',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','InstitucionPais','InstitucionEnSuPais','InstitucionEnSuPais','InstitucionEnSuPais',1
GO
EXEC spInsertarDimension 'Cubo_Socios','SocioEmpresa','Normal','SocioEmpresa',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','SocioEmpresa','CDIEcoSocioEmpresa','Socio','Socio',1
GO
EXEC spInsertarDimension 'Cubo_Socios','PropietarioEmpresa','Normal','PropietarioEmpresa',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','PropietarioEmpresa','CDIEcoPropietarioEmpresa','Propietario','Propietario',1
GO
EXEC spInsertarDimension 'Cubo_Socios','AccionistaEmpresa','Normal','AccionistaEmpresa',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','AccionistaEmpresa','CDIEcoAccionistaEmpresa','Accionista','Accionista',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Empleado','Normal','Empleado',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Empleado','CDIEcoEmpleadoEmpresa','Empleado','Empleado',1
GO
EXEC spInsertarDimension 'Cubo_Socios','DatosEmpresa','Normal','DatosEmpresa',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DatosEmpresa','CDIEcoNombreEmpresa','NombreEmpresa','Nombre de la Empresa',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DatosEmpresa','CDIEcoNombreGiro','Giro','Giro de la Empresa',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','DatosEmpresa','CDIEcoTelefono','TelefonoEmpresa','TelefonoEmpresa',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','DatosEmpresa','CDIEcoFax','Fax','Fax',4
EXEC spInsertarDimensionNivel 'Cubo_Socios','DatosEmpresa','CDIEcoMail','MailEmpresa','MailEmpresa',5
GO
EXEC spInsertarDimension 'Cubo_Socios','DirecEmpresa','Normal','DirecEmpresa',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa','CDIEcoDireccion','Direccion','Direccion',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa','CDIEcoDireccionNumero','EmpresaNumero','EmpresaNumero',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa','CDIEcoDireccionNumeroInt','EmpresaNumInt','EmpresaNumInt',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa','CDIEcoEntreCalles','EmpresaEntreCalles','EmpresaEntreCalles',4
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa','CDIEcoDelegacion','EmpresaDelegacion','EmpresaDelegacion',5
GO
EXEC spInsertarDimension 'Cubo_Socios','DirecEmpresa2','Normal','DirecEmpresa',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa2','CDIEcoColonia','EmpresaColonia','EmpresaColonia',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa2','CDIEcoPoblacion','EmpresaPoblacion','EmpresaPoblacion',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa2','CDIEcoEstado','EmpresaEstado','EmpresaEstado',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa2','CDIEcoPais','EmpresaPais','EmpresaPais',4
EXEC spInsertarDimensionNivel 'Cubo_Socios','DirecEmpresa2','CDIEcoCodigoPostal','EmpresaCP','EmpresaCP',5
GO
EXEC spInsertarDimension 'Cubo_Socios','Casa','Normal','Casa',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Casa','CDIEcoCasa','Casa','Casa',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Colegio','Normal','Colegio',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Colegio','CDIEcoColegio','Colegio','Colegio',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Automovil','Normal','Automovil',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Automovil','AñoAuto','Año','Año',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Automovil','Marca','Marca','Marca',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','Automovil','Modelo','Modelo','Modelo',3
GO
EXEC spInsertarDimension 'Cubo_Socios','Estatura','Normal','Estatura',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Estatura','CDIMedEstatura','Estatura','Estatura',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Peso','Normal','Peso',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Peso','CDIMedPeso','Peso','Peso',1
GO
EXEC spInsertarDimension 'Cubo_Socios','TipoSangre','Normal','TipoSangre',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TipoSangre','CDIMedTipoSangre','TipoSangre','TipoSangre',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Donador','Normal','Donador',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Donador','CDIMedDonador','Donador','Donador',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Enfermo','Normal','Enfermo',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Enfermo','CDIMedEnfermo','Enfermo','Enfermo',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Alergia','Normal','Alergia',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Alergia','CDIMedAlergia','Alergia','Alergia',1
GO
EXEC spInsertarDimension 'Cubo_Socios','Medicamento','Normal','Medicamento',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Medicamento','CDIMedMedicamento','Medicamento','Medicamento',1
GO
EXEC spInsertarDimension 'Cubo_Socios','AvisarEmergencia','Normal','AvisarEmergencia',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','AvisarEmergencia','CDIMedSolicitudes','Solicitud','Solicitud',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','AvisarEmergencia','CDIMedAvisar','AvisarA','AvisarA',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','AvisarEmergencia','CDIMedTelefono','TelefonoAvisar','TelefonoAvisar',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','AvisarEmergencia','CDIMedCelular','CelularAvisar','CelularAvisar',4
GO
EXEC spInsertarDimension 'Cubo_Socios','Medico','Normal','Medico',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Medico','CDIMedNombreMedico','Medico','Medico',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Medico','CDIMedTeleMedico','TelMedico','TelMedico',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','Medico','CDIMedCapacidades','Capacidades','Capacidades',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','Medico','CDIMedCuidados','Cuidados','Cuidados',4
GO
EXEC spInsertarDimension 'Cubo_Socios','Tarjeton','Normal','Tarjeton',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Tarjeton','CDIMedNoTarjeton','NoTarjeta','NoTarjeta',5
EXEC spInsertarDimensionNivel 'Cubo_Socios','Tarjeton','CDIMedVigencia','Vigencia','Vigencia',6
GO
EXEC spInsertarDimension 'Cubo_Socios','Transporte','Normal','Transporte',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Transporte','CDITransServicio','ServicioTransporte','ServicioTransporte',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','Transporte','CDITransHoraAscenso','HoraAscenso','HoraAscenso',2
GO
EXEC spInsertarDimension 'Cubo_Socios','TransDirecc','Normal','TransDirecc',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc','CDITransDireccion','DireccTrans','DireccionTrasporte',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc','CDITransNumero','DireccNumTrans','DireccionNumeroTrans',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc','CDITransNumeroInt','NumeroInterior','NumeroInterior',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc','CDITransEntreCalles','EntreCallesTrans','EntreCalles',4
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc','CDITransCodigoPostal','CodigoPostaTrans','CodigoPostaTrans',5
GO
EXEC spInsertarDimension 'Cubo_Socios','TransDirecc1','Normal','TransDirecc',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc1','CDITransDelegacion','TransDelegacion','TransDelegacion',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc1','CDITransColonia','TransColonia','TransColonia',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc1','CDITransPoblacion','TransPoblacion','TransPoblacion',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc1','CDITransEstado','TransEstado','TransEstado',4
GO
EXEC spInsertarDimension 'Cubo_Socios','TransResp','Normal','TransResp',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransResp','CDITransNombreResp','TransNombreResp','TransNombreResp',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransResp','CDITransTelefono','TransTelefono','TransTelefono',2
GO
EXEC spInsertarDimension 'Cubo_Socios','TransLLevarDom','Normal','TransLLevarDom',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransLLevarDom','CDITransLLevarDom','LlevarADomiciolio','LlevarADomiciolio',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransLLevarDom','CDITransHoraSalida','HoraSalida','HoraSalida',1
GO
EXEC spInsertarDimension 'Cubo_Socios','TransDirecc2','Normal','TransDirecc2',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc2','CDITransDireccion2','DireccTrans2','DireccionTrasporte2',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc2','CDITransNumero2','DireccNumTrans2','DireccionNumeroTrans2',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc2','CDITransNumeroInt2','NumeroInterior2','NumeroInterior2',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc2','CDITransEntreCalles2','EntreCallesTrans2','EntreCalles2',4
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc2','CDITransCodigoPostal2','CodigoPostaTrans2','CodigoPostaTrans2',5
GO
EXEC spInsertarDimension 'Cubo_Socios','TransDirecc21','Normal','TransDirecc2',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc21','CDITransDelegacion2','TransDelegacion2','TransDelegacion2',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc21','CDITransColonia2','TransColonia2','TransColonia2',2
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc21','CDITransPoblacion2','TransPoblacion2','TransPoblacion2',3
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransDirecc21','CDITransEstado2','TransEstado2','TransEstado2',4
GO
EXEC spInsertarDimension 'Cubo_Socios','TransResp2','Normal','TransResp2',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransResp2','CDITransNombreResp2','TransNombreResp2','TransNombreResp2',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','TransResp2','CDITransTelefono2','TransTelefono2','TransTelefono2',2
GO
EXEC spInsertarDimension 'Cubo_Socios','DatosBancarios','Normal','DatosBancarios',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DatosBancarios','Institucion','InstitucionBanca','InstitucionBanca',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','DatosBancarios','NoTarjeta','NoTarjeta','NoTarjeta',2
GO
EXEC spInsertarDimension 'Cubo_Socios','AutorizacionCargos','Normal','AutorizacionCargos',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','AutorizacionCargos','CDIAutorizacionCargos','AutorizacionCargos','AutorizacionCargos',1
GO
EXEC spInsertarDimension 'Cubo_Socios','NIPCDI','Normal','NIPCDI',1
EXEC spInsertarDimensionNivel 'Cubo_Socios','NIPCDI','NIPCDI','NIPCDI','NIPCDI',1
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID('dbo.Cubo_Socios') AND TYPE = 'V')
DROP VIEW dbo.Cubo_Socios
GO
CREATE VIEW Cubo_Socios
AS
SELECT c.Cliente, c.Nombre, c.Direccion, c.DireccionNumero, c.DireccionNumeroInt,
       c.EntreCalles, c.Plano, c.Delegacion, c.Colonia, c.Poblacion, c.Estado,
       c.Pais, c.CodigoPostal, c.RFC, c.Telefonos, c.TelefonosLada, c.eMail1,
       c.eMail2, c.Categoria, c.Tipo, c.Agente, c.ListaPrecios, c.ListaPreciosEsp,
       c.DefMoneda, c.Estatus, convert(char(10),c.Alta,120) AS 'Alta', c.Conciliar, c.PersonalNombres,
       c.PersonalApellidoPaterno, c.PersonalApellidoMaterno, c.PersonalPais,
       convert(char(10),c.FechaNacimiento,120) AS 'FechaNacimiento', c.EstadoCivil, c.Sexo, c.Parentesco, c.DeducibleMoneda, 
       c.Membresia, c.Socio, c2.Nacionalidad, c.Ocupacion, c.OtrosTelefonos, 
       cd.Direccion AS 'ODir', cd.DireccionNumero AS 'ODirNum', 
       cd.DireccionNumeroInt AS 'ODirNumInt', cd.EntreCalles AS 'OEntreCalles',
       cd.Plano AS 'OPlano', cd.Delegacion AS 'ODeleg', cd.Colonia AS 'OCol', 
       cd.Poblacion AS 'OPoblacion',cd.Estado AS 'OEdo', cd.Pais AS 'OPais', 
       cd.CodigoPostal AS 'OCP', c.DireccionEnSuPais, c.NumeroPasaporte, c.DireccionUltimoEmpleo,
       c.InstitucionEnSuPais, c.CDIEcoSocioEmpresa, c.CDIEcoPropietarioEmpresa,
       c.CDIEcoAccionistaEmpresa, c.CDIEcoEmpleadoEmpresa, c.CDIEcoNombreEmpresa,
       c.CDIEcoNombreGiro, c.CDIEcoDireccion, c.CDIEcoDireccionNumero,
       c.CDIEcoDireccionNumeroInt, c.CDIEcoEntreCalles, c.CDIEcoPlano,
       c.CDIEcoObservaciones, c.CDIEcoDelegacion, c.CDIEcoColonia,
       c.CDIEcoPoblacion, c.CDIEcoEstado, c.CDIEcoPais, c.CDIEcoMail,
       c.CDIEcoTelefono, c.CDIEcoFax, c.CDIEcoCodigoPostal, c.CDIEcoIngresos,
       c.CDIEcoCasa, c.CDIEcoMontoColegiatura, c.CDIEcoColegio,
       c.CDIEcoGastosMensules, c3.Año AS 'AñoAuto', c3.Marca, c3.Modelo, c.CDIMedEstatura, c.CDIMEdPeso,
       c.CDIMedTipoSangre, c.CDIMedDonador, c.CDIMedEnfermo, c.CDIMedAlergia,
       c.CDIMedMedicamento, c.CDIMedSolicitudes, c.CDIMedAvisar, c.CDIMedTelefono,
       c.CDIMedCelular, c.CDIMedNombreMedico, c.CDIMedTeleMedico,
       c.CDIMedCapacidades, c.CDIMedCuidados, c.CDIMedRecomenda,
       c.CDIMedNoTarjeton, c.CDIMedVigencia, c.CDITransServicio,
       c.CDITransHoraAscenso, c.CDITransDireccion, c.CDITransNumero,
       c.CDITransNumeroInt, c.CDITransEntreCalles, c.CDITransPlano,
       c.CDITransCodigoPostal, c.CDITransDelegacion, c.CDITransColonia,
       c.CDITransPoblacion, c.CDITransEstado, c.CDITransNombreResp,
       c.CDITransTelefono, c.CDITransLLevarDom, c.CDITransHoraSalida,
       c.CDITransDireccion2, c.CDITransNumero2, c.CDITransNumeroInt2,
       c.CDITransEntreCalles2, c.CDITransPlano2, c.CDITransCodigoPostal2,
       c.CDITransDelegacion2, c.CDITransColonia2, c.CDITransPoblacion2,
       c.CDITransEstado2, c.CDITransNombreResp2, c.CDITransTelefono2,
       c4.NoTarjeta, c4.Institucion, c.NIPCDI, c.CDIAutorizacionCargos, c.CDISubsidio,
       c.CDICuotaMembresia,c.CDIEcoMontoRenta
  FROM cte c
  LEFT OUTER JOIN CDINacionalidad c2 ON c.Cliente = c2.Cliente
  LEFT OUTER JOIN CDIOtrasDirecciones cd ON c.OtrasDirecciones = cd.Cliente
  LEFT OUTER JOIN CDIAutomovil c3 ON c.CDIEcoAutomoviles = c3.Cliente
  LEFT OUTER JOIN CDIDatosBancarios c4 ON c.Cliente = c4.cliente
WHERE c.CDISocio = 1
GO


--SELECT * FROM cubo_Socios
