
[Forma]
Clave=CDISlowH
Icono=0
Modulos=(Todos)
Nombre=Hits Conectados
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISlowH
CarpetaPrincipal=CDISlowH
PosicionInicialIzquierda=464
PosicionInicialArriba=110
PosicionInicialAlturaCliente=509
PosicionInicialAncho=437
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Totalizadores=S
PosicionSec1=428

[CDIVSlowEB1.Columnas]
ClaveTorneo=64
Equipo=64
fecha=68
jugador=52
Jugo=35
Porcentaje=41
VB=44
C=44
H=42
h2=40
h3=44
HR=42
CP=39
K=33
BB=42
GP=25
SH=32
SF=42
br=26




[Acciones.P]
Nombre=P
Boton=6
NombreDesplegar=Preview
EnBarraHerramientas=S
Carpeta=CDIVSlowEB1
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S











[(Carpeta Totalizadores).VB]
Carpeta=(Carpeta Totalizadores)
Clave=VB
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

[(Carpeta Totalizadores).H]
Carpeta=(Carpeta Totalizadores)
Clave=H
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).H2]
Carpeta=(Carpeta Totalizadores)
Clave=H2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).H3]
Carpeta=(Carpeta Totalizadores)
Clave=H3
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

[(Carpeta Totalizadores).CP]
Carpeta=(Carpeta Totalizadores)
Clave=CP
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

[(Carpeta Totalizadores).K]
Carpeta=(Carpeta Totalizadores)
Clave=K
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).SF]
Carpeta=(Carpeta Totalizadores)
Clave=SF
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata





















[(Carpeta Totalizadores).%]
Carpeta=(Carpeta Totalizadores)
Clave=%
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata



[(Carpeta Totalizadores).JJ]
Carpeta=(Carpeta Totalizadores)
Clave=JJ
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata

[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=%
%=JJ
JJ=VB
VB=CA
CA=H
H=H2
H2=H3
H3=HR
HR=CP
CP=BB
BB=K
K=SF
SF=(Fin)














[Acciones.Enviar/Recibir Excel]
Nombre=Enviar/Recibir Excel
Boton=115
NombreDesplegar=Enviar/Recibir Excel
EnBarraHerramientas=S
Carpeta=CDIVSlowEB1
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
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
Totalizadores1=Hits Conectados
Totalizadores2=suma(CDIVSlowEB1:CDIVSlowEB1.H)
Totalizadores3=(Cantidades)
Totalizadores=S
TotAlCambiar=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Hits Conectados
CarpetaVisible=S

TotCarpetaRenglones=CDIVSlowEB1
[(Carpeta Totalizadores).Hits Conectados]
Carpeta=(Carpeta Totalizadores)
Clave=Hits Conectados
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata



















[CDIVSlowEB1.ListaEnCaptura]
(Inicio)=CDISlowH.clavetorneo
CDISlowH.clavetorneo=CDISlowH.Equipo
CDISlowH.Equipo=CDISlowH.Jugador
CDISlowH.Jugador=CDISlowH.HITS
CDISlowH.HITS=(Fin)








[CDISlowH]
Estilo=Hoja
Clave=CDISlowH
Filtros=S
OtroOrden=S
ValidarCampos=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISlowH
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaOrdenarColumnas=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaCamposAValidar=Cte.Nombre
ListaOrden=CDISlowH.HITS<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=CDISlowH.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroListasAplicaEn=CDIVSlowEB1.jugador
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
[CDISlowH.ListaEnCaptura]
(Inicio)=CDISlowH.clavetorneo
CDISlowH.clavetorneo=CDISlowH.Equipo
CDISlowH.Equipo=CDISlowH.Jugador
CDISlowH.Jugador=CDISlowH.HITS
CDISlowH.HITS=(Fin)

[CDISlowH.CDISlowH.clavetorneo]
Carpeta=CDISlowH
Clave=CDISlowH.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH.CDISlowH.Equipo]
Carpeta=CDISlowH
Clave=CDISlowH.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH.CDISlowH.Jugador]
Carpeta=CDISlowH
Clave=CDISlowH.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH.CDISlowH.HITS]
Carpeta=CDISlowH
Clave=CDISlowH.HITS
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Forma.ListaAcciones]
(Inicio)=P
P=Enviar/Recibir Excel
Enviar/Recibir Excel=(Fin)
