
[Forma]
Clave=ExplorarCE
Icono=0
BarraHerramientas=S
EsMovimiento=S
EsConsultaExclusiva=S
Modulos=(Todos)
MovModulo=CE
Nombre=<T>Explorando - Control Escolar<T>
TituloAuto=S
MovEspecificos=Todos
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=488
PosicionInicialAncho=1003
PosicionInicialIzquierda=181
PosicionInicialArriba=121
ListaAcciones=(Lista)
VentanaSiempreAlFrente=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaExclusiva=S
VentanaEscCerrar=S
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Movimientos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CE
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S
IconosSubTitulo=<T>Movimiento<T>
ListaEnCaptura=(Lista)

FiltroEstatus=S
FiltroUsuarios=S
FiltroMovs=S
FiltroProyectos=S
FiltroListaEstatus=(Lista)
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaEnLinea=S


FiltroMovDefault=(Todos)
FiltroFechas=S
FiltroMovsTodos=S
FiltroMonedas=S
FiltroEstatusDefault=PENDIENTE
FiltroUsuarioDefault=(Todos)
FiltroFechasCampo=CE.FechaEmision
FiltroFechasDefault=Hoy
FiltroMonedasCampo=CE.Moneda
BusquedaActualizacionManual=S
IconosConPaginas=S
ElementosPorPaginaEsp=5000
IconosNombre=CE:CE.Mov + <T> <T> + CE:CE.MovID
FiltroGeneral=CE.Empresa=<T>{Empresa}<T>
[Lista.CDICteSocio.Socio]
Carpeta=Lista
Clave=CDICteSocio.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Cte.PersonalNombres]
Carpeta=Lista
Clave=Cte.PersonalNombres
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Cte.PersonalApellidoPaterno]
Carpeta=Lista
Clave=Cte.PersonalApellidoPaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Cte.PersonalApellidoMaterno]
Carpeta=Lista
Clave=Cte.PersonalApellidoMaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CEPrograma.Programa]
Carpeta=Lista
Clave=CEPrograma.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco






[Lista.ImporteInscripcion]
Carpeta=Lista
Clave=ImporteInscripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Totalizador=1
[Lista.ImpuestoInscripción]
Carpeta=Lista
Clave=ImpuestoInscripción
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Totalizador=1
[Lista.DescInscripcion]
Carpeta=Lista
Clave=DescInscripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Totalizador=1
[Lista.NetoInscripcion]
Carpeta=Lista
Clave=NetoInscripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Totalizador=1
[Lista.TotalInscripcion]
Carpeta=Lista
Clave=TotalInscripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Totalizador=1
[Lista.CE.FechaEmision]
Carpeta=Lista
Clave=CE.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Lista.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2
11=-2
12=-2
13=-2
14=-2
15=-2
16=-2
17=-2









[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=&Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S


[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Presentación Preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S


[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=&Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S






[Acciones.Propiedades]
Nombre=Propiedades
Boton=35
NombreDesplegar=Propiedades
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
ConCondicion=S
Antes=S
Visible=S

EjecucionCondicion=ConDatos(CE:CE.ID)
AntesExpresiones=Asigna(Info.Modulo,<T>CE<T>)<BR>Asigna(Info.ID,CE:CE.ID)



[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
NombreDesplegar=Información
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CteInfo
ConCondicion=S
Antes=S
Visible=S


ActivoCondicion=Usuario.CteInfo
EjecucionCondicion=ConDatos(CE:CE.Cliente)
AntesExpresiones=Asigna(Info.Cliente,CE:CE.Cliente)
[Acciones.Campos]
Nombre=Campos
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S















[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S







































[Lista.ListaEnCaptura]
(Inicio)=CE.FechaEmision
CE.FechaEmision=CDICteSocio.Socio
CDICteSocio.Socio=Cte.PersonalNombres
Cte.PersonalNombres=Cte.PersonalApellidoPaterno
Cte.PersonalApellidoPaterno=Cte.PersonalApellidoMaterno
Cte.PersonalApellidoMaterno=CEPrograma.Programa
CEPrograma.Programa=ImporteInscripcion
ImporteInscripcion=ImpuestoInscripción
ImpuestoInscripción=DescInscripcion
DescInscripcion=NetoInscripcion
NetoInscripcion=TotalInscripcion
TotalInscripcion=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=PENDIENTE
PENDIENTE=CANCELADO
CANCELADO=CONCLUIDO
CONCLUIDO=SINAFECTAR
SINAFECTAR=AUTORIZADO
AUTORIZADO=RECHAZADO
RECHAZADO=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Propiedades
Propiedades=CteInfo
CteInfo=Campos
Campos=Actualizar
Actualizar=(Fin)
