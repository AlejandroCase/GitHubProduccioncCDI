
[Forma]
Clave=CDITorneoResSlo
Icono=0
Modulos=(Todos)
Nombre=Registro Resultados Slow
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDITorneoResSlo
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1319
PosicionCol1=606
PosicionSec1=227
PosicionCol2=606
PosicionSec2=510
PosicionCol3=606
Comentarios=CDITorneoResSlo:CDITorneoResSlo.ClaveTorneo+<T> V:<T>+CDITorneoResSlo:CDITorneoResSlo.NoVuelta+<T> J:<T>+CDITorneoResSlo:CDITorneoResSlo.NoJornada+<T> Partido: <T>+CDITorneoResSlo:CDITorneoResSlo.EquipoLocal+<T> Vs <T>+CDITorneoResSlo:CDITorneoResSlo.EquipoVisitante+<T>...<T>+CDITorneoResSlo:CDITorneoResSlo.Id
ExpresionesAlMostrar=//asigna(info.id,1)
BarraAyuda=S
[CDITorneoResSlo]
Estilo=Ficha
Clave=CDITorneoResSlo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITorneoResSlo
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S




Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CondicionEdicion=CDITorneoResSlo:CDITorneoResSlo.Estatus<><T>CONCLUIDO<T>
AlinearTodaCarpeta=S
FiltroGeneral=Id={info.id}
[CDITorneoResSlo.CDITorneoResSlo.EquipoLocal]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.EquipoLocal
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDITorneoResSlo.CDITorneoResSlo.ForfeitL]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.ForfeitL
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDITorneoResSlo.CDITorneoResSlo.EquipoVisitante]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.EquipoVisitante
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=N
[CDITorneoResSlo.CDITorneoResSlo.ForfeitV]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.ForfeitV
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Visible=S






ActivoCondicion=CDITorneoResSlo:CDITorneoResSlo.Estatus<><T>CONCLUIDO<T>
[CDITorneoResSloM]
Estilo=Ficha
Clave=CDITorneoResSloM
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDITorneoResSlo
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CondicionEdicion=(CDITorneoResSlo:CDITorneoResSlo.Estatus<><T>CONCLUIDO<T>) Y (CDITorneoResSlo:CDITorneoResSlo.ForfeitL=FALSO) y (CDITorneoResSlo:CDITorneoResSlo.ForfeitV=FALSO)
FiltroGeneral=Id={info.id}
[CDITorneoResSloM.CDITorneoResSlo.LE1]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.LE2]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LE3]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE3
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LE4]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE4
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LE5]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE5
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LE6]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE6
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LE7]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE7
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LE8]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE8
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LE9]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE9
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco







Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LE10]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE10
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





Tamano=3

Pegado=S
[CDITorneoResSloM.Columnas]
LE1=64
LE2=64
LE3=64
LE4=64
LE5=64
LE6=64
LE7=64
LE8=64
LE9=64
LE10=64


[CDITorneoResSloM.CDITorneoResSlo.LC]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LC
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LH]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LH
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.LE]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.LE
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3

Pegado=S
[CDITorneoResSloM.CDITorneoResSlo.VE1]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE2]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE3]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE3
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE4]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE4
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE5]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE5
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE6]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE6
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE7]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE7
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE8]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE8
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE9]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE9
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE10]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE10
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VC]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VC
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VH]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VH
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3
[CDITorneoResSloM.CDITorneoResSlo.VE]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.VE
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=3






[CDITorneoResSloM.CDITorneoResSlo.EquipoLocal]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.EquipoLocal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDITorneoResSloM.CDITorneoResSlo.EquipoVisitante]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.EquipoVisitante
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco













[CDITorneoResSlo.CDITorneoResSlo.HoraInicio]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.HoraInicio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

Pegado=S
[CDITorneoResSlo.CDITorneoResSlo.HoraTermino]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.HoraTermino
Editar=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco








Pegado=S
[CDIslowresPL]
Estilo=Hoja
Pestana=S
Clave=CDIslowresPL
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C2
Vista=CDIslowresPL
Fuente={Tahoma, 8, Negro, [Negritas]}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
PestanaOtroNombre=S
PestanaNombre=Pitcher Local
ValidarCampos=S
ListaCamposAValidar=Nombrejugador
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CondicionEdicion=(CDITorneoResSlo:CDITorneoResSlo.Estatus<><T>CONCLUIDO<T>) y (CDITorneoResSlo:CDITorneoResSlo.ForfeitL=FALSO)<BR>y (CDITorneoResSlo:CDITorneoResSlo.ForfeitV=FALSO)<BR>y (CDITorneoResSlo:CDITorneoResSlo.ForfeitAL=FALSO)
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
ConFuenteEspecial=S
HojaMostrarSeleccionColoresEsp=S
FiltroGeneral=Id={info.id}
[CDIslowresPL.CDIslowresPL.Jugador]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.Jugador
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[CDIslowresPL.CDIslowresPL.H]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.H
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.HR]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.HR
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.VB]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.VB
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.K]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.K
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.BB]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.BB
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.GP]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.GP
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.WP]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.WP
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.BK]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.BK
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.CA]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.CA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.CL]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.CL
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPL.CDIslowresPL.IP]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.IP
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco


Tamano=3
[CDIslowresPV]
Estilo=Hoja
Pestana=S
Clave=CDIslowresPV
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C1
Vista=CDIslowresPV
Fuente={Tahoma, 8, Negro, [Negritas]}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
PestanaOtroNombre=S
PestanaNombre=Pitcher Visitante
ValidarCampos=S
ListaCamposAValidar=Nombrejugador
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CondicionEdicion=(CDITorneoResSlo:CDITorneoResSlo.Estatus<><T>CONCLUIDO<T>) y (CDITorneoResSlo:CDITorneoResSlo.ForfeitL=FALSO)<BR>y (CDITorneoResSlo:CDITorneoResSlo.ForfeitV=FALSO)<BR>y (CDITorneoResSlo:CDITorneoResSlo.ForfeitAV=FALSO)
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
ConFuenteEspecial=S
HojaMostrarSeleccionColoresEsp=S
FiltroGeneral=Id={info.id}
[CDIslowresPV.CDIslowresPV.Jugador]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.Jugador
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=3
ColorFondo=Blanco



[CDIslowresPV.CDIslowresPV.H]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.H
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.HR]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.HR
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.VB]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.VB
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.K]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.K
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.BB]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.BB
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.GP]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.GP
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.WP]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.WP
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.BK]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.BK
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.CA]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.CA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.CL]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.CL
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3
[CDIslowresPV.CDIslowresPV.IP]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.IP
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=3

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
[CDIslowresL]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Bateo Local
Clave=CDIslowresL
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIslowresL
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

ValidarCampos=S
ListaCamposAValidar=NombreJugador
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CondicionEdicion=(CDITorneoResSlo:CDITorneoResSlo.Estatus<><T>CONCLUIDO<T>) Y (CDITorneoResSlo:CDITorneoResSlo.ForfeitL=FALSO)<BR>y (CDITorneoResSlo:CDITorneoResSlo.ForfeitV=FALSO)<BR>y (CDITorneoResSlo:CDITorneoResSlo.ForfeitAL=FALSO)
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
FiltroGeneral=Id={info.id}
[CDIslowresL.CDIslowresL.Jugador]
Carpeta=CDIslowresL
Clave=CDIslowresL.Jugador
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.VB]
Carpeta=CDIslowresL
Clave=CDIslowresL.VB
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.C]
Carpeta=CDIslowresL
Clave=CDIslowresL.C
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.H]
Carpeta=CDIslowresL
Clave=CDIslowresL.H
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.H2]
Carpeta=CDIslowresL
Clave=CDIslowresL.H2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.H3]
Carpeta=CDIslowresL
Clave=CDIslowresL.H3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.HR]
Carpeta=CDIslowresL
Clave=CDIslowresL.HR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.CP]
Carpeta=CDIslowresL
Clave=CDIslowresL.CP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.K]
Carpeta=CDIslowresL
Clave=CDIslowresL.K
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.BB]
Carpeta=CDIslowresL
Clave=CDIslowresL.BB
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.GP]
Carpeta=CDIslowresL
Clave=CDIslowresL.GP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.SH]
Carpeta=CDIslowresL
Clave=CDIslowresL.SH
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.SF]
Carpeta=CDIslowresL
Clave=CDIslowresL.SF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.BR]
Carpeta=CDIslowresL
Clave=CDIslowresL.BR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.Amonestado]
Carpeta=CDIslowresL
Clave=CDIslowresL.Amonestado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresL.CDIslowresL.Expulsado]
Carpeta=CDIslowresL
Clave=CDIslowresL.Expulsado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIslowresV]
Estilo=Hoja
Pestana=S
Clave=CDIslowresV
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=CDIslowresV
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Bateo Visitante

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
ValidarCampos=S
ListaCamposAValidar=NombreJugador
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CondicionEdicion=(CDITorneoResSlo:CDITorneoResSlo.Estatus<><T>CONCLUIDO<T>) y (CDITorneoResSlo:CDITorneoResSlo.ForfeitL=FALSO)<BR>y (CDITorneoResSlo:CDITorneoResSlo.ForfeitAV=FALSO)
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
FiltroGeneral=Id={info.id}
[CDIslowresV.CDIslowresV.Jugador]
Carpeta=CDIslowresV
Clave=CDIslowresV.Jugador
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.VB]
Carpeta=CDIslowresV
Clave=CDIslowresV.VB
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.C]
Carpeta=CDIslowresV
Clave=CDIslowresV.C
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.H]
Carpeta=CDIslowresV
Clave=CDIslowresV.H
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.H2]
Carpeta=CDIslowresV
Clave=CDIslowresV.H2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.H3]
Carpeta=CDIslowresV
Clave=CDIslowresV.H3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.HR]
Carpeta=CDIslowresV
Clave=CDIslowresV.HR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.CP]
Carpeta=CDIslowresV
Clave=CDIslowresV.CP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.K]
Carpeta=CDIslowresV
Clave=CDIslowresV.K
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.BB]
Carpeta=CDIslowresV
Clave=CDIslowresV.BB
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.GP]
Carpeta=CDIslowresV
Clave=CDIslowresV.GP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.SH]
Carpeta=CDIslowresV
Clave=CDIslowresV.SH
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.SF]
Carpeta=CDIslowresV
Clave=CDIslowresV.SF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.BR]
Carpeta=CDIslowresV
Clave=CDIslowresV.BR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.Amonestado]
Carpeta=CDIslowresV
Clave=CDIslowresV.Amonestado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresV.CDIslowresV.Expulsado]
Carpeta=CDIslowresV
Clave=CDIslowresV.Expulsado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIslowresL.Columnas]
Jugador=64
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



Jugo=40
Asociado=10
[CDIslowresV.Columnas]
Jugador=64
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










Jugo=39


Asociado=10
[CDIslowresL.CDIslowresL.Jugo]
Carpeta=CDIslowresL
Clave=CDIslowresL.Jugo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIslowresV.CDIslowresV.Jugo]
Carpeta=CDIslowresV
Clave=CDIslowresV.Jugo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco













[CDITorneoResSlo.CDITorneoResSlo.Umpire1]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.Umpire1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDITorneoResSlo.CDITorneoResSlo.Umpire2]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.Umpire2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDITorneoResSlo.CDITorneoResSlo.Anotador]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.Anotador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDITorneoResSlo.CDITorneoResSlo.Fecha]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.Fecha
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco













Tamano=13
Pegado=S
[CDITorneoResSlo.CDITorneoResSlo.ClaveTorneo]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.ClaveTorneo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDITorneoResSlo.CDITorneoResSlo.NoVuelta]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.NoVuelta
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDITorneoResSlo.CDITorneoResSlo.NoJornada]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.NoJornada
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco



[CDICatTorneosLista.Columnas]
ClaveTorneo=82
Nombre=124
FechaInicio=94
FechaFin=94
Deporte=184
RamaDepor=46
Fuerza=94







[CDITorneoResSlo.NombreTorneo]
Carpeta=CDITorneoResSlo
Clave=NombreTorneo
Editar=N
ValidaNombre=S
3D=S
Tamano=45
ColorFondo=Blanco

Pegado=S







[CDIslowresL.CDIslowresL.Asociado]
Carpeta=CDIslowresL
Clave=CDIslowresL.Asociado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIslowresPV.CDIslowresPV.Asociado]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.Asociado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresPV.CDIslowresPV.Jugo]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.Jugo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIslowresV.CDIslowresV.Asociado]
Carpeta=CDIslowresV
Clave=CDIslowresV.Asociado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIslowresPL.CDIslowresPL.Asociado]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.Asociado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIslowresPL.CDIslowresPL.Jugo]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.Jugo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






















[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreEnBoton=S
NombreDesplegar=Actualizar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
Antes=S
Visible=S







ClaveAccion=Actualizar Vista




























DespuesGuardar=S


























EspacioPrevio=S
ActivoCondicion=CDITorneoResSlo:CDITorneoResSlo.Estatus<><T>CONCLUIDO<T>
AntesExpresiones=EjecutarSQL(<T>xpCDIActTotSlow :nI<T>,CDITorneoResSlo:CDITorneoResSlo.Id)<BR>ActualizarForma
[Acciones.Expresion]
Nombre=Expresion
Boton=7
NombreDesplegar=&Afectar
EnBarraHerramientas=S
TipoAccion=Controles Captura
Visible=S





















NombreEnBoton=S
EspacioPrevio=S
ClaveAccion=Actualizar Forma
Antes=S



ActivoCondicion=CDITorneoResSlo:CDITorneoResSlo.Estatus<><T>CONCLUIDO<T>
AntesExpresiones=GuardarCambios<BR>Procesarsql(<T>xpCDIAfecTotSlow :nI<T>,CDITorneoResSlo:CDITorneoResSlo.Id)
[CDIslowresPL.CDIslowresPL.GPS]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.GPS
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDIslowresPL.CDIslowresPL.Tercio]
Carpeta=CDIslowresPL
Clave=CDIslowresPL.Tercio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=3
ColorFondo=Blanco






[CDIslowresPV.CDIslowresPV.GPS]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.GPS
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDIslowresPV.CDIslowresPV.Tercio]
Carpeta=CDIslowresPV
Clave=CDIslowresPV.Tercio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=3
ColorFondo=Blanco







[CDITorneoResSlo.CDITorneoResSlo.JugoLocal]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.JugoLocal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDITorneoResSlo.CDITorneoResSlo.JugoVisitante]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.JugoVisitante
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco



Pegado=S



















[Acciones.Clear]
Nombre=Clear
Boton=40
NombreEnBoton=S
NombreDesplegar=Limpiar Registro
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
Activo=S
Visible=S





ClaveAccion=Actualizar Forma
Antes=S




AntesExpresiones=ASigna(Info.id,sql(<T>xpCDIResPartClear :nI, :nRi<T>,CDITorneoResSlo:CDITorneoResSlo.IdJornadaEnc,CDITorneoResSlo:CDITorneoResSlo.RenglonIDJornadaEnc))<BR>ActualizarForma































[CDITorneoResSloM.ListaEnCaptura]
(Inicio)=CDITorneoResSlo.EquipoLocal
CDITorneoResSlo.EquipoLocal=CDITorneoResSlo.LE1
CDITorneoResSlo.LE1=CDITorneoResSlo.LE2
CDITorneoResSlo.LE2=CDITorneoResSlo.LE3
CDITorneoResSlo.LE3=CDITorneoResSlo.LE4
CDITorneoResSlo.LE4=CDITorneoResSlo.LE5
CDITorneoResSlo.LE5=CDITorneoResSlo.LE6
CDITorneoResSlo.LE6=CDITorneoResSlo.LE7
CDITorneoResSlo.LE7=CDITorneoResSlo.LE8
CDITorneoResSlo.LE8=CDITorneoResSlo.LE9
CDITorneoResSlo.LE9=CDITorneoResSlo.LE10
CDITorneoResSlo.LE10=CDITorneoResSlo.LC
CDITorneoResSlo.LC=CDITorneoResSlo.LH
CDITorneoResSlo.LH=CDITorneoResSlo.LE
CDITorneoResSlo.LE=CDITorneoResSlo.EquipoVisitante
CDITorneoResSlo.EquipoVisitante=CDITorneoResSlo.VE1
CDITorneoResSlo.VE1=CDITorneoResSlo.VE2
CDITorneoResSlo.VE2=CDITorneoResSlo.VE3
CDITorneoResSlo.VE3=CDITorneoResSlo.VE4
CDITorneoResSlo.VE4=CDITorneoResSlo.VE5
CDITorneoResSlo.VE5=CDITorneoResSlo.VE6
CDITorneoResSlo.VE6=CDITorneoResSlo.VE7
CDITorneoResSlo.VE7=CDITorneoResSlo.VE8
CDITorneoResSlo.VE8=CDITorneoResSlo.VE9
CDITorneoResSlo.VE9=CDITorneoResSlo.VE10
CDITorneoResSlo.VE10=CDITorneoResSlo.VC
CDITorneoResSlo.VC=CDITorneoResSlo.VH
CDITorneoResSlo.VH=CDITorneoResSlo.VE
CDITorneoResSlo.VE=CDITorneoResSlo.InnJug
CDITorneoResSlo.InnJug=(Fin)

[CDITorneoResSloM.CDITorneoResSlo.InnJug]
Carpeta=CDITorneoResSloM
Clave=CDITorneoResSlo.InnJug
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Acciones.ActualizaJugadores]
Nombre=ActualizaJugadores
Boton=81
NombreEnBoton=S
NombreDesplegar=Actualiza Jugadores
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S
Visible=S



ClaveAccion=Actualizar Forma




EspacioPrevio=S
Antes=S






AntesExpresiones=ASigna(Info.id,sql(<T>xpCDIResPartActJugadores :nI, :nRi<T>,CDITorneoResSlo:CDITorneoResSlo.IdJornadaEnc,CDITorneoResSlo:CDITorneoResSlo.RenglonIDJornadaEnc))<BR>ActualizarForma









[CDITorneoResSlo.CDITorneoResSlo.ForfeitAL]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.ForfeitAL
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSlo.CDITorneoResSlo.ForfeitAV]
Carpeta=CDITorneoResSlo
Clave=CDITorneoResSlo.ForfeitAV
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDITorneoResSlo.ListaEnCaptura]
(Inicio)=CDITorneoResSlo.ClaveTorneo
CDITorneoResSlo.ClaveTorneo=NombreTorneo
NombreTorneo=CDITorneoResSlo.NoVuelta
CDITorneoResSlo.NoVuelta=CDITorneoResSlo.NoJornada
CDITorneoResSlo.NoJornada=CDITorneoResSlo.Fecha
CDITorneoResSlo.Fecha=CDITorneoResSlo.HoraInicio
CDITorneoResSlo.HoraInicio=CDITorneoResSlo.HoraTermino
CDITorneoResSlo.HoraTermino=CDITorneoResSlo.EquipoLocal
CDITorneoResSlo.EquipoLocal=CDITorneoResSlo.JugoLocal
CDITorneoResSlo.JugoLocal=CDITorneoResSlo.ForfeitL
CDITorneoResSlo.ForfeitL=CDITorneoResSlo.ForfeitAL
CDITorneoResSlo.ForfeitAL=CDITorneoResSlo.EquipoVisitante
CDITorneoResSlo.EquipoVisitante=CDITorneoResSlo.JugoVisitante
CDITorneoResSlo.JugoVisitante=CDITorneoResSlo.ForfeitV
CDITorneoResSlo.ForfeitV=CDITorneoResSlo.ForfeitAV
CDITorneoResSlo.ForfeitAV=CDITorneoResSlo.Umpire1
CDITorneoResSlo.Umpire1=CDITorneoResSlo.Umpire2
CDITorneoResSlo.Umpire2=CDITorneoResSlo.Anotador
CDITorneoResSlo.Anotador=(Fin)








[CDIslowresL.ListaEnCaptura]
(Inicio)=CDIslowresL.Jugador
CDIslowresL.Jugador=CDIslowresL.Asociado
CDIslowresL.Asociado=CDIslowresL.Jugo
CDIslowresL.Jugo=CDIslowresL.VB
CDIslowresL.VB=CDIslowresL.C
CDIslowresL.C=CDIslowresL.H
CDIslowresL.H=CDIslowresL.H2
CDIslowresL.H2=CDIslowresL.H3
CDIslowresL.H3=CDIslowresL.HR
CDIslowresL.HR=CDIslowresL.CP
CDIslowresL.CP=CDIslowresL.K
CDIslowresL.K=CDIslowresL.BB
CDIslowresL.BB=CDIslowresL.GP
CDIslowresL.GP=CDIslowresL.SH
CDIslowresL.SH=CDIslowresL.SF
CDIslowresL.SF=CDIslowresL.BR
CDIslowresL.BR=CDIslowresL.Amonestado
CDIslowresL.Amonestado=CDIslowresL.Expulsado
CDIslowresL.Expulsado=(Fin)

[CDIslowresPL.ListaEnCaptura]
(Inicio)=CDIslowresPL.Jugador
CDIslowresPL.Jugador=CDIslowresPL.Asociado
CDIslowresPL.Asociado=CDIslowresPL.Jugo
CDIslowresPL.Jugo=CDIslowresPL.GPS
CDIslowresPL.GPS=CDIslowresPL.H
CDIslowresPL.H=CDIslowresPL.HR
CDIslowresPL.HR=CDIslowresPL.VB
CDIslowresPL.VB=CDIslowresPL.K
CDIslowresPL.K=CDIslowresPL.BB
CDIslowresPL.BB=CDIslowresPL.GP
CDIslowresPL.GP=CDIslowresPL.WP
CDIslowresPL.WP=CDIslowresPL.BK
CDIslowresPL.BK=CDIslowresPL.CA
CDIslowresPL.CA=CDIslowresPL.CL
CDIslowresPL.CL=CDIslowresPL.IP
CDIslowresPL.IP=CDIslowresPL.Tercio
CDIslowresPL.Tercio=(Fin)

[CDIslowresPV.ListaEnCaptura]
(Inicio)=CDIslowresPV.Jugador
CDIslowresPV.Jugador=CDIslowresPV.Asociado
CDIslowresPV.Asociado=CDIslowresPV.Jugo
CDIslowresPV.Jugo=CDIslowresPV.GPS
CDIslowresPV.GPS=CDIslowresPV.H
CDIslowresPV.H=CDIslowresPV.HR
CDIslowresPV.HR=CDIslowresPV.VB
CDIslowresPV.VB=CDIslowresPV.K
CDIslowresPV.K=CDIslowresPV.BB
CDIslowresPV.BB=CDIslowresPV.GP
CDIslowresPV.GP=CDIslowresPV.WP
CDIslowresPV.WP=CDIslowresPV.BK
CDIslowresPV.BK=CDIslowresPV.CA
CDIslowresPV.CA=CDIslowresPV.CL
CDIslowresPV.CL=CDIslowresPV.IP
CDIslowresPV.IP=CDIslowresPV.Tercio
CDIslowresPV.Tercio=(Fin)

[CDIslowresV.ListaEnCaptura]
(Inicio)=CDIslowresV.Jugador
CDIslowresV.Jugador=CDIslowresV.Asociado
CDIslowresV.Asociado=CDIslowresV.Jugo
CDIslowresV.Jugo=CDIslowresV.VB
CDIslowresV.VB=CDIslowresV.C
CDIslowresV.C=CDIslowresV.H
CDIslowresV.H=CDIslowresV.H2
CDIslowresV.H2=CDIslowresV.H3
CDIslowresV.H3=CDIslowresV.HR
CDIslowresV.HR=CDIslowresV.CP
CDIslowresV.CP=CDIslowresV.K
CDIslowresV.K=CDIslowresV.BB
CDIslowresV.BB=CDIslowresV.GP
CDIslowresV.GP=CDIslowresV.SH
CDIslowresV.SH=CDIslowresV.SF
CDIslowresV.SF=CDIslowresV.BR
CDIslowresV.BR=CDIslowresV.Amonestado
CDIslowresV.Amonestado=CDIslowresV.Expulsado
CDIslowresV.Expulsado=(Fin)







[Forma.ListaCarpetas]
(Inicio)=CDITorneoResSlo
CDITorneoResSlo=CDITorneoResSloM
CDITorneoResSloM=CDIslowresL
CDIslowresL=CDIslowresPV
CDIslowresPV=CDIslowresV
CDIslowresV=CDIslowresPL
CDIslowresPL=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Actualizar
Actualizar=Expresion
Expresion=Clear
Clear=ActualizaJugadores
ActualizaJugadores=(Fin)
