
[Forma]
Clave=CDIAutomovil
Icono=4
Modulos=(Todos)
Nombre=Automoviles

ListaCarpetas=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
CarpetaPrincipal=Lista
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=352
PosicionInicialArriba=362
PosicionInicialAlturaCliente=273
PosicionInicialAncho=575
Comentarios=Info.Cliente
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
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
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIAutomovil.Cliente = <T>{Info.Cliente}<T>
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

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista.Columnas]
Año=64
Marca=201
Modelo=203




ID=74
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S

EspacioPrevio=S





















[Lista.ListaEnCaptura]
(Inicio)=CDIAutomovil.Año
CDIAutomovil.Año=CDIAutomovil.Marca
CDIAutomovil.Marca=CDIAutomovil.Modelo
CDIAutomovil.Modelo=(Fin)









[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Eliminar
Eliminar=(Fin)
