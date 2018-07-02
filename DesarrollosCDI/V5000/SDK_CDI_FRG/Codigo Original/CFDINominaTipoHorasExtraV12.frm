


[Forma]
Clave=CFDINominaTipoHorasExtraV12
Icono=0
Modulos=(Todos)
Nombre=CFDI Nómina - Tipo de Hora Extra

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=490
PosicionInicialArriba=201
PosicionInicialAlturaCliente=290
PosicionInicialAncho=376
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaTipoHorasExtraV12
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

ListaOrden=CFDINominaTipoHorasExtraV12.TipoHoras<TAB>(Acendente)
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
TipoHoras=99
Descripcion=228

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
GuardarAntes=S



[Lista.ListaEnCaptura]
(Inicio)=CFDINominaTipoHorasExtraV12.TipoHoras
CFDINominaTipoHorasExtraV12.TipoHoras=CFDINominaTipoHorasExtraV12.Descripcion
CFDINominaTipoHorasExtraV12.Descripcion=(Fin)

[Lista.CFDINominaTipoHorasExtraV12.TipoHoras]
Carpeta=Lista
Clave=CFDINominaTipoHorasExtraV12.TipoHoras
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDINominaTipoHorasExtraV12.Descripcion]
Carpeta=Lista
Clave=CFDINominaTipoHorasExtraV12.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
