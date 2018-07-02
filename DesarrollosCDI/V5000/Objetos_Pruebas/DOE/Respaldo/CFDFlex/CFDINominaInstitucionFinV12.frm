
[Forma]
Clave=CFDINominaInstitucionFinV12
Icono=0
Modulos=(Todos)
BarraHerramientas=S
Nombre=CFDI Nómina - Instituciones Financieras
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=229
PosicionInicialAncho=370
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=529
PosicionInicialArriba=250
MovModulo=(Todos)
Menus=S
MenuPrincipal=&Maestros
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
Vista=CFDINominaInstitucionFinV12
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

FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S

BusquedaRapida=S
BusquedaEnLinea=S
PermiteEditar=S


ListaEnCaptura=(Lista)
ListaOrden=CFDINominaInstitucionFinV12.Institucion<TAB>(Acendente)
[Lista.Columnas]
Institucion=133
Nombre=308
ClaveSAT=156

Ciudad=63
Estado=48




Clave=56

FormaPago=136
[Acciones.Claves]
Nombre=Claves
Boton=0
Menu=&Maestros
NombreDesplegar=&Claves
EnMenu=S
TipoAccion=Formas
ClaveAccion=CFDINominaSATInstitucionFin
Activo=S
Visible=S



















































[Lista.CFDINominaInstitucionFinV12.Institucion]
Carpeta=Lista
Clave=CFDINominaInstitucionFinV12.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CFDINominaInstitucionFinV12.ClaveSAT]
Carpeta=Lista
Clave=CFDINominaInstitucionFinV12.ClaveSAT
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[Lista.ListaEnCaptura]
(Inicio)=CFDINominaInstitucionFinV12.Institucion
CFDINominaInstitucionFinV12.Institucion=CFDINominaInstitucionFinV12.ClaveSAT
CFDINominaInstitucionFinV12.ClaveSAT=(Fin)







[Forma.ListaAcciones]
(Inicio)=GuardarCerrar
GuardarCerrar=Claves
Claves=(Fin)
