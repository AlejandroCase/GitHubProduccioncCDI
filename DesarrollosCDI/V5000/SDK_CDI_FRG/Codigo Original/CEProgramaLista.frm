[Forma]
Clave=CEProgramaLista
Nombre=Programas
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
ListaCarpetas=CEPrograma
CarpetaPrincipal=CEPrograma
VentanaTipoMarco=Di�logo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
PosicionInicialIzquierda=276
PosicionInicialArriba=122
PosicionInicialAlturaCliente=490
PosicionInicialAncho=471
[CEPrograma]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Programas
Clave=CEPrograma
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEPrograma
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Programa<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroFechas=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CEPrograma.FechaInicio
FiltroFechasDefault=Este A�o
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
OtroOrden=S
IconosNombre=CEPrograma:CEPrograma.Programa
ListaOrden=CEPrograma.FechaInicio<TAB>(Acendente)
FiltroGeneral=CEPrograma.Estatus=<T>VIGENTE<T>
[CEPrograma.CEPrograma.Ciclo]
Carpeta=CEPrograma
Clave=CEPrograma.Ciclo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[CEPrograma.CEPrograma.FechaInicio]
Carpeta=CEPrograma
Clave=CEPrograma.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[CEPrograma.CEPrograma.FechaFin]
Carpeta=CEPrograma
Clave=CEPrograma.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
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
[CEPrograma.Columnas]
0=92
1=210
2=74
3=70

[CEPrograma.ListaEnCaptura]
(Inicio)=CEPrograma.Ciclo
CEPrograma.Ciclo=CEPrograma.FechaInicio
CEPrograma.FechaInicio=CEPrograma.FechaFin
CEPrograma.FechaFin=(Fin)
