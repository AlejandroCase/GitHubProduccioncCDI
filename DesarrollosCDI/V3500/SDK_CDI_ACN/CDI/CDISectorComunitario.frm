
[Forma]
Clave=CDISectorComunitario
Icono=0
Modulos=(Todos)
Nombre=Sector Comunitario

ListaCarpetas=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
CarpetaPrincipal=Lista
PosicionInicialIzquierda=473
PosicionInicialArriba=362
PosicionInicialAlturaCliente=273
PosicionInicialAncho=333
[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISectorComunitario
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
ListaEnCaptura=CDISectorComunitario.SectorComunitario
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

[Lista.CDISectorComunitario.SectorComunitario]
Carpeta=Lista
Clave=CDISectorComunitario.SectorComunitario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Acciones.GuardaryCerrar]
Nombre=GuardaryCerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.RegistroEliminar]
Nombre=RegistroEliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S


[Lista.Columnas]
SectorComunitario=304





[Forma.ListaAcciones]
(Inicio)=GuardaryCerrar
GuardaryCerrar=RegistroEliminar
RegistroEliminar=(Fin)
