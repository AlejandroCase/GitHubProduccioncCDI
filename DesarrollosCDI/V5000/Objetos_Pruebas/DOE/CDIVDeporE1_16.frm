
[Forma]
Clave=CDIVDeporE1_16
Icono=0
Modulos=(Todos)
Nombre=Estadisticas Individuales Por Equip(Pag. Internet Estadisiticas Individuales Equipo por Equipo)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIVDeporE1_EIExE
CarpetaPrincipal=CDIVDeporE1_EIExE
PosicionInicialIzquierda=370
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=625
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIVDeporE1_EIExE]
Estilo=Hoja
Clave=CDIVDeporE1_EIExE
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVDeporE1_16
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
FiltroGrupo1=ClaveTorneo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
OtroOrden=S
ListaOrden=Goles<TAB>(Decendente)
FiltroGrupo2=Equipo
HojaOrdenarColumnas=S
FiltroGeneral=Goles>0
[CDIVDeporE1_EIExE.ClaveTorneo]
Carpeta=CDIVDeporE1_EIExE
Clave=ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10
[CDIVDeporE1_EIExE.Equipo]
Carpeta=CDIVDeporE1_EIExE
Clave=Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVDeporE1_EIExE.JJ]
Carpeta=CDIVDeporE1_EIExE
Clave=JJ
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco









[CDIVDeporE1_EIExE.Columnas]
ClaveTorneo=83
Equipo=61
JJ=32
JG=24
JE=25
JP=27
JPD=33
GF=30
GC=30
DIF=30
Puntos=44









Jugador=64
Goles=36
AC=25
Expulsion=27
FaltasCom=26
FaltasRec=35
AG=40

[CDIVDeporE1_EIExE.Jugador]
Carpeta=CDIVDeporE1_EIExE
Clave=Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVDeporE1_EIExE.Goles]
Carpeta=CDIVDeporE1_EIExE
Clave=Goles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVDeporE1_EIExE.AC]
Carpeta=CDIVDeporE1_EIExE
Clave=AC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVDeporE1_EIExE.Expulsion]
Carpeta=CDIVDeporE1_EIExE
Clave=Expulsion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVDeporE1_EIExE.FaltasCom]
Carpeta=CDIVDeporE1_EIExE
Clave=FaltasCom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVDeporE1_EIExE.FaltasRec]
Carpeta=CDIVDeporE1_EIExE
Clave=FaltasRec
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVDeporE1_EIExE.AG]
Carpeta=CDIVDeporE1_EIExE
Clave=AG
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=1
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.CDIVDeporE1_16]
Nombre=CDIVDeporE1_16
Boton=4
NombreEnBoton=S
NombreDesplegar=Est.Individuales Equipo x Equipo
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIVDeporE1_16
ListaParametros1=CDIVDeporE1_16:ClaveTorneo
ListaParametros=S
Activo=S
Visible=S






[CDIVDeporE1_EIExE.ListaEnCaptura]
(Inicio)=ClaveTorneo
ClaveTorneo=Equipo
Equipo=Jugador
Jugador=JJ
JJ=Goles
Goles=AC
AC=Expulsion
Expulsion=FaltasCom
FaltasCom=FaltasRec
FaltasRec=AG
AG=(Fin)







[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=CDIVDeporE1_16
CDIVDeporE1_16=(Fin)
