
[Forma]
Clave=CDINIPLista
Icono=44
Modulos=(Todos)
Nombre=Lista NIPCDI

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=595
PosicionInicialAncho=554
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=363
PosicionInicialArriba=89
ListaAcciones=Seleccionar
ExpresionesAlMostrar=EjecutarSQL( <T>EXEC spNIPCDIPersonalNombre :nEstacion1<T>, EstacionTrabajo)
[Lista]
Estilo=Hoja
Clave=Lista
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDINIP
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

HojaOrdenarColumnas=S


BusquedaRapidaControles=S
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
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=CDINIP.Estacion = {EstacionTrabajo}
FiltroRespetar=S
FiltroTipo=General
[Lista.Columnas]
NIPCDI=156
NombreCompleto=335

ClavePersona=86


NombrePersonal=280
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




[Lista.CDINIP.NIPCDI]
Carpeta=Lista
Clave=CDINIP.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
Efectos=[Negritas]

[Lista.CDINIP.ClavePersona]
Carpeta=Lista
Clave=CDINIP.ClavePersona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CDINIP.NombrePersonal]
Carpeta=Lista
Clave=CDINIP.NombrePersonal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





[Lista.ListaEnCaptura]
(Inicio)=CDINIP.NIPCDI
CDINIP.NIPCDI=CDINIP.ClavePersona
CDINIP.ClavePersona=CDINIP.NombrePersonal
CDINIP.NombrePersonal=(Fin)
