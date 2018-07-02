



[Forma]
Clave=TipoJornadaSAT
Icono=0
BarraHerramientas=S
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Tipo de Jornada
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Seleccionar
ListaCarpetas=ListaTipoJornadaSAT
CarpetaPrincipal=ListaTipoJornadaSAT
PosicionInicialIzquierda=533
PosicionInicialArriba=198
PosicionInicialAlturaCliente=292
PosicionInicialAncho=299
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[ListaTipoJornadaSAT]
Estilo=Hoja
Clave=ListaTipoJornadaSAT
OtroOrden=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=SATCatTipoJornada
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=SATCatTipoJornada.Clave<TAB>(Acendente)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S



[ListaTipoJornadaSAT.Columnas]
Clave=31
Descripcion=304


[ListaTipoJornadaSAT.SATCatTipoJornada.Clave]
Carpeta=ListaTipoJornadaSAT
Clave=SATCatTipoJornada.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[ListaTipoJornadaSAT.SATCatTipoJornada.Descripcion]
Carpeta=ListaTipoJornadaSAT
Clave=SATCatTipoJornada.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ListaTipoJornadaSAT.ListaEnCaptura]
(Inicio)=SATCatTipoJornada.Clave
SATCatTipoJornada.Clave=SATCatTipoJornada.Descripcion
SATCatTipoJornada.Descripcion=(Fin)
