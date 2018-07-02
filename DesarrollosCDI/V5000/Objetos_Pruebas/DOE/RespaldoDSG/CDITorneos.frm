
[Forma]
Clave=CDITorneos
Icono=0
Modulos=(Todos)
Nombre=Torneos
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
PosicionInicialIzquierda=227
PosicionInicialArriba=350
PosicionInicialAlturaCliente=29
PosicionInicialAncho=912
PosicionSec1=227
PosicionSec2=510
PosicionCol1=606
PosicionCol2=606
PosicionCol3=606
ExpresionesAlMostrar=Asigna(info.usuario,usuario)
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
FichaColorFondo=Negro
[(Variables).Info.Usuario]
Carpeta=(Variables)
Clave=Info.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[Acciones.CatTorneso]
Nombre=CatTorneso
Boton=48
NombreEnBoton=S
NombreDesplegar=Torneos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICatTorneosControl
Activo=S
Visible=S

EspacioPrevio=S




[Acciones.CtrlJornadas]
Nombre=CtrlJornadas
Boton=9
NombreEnBoton=S
NombreDesplegar=Control Jornadas
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICtrlJornadas
Activo=S
Visible=S




[Acciones.ResJornadasa]
Nombre=ResJornadasa
Boton=88
NombreEnBoton=S
NombreDesplegar=Resultados Jornadas
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIVJornadas
Activo=S
Visible=S


[Acciones.Estadisticas]
Nombre=Estadisticas
Boton=49
NombreEnBoton=S
NombreDesplegar=Estadisticas
EnBarraHerramientas=S
TipoAccion=Dialogos
ClaveAccion=Estadisticas
Activo=S
Visible=S



EspacioPrevio=S





















[CDIslowresL.Columnas]
Jugador=64
Asociado=10
Jugo=40
VB=22
C=18
H=24
H2=27
H3=25
HR=21
CP=25
K=23
BB=27
GP=27
SH=27
SF=25
BR=24
Amonestado=64
Expulsado=53

[CDIslowresPV.Columnas]
Jugador=64
Asociado=10
Jugo=32
GPS=31
H=23
HR=24
VB=24
K=24
BB=25
GP=27
WP=32
BK=30
CA=28
CL=27
IP=25
Tercio=33

[CDIslowresV.Columnas]
Jugador=64
Asociado=10
Jugo=39
VB=21
C=17
H=24
H2=30
H3=25
HR=27
CP=25
K=19
BB=27
GP=23
SH=30
SF=26
BR=25
Amonestado=64
Expulsado=54

[CDIslowresPL.Columnas]
Jugador=64
Asociado=10
Jugo=31
GPS=31
H=24
HR=26
VB=27
K=19
BB=27
GP=25
WP=29
BK=25
CA=29
CL=30
IP=28
Tercio=33


























































































[Acciones.maestros]
Nombre=maestros
Boton=18
NombreEnBoton=S
NombreDesplegar=Catalogos Maestros
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDITorneosMaestros
Activo=S
Visible=S








































[Acciones.CDIEquiposYjugadores]
Nombre=CDIEquiposYjugadores
Boton=74
NombreEnBoton=S
NombreDesplegar=Catalogo y Control de Equipos y Jugadores
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIEquiposJugadores
Activo=S
Visible=S























EspacioPrevio=S












[Forma.ListaAcciones]
(Inicio)=maestros
maestros=CatTorneso
CatTorneso=CDIEquiposYjugadores
CDIEquiposYjugadores=CtrlJornadas
CtrlJornadas=ResJornadasa
ResJornadasa=Estadisticas
Estadisticas=(Fin)
