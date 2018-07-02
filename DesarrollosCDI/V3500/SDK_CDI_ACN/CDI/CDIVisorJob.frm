
[Forma]
Clave=CDIVisorJob
Icono=0
Modulos=(Todos)
Nombre=Visor de Job
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=336
PosicionInicialArriba=324
PosicionInicialAlturaCliente=273
PosicionInicialAncho=607
ListaAcciones=(Lista)
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVisorJob
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
[Lista.ListaEnCaptura]
(Inicio)=CDIVisorJob.NombreJob
CDIVisorJob.NombreJob=CDIVisorJob.Mail
CDIVisorJob.Mail=(Fin)

[Lista.CDIVisorJob.NombreJob]
Carpeta=Lista
Clave=CDIVisorJob.NombreJob
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.CDIVisorJob.Mail]
Carpeta=Lista
Clave=CDIVisorJob.Mail
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.Columnas]
NombreJob=199
Mail=366

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar.Cancela]
Nombre=Cancela
Boton=0
TipoAccion=Ventana
ClaveAccion=Cancelar/Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cerrar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
EspacioPrevio=S


[Acciones.Cerrar.ListaAccionesMultiples]
(Inicio)=Cancela
Cancela=Cerrar
Cerrar=(Fin)







































[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=(Fin)
