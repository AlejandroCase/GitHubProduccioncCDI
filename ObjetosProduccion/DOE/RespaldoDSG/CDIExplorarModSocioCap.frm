[Forma]
Clave=CDIExplorarModSocioCap
Nombre=<T>Explorando - Modulo Socios  (Movimientos)<T>
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=195
PosicionInicialArriba=124
PosicionInicialAltura=508
PosicionInicialAncho=975
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
EsMovimiento=S
TituloAuto=S
MovModulo=SOC
MovEspecificos=Todos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
EsConsultaExclusiva=S
PosicionInicialAlturaCliente=481

VentanaEstadoInicial=Normal
ListaAcciones=Seleccionar
[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroAutoCampo=(Validaciones Memoria)
FiltroAutoValidar=Mon
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroAplicaEn=Cxc.Moneda
FiltroRespetar=S
FiltroTipo=General
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacionTodo=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=CONCLUIDO
FiltroFechasCampo=CDISocio.FechaEmision
FiltroFechasDefault=(Todo)
FiltroFechasNormal=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Movimientos
FiltroMovs=S
FiltroMovsTodos=S
FiltroMovDefault=(Todos)
FiltroMonedasCampo=CDISocio.Moneda
FiltroSucursales=S
FiltroMonedas=S
FiltroProyectos=S
FiltroUENs=S
FiltroUENsCampo=CDISocio.UEN






ListaEnCaptura=(Lista)
FiltroEstatus=S
RefrescarAlEntrar=S
IconosNombre=CDISocio:CDISocio.Mov + <T> <T> + CDISocio:CDISocio.MovID
FiltroGeneral=CDISocio.Empresa=<T>{Empresa}<T> and CDISocio.Socio=<T>{Info.Cliente}<T>
[Lista.Columnas]
0=145
1=79

2=143
3=85
4=93
5=117
6=155
7=102
8=89
9=-2





10=-2
[Lista.Cte.Socio]
Carpeta=Lista
Clave=Cte.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[Lista.NombreSocio]
Carpeta=Lista
Clave=NombreSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.CDISocio.FechaEmision]
Carpeta=Lista
Clave=CDISocio.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDISocio.FechaVigencia]
Carpeta=Lista
Clave=CDISocio.FechaVigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDISocio.Referencia]
Carpeta=Lista
Clave=CDISocio.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDISocio.Concepto]
Carpeta=Lista
Clave=CDISocio.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDISocio.ImporteAnualidad]
Carpeta=Lista
Clave=CDISocio.ImporteAnualidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDISocio.ImporteMensualidad]
Carpeta=Lista
Clave=CDISocio.ImporteMensualidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco















[Forma.ListaAcciones]
(Inicio)=Actualizar
Actualizar=BitacoraBloq
BitacoraBloq=(Fin)







[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S







[Lista.ListaEnCaptura]
(Inicio)=Cte.Socio
Cte.Socio=NombreSocio
NombreSocio=CDISocio.FechaEmision
CDISocio.FechaEmision=CDISocio.FechaVigencia
CDISocio.FechaVigencia=CDISocio.Referencia
CDISocio.Referencia=CDISocio.Concepto
CDISocio.Concepto=CDISocio.ImporteAnualidad
CDISocio.ImporteAnualidad=CDISocio.ImporteMensualidad
CDISocio.ImporteMensualidad=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=SINAFECTAR
SINAFECTAR=(Fin)
