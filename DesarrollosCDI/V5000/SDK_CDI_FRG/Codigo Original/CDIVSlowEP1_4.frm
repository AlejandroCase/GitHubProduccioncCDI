
[Forma]
Clave=CDIVSlowEP1_4
Icono=0
Modulos=(Todos)
Nombre=Estadistica de Pitcheo x Equipo por Encuentro
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIVSlowEP1
CarpetaPrincipal=CDIVSlowEP1
PosicionInicialIzquierda=153
PosicionInicialArriba=113
PosicionInicialAlturaCliente=504
PosicionInicialAncho=1059
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Totalizadores=S
PosicionSec1=424
[CDIVSlowEP1]
Estilo=Hoja
Clave=CDIVSlowEP1
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVSlowEP1A
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
FiltroGrupo1=CDIVSlowEP1A.ClaveTorneo
FiltroGrupo2=CDIVSlowEP1A.Equipo
FiltroGrupo3=CDIVSlowEP1A.Fecha
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)














OtroOrden=S
ListaOrden=CDIVSlowEP1A.PCLA<TAB>(Decendente)
HojaOrdenarColumnas=S
[CDIVSlowEP1.Columnas]
ClaveTorneo=64
NoVuelta=64
NoJornada=64
fecha=65
Equipo=64
jugador=64
PCLA=57
jugo=35
gano=32
Perdio=37
IP=36
VBC=40
HA=44
HR=41
CA=42
CL=39
BB=43
SO=37








Nombre=184
asociado=10
TerciosPitchados=49
Residuo=64
TerPitEnt=19
TerPitFrac=42
Jugador=64
Asociado=10
Gano=32
TerPitText=43
[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=CDIVSlowEP1
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=CDIVSlowEP1
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S




EspacioPrevio=S
[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=PCLA<BR>Gano<BR>Perdio<BR>IP<BR>VBC<BR>HA<BR>CA<BR>CL<BR>BB<BR>SO<BR>HR
Totalizadores2=suma(CDIVSlowEP1A:CDIVSlowEP1A.PCLA)<BR>SUMA(CDIVSlowEP1A:CDIVSlowEP1A.gano)<BR>SUMA(CDIVSlowEP1A:CDIVSlowEP1A.Perdio)<BR>sql(<T>xpCDIIpText :nI<T>,suma(CDIVSlowEP1A:CDIVSlowEP1A.TerciosPitchados))<BR>SUMA(CDIVSlowEP1A:CDIVSlowEP1A.VBC)<BR>SUMA(CDIVSlowEP1A:CDIVSlowEP1A.HA)<BR>SUMA(CDIVSlowEP1A:CDIVSlowEP1A.CA)<BR>SUMA(CDIVSlowEP1A:CDIVSlowEP1A.CL)<BR>SUMA(CDIVSlowEP1A:CDIVSlowEP1A.BB)<BR>SUMA(CDIVSlowEP1A:CDIVSlowEP1A.SO)<BR>SUMA(CDIVSlowEP1A:CDIVSlowEP1A.HR)
Totalizadores3=#0.000<BR>(Cantidades)<BR>(Cantidades)<BR><BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)
Totalizadores=S
TotCarpetaRenglones=CDIVSlowEP1
TotAlCambiar=S
CampoColorLetras=Negro
CampoColorFondo=Plata

CarpetaVisible=S












ListaEnCaptura=(Lista)
TotExpresionesEnSumas=S
[CDIVSlowEP1.Cte.Nombre]
Carpeta=CDIVSlowEP1
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco














[CDIVSlowEP1.CDIVSlowEP1A.ClaveTorneo]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.Equipo]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.Jugador]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.Asociado]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.Asociado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.PCLA]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.PCLA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.Gano]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.Gano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.Perdio]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.Perdio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.TerPitText]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.TerPitText
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=63
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.VBC]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.VBC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.HA]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.HA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.HR]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.HR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.CA]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.CA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.CL]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.CL
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.BB]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.BB
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1A.SO]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1A.SO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco









[(Carpeta Totalizadores).Gano]
Carpeta=(Carpeta Totalizadores)
Clave=Gano
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).Perdio]
Carpeta=(Carpeta Totalizadores)
Clave=Perdio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).IP]
Carpeta=(Carpeta Totalizadores)
Clave=IP
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Plata

[(Carpeta Totalizadores).VBC]
Carpeta=(Carpeta Totalizadores)
Clave=VBC
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).HA]
Carpeta=(Carpeta Totalizadores)
Clave=HA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).CA]
Carpeta=(Carpeta Totalizadores)
Clave=CA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).CL]
Carpeta=(Carpeta Totalizadores)
Clave=CL
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).BB]
Carpeta=(Carpeta Totalizadores)
Clave=BB
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).SO]
Carpeta=(Carpeta Totalizadores)
Clave=SO
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).HR]
Carpeta=(Carpeta Totalizadores)
Clave=HR
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata







[(Carpeta Totalizadores).PCLA]
Carpeta=(Carpeta Totalizadores)
Clave=PCLA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Plata










[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=PCLA
PCLA=Gano
Gano=Perdio
Perdio=IP
IP=VBC
VBC=HA
HA=HR
HR=CA
CA=CL
CL=BB
BB=SO
SO=(Fin)




























[CDIVSlowEP1.ListaEnCaptura]
(Inicio)=CDIVSlowEP1A.ClaveTorneo
CDIVSlowEP1A.ClaveTorneo=CDIVSlowEP1A.Equipo
CDIVSlowEP1A.Equipo=CDIVSlowEP1A.Jugador
CDIVSlowEP1A.Jugador=CDIVSlowEP1A.Asociado
CDIVSlowEP1A.Asociado=Cte.Nombre
Cte.Nombre=CDIVSlowEP1A.PCLA
CDIVSlowEP1A.PCLA=CDIVSlowEP1A.Gano
CDIVSlowEP1A.Gano=CDIVSlowEP1A.Perdio
CDIVSlowEP1A.Perdio=CDIVSlowEP1A.TerPitText
CDIVSlowEP1A.TerPitText=CDIVSlowEP1A.VBC
CDIVSlowEP1A.VBC=CDIVSlowEP1A.HA
CDIVSlowEP1A.HA=CDIVSlowEP1A.HR
CDIVSlowEP1A.HR=CDIVSlowEP1A.CA
CDIVSlowEP1A.CA=CDIVSlowEP1A.CL
CDIVSlowEP1A.CL=CDIVSlowEP1A.BB
CDIVSlowEP1A.BB=CDIVSlowEP1A.SO
CDIVSlowEP1A.SO=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=(Fin)
