
[Forma]
Clave=CDIFuerzaDepLista
Icono=0
Modulos=(Todos)
Nombre=Fuerza
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIFuerzaDep
CarpetaPrincipal=CDIFuerzaDep
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=468
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=430
[CDIFuerzaDep]
Estilo=Hoja
Clave=CDIFuerzaDep
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIFuerzaDep
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
CarpetaVisible=S


ListaEnCaptura=(Lista)

[CDIFuerzaDep.Columnas]
Fuerza=171

EdadMinimaJugaddor=105
EdadMaximaJugador=109

[CDIFuerzaDep.CDIFuerzaDep.Fuerza]
Carpeta=CDIFuerzaDep
Clave=CDIFuerzaDep.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIFuerzaDep.CDIFuerzaDep.EdadMinimaJugaddor]
Carpeta=CDIFuerzaDep
Clave=CDIFuerzaDep.EdadMinimaJugaddor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIFuerzaDep.CDIFuerzaDep.EdadMaximaJugador]
Carpeta=CDIFuerzaDep
Clave=CDIFuerzaDep.EdadMaximaJugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S


[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S







EspacioPrevio=S











[CDIFuerzaDep.ListaEnCaptura]
(Inicio)=CDIFuerzaDep.Fuerza
CDIFuerzaDep.Fuerza=CDIFuerzaDep.EdadMinimaJugaddor
CDIFuerzaDep.EdadMinimaJugaddor=CDIFuerzaDep.EdadMaximaJugador
CDIFuerzaDep.EdadMaximaJugador=(Fin)

[Forma.ListaAcciones]
(Inicio)=Seleccionar/Aceptar
Seleccionar/Aceptar=Cerrar
Cerrar=(Fin)