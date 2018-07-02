


[Forma]
Clave=CFDINominaTiposPeriodicidadPago
Icono=0
Modulos=(Todos)
Nombre=Tipos de Periodicidad del Pago

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=333
PosicionInicialAncho=437
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar
PosicionInicialIzquierda=476
PosicionInicialArriba=207
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaTiposPeriodicidadPago
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
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
PermiteEditar=S
ListaEnCaptura=(Lista)

ListaOrden=CFDINominaTiposPeriodicidadPago.PeriodicidadPago<TAB>(Acendente)
BusquedaRapida=S
BusquedaEnLinea=S
[Lista.ListaEnCaptura]
(Inicio)=CFDINominaTiposPeriodicidadPago.PeriodicidadPago
CFDINominaTiposPeriodicidadPago.PeriodicidadPago=CFDINominaTiposPeriodicidadPago.Descripcion
CFDINominaTiposPeriodicidadPago.Descripcion=(Fin)

[Lista.CFDINominaTiposPeriodicidadPago.PeriodicidadPago]
Carpeta=Lista
Clave=CFDINominaTiposPeriodicidadPago.PeriodicidadPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDINominaTiposPeriodicidadPago.Descripcion]
Carpeta=Lista
Clave=CFDINominaTiposPeriodicidadPago.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
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
PeriodicidadPago=110
Descripcion=252
