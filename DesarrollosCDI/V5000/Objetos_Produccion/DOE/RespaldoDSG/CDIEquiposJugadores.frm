
[Forma]
Clave=CDIEquiposJugadores
Icono=0
Modulos=(Todos)
Nombre=Catalogo y Control de Equipos y Jugadores
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
PosicionInicialIzquierda=491
PosicionInicialArriba=350
PosicionInicialAlturaCliente=30
PosicionInicialAncho=384
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
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
ListaEnCaptura=Info.Usuario
CarpetaVisible=S

[(Variables).Info.Usuario]
Carpeta=(Variables)
Clave=Info.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Catalogo]
Nombre=Catalogo
Boton=74
NombreEnBoton=S
NombreDesplegar=Catalogo Equipos y Jugadores
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIEquipoTorneos
Activo=S
Visible=S

[Acciones.Control]
Nombre=Control
Boton=80
NombreEnBoton=S
NombreDesplegar=Control Equipos y Jugadores
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICtrlEquipo
Activo=S
Visible=S













[Forma.ListaAcciones]
(Inicio)=Catalogo
Catalogo=Control
Control=(Fin)
