
[Forma]
Clave=CDIFuerzaDep
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
PermiteEditar=S
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
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S


ListaEnCaptura=(Lista)
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[CDIFuerzaDep.Columnas]
Fuerza=171

EdadMinimaJugaddor=105
EdadMaximaJugador=109
[CDIFuerzaDep.ListaEnCaptura]
(Inicio)=CDIFuerzaDep.Fuerza
CDIFuerzaDep.Fuerza=CDIFuerzaDep.EdadMinimaJugaddor
CDIFuerzaDep.EdadMinimaJugaddor=CDIFuerzaDep.EdadMaximaJugador
CDIFuerzaDep.EdadMaximaJugador=(Fin)

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

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





NombreEnBoton=S












[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
