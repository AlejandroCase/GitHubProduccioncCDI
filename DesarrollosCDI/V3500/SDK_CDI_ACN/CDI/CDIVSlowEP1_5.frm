
[Forma]
Clave=CDIVSlowEP1_5
Icono=0
Modulos=(Todos)
Nombre=Estadistica de pitcheo colectivo (Pag. Internet Bateo Colectivo)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIVSlowEP1
CarpetaPrincipal=CDIVSlowEP1
PosicionInicialIzquierda=274
PosicionInicialArriba=113
PosicionInicialAlturaCliente=504
PosicionInicialAncho=817
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
Vista=CDIVSlowEP1E1
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

Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CDIVSlowEP1E1.ClaveTorneo
FiltroGrupo2=CDIVSlowEP1E1.Equipo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)














OtroOrden=S
ListaOrden=CDIVSlowEP1E1.PCLA<TAB>(Decendente)
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
JJ=27
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




EspacioPrevio=S
Activo=S
Visible=S
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
Totalizadores1=PCLA<BR>Gano<BR>Perdio<BR>IP<BR>VBC<BR>HA<BR>CA<BR>CL<BR>BB<BR>SO<BR>HR<BR>JJ
Totalizadores2=suma(CDIVSlowEP1E1:CDIVSlowEP1E1.PCLA)<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.gano)<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.Perdio)<BR>sql(<T>xpCDIIpText :nI<T>,suma(CDIVSlowEP1E1:CDIVSlowEP1E1.TerciosPitchados))<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.VBC)<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.HA)<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.CA)<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.CL)<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.BB)<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.SO)<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.HR)<BR>SUMA(CDIVSlowEP1E1:CDIVSlowEP1E1.JJ)
Totalizadores3=#0.000<BR>(Cantidades)<BR>(Cantidades)<BR><BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)<BR>(Cantidades)
Totalizadores=S
TotCarpetaRenglones=CDIVSlowEP1
TotAlCambiar=S
CampoColorLetras=Negro
CampoColorFondo=Plata

CarpetaVisible=S












ListaEnCaptura=(Lista)
TotExpresionesEnSumas=S

[CDIVSlowEP1.CDIVSlowEP1E1.ClaveTorneo]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.Equipo]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[CDIVSlowEP1.CDIVSlowEP1E1.PCLA]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.PCLA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.Gano]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.Gano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.Perdio]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.Perdio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.TerPitText]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.TerPitText
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=63
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.VBC]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.VBC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.HA]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.HA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.HR]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.HR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.CA]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.CA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.CL]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.CL
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.BB]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.BB
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVSlowEP1.CDIVSlowEP1E1.SO]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.SO
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












[CDIVSlowEP1.CDIVSlowEP1E1.JJ]
Carpeta=CDIVSlowEP1
Clave=CDIVSlowEP1E1.JJ
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[(Carpeta Totalizadores).JJ]
Carpeta=(Carpeta Totalizadores)
Clave=JJ
Editar=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata






[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=PCLA
PCLA=JJ
JJ=Gano
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






[Acciones.PitcheoColectivo]
Nombre=PitcheoColectivo
Boton=4
NombreEnBoton=S
NombreDesplegar=Pitcheo Colectivo
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIVSlowEP1_5
ListaParametros=S
Activo=S
Visible=S



ListaParametros1=CDIVSlowEP1E1:CDIVSlowEP1E1.ClaveTorneo









EspacioPrevio=S


[CDIVSlowEP1.ListaEnCaptura]
(Inicio)=CDIVSlowEP1E1.ClaveTorneo
CDIVSlowEP1E1.ClaveTorneo=CDIVSlowEP1E1.Equipo
CDIVSlowEP1E1.Equipo=CDIVSlowEP1E1.PCLA
CDIVSlowEP1E1.PCLA=CDIVSlowEP1E1.JJ
CDIVSlowEP1E1.JJ=CDIVSlowEP1E1.Gano
CDIVSlowEP1E1.Gano=CDIVSlowEP1E1.Perdio
CDIVSlowEP1E1.Perdio=CDIVSlowEP1E1.TerPitText
CDIVSlowEP1E1.TerPitText=CDIVSlowEP1E1.VBC
CDIVSlowEP1E1.VBC=CDIVSlowEP1E1.HA
CDIVSlowEP1E1.HA=CDIVSlowEP1E1.HR
CDIVSlowEP1E1.HR=CDIVSlowEP1E1.CA
CDIVSlowEP1E1.CA=CDIVSlowEP1E1.CL
CDIVSlowEP1E1.CL=CDIVSlowEP1E1.BB
CDIVSlowEP1E1.BB=CDIVSlowEP1E1.SO
CDIVSlowEP1E1.SO=(Fin)




















[Acciones.CDIVSlowEPEqxEq]
Nombre=CDIVSlowEPEqxEq
Boton=4
NombreEnBoton=S
NombreDesplegar=Pitcheo Equipo por Equipo
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIVSlowEPEqxEq
ListaParametros1=CDIVSlowEP1E1:CDIVSlowEP1E1.ClaveTorneo
ListaParametros=S
Activo=S
Visible=S



[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=PitcheoColectivo
PitcheoColectivo=CDIVSlowEPEqxEq
CDIVSlowEPEqxEq=(Fin)
