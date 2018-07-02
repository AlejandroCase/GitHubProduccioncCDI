
[Forma]
Clave=CDITorneos
Icono=0
Modulos=(Todos)
Nombre=Torneos
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=169
PosicionInicialArriba=166
PosicionInicialAlturaCliente=68
PosicionInicialAncho=987
ExpresionesAlMostrar=Asigna(info.usuario,usuario)
PosicionSec1=227
PosicionSec2=510
PosicionCol1=606
PosicionCol2=606
PosicionCol3=606
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

[Acciones.Deportes]
Nombre=Deportes
Boton=75
NombreEnBoton=S
NombreDesplegar=Deportes
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIDeporte
Activo=S
Visible=S

[Acciones.Rama]
Nombre=Rama
Boton=60
NombreEnBoton=S
NombreDesplegar=Rama Deportiva
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIRamaDepor
Activo=S
Visible=S


[Acciones.Fuerza]
Nombre=Fuerza
Boton=51
NombreEnBoton=S
NombreDesplegar=Fuerzas
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIFuerzaDep
Activo=S
Visible=S



EspacioPrevio=S





[Acciones.Sedes]
Nombre=Sedes
Boton=19
NombreEnBoton=S
NombreDesplegar=Sedes
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIDeporte
Activo=S
Visible=S

EspacioPrevio=S





[Acciones.CatTorneso]
Nombre=CatTorneso
Boton=48
NombreEnBoton=S
NombreDesplegar=Catalogo Torneos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICatTorneos
Activo=S
Visible=S

EspacioPrevio=S



[Acciones.EquiposYJugadores]
Nombre=EquiposYJugadores
Boton=80
NombreEnBoton=S
NombreDesplegar=Equipos y jugadores
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICtrlEquipo
Activo=S
Visible=S


[Acciones.CtrlTorneos]
Nombre=CtrlTorneos
Boton=78
NombreEnBoton=S
NombreDesplegar=Control Torneos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICtrlTorneos
Activo=S
Visible=S


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









































































[Forma.ListaAcciones]
(Inicio)=Deportes
Deportes=Rama
Rama=Fuerza
Fuerza=Sedes
Sedes=CatTorneso
CatTorneso=EquiposYJugadores
EquiposYJugadores=CtrlTorneos
CtrlTorneos=CtrlJornadas
CtrlJornadas=ResJornadasa
ResJornadasa=Estadisticas
Estadisticas=(Fin)
