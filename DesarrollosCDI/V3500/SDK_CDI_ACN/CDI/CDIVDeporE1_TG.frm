
[Forma]
Clave=CDIVDeporE1_TG
Icono=0
Modulos=(Todos)
Nombre=Tabla General
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIVTG
CarpetaPrincipal=CDIVTG
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=367
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=632
[CDIVTG]
Estilo=Hoja
Clave=CDIVTG
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVTG
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

FiltroPredefinido=S
FiltroGrupo1=ClaveTorneo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S

FiltroTodo=S
HojaOrdenarColumnas=S
[CDIVTG.ClaveTorneo]
Carpeta=CDIVTG
Clave=ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVTG.Equipo]
Carpeta=CDIVTG
Clave=Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVTG.JJ]
Carpeta=CDIVTG
Clave=JJ
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTG.JG]
Carpeta=CDIVTG
Clave=JG
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTG.JE]
Carpeta=CDIVTG
Clave=JE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTG.JP]
Carpeta=CDIVTG
Clave=JP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTG.JPD]
Carpeta=CDIVTG
Clave=JPD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTG.GF]
Carpeta=CDIVTG
Clave=GF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTG.GC]
Carpeta=CDIVTG
Clave=GC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTG.DIF]
Carpeta=CDIVTG
Clave=DIF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTG.Puntos]
Carpeta=CDIVTG
Clave=Puntos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[CDIVTG.Columnas]
ClaveTorneo=65
Equipo=64
JJ=33
JG=32
JE=32
JP=35
JPD=36
GF=28
GC=32
DIF=33
Puntos=45








[Acciones.TG]
Nombre=TG
Boton=4
NombreEnBoton=S
NombreDesplegar=Tabla General
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIVTG
Activo=S
Visible=S



ListaParametros1=CDIVTG:ClaveTorneo
ListaParametros=S









[CDIVTG.ListaEnCaptura]
(Inicio)=ClaveTorneo
ClaveTorneo=Equipo
Equipo=JJ
JJ=JG
JG=JE
JE=JP
JP=JPD
JPD=GF
GF=GC
GC=DIF
DIF=Puntos
Puntos=(Fin)



[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=TG
TG=(Fin)
