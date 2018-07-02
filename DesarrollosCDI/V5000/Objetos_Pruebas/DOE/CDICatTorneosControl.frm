
[Forma]
Clave=CDICatTorneosControl
Icono=0
Modulos=(Todos)
Nombre=Catalogo y Control de Torneos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=487
PosicionInicialArriba=350
PosicionInicialAlturaCliente=29
PosicionInicialAncho=391
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.Usuario
CarpetaVisible=S

FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=plata
[(Variables).Info.Usuario]
Carpeta=(Variables)
Clave=Info.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Control]
Nombre=Control
Boton=78
NombreEnBoton=S
NombreDesplegar=Control Torneos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICtrlTorneos
Activo=S
Visible=S

EspacioPrevio=S
[Acciones.Cata]
Nombre=Cata
Boton=48
NombreEnBoton=S
NombreDesplegar=Catalogo de Torneos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICatTorneos
Activo=S
Visible=S


[Acciones.Info]
Nombre=Info
Boton=16
NombreEnBoton=S
NombreDesplegar=Equipos del Torneo
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICatTorneosEquipos
Activo=S
Visible=S















[Forma.ListaAcciones]
(Inicio)=Cata
Cata=Control
Control=Info
Info=(Fin)
