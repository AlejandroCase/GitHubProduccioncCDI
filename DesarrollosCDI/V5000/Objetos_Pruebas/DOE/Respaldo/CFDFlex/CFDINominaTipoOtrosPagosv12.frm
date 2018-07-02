


[Forma]
Clave=CFDINominaTipoOtrosPagosv12
Icono=0
Modulos=(Todos)

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=425
PosicionInicialArriba=217
PosicionInicialAlturaCliente=374
PosicionInicialAncho=742
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar
MovModulo=(Todos)
Nombre=Tipo Otros Pagos
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaTipoOtrosPagosv12
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
CarpetaVisible=S
OtroOrden=S
BusquedaRapidaControles=S
PermiteEditar=S
ListaEnCaptura=(Lista)

ListaOrden=CFDINominaTipoOtrosPagosV12.TipoOtroPago<TAB>(Acendente)
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



[Lista.Columnas]
TipoOtroPago=98
Descripcion=592


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



[Lista.ListaEnCaptura]
(Inicio)=CFDINominaTipoOtrosPagosV12.TipoOtroPago
CFDINominaTipoOtrosPagosV12.TipoOtroPago=CFDINominaTipoOtrosPagosV12.Descripcion
CFDINominaTipoOtrosPagosV12.Descripcion=(Fin)

[Lista.CFDINominaTipoOtrosPagosV12.TipoOtroPago]
Carpeta=Lista
Clave=CFDINominaTipoOtrosPagosV12.TipoOtroPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=3
ColorFondo=Blanco

[Lista.CFDINominaTipoOtrosPagosV12.Descripcion]
Carpeta=Lista
Clave=CFDINominaTipoOtrosPagosV12.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
