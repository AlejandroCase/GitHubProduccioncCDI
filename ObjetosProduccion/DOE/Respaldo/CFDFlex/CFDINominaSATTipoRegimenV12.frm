

[Forma]
Clave=CFDINominaSATTipoRegimenV12
Icono=0
Modulos=(Todos)
BarraHerramientas=S
Nombre=CFDI N�mina - Tipo de R�gimen
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=GuardarCerrar
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=378
PosicionInicialAncho=602
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=413
PosicionInicialArriba=176
MovModulo=(Todos)
[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
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
OtroOrden=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaSATTipoRegimenV12
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
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

ListaOrden=CFDINominaSATTipoRegimenV12.Clave<TAB>(Acendente)
BusquedaRapida=S
BusquedaEnLinea=S
PermiteEditar=S


[Lista.Columnas]
Institucion=128
Nombre=494
ClaveSAT=156

Ciudad=63
Estado=48




Clave=58




[Forma.ListaAcciones]
(Inicio)=GuardarCerrar
GuardarCerrar=Claves
Claves=(Fin)





[Lista.ListaEnCaptura]
(Inicio)=CFDINominaSATTipoRegimenV12.Clave
CFDINominaSATTipoRegimenV12.Clave=CFDINominaSATTipoRegimenV12.Nombre
CFDINominaSATTipoRegimenV12.Nombre=(Fin)

[Lista.CFDINominaSATTipoRegimenV12.Clave]
Carpeta=Lista
Clave=CFDINominaSATTipoRegimenV12.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[Lista.CFDINominaSATTipoRegimenV12.Nombre]
Carpeta=Lista
Clave=CFDINominaSATTipoRegimenV12.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
