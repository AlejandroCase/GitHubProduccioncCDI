[Forma]
Clave=CtaPersonal
Nombre=CtaPersonal
Icono=4
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
PosicionInicialIzquierda=155
PosicionInicialArriba=7
PosicionInicialAltura=578
PosicionInicialAncho=1013
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Menus=S
BarraAyuda=S
MovModulo=RH
PosicionInicialAlturaCliente=636
PosicionSec1=238
VentanaEstadoInicial=Normal

VentanaColor=Plata
ExpresionesAlMostrar=Asigna(Info.Tipo,<T>Personal<T>)
PosicionCol1=676
MenuPrincipal=(Lista)
[Lista.CtaPersonal.Personal]
Carpeta=Lista
Clave=CtaPersonal.Personal
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
Personal=115
NombreCompleto=287
Fecha=148
Usuario=82
Nombre=293
Sucursal=64
Nombre_1=154
Empresa=71
0=84
1=111
2=-2

CentroCostos=127
Descripcion=232
SATPaisDescripcion=100
SATEstadoDescripcion=116
SATMunicipioDescripcion=124
SATLocalidadDescripcion=120
SATColoniaDescripcion=260
ClaveCP=50
UEN=44
Area=292
3=188
SATEstado.Descripcion=129
SATMunicipio.Descripcion=123
SATColonia.Descripcion=296
SATCatCP.ClaveCP=104
SATLocalidad.Descripcion=137
4=-2
Proveedor=118
Numero=43
ZonaA=64
ZonaB=64
ZonaC=64
Cliente=117
RFC=107
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
CampoColorFondo=$00EBE9EA
ListaEnCaptura=(Lista)

CarpetaVisible=S
[Detalle.CtaPersonal.Personal]
Carpeta=Detalle
Clave=CtaPersonal.Personal
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00EBE9EA
Efectos=[Negritas]

EditarConBloqueo=N
IgnoraFlujo=N
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
EjecucionCondicion=Forma.ActualizarVista<BR>Forma.ActualizarControles<BR>Si<BR>  CtaPersonal:CtaPersonal.TieneMovimientos<BR>Entonces<BR>  Error(<T>El personal ya tiene movimientos activos<T> , BotonAceptar  )<BR>Fin
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
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CarpetaVisible=S
[RH.CtaPersonal.Personal]
Carpeta=RH
Clave=CtaPersonal.Personal
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

[Nomina.CtaPersonal.CtaDinero]
Carpeta=Nomina
Clave=CtaPersonal.CtaDinero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.CtaPersonal.Afore]
Carpeta=Nomina
Clave=CtaPersonal.Afore
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=N

[Nomina.CtaPersonal.PersonalCuenta]
Carpeta=Nomina
Clave=CtaPersonal.PersonalCuenta
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=N

[Nomina.CtaPersonal.PersonalSucursal]
Carpeta=Nomina
Clave=CtaPersonal.PersonalSucursal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.Prov.Nombre]
Carpeta=Nomina
Clave=Prov.Nombre
Editar=S
3D=S
Tamano=41
ColorFondo=Plata
ValidaNombre=S

[Nomina.CtaPersonal.Personal]
Carpeta=Nomina
Clave=CtaPersonal.Personal
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Nomina.NombreCompleto]
Carpeta=Nomina
Clave=NombreCompleto
3D=S
Tamano=62
ColorFondo=Plata
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

Editar=S
[Nomina.CtaDineroDestino.Descripcion]
Carpeta=Nomina
Clave=CtaDineroDestino.Descripcion
Editar=S
3D=S
Tamano=62
ColorFondo=Plata
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
ActivoCondicion=no Usuario.BloquearMaestrosPersonal

[Acciones.Departamento]
Nombre=Departamento
Boton=0
Menu=&Maestros
NombreDesplegar=&Departamentos
EnMenu=S
TipoAccion=Formas
ClaveAccion=Departamento
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosPersonal

[Acciones.PersonalCat]
Nombre=PersonalCat
Boton=0
Menu=&Maestros
NombreDesplegar=&Categorías
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalCat
Visible=S
EspacioPrevio=S
ActivoCondicion=no Usuario.BloquearMaestrosPersonal

[Acciones.PersonalGrupo]
Nombre=PersonalGrupo
Boton=0
Menu=&Maestros
NombreDesplegar=&Grupos
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalGrupo
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosPersonal

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
ActivoCondicion=no Usuario.BloquearMaestrosPersonal

[Acciones.NivelAcademico]
Nombre=NivelAcademico
Boton=0
Menu=&Maestros
NombreDesplegar=Niveles &Académicos
EnMenu=S
TipoAccion=Formas
ClaveAccion=NivelAcademico
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosPersonal

[Acciones.PersonalValuacion]
Nombre=PersonalValuacion
Boton=0
Menu=&Maestros
NombreDesplegar=&Valuaciones Laborales
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalValuacion
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosPersonal

[Acciones.ZonaEconomica]
Nombre=ZonaEconomica
Boton=0
Menu=&Maestros
NombreDesplegar=&Zona Económica
EnMenu=S
TipoAccion=Formas
ClaveAccion=ZonaEconomica
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosPersonal


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
NombreDesplegar=&Presentación preliminar
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
NombreDesplegar=Personalizar &Vista
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


[Nomina.CtaPersonal.Registro4]
Carpeta=Nomina
Clave=CtaPersonal.Registro4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S










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

[Otros.CtaPersonal.Personal]
Carpeta=Otros
Clave=CtaPersonal.Personal
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
EspacioPrevio=S

[Nomina.CtaPersonal.MinimoProfesional]
Carpeta=Nomina
Clave=CtaPersonal.MinimoProfesional
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=N

[Nomina.MinimosProfesionales.Descripcion]
Carpeta=Nomina
Clave=MinimosProfesionales.Descripcion
Editar=S
3D=S
Tamano=20
ColorFondo=Plata
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
EspacioPrevio=N

[Nomina.CtaPersonal.PeriodoTipo]
Carpeta=Nomina
Clave=CtaPersonal.PeriodoTipo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
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

[Nomina.CtaPersonal.SDI]
Carpeta=Nomina
Clave=CtaPersonal.SDI
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.CtaPersonal.Moneda]
Carpeta=Nomina
Clave=CtaPersonal.Moneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.CtaPersonal.VencimientoContrato]
Carpeta=Nomina
Clave=CtaPersonal.VencimientoContrato
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.CtaPersonal.Jornada]
Carpeta=Nomina
Clave=CtaPersonal.Jornada
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.CtaPersonal.TipoSueldo]
Carpeta=Nomina
Clave=CtaPersonal.TipoSueldo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.SueldoMinimoProfesional]
Carpeta=Nomina
Clave=SueldoMinimoProfesional
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[Nomina.CtaPersonal.Sindicato]
Carpeta=Nomina
Clave=CtaPersonal.Sindicato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Sindicato]
Nombre=Sindicato
Boton=0
Menu=&Maestros
NombreDesplegar=&Sindicatos
EnMenu=S
TipoAccion=Formas
ClaveAccion=Sindicato
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosPersonal


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

[Nomina.Vehiculo.Descripcion]
Carpeta=Nomina
Clave=Vehiculo.Descripcion
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Plata

[Nomina.Vehiculo.Placas]
Carpeta=Nomina
Clave=Vehiculo.Placas
ValidaNombre=S
3D=S
Pegado=N
Tamano=20
ColorFondo=Plata

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
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CarpetaVisible=S
[ComisionesEsp.CtaPersonal.Personal]
Carpeta=ComisionesEsp
Clave=CtaPersonal.Personal
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Plata
Efectos=[Negritas]

[ComisionesEsp.NombreCompleto]
Carpeta=ComisionesEsp
Clave=NombreCompleto
Editar=S
3D=S
Tamano=56
ColorFondo=Plata
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

[ComisionesEsp.CtaPersonal.TablaCobranzaBono]
Carpeta=ComisionesEsp
Clave=CtaPersonal.TablaCobranzaBono
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[ComisionesEsp.CtaPersonal.TablaCobranzaCascada]
Carpeta=ComisionesEsp
Clave=CtaPersonal.TablaCobranzaCascada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[ComisionesEsp.CtaPersonal.TablaCobranzaBonoCascada]
Carpeta=ComisionesEsp
Clave=CtaPersonal.TablaCobranzaBonoCascada
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

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
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CarpetaVisible=S
[Beneficiarios.CtaPersonal.Personal]
Carpeta=Beneficiarios
Clave=CtaPersonal.Personal
Editar=N
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
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

[Beneficiarios.CtaPersonal.Parentesco]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Porcentaje]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje
Editar=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Beneficiario2]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario2
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Parentesco2]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco2
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Porcentaje2]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje2
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Beneficiario3]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario3
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Parentesco3]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco3
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Porcentaje3]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje3
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

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

Expresion=ProcesarSQL(<T>spRHAltaExpress :tEmp, :nSuc, :tUsr, :tPersonal<T>, Empresa, Sucursal, Usuario, CtaPersonal:CtaPersonal.Personal)
ActivoCondicion=CtaPersonal:CtaPersonal.Estatus en (EstatusAspirante, EstatusCandidato) y (no Usuario.BloquearAltaExpressPersonal)
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal) y ConDatos(CtaPersonal:CtaPersonal.PeriodoTipo) y<BR>ConDatos(CtaPersonal:CtaPersonal.FormaPago) y ConDatos(CtaPersonal:CtaPersonal.CtaDinero) y<BR>ConDatos(CtaPersonal:CtaPersonal.SueldoDiario) y ConDatos(CtaPersonal:CtaPersonal.FechaAlta) y<BR>ConDatos(CtaPersonal:CtaPersonal.FechaAntiguedad)
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

[RH.PersonalCat.Descripcion]
Carpeta=RH
Clave=PersonalCat.Descripcion
Editar=S
Tamano=41
ColorFondo=Plata
LineaNueva=S

[RH.PersonalGrupo.Descripcion]
Carpeta=RH
Clave=PersonalGrupo.Descripcion
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


[Beneficiarios.CtaPersonal.Beneficiario4]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario4
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Parentesco4]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco4
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Porcentaje4]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje4
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Beneficiario5]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario5
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Parentesco5]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco5
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Porcentaje5]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje5
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Beneficiario6]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario6
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Parentesco6]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco6
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Porcentaje6]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje6
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Beneficiario7]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario7
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Parentesco7]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco7
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Porcentaje7]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje7
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Beneficiario8]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario8
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Parentesco8]
Carpeta=Beneficiarios
Clave=CtaPersonal.Parentesco8
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Porcentaje8]
Carpeta=Beneficiarios
Clave=CtaPersonal.Porcentaje8
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Acciones.PersonalUltimoPago]
Nombre=PersonalUltimoPago
Boton=0
Menu=&Ver
NombreDesplegar=&Ultimo Pago
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalUltimoPago
Activo=S
ConCondicion=S
Antes=S
Visible=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
AntesExpresiones=Asigna(Info.Personal, CtaPersonal:CtaPersonal.Personal)

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
ActivoCondicion=no Usuario.BloquearMaestrosPersonal

[Acciones.Fuente]
Nombre=Fuente
Boton=0
Menu=&Maestros
NombreDesplegar=Fuentes
EnMenu=S
TipoAccion=Formas
ClaveAccion=Fuente
Visible=S
ActivoCondicion=no Usuario.BloquearMaestrosPersonal

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
Menu=&Edición
NombreDesplegar=&Sucursales Asignadas
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalSuc
Activo=S
ConCondicion=S
Antes=S
EspacioPrevio=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
AntesExpresiones=Asigna(Info.Personal, CtaPersonal:CtaPersonal.Personal)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)
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


[Nomina.CtaPersonal.MovNomina]
Carpeta=Nomina
Clave=CtaPersonal.MovNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

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

CarpetaVisible=S
[OtrosDatos.CtaPersonal.Personal]
Carpeta=OtrosDatos
Clave=CtaPersonal.Personal
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

[Acciones.PersonalCfg]
Nombre=PersonalCfg
Boton=0
Menu=&Edición
NombreDesplegar=Deducciones Especiales...
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalCfg
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
EspacioPrevio=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
AntesExpresiones=Asigna(Info.Personal, CtaPersonal:CtaPersonal.Personal)<BR>Asigna(Info.Nombre, CtaPersonal:NombreCompleto)
[Beneficiarios.CtaPersonal.BeneficiarioNacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.BeneficiarioNacimiento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.CtaPersonal.Beneficiario2Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario2Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario3Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario3Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario4Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario4Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario5Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario5Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario6Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario6Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario7Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario7Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.CtaPersonal.Beneficiario8Nacimiento]
Carpeta=Beneficiarios
Clave=CtaPersonal.Beneficiario8Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
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
CampoColorFondo=Plata
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

[Aspiraciones.CtaPersonal.AspiraDepartamento]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraDepartamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.CtaPersonal.AspiraGrupo]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraGrupo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.CtaPersonal.AspiraPuesto]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraPuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.CtaPersonal.AspiraCategoria]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraCategoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.CtaPersonal.AspiraFecha]
Carpeta=Aspiraciones
Clave=CtaPersonal.AspiraFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.CtaPersonal.Personal]
Carpeta=Aspiraciones
Clave=CtaPersonal.Personal
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Aspiraciones.NombreCompleto]
Carpeta=Aspiraciones
Clave=NombreCompleto
3D=S
Tamano=62
ColorFondo=Plata
Efectos=[Negritas]
Editar=S


[RH.CtaPersonal.Incremento]
Carpeta=RH
Clave=CtaPersonal.Incremento
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata



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
Menu=&Edición
NombreDesplegar=Datos Academicos
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalDatosAcademicos
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.Personal, CtaPersonal:CtaPersonal.Personal)

[Acciones.DatosLaborales]
Nombre=DatosLaborales
Boton=0
Menu=&Edición
NombreDesplegar=Datos Laborales
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalDatosLaborales
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.Personal, CtaPersonal:CtaPersonal.Personal)

[Acciones.PersonalHerman]
Nombre=PersonalHerman
Boton=0
Menu=&Edición
NombreDesplegar=Human Side - Herman
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=PersonalHerman
Activo=S
ConCondicion=S
Antes=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.Personal, CtaPersonal:CtaPersonal.Personal)
[Acciones.PersonalSpranger]
Nombre=PersonalSpranger
Boton=0
Menu=&Edición
NombreDesplegar=Human Side - Spranger
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalSpranger
Activo=S
ConCondicion=S
Antes=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.Personal, CtaPersonal:CtaPersonal.Personal)
[Acciones.PersonalCleaver]
Nombre=PersonalCleaver
Boton=0
Menu=&Edición
NombreDesplegar=Human Side - Cleaver
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalCleaver
Activo=S
ConCondicion=S
Antes=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
AntesExpresiones=GuardarCambios<BR>Asigna(Info.Personal, CtaPersonal:CtaPersonal.Personal)
[Acciones.PersonalEntrada]
Nombre=PersonalEntrada
Boton=0
Menu=&Edición
NombreDesplegar=Horario &Entrada
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalEntrada
Activo=S
ConCondicion=S
Antes=S

EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
AntesExpresiones=Asigna(Info.Personal, CtaPersonal:CtaPersonal.Personal)
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

[Nomina.SueldoDiarioBruto]
Carpeta=Nomina
Clave=SueldoDiarioBruto
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
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
Tamano=40

[Perfiles.CtaPersonal.EsAgente]
Carpeta=Perfiles
Clave=CtaPersonal.EsAgente
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.CtaPersonal.EsUsuarioWeb]
Carpeta=Perfiles
Clave=CtaPersonal.EsUsuarioWeb
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco

[Acciones.Historico]
Nombre=Historico
Boton=0
Menu=&Ver
EsDefault=S
NombreDesplegar=Histórico de Cambios
EnMenu=S
TipoAccion=Expresion
Visible=S
Activo=S
ConCondicion=S
Antes=S

Expresion=Asigna(Info.Tabla, <T>Personal<T>)<BR>Asigna(Info.Llave, Carpeta.LlavePrimaria(<T>Ficha<T>, <T>|<T>))<BR>Si<BR> SQL(<T>SELECT RegHist FROM Version<T>) y (SQL(<T>SELECT Estatus FROM CfgRegHist WHERE SysTabla=:tTabla<T>, Info.Tabla)=EstatusActivo)<BR>Entonces<BR> Forma(<T>RegHist<T>)<BR>Sino<BR> Informacion(<T>Es necesario activar la opción Registro Cambios Históricos (Automático) en la configuración de Versión<T>)<BR>Fin
EjecucionCondicion=ConDatos(CtaPersonal:CtaPersonal.Personal)
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



[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden<TAB>(Acendente)
GrupoOrden<TAB>(Acendente)=FormaExtraCampo.Orden<TAB>(Acendente)
FormaExtraCampo.Orden<TAB>(Acendente)=(Fin)


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



[Acciones.MapaTodos]
Nombre=MapaTodos
Boton=0
NombreDesplegar=Ver Mapa (&Todos)
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>PersonalA.Personal<T>)<BR>Mapa.AgregarListaSt(<T>Personal<T>)<BR>PlugIn(<T>Mapa<T>, <T>Personal<T>, <T>Posicionar<T>)
[Acciones.MapaSeleccion]
Nombre=MapaSeleccion
Boton=0
NombreDesplegar=Ver Mapa (&Selección)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>PersonalA.Personal<T>, Verdadero)<BR>Mapa.AgregarListaSt(<T>Personal<T>)<BR>PlugIn(<T>Mapa<T>, <T>Personal<T>, <T>Posicionar<T>)

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


[OtrosDatos.CtaPersonal.Contrasena]
Carpeta=OtrosDatos
Clave=CtaPersonal.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




















[SituacionCta.ListaEnCaptura]
(Inicio)=SituacionCta.Situacion
SituacionCta.Situacion=SituacionCta.SituacionFecha
SituacionCta.SituacionFecha=SituacionCta.SituacionUsuario
SituacionCta.SituacionUsuario=SituacionCta.SituacionNota
SituacionCta.SituacionNota=(Fin)
























































































































































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












































[PersonalLista.CtaPersonal.Mov]
Carpeta=PersonalLista
Clave=CtaPersonal.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00CAFFFF

[PersonalLista.CtaPersonal.IdMov]
Carpeta=PersonalLista
Clave=CtaPersonal.IdMov
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=$00D2D2D2













































[PersonalLista.CtaPersonal.FechaEmision]
Carpeta=PersonalLista
Clave=CtaPersonal.FechaEmision
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00CACACA




[PersonalLista.ListaEnCaptura]
(Inicio)=CtaPersonal.Mov
CtaPersonal.Mov=CtaPersonal.IdMov
CtaPersonal.IdMov=CtaPersonal.FechaEmision
CtaPersonal.FechaEmision=(Fin)




















[Beneficiarios.ListaEnCaptura]
(Inicio)=CtaPersonal.Personal
CtaPersonal.Personal=NombreCompleto
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

[RH.ListaEnCaptura]
(Inicio)=CtaPersonal.Personal
CtaPersonal.Personal=NombreCompleto
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
CtaPersonal.Grupo=PersonalCat.Descripcion
PersonalCat.Descripcion=PersonalGrupo.Descripcion
PersonalGrupo.Descripcion=CtaPersonal.NominaProrrateo
CtaPersonal.NominaProrrateo=(Fin)

[Aspiraciones.ListaEnCaptura]
(Inicio)=CtaPersonal.Personal
CtaPersonal.Personal=NombreCompleto
NombreCompleto=CtaPersonal.AspiraFecha
CtaPersonal.AspiraFecha=CtaPersonal.AspiraSueldo
CtaPersonal.AspiraSueldo=CtaPersonal.AspiraDepartamento
CtaPersonal.AspiraDepartamento=CtaPersonal.AspiraGrupo
CtaPersonal.AspiraGrupo=CtaPersonal.AspiraPuesto
CtaPersonal.AspiraPuesto=CtaPersonal.AspiraCategoria
CtaPersonal.AspiraCategoria=(Fin)

[Nomina.ListaEnCaptura]
(Inicio)=CtaPersonal.Personal
CtaPersonal.Personal=NombreCompleto
NombreCompleto=CtaPersonal.MovNomina
CtaPersonal.MovNomina=CtaPersonal.FormaPago
CtaPersonal.FormaPago=CtaPersonal.PersonalSucursal
CtaPersonal.PersonalSucursal=CtaPersonal.PersonalCuenta
CtaPersonal.PersonalCuenta=CtaPersonal.CtaDinero
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
(Inicio)=CtaPersonal.Personal
CtaPersonal.Personal=NombreCompleto
NombreCompleto=CtaPersonal.TablaCobranza
CtaPersonal.TablaCobranza=CtaPersonal.TablaCobranzaBono
CtaPersonal.TablaCobranzaBono=CtaPersonal.TablaCobranzaCascada
CtaPersonal.TablaCobranzaCascada=CtaPersonal.TablaCobranzaBonoCascada
CtaPersonal.TablaCobranzaBonoCascada=CtaPersonal.TablaVentaCascada
CtaPersonal.TablaVentaCascada=(Fin)

[OtrosDatos.ListaEnCaptura]
(Inicio)=CtaPersonal.Personal
CtaPersonal.Personal=NombreCompleto
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

[Perfiles.ListaEnCaptura]
(Inicio)=CtaPersonal.EsRecurso
CtaPersonal.EsRecurso=CtaPersonal.EsAgente
CtaPersonal.EsAgente=CtaPersonal.EsUsuarioWeb
CtaPersonal.EsUsuarioWeb=(Fin)

















[CDISATEstadoLista.Columnas]
ClavePais=61
ClaveEstado=81
Descripcion=146






































































































[CDIImagen]
Estilo=Ficha
PestanaOtroNombre=S
PestanaNombre=Imagen
Clave=CDIImagen
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CtaPersonal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[CDIImagen.CtaPersonal.CDIPerImagen]
Carpeta=CDIImagen
Clave=CtaPersonal.CDIPerImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco







[CDIImagen.ListaEnCaptura]
(Inicio)=CtaPersonal.CDIPerImagen
CtaPersonal.CDIPerImagen=Imagen
Imagen=(Fin)

[CDIImagen.Imagen]
Carpeta=CDIImagen
Clave=Imagen
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30x15
ColorFondo=Blanco



















































































[Detalle.ListaEnCaptura]
(Inicio)=CtaPersonal.Personal
CtaPersonal.Personal=CtaPersonal.Tipo
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
Perfiles=CDIImagen
CDIImagen=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar Cambios
Guardar Cambios=Eliminar
Eliminar=Alta Express
Alta Express=Sucursales
Sucursales=PersonalCfg
PersonalCfg=PersonalEntrada
PersonalEntrada=PersonalUltimoPago
PersonalUltimoPago=Cerrar
Cerrar=Competencia
Competencia=Puesto
Puesto=Departamento
Departamento=PersonalCat
PersonalCat=PersonalGrupo
PersonalGrupo=Nacionalidad
Nacionalidad=NivelAcademico
NivelAcademico=PersonalValuacion
PersonalValuacion=ZonaEconomica
ZonaEconomica=Sindicato
Sindicato=Area
Area=Fuente
Fuente=DatosAcademicos
DatosAcademicos=DatosLaborales
DatosLaborales=PersonalHerman
PersonalHerman=PersonalSpranger
PersonalSpranger=PersonalCleaver
PersonalCleaver=Historico
Historico=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=(Fin)
