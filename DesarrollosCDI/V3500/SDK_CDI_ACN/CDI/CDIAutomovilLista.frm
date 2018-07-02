
[Forma]
Clave=CDIAutomovilLista
Icono=44
BarraHerramientas=S
Modulos=(Todos)
Nombre=Automoviles
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Seleccionar
ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=369
PosicionInicialArriba=362
PosicionInicialAlturaCliente=273
PosicionInicialAncho=541
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

[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAutomovil
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

[Lista.CDIAutomovil.Año]
Carpeta=Lista
Clave=CDIAutomovil.Año
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIAutomovil.Marca]
Carpeta=Lista
Clave=CDIAutomovil.Marca
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIAutomovil.Modelo]
Carpeta=Lista
Clave=CDIAutomovil.Modelo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[Lista.Columnas]
Año=64
Marca=182
Modelo=221

ID=41


Cliente=64
[Lista.ListaEnCaptura]
(Inicio)=CDIAutomovil.Cliente
CDIAutomovil.Cliente=CDIAutomovil.Año
CDIAutomovil.Año=CDIAutomovil.Marca
CDIAutomovil.Marca=CDIAutomovil.Modelo
CDIAutomovil.Modelo=(Fin)

[Lista.CDIAutomovil.Cliente]
Carpeta=Lista
Clave=CDIAutomovil.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
