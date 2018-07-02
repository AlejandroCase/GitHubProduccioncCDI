
[Forma]
Clave=CFDINominaSATTipoNomina
Icono=0
BarraHerramientas=S
Modulos=(Todos)
MovModulo=(Todos)
Nombre=CFDI Nómina - Tipo de Nómina
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=443
PosicionInicialArriba=229
PosicionInicialAlturaCliente=247
PosicionInicialAncho=494
ListaAcciones=GuardarCerrar
[Lista]
Estilo=Hoja
Clave=Lista
OtroOrden=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaSATTipoNomina
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

ListaOrden=CFDINominaSATTipoNomina.Clave<TAB>(Acendente)
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

PestanaOtroNombre=S
PestanaNombre=Lista
PermiteEditar=S
[Lista.CFDINominaSATTipoNomina.Clave]
Carpeta=Lista
Clave=CFDINominaSATTipoNomina.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.CFDINominaSATTipoNomina.Descripcion]
Carpeta=Lista
Clave=CFDINominaSATTipoNomina.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.Columnas]
Clave=31
Descripcion=604

[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
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
(Inicio)=CFDINominaSATTipoNomina.Clave
CFDINominaSATTipoNomina.Clave=CFDINominaSATTipoNomina.Descripcion
CFDINominaSATTipoNomina.Descripcion=(Fin)
