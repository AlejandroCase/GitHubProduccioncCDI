
[Forma]
Clave=CDIVJornadas
Icono=0
Modulos=(Todos)
Nombre=Partidos Programados
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIVJornadas
CarpetaPrincipal=CDIVJornadas
PosicionInicialIzquierda=207
PosicionInicialArriba=18
PosicionInicialAlturaCliente=603
PosicionInicialAncho=885
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionSec1=227
PosicionSec2=510
PosicionCol2=606
PosicionCol1=606
PosicionCol3=606
[CDIVJornadas]
Estilo=Hoja
Clave=CDIVJornadas
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVJornadas
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

Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CDIVJornadas.Deporte
FiltroGrupo2=CDIVJornadas.ClaveTorneo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por grupos)
FiltroTodo=S

FiltroGrupo3=CDIVJornadas.NoVuelta
MenuLocal=S
ListaAcciones=(Lista)
HojaFondoGrisAuto=S
PestanaOtroNombre=S
PestanaNombre=Partido Programados
FiltroGrupo4=CDIVJornadas.NoJornada
OtroOrden=S
ListaOrden=(Lista)
BusquedaRapidaControles=S
HojaColorFondo=Plata
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CDIVJornadas.FechaPartido
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
SelCampo=S
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
HojaOrdenarColumnas=S
FiltroGeneral={si(condatos(Info.BuscarJornadaTorneo),<T>CDIVJornadas.NoJornada=<T>+comillas(Info.BuscarJornadaTorneo),<T>1=1<T>)}<BR>AND Estatus =<T>ALTA<T>
[CDIVJornadas.CDIVJornadas.NoJornada]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.NoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVJornadas.CDIVJornadas.TipoJornada]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.TipoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIVJornadas.CDIVJornadas.FechaEmision]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVJornadas.CDIVJornadas.FechaPartido]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.FechaPartido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVJornadas.CDIVJornadas.Horario]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIVJornadas.CDIVJornadas.Sede]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVJornadas.CDIVJornadas.EquipoLocal]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.EquipoLocal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVJornadas.CDIVJornadas.EquipoVisitante]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.EquipoVisitante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVJornadas.Columnas]
IdTorneo=71
NoJornada=43
TipoJornada=81
FechaEmision=74
FechaPartido=76
Horario=42
Sede=70
EquipoLocal=76
EquipoVisitante=83


Deporte=87
MarcadorLocal=47
MarcadorVisitante=62
PuntosObtenidos=93
NoVuelta=35
ClaveTorneo=65
[Acciones.Actualizar Forma]
Nombre=Actualizar Forma
Boton=82
NombreDesplegar=Actualizar Forma
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S
Visible=S







ClaveAccion=Actualizar Forma
[CDIVJornadas.CDIVJornadas.MarcadorLocal]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.MarcadorLocal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVJornadas.CDIVJornadas.MarcadorVisitante]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.MarcadorVisitante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[Acciones.CDITorneoRes]
Nombre=CDITorneoRes
Boton=0
NombreDesplegar=Registro Resultados
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S










Antes=S
Expresion=Caso  CDIVJornadas:CDIVJornadas.Deporte<BR>   es <T>Slowpitch<T><BR>   Entonces <BR>      asigna(info.id,sql(<T>xpCDIResPart :nI, :nR<T>,CDIVJornadas:CDIVJornadas.Id,CDIVJornadas:CDIVJornadas.RenglonId))<BR>      FormaModal(<T>CDITorneoResSlo<T>)<BR>   sino<BR>    asigna(info.id,sql(<T>xpCDIResPart :nI, :nR<T>,CDIVJornadas:CDIVJornadas.Id,CDIVJornadas:CDIVJornadas.RenglonId))<BR>    Formamodal(<T>CDITorneoRes<T>)<BR><BR>Fin
AntesExpresiones=Asigna(info.CDIClaveTorneo,CDIVJornadas:CDIVJornadas.ClaveTorneo)<BR>ASigna(Info.CDINoVuelta,CDIVJornadas:CDIVJornadas.NoVuelta)<BR>ASigna(Info.CDINoJornada,CDIVJornadas:CDIVJornadas.NoJornada)<BR>Asigna(info.CDIEquipoL,CDIVJornadas:CDIVJornadas.EquipoLocal)<BR>Asigna(info.CDIEquipoV,CDIVJornadas:CDIVJornadas.EquipoVisitante)<BR>ASigna(Info.id,CDIVJornadas:CDIVJornadas.Id)<BR>ASigna(Info.RenglonId,CDIVJornadas:CDIVJornadas.RenglonId)
[CDIVJornadas.CDIVJornadas.NoVuelta]
Carpeta=CDIVJornadas
Clave=CDIVJornadas.NoVuelta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


















[CDICasilleros.Columnas]
Seccion=69
Ubicacion=52
Casillero=51
Tipo=50
Cilindro=78
FechaEmision=88
NivelCas=55
Cliente_1=3
Socio=2
SocioA=2
Nombre=2
Membresia_1=3

[Disponibles.Columnas]
Seccion=72
Ubicacion=55
Casillero=47
Tipo=47
Cilindro=75
NivelCas=52

[Baja.Columnas]
Seccion=80
Ubicacion=60
Casillero=64
Tipo=56
Cilindro=75
NivelCas=52

[CDICasCteEmp.Columnas]
Seccion=80
Ubicacion=58
Casillero=47
Tipo=48
Cilindro=58
FechaEmision=94
NivelCas=53
Cliente_1=2
Nombre=2

[CDITorneoResO.Columnas]
comentarios=304

[CDIslowresL.Columnas]
Jugador=64
VB=22
C=18
H=24
H2=27
H3=25
HR=21
CP=25

Jugo=40
K=23
BB=27
GP=27
SH=27
SF=25
BR=24
Amonestado=64
Expulsado=53
Asociado=10
[CDIslowresv.Columnas]
Jugador=64
VB=21
C=17
H=24
H2=30
H3=25
HR=27
CP=25



Jugo=39
K=19
BB=27
GP=23
SH=30
SF=26
BR=25
Amonestado=64
Expulsado=54

Asociado=10
[CDIslowresPV.Columnas]
Jugador=64
G=31
P=36
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

Asociado=10
Jugo=32
GPS=31
Tercio=33
[CDIslowresPL.Columnas]
Jugador=64
G=31
P=42
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

Asociado=10
Jugo=31
GPS=31
Tercio=33
[UsoServicio.Columnas]
Servicio=293
Fecha=94
Porcentaje=38
Evaluacion=87
Observaciones=189

[FormaExtraValor.Columnas]
VerCampo=346
VerValor=364

[SituacionCta.Columnas]
0=188
1=148
2=-2
3=-2
4=-2

[RolesCDI.Columnas]
NIPCDI=133
Catalogo=169
Personal=129
Rol=143

[(Carpeta Abrir).Columnas]
0=106
1=283


[CDITorneoResDL.Columnas]
ClaveJugador=70
Goles=37
Amonestado=64
Expulsado=64
FaltasCometidas=83
FaltasRecibidas=78
Autogoles=53

Jugador=45
Jugo=32
Am1=30
Am2=31
Expulsion=50
FaltasCom=87
FaltasRec=80
[CDITorneoResDV.Columnas]
ClaveJugador=70
Goles=37
Amonestado=64
Expulsado=64
FaltasCometidas=83
FaltasRecibidas=78
Autogoles=56














Jugador=56
Jugo=37
Am1=30
Am2=32
Expulsion=52
FaltasCom=88
FaltasRec=83




































[Acciones.CedulaJuego]
Nombre=CedulaJuego
Boton=0
NombreDesplegar=Genera Cedula del Juego
EnMenu=S
TipoAccion=Reportes Pantalla
Activo=S
Visible=S

Antes=S








ClaveAccion=xpCDICEdulaPart
AntesExpresiones=Asigna(info.CDIClaveTorneo,CDIVJornadas:CDIVJornadas.ClaveTorneo)<BR>ASigna(Info.CDINoVuelta,CDIVJornadas:CDIVJornadas.NoVuelta)<BR>ASigna(Info.CDINoJornada,CDIVJornadas:CDIVJornadas.NoJornada)<BR>Asigna(info.CDIEquipoL,CDIVJornadas:CDIVJornadas.EquipoLocal)<BR>Asigna(info.CDIEquipoV,CDIVJornadas:CDIVJornadas.EquipoVisitante)<BR>ASigna(Info.id,CDIVJornadas:CDIVJornadas.Id)<BR>ASigna(Info.RenglonId,CDIVJornadas:CDIVJornadas.RenglonId)



















[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=CDIVJornadas
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S























[Acciones.BuscarJornada]
Nombre=BuscarJornada
Boton=66
NombreDesplegar=&Buscar por Jornada
EnBarraHerramientas=S
Activo=S
Visible=S















NombreEnBoton=S
TipoAccion=formas
ClaveAccion=CDIBuscarJornadaTorneo































Multiple=S
ListaAccionesMultiples=(Lista)



[Acciones.BuscarJornada.Actua]
Nombre=Actua
Boton=0
TipoAccion=formas
ClaveAccion=CDIBuscarJornadaTorneo
Activo=S
Visible=S

[Acciones.BuscarJornada.Ac1]
Nombre=Ac1
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S





[Acciones.BuscarJornada.actualizar Titulos]
Nombre=actualizar Titulos
Boton=0
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Actualizar Arbol
Activo=S
Visible=S

[Acciones.BuscarJornada.ListaAccionesMultiples]
(Inicio)=Actua
Actua=Ac1
Ac1=actualizar Titulos
actualizar Titulos=(Fin)








[CDIVJornadas.ListaEnCaptura]
(Inicio)=CDIVJornadas.NoVuelta
CDIVJornadas.NoVuelta=CDIVJornadas.NoJornada
CDIVJornadas.NoJornada=CDIVJornadas.TipoJornada
CDIVJornadas.TipoJornada=CDIVJornadas.FechaEmision
CDIVJornadas.FechaEmision=CDIVJornadas.FechaPartido
CDIVJornadas.FechaPartido=CDIVJornadas.Horario
CDIVJornadas.Horario=CDIVJornadas.Sede
CDIVJornadas.Sede=CDIVJornadas.EquipoLocal
CDIVJornadas.EquipoLocal=CDIVJornadas.MarcadorLocal
CDIVJornadas.MarcadorLocal=CDIVJornadas.EquipoVisitante
CDIVJornadas.EquipoVisitante=CDIVJornadas.MarcadorVisitante
CDIVJornadas.MarcadorVisitante=(Fin)

[CDIVJornadas.ListaOrden]
(Inicio)=CDIVJornadas.FechaPartido	(Acendente)
CDIVJornadas.FechaPartido	(Acendente)=CDIVJornadas.TipoJornada	(Acendente)
CDIVJornadas.TipoJornada	(Acendente)=(Fin)

[CDIVJornadas.ListaAcciones]
(Inicio)=CDITorneoRes
CDITorneoRes=CedulaJuego
CedulaJuego=(Fin)







[Forma.ListaAcciones]
(Inicio)=Actualizar Forma
Actualizar Forma=Enviar a Excel
Enviar a Excel=BuscarJornada
BuscarJornada=(Fin)
