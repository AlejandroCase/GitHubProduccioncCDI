

[Forma]
Clave=CFDINominaMovV12
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=CFDI Nómina - Movimientos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=264
PosicionInicialArriba=206
PosicionInicialAlturaCliente=317
PosicionInicialAncho=899
Menus=S
MenuPrincipal=&Maestros
[Acciones.GuardarCerrrar]
Nombre=GuardarCerrrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Lista
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaMovV12
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
OtroOrden=S

ListaOrden=CFDINominaMovV12.Mov<TAB>(Acendente)
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


[Lista.Columnas]
Mov=152
tipoRegimen=153





Version=111

TipoComprobante=116
Reporte=116
ReporteMov=127
TipoNomina=161
FechaIniciaAplica=124
FechaFinalizaAplica=124


[Acciones.TipoRegimen]
Nombre=TipoRegimen
Boton=0
NombreDesplegar=Tipos de Régimen
EnMenu=S
TipoAccion=Formas
ClaveAccion=CFDINominaSATTipoRegimenV12
Activo=S
Visible=S



Menu=&Maestros





































[Acciones.TipoNomina]
Nombre=TipoNomina
Boton=0
Menu=&Maestros
NombreDesplegar=Tipo de Nómina
EnMenu=S
TipoAccion=Formas
ClaveAccion=CFDINominaSATTipoNominaV12
Activo=S
Visible=S







[Lista.ListaEnCaptura]
(Inicio)=CFDINominaMovV12.Mov
CFDINominaMovV12.Mov=CFDINominaMovV12.Version
CFDINominaMovV12.Version=CFDINominaMovV12.tipoRegimen
CFDINominaMovV12.tipoRegimen=CFDINominaMovV12.TipoNomina
CFDINominaMovV12.TipoNomina=CFDINominaMovV12.Reporte
CFDINominaMovV12.Reporte=CFDINominaMovV12.ReporteMov
CFDINominaMovV12.ReporteMov=(Fin)

[Lista.CFDINominaMovV12.Mov]
Carpeta=Lista
Clave=CFDINominaMovV12.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CFDINominaMovV12.Version]
Carpeta=Lista
Clave=CFDINominaMovV12.Version
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Lista.CFDINominaMovV12.tipoRegimen]
Carpeta=Lista
Clave=CFDINominaMovV12.tipoRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.CFDINominaMovV12.TipoNomina]
Carpeta=Lista
Clave=CFDINominaMovV12.TipoNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.CFDINominaMovV12.Reporte]
Carpeta=Lista
Clave=CFDINominaMovV12.Reporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.CFDINominaMovV12.ReporteMov]
Carpeta=Lista
Clave=CFDINominaMovV12.ReporteMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

































[Forma.ListaAcciones]
(Inicio)=GuardarCerrrar
GuardarCerrrar=TipoRegimen
TipoRegimen=TipoNomina
TipoNomina=(Fin)
