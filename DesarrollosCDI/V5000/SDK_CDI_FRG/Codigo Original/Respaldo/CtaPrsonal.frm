[Forma]
Clave=CtaPrsonal
Nombre=CtaCtaPersonal
Icono=4
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
PosicionInicialIzquierda=418
PosicionInicialArriba=33
PosicionInicialAltura=578
PosicionInicialAncho=764
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Menus=S
BarraAyuda=S
Plantillas=S
PermiteCopiarDoc=S
PlantillasExcepciones=(Lista)
MovModulo=RH
PosicionInicialAlturaCliente=525
PosicionSec1=238
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Tipo,<T>CtaPersonal<T>)

MenuPrincipal=(Lista)
[Lista.CtaPersonal.CtaPersonal]
Carpeta=Lista
Clave=CtaPersonal.CtaPersonal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.NombreCompleto]
Carpeta=Lista
Clave=NombreCompleto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
CtaPersonal=115
NombreCompleto=287
Fecha=148
Usuario=82
Nombre=304
Sucursal=64
Nombre_1=154
Empresa=69
0=84
1=111
2=-2

CentroCostos=127
Descripcion=235
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
EnMenu=S
ConCondicion=S
EjecucionConError=S
EjecucionCondicion=Si<BR>  CtaPersonal:CtaPersonal.Confidencial<BR>Entonces<BR>  Asigna(CtaPersonal:CtaPersonal.ApellidoPaterno, Ofuscar(CtaPersonal:CtaPersonal.ApellidoPaterno))<BR>  Asigna(CtaPersonal:CtaPersonal.ApellidoMaterno, Ofuscar(CtaPersonal:CtaPersonal.ApellidoMaterno))<BR>  Asigna(CtaPersonal:CtaPersonal.Nombre, Ofuscar(CtaPersonal:CtaPersonal.Nombre))<BR>Fin<BR>(no Config.NomCCRequerido) o ConDatos(CtaPersonal:CtaPersonal.CentroCostos)
EjecucionMensaje=<T>Falta Indicar el Centro de Costos<T>

[Detalle]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaPersonal
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Detalle.CtaPersonal.CtaPersonal]
Carpeta=Detalle
Clave=CtaPersonal.CtaPersonal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.CtaPersonal.ApellidoPaterno]
Carpeta=Detalle
Clave=CtaPersonal.ApellidoPaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.CtaPersonal.ApellidoMaterno]
Carpeta=Detalle
Clave=CtaPersonal.ApellidoMaterno
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.CtaPersonal.Nombre]
Carpeta=Detalle
Clave=CtaPersonal.Nombre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.CtaPersonal.Direccion]
Carpeta=Detalle
Clave=CtaPersonal.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=41
ColorFondo=Blanco

[Detalle.CtaPersonal.Colonia]
Carpeta=Detalle
Clave=CtaPersonal.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.Poblacion]
Carpeta=Detalle
Clave=CtaPersonal.Poblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.Estado]
Carpeta=Detalle
Clave=CtaPersonal.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.Pais]
Carpeta=Detalle
Clave=CtaPersonal.Pais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Detalle.CtaPersonal.CodigoPostal]
Carpeta=Detalle
Clave=CtaPersonal.CodigoPostal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.Telefono]
Carpeta=Detalle
Clave=CtaPersonal.Telefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
EspacioPrevio=N

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S
Menu=&Archivo
EnMenu=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+N

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=E&liminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S
Menu=&Archivo
EnMenu=S
EspacioPrevio=S

ConCondicion=S
ActivoCondicion=no CtaPersonal:CtaPersonal.TieneMovimientos
EjecucionCondicion=Forma.ActualizarVista<BR>Forma.ActualizarControles<BR>Si<BR>  CtaPersonal:CtaPersonal.TieneMovimientos<BR>Entonces<BR>  Error(<T>El CtaPersonal ya tiene movimientos activos<T> , BotonAceptar  )<BR>Fin
[Detalle.CtaPersonal.Jornada]
Carpeta=Detalle
Clave=CtaPersonal.Jornada
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Cerrar
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Detalle.CtaPersonal.TipoContrato]
Carpeta=Detalle
Clave=CtaPersonal.TipoContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Detalle.CtaPersonal.PeriodoTipo]
Carpeta=Detalle
Clave=CtaPersonal.PeriodoTipo
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S

[Detalle.CtaPersonal.eMail]
Carpeta=Detalle
Clave=CtaPersonal.eMail
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S

[Acciones.Propiedades]
Nombre=Propiedades
Boton=35
Menu=&Edici�n
UsaTeclaRapida=S
TeclaRapida=F11
NombreDesplegar=&Propiedades
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
Activo=S
ConCondicion=S
Visible=S
ClaveAccion=CtaPersonalPropValor
Antes=S
DespuesGuardar=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.Rama, <T>PER<T>)<BR>Asigna(Info.Cuenta, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Descripcion, CtaPersonal:NombreCompleto)

[Detalle.CtaPersonal.TipoSalario]
Carpeta=Detalle
Clave=CtaPersonal.TipoSalario
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CtaPersonal.SalarioFijo]
Carpeta=Detalle
Clave=CtaPersonal.SalarioFijo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
EspacioPrevio=S

[Detalle.CtaPersonal.SalarioVariable]
Carpeta=Detalle
Clave=CtaPersonal.SalarioVariable
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
Pegado=N

[Detalle.CtaPersonal.Moneda]
Carpeta=Detalle
Clave=CtaPersonal.Moneda
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro
Pegado=N

[Detalle.]
Carpeta=Detalle
ColorFondo=Negro

[RH]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Recursos Humanos
Clave=RH
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaPersonal
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[RH.CtaPersonal.CtaPersonal]
Carpeta=RH
Clave=CtaPersonal.CtaPersonal
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[RH.NombreCompleto]
Carpeta=RH
Clave=NombreCompleto
Editar=S
3D=S
Tamano=62
ColorFondo=Plata
Efectos=[Negritas]

[RH.CtaPersonal.FechaAlta]
Carpeta=RH
Clave=CtaPersonal.FechaAlta
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
Editar=S
ColorFondo=Blanco

[RH.CtaPersonal.UltimaModificacion]
Carpeta=RH
Clave=CtaPersonal.UltimaModificacion
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
Editar=S
ColorFondo=Blanco

[RH.CtaPersonal.FechaBaja]
Carpeta=RH
Clave=CtaPersonal.FechaBaja
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
Editar=S
ColorFondo=Blanco

[Nomina]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Regla Negocio
Clave=Nomina
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaPersonal
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=110
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Nomina.CtaPersonal.FormaPago]
Carpeta=Nomina
Clave=CtaPersonal.FormaPago
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.CtaPersonal.CtaDinero]
Carpeta=Nomina
Clave=CtaPersonal.CtaDinero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.CtaPersonal.Afore]
Carpeta=Nomina
Clave=CtaPersonal.Afore
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Nomina.CtaPersonal.CtaPersonalCuenta]
Carpeta=Nomina
Clave=CtaPersonal.CtaPersonalCuenta
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Nomina.CtaPersonal.CtaPersonalSucursal]
Carpeta=Nomina
Clave=CtaPersonal.CtaPersonalSucursal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.Prov.Nombre]
Carpeta=Nomina
Clave=Prov.Nombre
Editar=S
3D=S
Tamano=41
ColorFondo=Plata
ColorFuente=Negro
ValidaNombre=S

[Nomina.CtaPersonal.CtaPersonal]
Carpeta=Nomina
Clave=CtaPersonal.CtaPersonal
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Nomina.NombreCompleto]
Carpeta=Nomina
Clave=NombreCompleto
3D=S
Tamano=62
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
Editar=S

[RH.CtaPersonal.Categoria]
Carpeta=RH
Clave=CtaPersonal.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
EspacioPrevio=N
ColorFondo=Blanco

[RH.CtaPersonal.Departamento]
Carpeta=RH
Clave=CtaPersonal.Departamento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=N
ColorFondo=Blanco

[RH.CtaPersonal.Grupo]
Carpeta=RH
Clave=CtaPersonal.Grupo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[RH.CtaPersonal.Puesto]
Carpeta=RH
Clave=CtaPersonal.Puesto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
EspacioPrevio=N
ColorFondo=Blanco

[RH.CtaPersonal.Valuacion]
Carpeta=RH
Clave=CtaPersonal.Valuacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.CtaPersonal.NivelAcademico]
Carpeta=RH
Clave=CtaPersonal.NivelAcademico
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=N

[RH.CtaPersonal.ReportaA]
Carpeta=RH
Clave=CtaPersonal.ReportaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=N

[RH.NombreReporta]
Carpeta=RH
Clave=NombreReporta
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Editar=S
OcultaNombre=S

[Detalle.CtaPersonal.Tipo]
Carpeta=Detalle
Clave=CtaPersonal.Tipo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[RH.CtaPersonal.UltimoPago]
Carpeta=RH
Clave=CtaPersonal.UltimoPago
ValidaNombre=S
3D=S
Tamano=20
Editar=S
ColorFondo=Blanco

[Evaluacion.RHD.Calificacion]
Carpeta=Evaluacion
Clave=RHD.Calificacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Evaluacion.RHD.Observaciones]
Carpeta=Evaluacion
Clave=RHD.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Evaluacion.RH.FechaEmision]
Carpeta=Evaluacion
Clave=RH.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Evaluacion.Evaluacion.Tipo]
Carpeta=Evaluacion
Clave=Evaluacion.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.EstatusNombre]
Carpeta=Detalle
Clave=EstatusNombre
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Nomina.CtaDineroDestino.Descripcion]
Carpeta=Nomina
Clave=CtaDineroDestino.Descripcion
Editar=S
3D=S
Tamano=62
ColorFondo=Plata
ColorFuente=Negro
ValidaNombre=S

[Detalle.CtaPersonal.Registro]
Carpeta=Detalle
Clave=CtaPersonal.Registro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=41
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.CtaPersonal.Nacionalidad]
Carpeta=Detalle
Clave=CtaPersonal.Nacionalidad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.FechaNacimiento]
Carpeta=Detalle
Clave=CtaPersonal.FechaNacimiento
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.Sexo]
Carpeta=Detalle
Clave=CtaPersonal.Sexo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[Detalle.CtaPersonal.EstadoCivil]
Carpeta=Detalle
Clave=CtaPersonal.EstadoCivil
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S

[Detalle.CtaPersonal.Pasaporte]
Carpeta=Detalle
Clave=CtaPersonal.Pasaporte
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.CtaPersonal.FechaAntiguedad]
Carpeta=RH
Clave=CtaPersonal.FechaAntiguedad
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=S
Editar=S
ColorFondo=Blanco

[RH.Antiguedad]
Carpeta=RH
Clave=Antiguedad
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Editar=S

[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edici�n
UsaTeclaRapida=S
TeclaRapida=F4
NombreDesplegar=Ane&xos
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=AnexoCta
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.Rama, <T>NOM<T>)<BR>Asigna(Info.AnexoCfg, Verdadero)<BR>Asigna(Info.Cuenta, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Descripcion, CtaPersonal:NombreCompleto)
RefrescarDespues=S

[Detalle.CtaPersonal.Registro2]
Carpeta=Detalle
Clave=CtaPersonal.Registro2
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.Registro3]
Carpeta=Detalle
Clave=CtaPersonal.Registro3
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Info]
Nombre=Info
Boton=34
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+I
NombreDesplegar=&Informaci�n
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CtaPersonalInfo
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
Antes=S
AntesExpresiones=Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)
Visible=S

[Acciones.Doc]
Nombre=Doc
Boton=17
Menu=&Edici�n
NombreDesplegar=&Documentaci�n
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
Expresion=EditarDocumentacion(<T>RH<T>, CtaPersonal:CtaPersonal.CtaPersonal, <T>Documentaci�n - <T>+CtaPersonal:NombreCompleto)
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)

[Acciones.Puesto]
Nombre=Puesto
Boton=0
Menu=&Maestros
NombreDesplegar=&Puestos
EnMenu=S
TipoAccion=Formas
ClaveAccion=Puesto
Visible=S
EspacioPrevio=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[Acciones.Departamento]
Nombre=Departamento
Boton=0
Menu=&Maestros
NombreDesplegar=&Departamentos
EnMenu=S
TipoAccion=Formas
ClaveAccion=Departamento
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[Acciones.CtaPersonalCat]
Nombre=CtaPersonalCat
Boton=0
Menu=&Maestros
NombreDesplegar=&Categor�as
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalCat
Visible=S
EspacioPrevio=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[Acciones.CtaPersonalGrupo]
Nombre=CtaPersonalGrupo
Boton=0
Menu=&Maestros
NombreDesplegar=&Grupos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalGrupo
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[Acciones.Nacionalidad]
Nombre=Nacionalidad
Boton=0
Menu=&Maestros
NombreDesplegar=&Nacionalidades
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=Nacionalidad
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[Acciones.NivelAcademico]
Nombre=NivelAcademico
Boton=0
Menu=&Maestros
NombreDesplegar=Niveles &Acad�micos
EnMenu=S
TipoAccion=Formas
ClaveAccion=NivelAcademico
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[Acciones.CtaPersonalValuacion]
Nombre=CtaPersonalValuacion
Boton=0
Menu=&Maestros
NombreDesplegar=&Valuaciones Laborales
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalValuacion
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[Acciones.ZonaEconomica]
Nombre=ZonaEconomica
Boton=0
Menu=&Maestros
NombreDesplegar=&Zona Econ�mica
EnMenu=S
TipoAccion=Formas
ClaveAccion=ZonaEconomica
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[(Carpeta Abrir)]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Personas
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CtaPersonalA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
Filtros=S
OtroOrden=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
IconosSubTitulo=<T>Clave<T>
ListaEnCaptura=NombreCompleto2
ListaOrden=CtaPersonalA.NombreCompleto<TAB>(Acendente)
FiltroPredefinido=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=Departamento
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=Puesto
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=CtaPersonalCat
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=CtaPersonalGrupo
FiltroAplicaEn1=CtaPersonalA.Departamento
FiltroAplicaEn2=CtaPersonalA.Puesto
FiltroAplicaEn3=CtaPersonalA.Categoria
FiltroAplicaEn4=CtaPersonalA.Grupo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroTodoFinal=S
FiltroAncho=20
FiltroListas=S
FiltroListasRama=RH
FiltroListasAplicaEn=CtaPersonalA.CtaPersonal
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNombre=&Vencimiento
FiltroEstatus=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=BAJA
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
ListaAcciones=(Lista)
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroSucursales=S
FiltroFechas=S
FiltroFechasCampo=CtaPersonalA.VencimientoContrato
FiltroFechasDefault=(Todo)
FiltroFechasVencimiento=S
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=CtaPersonalTipo
FiltroAplicaEn5=CtaPersonalA.Tipo
FiltroEmpresas=S
FiltroIgnorarEmpresas=S

IconosNombre=CtaPersonalA:CtaPersonalA.CtaPersonal
[Acciones.Actualizar]
Nombre=Actualizar
Boton=0
UsaTeclaRapida=S
TeclaRapida=F5
NombreDesplegar=&Actualizar
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Actualizar Arbol
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.preliminar]
Nombre=preliminar
Boton=0
NombreDesplegar=&Presentaci�n preliminar
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Campos]
Nombre=Campos
Boton=0
NombreDesplegar=CtaPersonalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[(Carpeta Abrir).Columnas]
0=99
1=358

[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S

[Acciones.Situacion]
Nombre=Situacion
Boton=71
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F12
NombreDesplegar=Situaci�n
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Visible=S
ActivoCondicion=Usuario.ModificarSituacion

[Nomina.CtaPersonal.Registro4]
Carpeta=Nomina
Clave=CtaPersonal.Registro4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Acciones.Otros1]
Nombre=Otros1
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros2]
Nombre=Otros2
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros3]
Nombre=Otros3
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros4]
Nombre=Otros4
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros5]
Nombre=Otros5
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros6]
Nombre=Otros6
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros7]
Nombre=Otros7
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros8]
Nombre=Otros8
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros9]
Nombre=Otros9
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[RH.CtaPersonal.SucursalTrabajo]
Carpeta=RH
Clave=CtaPersonal.SucursalTrabajo
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
Editar=S
ColorFondo=Blanco

[Detalle.CtaPersonal.LugarNacimiento]
Carpeta=Detalle
Clave=CtaPersonal.LugarNacimiento
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.Delegacion]
Carpeta=Detalle
Clave=CtaPersonal.Delegacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.CtaPersonal.ConceptoBaja]
Carpeta=RH
Clave=CtaPersonal.ConceptoBaja
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CtaPersonal.CtaPersonal]
Carpeta=Otros
Clave=CtaPersonal.CtaPersonal
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Otros.NombreCompleto]
Carpeta=Otros
Clave=NombreCompleto
ValidaNombre=N
3D=S
Tamano=66
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Otros.CtaPersonal.NivelAcceso]
Carpeta=Otros
Clave=CtaPersonal.NivelAcceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CtaPersonal.Padre]
Carpeta=Detalle
Clave=CtaPersonal.Padre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Detalle.CtaPersonal.Madre]
Carpeta=Detalle
Clave=CtaPersonal.Madre
Editar=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Detalle.CtaPersonal.UnidadMedica]
Carpeta=Detalle
Clave=CtaPersonal.UnidadMedica
Editar=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[RH.CtaPersonal.CentroCostos]
Carpeta=RH
Clave=CtaPersonal.CentroCostos
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=N
EspacioPrevio=N

[Acciones.CalcSueldo]
Nombre=CalcSueldo
Boton=10
Menu=&Edici�n
NombreDesplegar=&Calcular Sueldo Diario...
EnMenu=S
TipoAccion=Expresion
EspacioPrevio=S
Antes=S
UsaTeclaRapida=S
TeclaRapida=F7
GuardarAntes=S

Expresion=Si(Forma(<T>CalcSueldoDiario<T>), Asigna(CtaPersonal:CtaPersonal.SueldoDiario, Info.Sueldo))
ActivoCondicion=CtaPersonal:CtaPersonal.Estatus en (EstatusAspirante, EstatusCandidato)
AntesExpresiones=Asigna(Info.PeriodoTipo, CtaPersonal:CtaPersonal.PeriodoTipo)<BR>Asigna(Info.Anos, CtaPersonal:AnosCumplidos)<BR>Asigna(Info.Sueldo, Nulo)<BR>Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)
[Soporte.Soporte.FechaEmision]
Carpeta=Soporte
Clave=Soporte.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Soporte.Vencimiento]
Carpeta=Soporte
Clave=Soporte.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Soporte.Titulo]
Carpeta=Soporte
Clave=Soporte.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.CtaPersonal.ZonaEconomica]
Carpeta=Nomina
Clave=CtaPersonal.ZonaEconomica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Nomina.CtaPersonal.MinimoProfesional]
Carpeta=Nomina
Clave=CtaPersonal.MinimoProfesional
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=N

[Nomina.MinimosProfesionales.Descripcion]
Carpeta=Nomina
Clave=MinimosProfesionales.Descripcion
Editar=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
ValidaNombre=S

[Nomina.CtaPersonal.TipoContrato]
Carpeta=Nomina
Clave=CtaPersonal.TipoContrato
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Nomina.CtaPersonal.PeriodoTipo]
Carpeta=Nomina
Clave=CtaPersonal.PeriodoTipo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S
EspacioPrevio=S

[Nomina.CtaPersonal.SueldoDiario]
Carpeta=Nomina
Clave=CtaPersonal.SueldoDiario
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.CtaPersonal.SDI]
Carpeta=Nomina
Clave=CtaPersonal.SDI
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.CtaPersonal.Moneda]
Carpeta=Nomina
Clave=CtaPersonal.Moneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.CtaPersonal.VencimientoContrato]
Carpeta=Nomina
Clave=CtaPersonal.VencimientoContrato
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.CtaPersonal.Jornada]
Carpeta=Nomina
Clave=CtaPersonal.Jornada
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.CtaPersonal.TipoSueldo]
Carpeta=Nomina
Clave=CtaPersonal.TipoSueldo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.SueldoMinimoProfesional]
Carpeta=Nomina
Clave=SueldoMinimoProfesional
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Nomina.CtaPersonal.Sindicato]
Carpeta=Nomina
Clave=CtaPersonal.Sindicato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Sindicato]
Nombre=Sindicato
Boton=0
Menu=&Maestros
NombreDesplegar=&Sindicatos
EnMenu=S
TipoAccion=Formas
ClaveAccion=Sindicato
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[Acciones.CtaPersonalParecidos]
Nombre=CtaPersonalParecidos
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+P
NombreDesplegar=Parecidos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalParecidos
Activo=S
Antes=S
Visible=S
AntesExpresiones=Asigna(Info.Nombre, CtaPersonal:CtaPersonal.ApellidoPaterno)<BR>Asigna(Info.Nombre2, CtaPersonal:CtaPersonal.ApellidoMaterno)

[Nomina.CtaPersonal.Vehiculo]
Carpeta=Nomina
Clave=CtaPersonal.Vehiculo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.Vehiculo.Descripcion]
Carpeta=Nomina
Clave=Vehiculo.Descripcion
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Plata
ColorFuente=Negro

[Nomina.Vehiculo.Placas]
Carpeta=Nomina
Clave=Vehiculo.Placas
ValidaNombre=S
3D=S
Pegado=N
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[ComisionesEsp]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Comisiones Especiales
Clave=ComisionesEsp
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaPersonal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CondicionVisible=Config.ComisionEspecial

[ComisionesEsp.CtaPersonal.CtaPersonal]
Carpeta=ComisionesEsp
Clave=CtaPersonal.CtaPersonal
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[ComisionesEsp.NombreCompleto]
Carpeta=ComisionesEsp
Clave=NombreCompleto
Editar=S
3D=S
Tamano=56
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[ComisionesEsp.CtaPersonal.TablaCobranza]
Carpeta=ComisionesEsp
Clave=CtaPersonal.TablaCobranza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[ComisionesEsp.CtaPersonal.TablaCobranzaBono]
Carpeta=ComisionesEsp
Clave=CtaPersonal.TablaCobranzaBono
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[ComisionesEsp.CtaPersonal.TablaCobranzaCascada]
Carpeta=ComisionesEsp
Clave=CtaPersonal.TablaCobranzaCascada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[ComisionesEsp.CtaPersonal.TablaCobranzaBonoCascada]
Carpeta=ComisionesEsp
Clave=CtaPersonal.TablaCobranzaBonoCascada
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[ComisionesEsp.CtaPersonal.TablaVentaCascada]
Carpeta=ComisionesEsp
Clave=CtaPersonal.TablaVentaCascada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Beneficiarios
Clave=Beneficiarios
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaPersonal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Beneficiarios.CtaPersonal.CtaPersonal]
Carpeta=Beneficiarios
Clave=CtaPersonal.CtaPersonal
Editar=N
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Beneficiarios.NombreCompleto]
Carpeta=Beneficiarios
Clave=NombreCompleto
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=62
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Beneficiarios.CtaPersonal.Beneficiario]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Parentesco]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Porcentaje]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje
Editar=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Beneficiario2]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario2
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Parentesco2]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco2
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Porcentaje2]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje2
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Beneficiario3]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario3
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Parentesco3]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco3
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Porcentaje3]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje3
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CtaPersonal.Hijos]
Carpeta=Detalle
Clave=CtaPersonal.Hijos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Detalle.CtaPersonal.Dependientes]
Carpeta=Detalle
Clave=CtaPersonal.Dependientes
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Cubos]
Nombre=Cubos
Boton=100
Menu=&Ver
NombreDesplegar=<T>Cubo N�mina<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Dialogos
Activo=S
ClaveAccion=CuboCtaPersonal
ConCondicion=S
Antes=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)
Visible=S
[Acciones.Alta Express]
Nombre=Alta Express
Boton=7
Menu=&Archivo
NombreDesplegar=Alta Express...
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
ConfirmarAntes=S
DialogoMensaje=EstaSeguroAltaExpress
TipoAccion=Expresion
ConCondicion=S
Visible=S
GuardarAntes=S
RefrescarDespues=S
UsaTeclaRapida=S
TeclaRapida=F12
EjecucionConError=S
Expresion=ProcesarSQL(<T>spRHAltaExpress :tEmp, :nSuc, :tUsr, :tCtaPersonal<T>, Empresa, Sucursal, Usuario, CtaPersonal:CtaPersonal.CtaPersonal)
ActivoCondicion=CtaPersonal:CtaPersonal.Estatus en (EstatusAspirante, EstatusCandidato) y (no Usuario.BloquearAltaExpressCtaPersonal)
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal) y ConDatos(CtaPersonal:CtaPersonal.PeriodoTipo) y<BR>ConDatos(CtaPersonal:CtaPersonal.FormaPago) y ConDatos(CtaPersonal:CtaPersonal.CtaDinero) y<BR>ConDatos(CtaPersonal:CtaPersonal.SueldoDiario) y ConDatos(CtaPersonal:CtaPersonal.FechaAlta) y<BR>ConDatos(CtaPersonal:CtaPersonal.FechaAntiguedad)
EjecucionMensaje=<T>Campos Requeridos: Tipo Periodo, Forma Pago, Cuenta Pago, Sueldo Diario, Fecha Alta, Fecha Antiguedad<T>

[RH.Departamento.Descripcion]
Carpeta=RH
Clave=Departamento.Descripcion
Editar=S
LineaNueva=N
Tamano=20
ColorFondo=Plata

[RH.Puesto.Descripcion]
Carpeta=RH
Clave=Puesto.Descripcion
Editar=S
Tamano=41
ColorFondo=Plata

[RH.CtaPersonalCat.Descripcion]
Carpeta=RH
Clave=CtaPersonalCat.Descripcion
Editar=S
Tamano=41
ColorFondo=Plata
LineaNueva=S

[RH.CtaPersonalGrupo.Descripcion]
Carpeta=RH
Clave=CtaPersonalGrupo.Descripcion
Editar=S
Tamano=41
ColorFondo=Plata

[RH.CtaPersonal.UEN]
Carpeta=RH
Clave=CtaPersonal.UEN
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=103
Menu=&Edici�n
NombreDesplegar=E&valuaciones
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=EvaluacionCalificacion
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Asigna(Info.Clave, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)<BR>Asigna(Info.Aplica, <T>CtaPersonal<T>)<BR>Asigna(Info.Nombre2, Nulo)
Visible=S

[Beneficiarios.CtaPersonal.Beneficiario4]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario4
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Parentesco4]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco4
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Porcentaje4]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje4
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Beneficiario5]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario5
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Parentesco5]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco5
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Porcentaje5]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje5
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Beneficiario6]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario6
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Parentesco6]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco6
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Porcentaje6]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje6
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Beneficiario7]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario7
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Parentesco7]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco7
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Porcentaje7]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje7
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Beneficiario8]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario8
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Parentesco8]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco8
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Porcentaje8]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje8
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CtaPersonalUltimoPago]
Nombre=CtaPersonalUltimoPago
Boton=0
Menu=&Ver
NombreDesplegar=&Ultimo Pago
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalUltimoPago
Activo=S
ConCondicion=S
Antes=S
Visible=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)

[Acciones.Area]
Nombre=Area
Boton=0
Menu=&Maestros
NombreDesplegar=Areas
EnMenu=S
TipoAccion=Formas
ClaveAccion=Area
Visible=S
EspacioPrevio=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[Acciones.Fuente]
Nombre=Fuente
Boton=0
Menu=&Maestros
NombreDesplegar=Fuentes
EnMenu=S
TipoAccion=Formas
ClaveAccion=Fuente
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosCtaPersonal

[RH.CtaPersonal.Area]
Carpeta=RH
Clave=CtaPersonal.Area
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[RH.CtaPersonal.Fuente]
Carpeta=RH
Clave=CtaPersonal.Fuente
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.CtaPersonal.Reclutador]
Carpeta=RH
Clave=CtaPersonal.Reclutador
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S

[RH.NombreReclutador]
Carpeta=RH
Clave=NombreReclutador
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
OcultaNombre=S

[Acciones.Sucursales]
Nombre=Sucursales
Boton=0
Menu=&Edici�n
NombreDesplegar=&Sucursales Asignadas
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalSuc
Activo=S
ConCondicion=S
Antes=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)
VisibleCondicion=CtaPersonal:CtaPersonal.Tipo en (<T>Encargado<T>, <T>Encargado Zona<T>,<T>Supervisor<T>, <T>Gerente<T>)

[RH.CtaPersonal.RecomendadoPor]
Carpeta=RH
Clave=CtaPersonal.RecomendadoPor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.NombreRecomendadoPor]
Carpeta=RH
Clave=NombreRecomendadoPor
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
OcultaNombre=S

[Acciones.CtaPersonalAcceso]
Nombre=CtaPersonalAcceso
Boton=0
Menu=&Edici�n
NombreDesplegar=Acceso Especifico...
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalAcceso
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)
VisibleCondicion=General.NivelAccesoEsp y (CtaPersonal:CtaPersonal.NivelAcceso=<T>(Especifico)<T>)

[Nomina.CtaPersonal.MovNomina]
Carpeta=Nomina
Clave=CtaPersonal.MovNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[RH.UEN.Nombre]
Carpeta=RH
Clave=UEN.Nombre
Editar=S
LineaNueva=N
3D=S
Tamano=20
ColorFondo=Plata
ValidaNombre=S
OcultaNombre=S

[RH.Sucursal.Nombre]
Carpeta=RH
Clave=Sucursal.Nombre
Editar=S
ValidaNombre=S
OcultaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[RH.CentroCostos.Descripcion]
Carpeta=RH
Clave=CentroCostos.Descripcion
Editar=S
ValidaNombre=S
OcultaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[OtrosDatos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Otros Datos
Clave=OtrosDatos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaPersonal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

[OtrosDatos.CtaPersonal.CtaPersonal]
Carpeta=OtrosDatos
Clave=CtaPersonal.CtaPersonal
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[OtrosDatos.NombreCompleto]
Carpeta=OtrosDatos
Clave=NombreCompleto
Editar=S
ValidaNombre=N
3D=S
Tamano=62
ColorFondo=Plata
Efectos=[Negritas]

[OtrosDatos.CtaPersonal.Cuenta]
Carpeta=OtrosDatos
Clave=CtaPersonal.Cuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[OtrosDatos.Cta.Descripcion]
Carpeta=OtrosDatos
Clave=Cta.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Plata

[OtrosDatos.CtaPersonal.CuentaRetencion]
Carpeta=OtrosDatos
Clave=CtaPersonal.CuentaRetencion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.CtaRetencion.Descripcion]
Carpeta=OtrosDatos
Clave=CtaRetencion.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Plata

[Acciones.CtaPersonalCfg]
Nombre=CtaPersonalCfg
Boton=0
Menu=&Edici�n
NombreDesplegar=Deducciones Especiales...
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalCfg
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)

[Beneficiarios.CtaPersonal.BeneficiarioNacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.BeneficiarioNacimiento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Beneficiarios.CtaPersonal.Beneficiario2Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario2Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario3Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario3Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario4Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario4Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario5Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario5Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario6Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario6Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario7Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario7Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario8Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario8Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=15

[OtrosDatos.CtaPersonal.Referencia]
Carpeta=OtrosDatos
Clave=CtaPersonal.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.ReferenciaDireccion]
Carpeta=OtrosDatos
Clave=CtaPersonal.ReferenciaDireccion
Editar=S
ValidaNombre=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.ReferenciaTelefono]
Carpeta=OtrosDatos
Clave=CtaPersonal.ReferenciaTelefono
Editar=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.Referencia2]
Carpeta=OtrosDatos
Clave=CtaPersonal.Referencia2
Editar=S
LineaNueva=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.Referencia2Direccion]
Carpeta=OtrosDatos
Clave=CtaPersonal.Referencia2Direccion
Editar=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.Referencia2Telefono]
Carpeta=OtrosDatos
Clave=CtaPersonal.Referencia2Telefono
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.Referencia3]
Carpeta=OtrosDatos
Clave=CtaPersonal.Referencia3
Editar=S
LineaNueva=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.Referencia3Direccion]
Carpeta=OtrosDatos
Clave=CtaPersonal.Referencia3Direccion
Editar=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.Referencia3Telefono]
Carpeta=OtrosDatos
Clave=CtaPersonal.Referencia3Telefono
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco

[Detalle.CtaPersonal.Licencia]
Carpeta=Detalle
Clave=CtaPersonal.Licencia
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.LicenciaVencimiento]
Carpeta=Detalle
Clave=CtaPersonal.LicenciaVencimiento
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.Cartilla]
Carpeta=OtrosDatos
Clave=CtaPersonal.Cartilla
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.Permiso]
Carpeta=OtrosDatos
Clave=CtaPersonal.Permiso
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.Cliente]
Carpeta=OtrosDatos
Clave=CtaPersonal.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.Cte.Nombre]
Carpeta=OtrosDatos
Clave=Cte.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Plata

[Detalle.CtaPersonal.eMailAuto]
Carpeta=Detalle
Clave=CtaPersonal.eMailAuto
Editar=S
3D=S
Tamano=22
ColorFondo=Blanco

[Acciones.Tareas]
Nombre=Tareas
Boton=70
Menu=&Edici�n
NombreDesplegar=Tareas
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=Tarea
Activo=S
ConCondicion=S
Antes=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.PuedeEditar, Verdadero)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)<BR>Asigna(Info.Cliente, Nulo)<BR>Asigna(Info.Proveedor, Nulo)<BR>Asigna(Info.Agente, Nulo)<BR>Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Proyecto, Nulo)<BR>Asigna(Info.UEN, Nulo)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.ID, Nulo)<BR>Asigna(Info.Reporte, Nulo)

[Aspiraciones]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Aspiraciones
Clave=Aspiraciones
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaPersonal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Aspiraciones.CtaPersonal.AspiraSueldo]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraSueldo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
ColorFuente=Negro

[Aspiraciones.CtaPersonal.AspiraDepartamento]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraDepartamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
ColorFuente=Negro

[Aspiraciones.CtaPersonal.AspiraGrupo]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraGrupo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
ColorFuente=Negro

[Aspiraciones.CtaPersonal.AspiraPuesto]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraPuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
ColorFuente=Negro

[Aspiraciones.CtaPersonal.AspiraCategoria]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraCategoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
ColorFuente=Negro

[Aspiraciones.CtaPersonal.AspiraFecha]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
ColorFuente=Negro

[Aspiraciones.CtaPersonal.CtaPersonal]
Carpeta=Aspiraciones
Clave=CtaPersonal.CtaPersonal
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Aspiraciones.NombreCompleto]
Carpeta=Aspiraciones
Clave=NombreCompleto
3D=S
Tamano=62
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
Editar=S

[Acciones.Politica]
Nombre=Politica
Boton=22
Menu=&Edici�n
NombreDesplegar=Pol�tica
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=Politica
Activo=S
ConCondicion=S
Antes=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=May�s+Ctrl+O
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.Rama, <T>PER<T>)<BR>Asigna(Info.Clave, CtaPersonal:CtaPersonal.CtaPersonal)

[Acciones.RefCta]
Nombre=RefCta
Boton=110
Menu=&Edici�n
NombreDesplegar=Referencias
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=RefCta
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
Antes=S
AntesExpresiones=Asigna(Info.Rama, <T>RH<T>)<BR>Asigna(Info.Cuenta, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)
Visible=S

[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F11
NombreDesplegar=Plantillas &Office
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S
Expresion=Asigna(Info.Forma, <T>CtaPersonal<T>)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Asigna(Info.Nombre, <T>CtaPersonal<T>)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin

[RH.CtaPersonal.Incremento]
Carpeta=RH
Clave=CtaPersonal.Incremento
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[Acciones.CamposExtras]
Nombre=CamposExtras
Boton=104
Menu=&Edici�n
UsaTeclaRapida=S
TeclaRapida=Ctrl+1
NombreDesplegar=General.CamposExtras+<T>...<T>
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
EspacioPrevio=S
Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasContacto(<T>CtaPersonal<T>, CtaPersonal:CtaPersonal.Tipo, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Sino<BR>  Asigna(Info.Aplica, <T>CtaPersonal<T>)<BR>  Asigna(Info.Clave, CtaPersonal:CtaPersonal.CtaPersonal)<BR>  Asigna(Info.Nombre, CtaPersonal:NombreCompleto)<BR>  Asigna(Info.Modulo, Nulo)<BR>  Asigna(Info.Mov, Nulo)<BR>  Asigna(Info.Categoria, CtaPersonal:CtaPersonal.Categoria)<BR>  Asigna(Info.Grupo, CtaPersonal:CtaPersonal.Grupo)<BR>  Asigna(Info.Familia, Nulo)<BR>  Asigna(Info.Departamento, CtaPersonal:CtaPersonal.Departamento)<BR>  Asigna(Info.Puesto, CtaPersonal:CtaPersonal.Puesto)<BR>  Asigna(Info.SIC, Nulo)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaExtraVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si(ConDatos(Info.FormaTipo), iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre), Informacion(<T>No Tiene Definida Ninguna Forma<T>))<BR>Fin
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)

[Acciones.Mensajes]
Nombre=Mensajes
Boton=112
Menu=&Ver
NombreDesplegar=Mensajes
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=OutlookCtaPersonal
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
Antes=S
AntesExpresiones=Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)
Visible=S

[OtrosDatos.CtaPersonal.EsSocio]
Carpeta=OtrosDatos
Clave=CtaPersonal.EsSocio
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=10
ColorFondo=Blanco

[Nomina.CtaPersonal.DiasPeriodo]
Carpeta=Nomina
Clave=CtaPersonal.DiasPeriodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[RH.CtaPersonal.IndemnizacionPct]
Carpeta=RH
Clave=CtaPersonal.IndemnizacionPct
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.CtaPersonal.Proyecto]
Carpeta=RH
Clave=CtaPersonal.Proyecto
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.DatosAcademicos]
Nombre=DatosAcademicos
Boton=0
Menu=&Edici�n
NombreDesplegar=Datos Academicos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalDatosAcademicos
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)

[Acciones.DatosLaborales]
Nombre=DatosLaborales
Boton=0
Menu=&Edici�n
NombreDesplegar=Datos Laborales
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalDatosLaborales
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)

[Acciones.CtaPersonalHerman]
Nombre=CtaPersonalHerman
Boton=0
Menu=&Edici�n
NombreDesplegar=Human Side - Herman
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CtaPersonalHerman
Activo=S
ConCondicion=S
Antes=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)
[Acciones.CtaPersonalSpranger]
Nombre=CtaPersonalSpranger
Boton=0
Menu=&Edici�n
NombreDesplegar=Human Side - Spranger
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalSpranger
Activo=S
ConCondicion=S
Antes=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)
[Acciones.CtaPersonalCleaver]
Nombre=CtaPersonalCleaver
Boton=0
Menu=&Edici�n
NombreDesplegar=Human Side - Cleaver
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalCleaver
Activo=S
ConCondicion=S
Antes=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)
[Acciones.CtaPersonalEntrada]
Nombre=CtaPersonalEntrada
Boton=0
Menu=&Edici�n
NombreDesplegar=Horario &Entrada
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalEntrada
Activo=S
ConCondicion=S
Antes=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)
[RH.CtaPersonal.Plaza]
Carpeta=RH
Clave=CtaPersonal.Plaza
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[RH.Plaza.Descripcion]
Carpeta=RH
Clave=Plaza.Descripcion
Editar=S
Tamano=20
ColorFondo=Plata
LineaNueva=S

[FormaExtraValor]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Caracter�sticas
Clave=FormaExtraValor
Filtros=S
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaExtraValor
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaSinBorde=S
HojaFondoGris=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
ListaOrden=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
RefrescarAlEntrar=S
PermiteEditar=S
FiltroGeneral=FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaExtraVisibleCtaPersonal(<T>{CtaPersonal:CtaPersonal.Categoria}<T>, <T>{CtaPersonal:CtaPersonal.Grupo}<T>, <T>{CtaPersonal:CtaPersonal.Departamento}<T>, <T>{CtaPersonal:CtaPersonal.Puesto}<T>)) AND FormaExtraValor.Aplica=<T>CtaPersonal<T> AND FormaExtraValor.AplicaClave=<T>{CtaPersonal:CtaPersonal.CtaPersonal}<T>
CondicionVisible=General.CamposExtras<><T>Campos Extras<T>

[FormaExtraValor.VerCampo]
Carpeta=FormaExtraValor
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Plata
ColorFuente=Negro

[FormaExtraValor.VerValor]
Carpeta=FormaExtraValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
Efectos=[Negritas]

[FormaExtraValor.Columnas]
VerCampo=293
VerValor=296

[Nomina.CtaPersonal.SueldoDiarioComplemento]
Carpeta=Nomina
Clave=CtaPersonal.SueldoDiarioComplemento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.SueldoDiarioBruto]
Carpeta=Nomina
Clave=SueldoDiarioBruto
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Editar=S

[Detalle.CtaPersonal.Empresa]
Carpeta=Detalle
Clave=CtaPersonal.Empresa
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.CtaPersonal.NivelAcceso]
Carpeta=OtrosDatos
Clave=CtaPersonal.NivelAcceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.DireccionNumero]
Carpeta=Detalle
Clave=CtaPersonal.DireccionNumero
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ValidaNombre=S
OcultaNombre=N

[Detalle.CtaPersonal.DireccionNumeroInt]
Carpeta=Detalle
Clave=CtaPersonal.DireccionNumeroInt
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ValidaNombre=S
OcultaNombre=N
Pegado=N

[Perfiles]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Perfiles
Clave=Perfiles
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaPersonal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Perfiles.CtaPersonal.EsRecurso]
Carpeta=Perfiles
Clave=CtaPersonal.EsRecurso
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=40

[Perfiles.CtaPersonal.EsAgente]
Carpeta=Perfiles
Clave=CtaPersonal.EsAgente
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=40

[Perfiles.CtaPersonal.EsUsuarioWeb]
Carpeta=Perfiles
Clave=CtaPersonal.EsUsuarioWeb
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Historico]
Nombre=Historico
Boton=0
Menu=&Ver
EsDefault=S
NombreDesplegar=Hist�rico de Cambios
EnMenu=S
TipoAccion=Expresion
Visible=S
Activo=S
ConCondicion=S
Antes=S

Expresion=Asigna(Info.Tabla, <T>CtaPersonal<T>)<BR>Asigna(Info.Llave, Carpeta.LlavePrimaria(<T>Ficha<T>, <T>|<T>))<BR>Si<BR> SQL(<T>SELECT RegHist FROM Version<T>) y (SQL(<T>SELECT Estatus FROM CfgRegHist WHERE SysTabla=:tTabla<T>, Info.Tabla)=EstatusActivo)<BR>Entonces<BR> Forma(<T>RegHist<T>)<BR>Sino<BR> Informacion(<T>Es necesario activar la opci�n Registro Cambios Hist�ricos (Autom�tico) en la configuraci�n de Versi�n<T>)<BR>Fin
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.Nombre,CtaPersonal:CtaPersonal.ApellidoPaterno & <T> <T> & CtaPersonal:CtaPersonal.ApellidoMaterno & <T> <T> & CtaPersonal:CtaPersonal.Nombre)
[Detalle.Columnas]
CampoNombre=311
Valor=303
ValorAnterior=285

[OtrosDatos.CtaPersonal.Confidencial]
Carpeta=OtrosDatos
Clave=CtaPersonal.Confidencial
Editar=S
LineaNueva=S
3D=S
Tamano=12
ColorFondo=Blanco

[(Carpeta Abrir).NombreCompleto2]
Carpeta=(Carpeta Abrir)
Clave=NombreCompleto2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Nomina.ListaEnCaptura]
(Inicio)=CtaPersonal.CtaPersonal
CtaPersonal.CtaPersonal=NombreCompleto
NombreCompleto=CtaPersonal.MovNomina
CtaPersonal.MovNomina=CtaPersonal.FormaPago
CtaPersonal.FormaPago=CtaPersonal.CtaPersonalSucursal
CtaPersonal.CtaPersonalSucursal=CtaPersonal.CtaPersonalCuenta
CtaPersonal.CtaPersonalCuenta=CtaPersonal.CtaDinero
CtaPersonal.CtaDinero=CtaDineroDestino.Descripcion
CtaDineroDestino.Descripcion=CtaPersonal.Vehiculo
CtaPersonal.Vehiculo=Vehiculo.Descripcion
Vehiculo.Descripcion=Vehiculo.Placas
Vehiculo.Placas=CtaPersonal.Registro4
CtaPersonal.Registro4=CtaPersonal.Afore
CtaPersonal.Afore=Prov.Nombre
Prov.Nombre=CtaPersonal.Sindicato
CtaPersonal.Sindicato=CtaPersonal.ZonaEconomica
CtaPersonal.ZonaEconomica=CtaPersonal.MinimoProfesional
CtaPersonal.MinimoProfesional=MinimosProfesionales.Descripcion
MinimosProfesionales.Descripcion=SueldoMinimoProfesional
SueldoMinimoProfesional=CtaPersonal.DiasPeriodo
CtaPersonal.DiasPeriodo=CtaPersonal.PeriodoTipo
CtaPersonal.PeriodoTipo=CtaPersonal.Jornada
CtaPersonal.Jornada=CtaPersonal.TipoContrato
CtaPersonal.TipoContrato=CtaPersonal.VencimientoContrato
CtaPersonal.VencimientoContrato=CtaPersonal.TipoSueldo
CtaPersonal.TipoSueldo=CtaPersonal.SueldoDiario
CtaPersonal.SueldoDiario=CtaPersonal.SDI
CtaPersonal.SDI=CtaPersonal.Moneda
CtaPersonal.Moneda=CtaPersonal.SueldoDiarioComplemento
CtaPersonal.SueldoDiarioComplemento=SueldoDiarioBruto
SueldoDiarioBruto=(Fin)

[ComisionesEsp.ListaEnCaptura]
(Inicio)=CtaPersonal.CtaPersonal
CtaPersonal.CtaPersonal=NombreCompleto
NombreCompleto=CtaPersonal.TablaCobranza
CtaPersonal.TablaCobranza=CtaPersonal.TablaCobranzaBono
CtaPersonal.TablaCobranzaBono=CtaPersonal.TablaCobranzaCascada
CtaPersonal.TablaCobranzaCascada=CtaPersonal.TablaCobranzaBonoCascada
CtaPersonal.TablaCobranzaBonoCascada=CtaPersonal.TablaVentaCascada
CtaPersonal.TablaVentaCascada=(Fin)

[Beneficiarios.ListaEnCaptura]
(Inicio)=CtaPersonal.CtaPersonal
CtaPersonal.CtaPersonal=NombreCompleto
NombreCompleto=CtaPersonal.Beneficiario
CtaPersonal.Beneficiario=CtaPersonal.Parentesco
CtaPersonal.Parentesco=CtaPersonal.BeneficiarioNacimiento
CtaPersonal.BeneficiarioNacimiento=CtaPersonal.Porcentaje
CtaPersonal.Porcentaje=CtaPersonal.Beneficiario2
CtaPersonal.Beneficiario2=CtaPersonal.Parentesco2
CtaPersonal.Parentesco2=CtaPersonal.Beneficiario2Nacimiento
CtaPersonal.Beneficiario2Nacimiento=CtaPersonal.Porcentaje2
CtaPersonal.Porcentaje2=CtaPersonal.Beneficiario3
CtaPersonal.Beneficiario3=CtaPersonal.Parentesco3
CtaPersonal.Parentesco3=CtaPersonal.Beneficiario3Nacimiento
CtaPersonal.Beneficiario3Nacimiento=CtaPersonal.Porcentaje3
CtaPersonal.Porcentaje3=CtaPersonal.Beneficiario4
CtaPersonal.Beneficiario4=CtaPersonal.Parentesco4
CtaPersonal.Parentesco4=CtaPersonal.Beneficiario4Nacimiento
CtaPersonal.Beneficiario4Nacimiento=CtaPersonal.Porcentaje4
CtaPersonal.Porcentaje4=CtaPersonal.Beneficiario5
CtaPersonal.Beneficiario5=CtaPersonal.Parentesco5
CtaPersonal.Parentesco5=CtaPersonal.Beneficiario5Nacimiento
CtaPersonal.Beneficiario5Nacimiento=CtaPersonal.Porcentaje5
CtaPersonal.Porcentaje5=CtaPersonal.Beneficiario6
CtaPersonal.Beneficiario6=CtaPersonal.Parentesco6
CtaPersonal.Parentesco6=CtaPersonal.Beneficiario6Nacimiento
CtaPersonal.Beneficiario6Nacimiento=CtaPersonal.Porcentaje6
CtaPersonal.Porcentaje6=CtaPersonal.Beneficiario7
CtaPersonal.Beneficiario7=CtaPersonal.Parentesco7
CtaPersonal.Parentesco7=CtaPersonal.Beneficiario7Nacimiento
CtaPersonal.Beneficiario7Nacimiento=CtaPersonal.Porcentaje7
CtaPersonal.Porcentaje7=CtaPersonal.Beneficiario8
CtaPersonal.Beneficiario8=CtaPersonal.Parentesco8
CtaPersonal.Parentesco8=CtaPersonal.Beneficiario8Nacimiento
CtaPersonal.Beneficiario8Nacimiento=CtaPersonal.Porcentaje8
CtaPersonal.Porcentaje8=(Fin)


[Aspiraciones.ListaEnCaptura]
(Inicio)=CtaPersonal.CtaPersonal
CtaPersonal.CtaPersonal=NombreCompleto
NombreCompleto=CtaPersonal.AspiraFecha
CtaPersonal.AspiraFecha=CtaPersonal.AspiraSueldo
CtaPersonal.AspiraSueldo=CtaPersonal.AspiraDepartamento
CtaPersonal.AspiraDepartamento=CtaPersonal.AspiraGrupo
CtaPersonal.AspiraGrupo=CtaPersonal.AspiraPuesto
CtaPersonal.AspiraPuesto=CtaPersonal.AspiraCategoria
CtaPersonal.AspiraCategoria=(Fin)

[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden<TAB>(Acendente)
GrupoOrden<TAB>(Acendente)=FormaExtraCampo.Orden<TAB>(Acendente)
FormaExtraCampo.Orden<TAB>(Acendente)=(Fin)

[Perfiles.ListaEnCaptura]
(Inicio)=CtaPersonal.EsRecurso
CtaPersonal.EsRecurso=CtaPersonal.EsAgente
CtaPersonal.EsAgente=CtaPersonal.EsUsuarioWeb
CtaPersonal.EsUsuarioWeb=(Fin)

[Detalle.CtaPersonal.EntreCalles]
Carpeta=Detalle
Clave=CtaPersonal.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.Plano]
Carpeta=Detalle
Clave=CtaPersonal.Plano
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.CtaPersonal.Observaciones]
Carpeta=Detalle
Clave=CtaPersonal.Observaciones
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Acciones.Mapa]
Nombre=Mapa
Boton=105
Menu=&Ver
NombreDesplegar=&Mapa
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S

Expresion=Mapa.Borrar<BR>Mapa.Agregar(<T>CtaPersonal<T>, CtaPersonal:CtaPersonal.CtaPersonal)<BR>PlugIn(<T>Mapa<T>, <T>CtaPersonal<T>, <T>Posicionar<T>)
Visible=S
[Acciones.MapaTodos]
Nombre=MapaTodos
Boton=0
NombreDesplegar=Ver Mapa (&Todos)
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>CtaPersonalA.CtaPersonal<T>)<BR>Mapa.AgregarListaSt(<T>CtaPersonal<T>)<BR>PlugIn(<T>Mapa<T>, <T>CtaPersonal<T>, <T>Posicionar<T>)
[Acciones.MapaSeleccion]
Nombre=MapaSeleccion
Boton=0
NombreDesplegar=Ver Mapa (&Selecci�n)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>CtaPersonalA.CtaPersonal<T>, Verdadero)<BR>Mapa.AgregarListaSt(<T>CtaPersonal<T>)<BR>PlugIn(<T>Mapa<T>, <T>CtaPersonal<T>, <T>Posicionar<T>)
[SituacionCta]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Situaciones por Area
Clave=SituacionCta
Filtros=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
Zona=A1
Vista=SituacionCta
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosSubTitulo=<T>Area<T>
ListaEnCaptura=(Lista)
IconosNombre=SituacionCta:SituacionCta.Area
FiltroGeneral=SituacionCta.Rama=<T>RH<T> AND SituacionCta.Cuenta=<T>{CtaPersonal:CtaPersonal.CtaPersonal}<T>
CondicionVisible=General.SituacionesPorArea

[SituacionCta.SituacionCta.Situacion]
Carpeta=SituacionCta
Clave=SituacionCta.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionFecha]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionUsuario]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionNota]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionNota
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[SituacionCta.Columnas]
0=188
1=148
2=-2
3=-2
4=-2

[SituacionCta.ListaEnCaptura]
(Inicio)=SituacionCta.Situacion
SituacionCta.Situacion=SituacionCta.SituacionFecha
SituacionCta.SituacionFecha=SituacionCta.SituacionUsuario
SituacionCta.SituacionUsuario=SituacionCta.SituacionNota
SituacionCta.SituacionNota=(Fin)

[Acciones.CtaPersonalCompetencia]
Nombre=CtaPersonalCompetencia
Boton=74
Menu=&Edici�n
NombreDesplegar=&Competencias...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaPersonalCompetencia
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.CtaPersonal)
AntesExpresiones=Asigna(Info.CtaPersonal, CtaPersonal:CtaPersonal.CtaPersonal)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)

[Acciones.Competencia]
Nombre=Competencia
Boton=0
Menu=&Maestros
NombreDesplegar=&Competencias
EnMenu=S
TipoAccion=Formas
ClaveAccion=Competencia
Activo=S
Visible=S



[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos menos uno)
(Todos menos uno)=ASPIRANTE
ASPIRANTE=CANDIDATO
CANDIDATO=ALTA
ALTA=FINIQUITADO
FINIQUITADO=BAJA
BAJA=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=Imprimir
Imprimir=preliminar
preliminar=Excel
Excel=MapaTodos
MapaTodos=MapaSeleccion
MapaSeleccion=Campos
Campos=(Fin)




















[RH.CtaPersonal.NominaProrrateo]
Carpeta=RH
Clave=CtaPersonal.NominaProrrateo
Editar=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco





LineaNueva=S
[Acciones.NominaProrrateo]
Nombre=NominaProrrateo
Boton=0
Menu=&Maestros
NombreDesplegar=Prorrateo N�mina
EnMenu=S
TipoAccion=Formas
ClaveAccion=NominaProrrateo
Activo=S
Visible=S





[Acciones.ProrrateoConcepto]
Nombre=ProrrateoConcepto
Boton=0
Menu=&Maestros
NombreDesplegar=Conceptos Prorrateo
EnMenu=S
TipoAccion=Formas
ClaveAccion=NominaProrrateoConcepto
Activo=S
Visible=S





[RH.ListaEnCaptura]
(Inicio)=CtaPersonal.CtaPersonal
CtaPersonal.CtaPersonal=NombreCompleto
NombreCompleto=CtaPersonal.ReportaA
CtaPersonal.ReportaA=NombreReporta
NombreReporta=CtaPersonal.CentroCostos
CtaPersonal.CentroCostos=CentroCostos.Descripcion
CentroCostos.Descripcion=CtaPersonal.Reclutador
CtaPersonal.Reclutador=NombreReclutador
NombreReclutador=CtaPersonal.SucursalTrabajo
CtaPersonal.SucursalTrabajo=Sucursal.Nombre
Sucursal.Nombre=CtaPersonal.RecomendadoPor
CtaPersonal.RecomendadoPor=NombreRecomendadoPor
NombreRecomendadoPor=CtaPersonal.UEN
CtaPersonal.UEN=UEN.Nombre
UEN.Nombre=CtaPersonal.Area
CtaPersonal.Area=CtaPersonal.Fuente
CtaPersonal.Fuente=CtaPersonal.Proyecto
CtaPersonal.Proyecto=CtaPersonal.NivelAcademico
CtaPersonal.NivelAcademico=CtaPersonal.Valuacion
CtaPersonal.Valuacion=CtaPersonal.Incremento
CtaPersonal.Incremento=CtaPersonal.FechaAntiguedad
CtaPersonal.FechaAntiguedad=Antiguedad
Antiguedad=CtaPersonal.UltimoPago
CtaPersonal.UltimoPago=CtaPersonal.IndemnizacionPct
CtaPersonal.IndemnizacionPct=CtaPersonal.FechaAlta
CtaPersonal.FechaAlta=CtaPersonal.UltimaModificacion
CtaPersonal.UltimaModificacion=CtaPersonal.FechaBaja
CtaPersonal.FechaBaja=CtaPersonal.ConceptoBaja
CtaPersonal.ConceptoBaja=CtaPersonal.Plaza
CtaPersonal.Plaza=CtaPersonal.Departamento
CtaPersonal.Departamento=CtaPersonal.Puesto
CtaPersonal.Puesto=Plaza.Descripcion
Plaza.Descripcion=Departamento.Descripcion
Departamento.Descripcion=Puesto.Descripcion
Puesto.Descripcion=CtaPersonal.Categoria
CtaPersonal.Categoria=CtaPersonal.Grupo
CtaPersonal.Grupo=CtaPersonalCat.Descripcion
CtaPersonalCat.Descripcion=CtaPersonalGrupo.Descripcion
CtaPersonalGrupo.Descripcion=CtaPersonal.NominaProrrateo
CtaPersonal.NominaProrrateo=(Fin)






[OtrosDatos.CtaPersonal.Contrasena]
Carpeta=OtrosDatos
Clave=CtaPersonal.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





















[OtrosDatos.ListaEnCaptura]
(Inicio)=CtaPersonal.CtaPersonal
CtaPersonal.CtaPersonal=NombreCompleto
NombreCompleto=CtaPersonal.NivelAcceso
CtaPersonal.NivelAcceso=CtaPersonal.Cliente
CtaPersonal.Cliente=Cte.Nombre
Cte.Nombre=CtaPersonal.Contrasena
CtaPersonal.Contrasena=CtaPersonal.Cuenta
CtaPersonal.Cuenta=Cta.Descripcion
Cta.Descripcion=CtaPersonal.CuentaRetencion
CtaPersonal.CuentaRetencion=CtaRetencion.Descripcion
CtaRetencion.Descripcion=CtaPersonal.Cartilla
CtaPersonal.Cartilla=CtaPersonal.Permiso
CtaPersonal.Permiso=CtaPersonal.Referencia
CtaPersonal.Referencia=CtaPersonal.ReferenciaDireccion
CtaPersonal.ReferenciaDireccion=CtaPersonal.ReferenciaTelefono
CtaPersonal.ReferenciaTelefono=CtaPersonal.Referencia2
CtaPersonal.Referencia2=CtaPersonal.Referencia2Direccion
CtaPersonal.Referencia2Direccion=CtaPersonal.Referencia2Telefono
CtaPersonal.Referencia2Telefono=CtaPersonal.Referencia3
CtaPersonal.Referencia3=CtaPersonal.Referencia3Direccion
CtaPersonal.Referencia3Direccion=CtaPersonal.Referencia3Telefono
CtaPersonal.Referencia3Telefono=CtaPersonal.EsSocio
CtaPersonal.EsSocio=CtaPersonal.Confidencial
CtaPersonal.Confidencial=(Fin)





































































































































































[Acciones.DesplegarCampos]
Nombre=DesplegarCampos
Boton=95
NombreEnBoton=S
NombreDesplegar=&Desplegar Campos
EnBarraHerramientas=S
TipoAccion=formas
ClaveAccion=cdiCtaPersonalMovsExp
Activo=S
Visible=S

Antes=S
AntesExpresiones=asigna(Info.CtaPersonal,CtaPersonal:CtaPersonal.CtaPersonal)




































[Detalle.ListaEnCaptura]
(Inicio)=CtaPersonal.CtaPersonal
CtaPersonal.CtaPersonal=CtaPersonal.Tipo
CtaPersonal.Tipo=EstatusNombre
EstatusNombre=CtaPersonal.Empresa
CtaPersonal.Empresa=CtaPersonal.ApellidoPaterno
CtaPersonal.ApellidoPaterno=CtaPersonal.ApellidoMaterno
CtaPersonal.ApellidoMaterno=CtaPersonal.Nombre
CtaPersonal.Nombre=CtaPersonal.Direccion
CtaPersonal.Direccion=CtaPersonal.DireccionNumero
CtaPersonal.DireccionNumero=CtaPersonal.DireccionNumeroInt
CtaPersonal.DireccionNumeroInt=CtaPersonal.EntreCalles
CtaPersonal.EntreCalles=CtaPersonal.Plano
CtaPersonal.Plano=CtaPersonal.Observaciones
CtaPersonal.Observaciones=CtaPersonal.Delegacion
CtaPersonal.Delegacion=CtaPersonal.Colonia
CtaPersonal.Colonia=CtaPersonal.CodigoPostal
CtaPersonal.CodigoPostal=CtaPersonal.Poblacion
CtaPersonal.Poblacion=CtaPersonal.Estado
CtaPersonal.Estado=CtaPersonal.Pais
CtaPersonal.Pais=CtaPersonal.Telefono
CtaPersonal.Telefono=CtaPersonal.eMail
CtaPersonal.eMail=CtaPersonal.eMailAuto
CtaPersonal.eMailAuto=CtaPersonal.Sexo
CtaPersonal.Sexo=CtaPersonal.Nacionalidad
CtaPersonal.Nacionalidad=CtaPersonal.FechaNacimiento
CtaPersonal.FechaNacimiento=CtaPersonal.LugarNacimiento
CtaPersonal.LugarNacimiento=CtaPersonal.EstadoCivil
CtaPersonal.EstadoCivil=CtaPersonal.Pasaporte
CtaPersonal.Pasaporte=CtaPersonal.Licencia
CtaPersonal.Licencia=CtaPersonal.LicenciaVencimiento
CtaPersonal.LicenciaVencimiento=CtaPersonal.Hijos
CtaPersonal.Hijos=CtaPersonal.Dependientes
CtaPersonal.Dependientes=CtaPersonal.UnidadMedica
CtaPersonal.UnidadMedica=CtaPersonal.Padre
CtaPersonal.Padre=CtaPersonal.Madre
CtaPersonal.Madre=CtaPersonal.Registro
CtaPersonal.Registro=CtaPersonal.Registro2
CtaPersonal.Registro2=CtaPersonal.Registro3
CtaPersonal.Registro3=(Fin)

[Forma.ListaCarpetas]
(Inicio)=Detalle
Detalle=Beneficiarios
Beneficiarios=RH
RH=Aspiraciones
Aspiraciones=Nomina
Nomina=ComisionesEsp
ComisionesEsp=OtrosDatos
OtrosDatos=Perfiles
Perfiles=FormaExtraValor
FormaExtraValor=SituacionCta
SituacionCta=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar Cambios
Guardar Cambios=Situacion
Situacion=PlantillasOffice
PlantillasOffice=Eliminar
Eliminar=Alta Express
Alta Express=CamposExtras
CamposExtras=CtaPersonalCompetencia
CtaPersonalCompetencia=CalcSueldo
CalcSueldo=Tareas
Tareas=Propiedades
Propiedades=Evaluaciones
Evaluaciones=Anexos
Anexos=Doc
Doc=Politica
Politica=RefCta
RefCta=Sucursales
Sucursales=CtaPersonalAcceso
CtaPersonalAcceso=CtaPersonalCfg
CtaPersonalCfg=CtaPersonalEntrada
CtaPersonalEntrada=Info
Info=Mapa
Mapa=Cubos
Cubos=Mensajes
Mensajes=CtaPersonalParecidos
CtaPersonalParecidos=CtaPersonalUltimoPago
CtaPersonalUltimoPago=DesplegarCampos
DesplegarCampos=Navegador
Navegador=Cerrar
Cerrar=Competencia
Competencia=Puesto
Puesto=Departamento
Departamento=CtaPersonalCat
CtaPersonalCat=CtaPersonalGrupo
CtaPersonalGrupo=Nacionalidad
Nacionalidad=NivelAcademico
NivelAcademico=CtaPersonalValuacion
CtaPersonalValuacion=ZonaEconomica
ZonaEconomica=Sindicato
Sindicato=Area
Area=Fuente
Fuente=DatosAcademicos
DatosAcademicos=DatosLaborales
DatosLaborales=CtaPersonalHerman
CtaPersonalHerman=CtaPersonalSpranger
CtaPersonalSpranger=CtaPersonalCleaver
CtaPersonalCleaver=Historico
Historico=Otros1
Otros1=Otros2
Otros2=Otros3
Otros3=Otros4
Otros4=Otros5
Otros5=Otros6
Otros6=Otros7
Otros7=Otros8
Otros8=Otros9
Otros9=NominaProrrateo
NominaProrrateo=ProrrateoConcepto
ProrrateoConcepto=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edici�n
&Edici�n=&Ver
&Ver=&Maestros
&Maestros=(Fin)

[Forma.PlantillasExcepciones]
(Inicio)=CtaPersonal:CtaPersonal.SueldoDiario
CtaPersonal:CtaPersonal.SueldoDiario=CtaPersonal:CtaPersonal.SDI
CtaPersonal:CtaPersonal.SDI=CtaPersonal:CtaPersonal.FechaAlta
CtaPersonal:CtaPersonal.FechaAlta=CtaPersonal:CtaPersonal.FechaAntiguedad
CtaPersonal:CtaPersonal.FechaAntiguedad=CtaPersonal:CtaPersonal.FechaBaja
CtaPersonal:CtaPersonal.FechaBaja=CtaPersonal:CtaPersonal.UltimaModificacion
CtaPersonal:CtaPersonal.UltimaModificacion=CtaPersonal:CtaPersonal.VencimientoContrato
CtaPersonal:CtaPersonal.VencimientoContrato=CtaPersonal:CtaPersonal.Estatus
CtaPersonal:CtaPersonal.Estatus=CtaPersonal:CtaPersonal.UltimoPago
CtaPersonal:CtaPersonal.UltimoPago=CtaPersonal:CtaPersonal.TipoSueldo
CtaPersonal:CtaPersonal.TipoSueldo=CtaPersonal:CtaPersonal.Departamento
CtaPersonal:CtaPersonal.Departamento=CtaPersonal:CtaPersonal.TipoContrato
CtaPersonal:CtaPersonal.TipoContrato=CtaPersonal:CtaPersonal.ZonaEconomica
CtaPersonal:CtaPersonal.ZonaEconomica=CtaPersonal:CtaPersonal.Grupo
CtaPersonal:CtaPersonal.Grupo=CtaPersonal:CtaPersonal.Puesto
CtaPersonal:CtaPersonal.Puesto=CtaPersonal:CtaPersonal.PeriodoTipo
CtaPersonal:CtaPersonal.PeriodoTipo=CtaPersonal:CtaPersonal.Jornada
CtaPersonal:CtaPersonal.Jornada=CtaPersonal:CtaPersonal.Moneda
CtaPersonal:CtaPersonal.Moneda=CtaPersonal:CtaPersonal.Categoria
CtaPersonal:CtaPersonal.Categoria=(Fin)
