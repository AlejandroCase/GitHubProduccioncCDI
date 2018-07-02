
[Forma]
Clave=CFDINominaSATInstitucionFinListaV12
Icono=0
Modulos=(Todos)
BarraHerramientas=S
Nombre=CFDI Nómina - SAT Claves Instituciones Financieras
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Seleccionar
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=367
PosicionInicialAncho=434
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=496
PosicionInicialArriba=181
MovModulo=(Todos)

[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Lista
Clave=Lista
OtroOrden=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaSATInstitucionFinV12
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
CarpetaVisible=S

ListaOrden=CFDINominaSATInstitucionFinV12.Clave<TAB>(Acendente)
BusquedaRapida=S
BusquedaEnLinea=S
ValidarCampos=S


[Lista.Columnas]
Institucion=128
Nombre=308
ClaveSAT=156

Ciudad=63
Estado=48







Clave=56


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







[Lista.CFDINominaSATInstitucionFinV12.Clave]
Carpeta=Lista
Clave=CFDINominaSATInstitucionFinV12.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDINominaSATInstitucionFinV12.Nombre]
Carpeta=Lista
Clave=CFDINominaSATInstitucionFinV12.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=CFDINominaSATInstitucionFinV12.Clave
CFDINominaSATInstitucionFinV12.Clave=CFDINominaSATInstitucionFinV12.Nombre
CFDINominaSATInstitucionFinV12.Nombre=(Fin)
