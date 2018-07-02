
[Forma]
Clave=CDIForFeits
Icono=0
Modulos=(Todos)
Nombre=Forfeits
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIForFeits
CarpetaPrincipal=CDIForFeits
PosicionInicialIzquierda=429
PosicionInicialArriba=181
PosicionInicialAlturaCliente=368
PosicionInicialAncho=507
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIForFeits]
Estilo=Hoja
Clave=CDIForFeits
Filtros=S
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIForFeits
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

ListaOrden=CDIForFeits.ForFeit<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=CDIForFeits.Clavetorneo
FiltroGrupo2=CDIForFeits.NoVuelta
FiltroGrupo3=CDIForFeits.NoJornada
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S

FiltroTodo=S
HojaOrdenarColumnas=S
[CDIForFeits.CDIForFeits.Clavetorneo]
Carpeta=CDIForFeits
Clave=CDIForFeits.Clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIForFeits.CDIForFeits.NoVuelta]
Carpeta=CDIForFeits
Clave=CDIForFeits.NoVuelta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIForFeits.CDIForFeits.Equipo]
Carpeta=CDIForFeits
Clave=CDIForFeits.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIForFeits.CDIForFeits.ForFeit]
Carpeta=CDIForFeits
Clave=CDIForFeits.ForFeit
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIForFeits.Columnas]
Clavetorneo=64
NoVuelta=64
NoJornada=64
Equipo=64
ForFeit=64


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

[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=CDIForFeits
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S








[Acciones.Forfeits]
Nombre=Forfeits
Boton=4
NombreEnBoton=S
NombreDesplegar=Forfeits
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIForfeits
ListaParametros=S
Activo=S
Visible=S











[CDIForFeits.CDIForFeits.NoJornada]
Carpeta=CDIForFeits
Clave=CDIForFeits.NoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIForFeits.ListaEnCaptura]
(Inicio)=CDIForFeits.Clavetorneo
CDIForFeits.Clavetorneo=CDIForFeits.NoVuelta
CDIForFeits.NoVuelta=CDIForFeits.NoJornada
CDIForFeits.NoJornada=CDIForFeits.Equipo
CDIForFeits.Equipo=CDIForFeits.ForFeit
CDIForFeits.ForFeit=(Fin)



[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=Forfeits
Forfeits=(Fin)
