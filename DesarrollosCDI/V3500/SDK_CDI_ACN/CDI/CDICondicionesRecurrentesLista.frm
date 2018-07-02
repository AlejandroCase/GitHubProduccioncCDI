
[Forma]
Clave=CDICondicionesRecurrentesLista
Icono=0
Modulos=(Todos)
Nombre=Condiciones Cargos Recurrentes

ListaCarpetas=Detalle
CarpetaPrincipal=Detalle
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
PosicionInicialIzquierda=482
PosicionInicialArriba=176
PosicionInicialAlturaCliente=420
PosicionInicialAncho=316
BarraHerramientas=S
[Detalle]
Estilo=Hoja
Clave=Detalle
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICondicionesRecurrentes
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=CDICondicionesRecurrentes.Orden<TAB>(Acendente)
CarpetaVisible=S
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
[Detalle.CDICondicionesRecurrentes.Condicion]
Carpeta=Detalle
Clave=CDICondicionesRecurrentes.Condicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.CDICondicionesRecurrentes.NumeroDocumentos]
Carpeta=Detalle
Clave=CDICondicionesRecurrentes.NumeroDocumentos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

EnBarraHerramientas=S
[Detalle.Columnas]
Condicion=139
NumeroDocumentos=146

[Detalle.ListaEnCaptura]
(Inicio)=CDICondicionesRecurrentes.Condicion
CDICondicionesRecurrentes.Condicion=CDICondicionesRecurrentes.NumeroDocumentos
CDICondicionesRecurrentes.NumeroDocumentos=(Fin)
