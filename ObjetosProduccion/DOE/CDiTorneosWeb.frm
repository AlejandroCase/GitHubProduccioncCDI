
[Forma]
Clave=CDiTorneosWeb
Icono=0
Modulos=(Todos)
Nombre=Torneos a Publicar en WEB
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDiTorneosWeb
CarpetaPrincipal=CDiTorneosWeb
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar Cambios
PosicionInicialIzquierda=436
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=494
[CDiTorneosWeb]
Estilo=Hoja
Clave=CDiTorneosWeb
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDiTorneosWeb
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

CarpetaVisible=S
[CDiTorneosWeb.ListaEnCaptura]
(Inicio)=CDiTorneosWeb.Deporte
CDiTorneosWeb.Deporte=CDiTorneosWeb.Rama
CDiTorneosWeb.Rama=CDiTorneosWeb.Fuerza
CDiTorneosWeb.Fuerza=CDiTorneosWeb.torneo
CDiTorneosWeb.torneo=(Fin)

[CDiTorneosWeb.CDiTorneosWeb.Deporte]
Carpeta=CDiTorneosWeb
Clave=CDiTorneosWeb.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDiTorneosWeb.CDiTorneosWeb.Rama]
Carpeta=CDiTorneosWeb
Clave=CDiTorneosWeb.Rama
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDiTorneosWeb.CDiTorneosWeb.Fuerza]
Carpeta=CDiTorneosWeb
Clave=CDiTorneosWeb.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDiTorneosWeb.CDiTorneosWeb.torneo]
Carpeta=CDiTorneosWeb
Clave=CDiTorneosWeb.torneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[CDiTorneosWeb.Columnas]
Deporte=121
Rama=111
Fuerza=91
torneo=126

[CDIDeporte.Columnas]
Deporte=184
MaxEquiposTorneo=101
MaxJugadoresEquipo=147

[CDIRamaDepor.Columnas]
Rama=146

[CDIFuerzaDep.Columnas]
Fuerza=171
EdadMinimaJugaddor=105
EdadMaximaJugador=109

[ListaTorneos.Columnas]
Nombre=174
Deporte=184
RamaDepor=60
Fuerza=94