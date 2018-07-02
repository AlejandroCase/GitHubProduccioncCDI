
[Forma]
Clave=CDIAltaCambioJornada
Icono=0
CarpetaPrincipal=CDIAltaCambioJornada
Modulos=(Todos)
Nombre=Alta Cambio Jornada
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
PosicionInicialAlturaCliente=26
PosicionInicialAncho=366
ListaCarpetas=CDIAltaCambioJornada
PosicionInicialIzquierda=500
PosicionInicialArriba=351
BarraHerramientas=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
[Acciones.Alta]
Nombre=Alta
Boton=76
NombreEnBoton=S
NombreDesplegar=&Alta Jornada
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIJornadaNva
Activo=S
Visible=S

[CDIAltaCambioJornada]
Estilo=Hoja
Clave=CDIAltaCambioJornada
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=jornada
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Negro
CarpetaVisible=S

[Acciones.Actualiza Jornada]
Nombre=Actualiza Jornada
Boton=82
NombreDesplegar=&Actualiza Jornada
EnBarraHerramientas=S
TipoAccion=formas
ClaveAccion=CDIBuscarJornada
Activo=S
Visible=S

NombreEnBoton=S








EspacioPrevio=S



















































[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&EliminarJornada
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
Activo=S
Visible=S









ClaveAccion=CDIEliminarJornada












[Forma.ListaAcciones]
(Inicio)=Alta
Alta=Actualiza Jornada
Actualiza Jornada=Eliminar
Eliminar=(Fin)
