
[Forma]
Clave=CDICtrlEquipoLista
Icono=0
Modulos=(Todos)
Nombre=Lista Equipos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICtrlEquipoLista
CarpetaPrincipal=CDICtrlEquipoLista
PosicionInicialIzquierda=230
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=906
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar/Aceptar
MovModulo=(Todos)
[CDICtrlEquipoLista]
Estilo=Hoja
Clave=CDICtrlEquipoLista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICtrlEquipo
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
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroGrupo1=CDICtrlEquipo.Deporte
FiltroGrupo2=CDICtrlEquipo.RamaDepor
FiltroGrupo3=CDICtrlEquipo.Fuerza
FiltroTodo=S
RefrescarAlEntrar=S
FiltroGeneral=Mov=<T>Registro Equipo<T><BR> and<BR>Deporte=<T>{Info.CDIDeporte}<T><BR>and RamaDepor=<T>{Info.CDIRamaDEporte}<T><BR>and Fuerza=<T>{Info.CDIFuerzaDEporte}<T>
[CDICtrlEquipoLista.CDICtrlEquipo.Nombre]
Carpeta=CDICtrlEquipoLista
Clave=CDICtrlEquipo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICtrlEquipoLista.CDICtrlEquipo.CapitanSocio]
Carpeta=CDICtrlEquipoLista
Clave=CDICtrlEquipo.CapitanSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICtrlEquipoLista.CDICtrlEquipo.Deporte]
Carpeta=CDICtrlEquipoLista
Clave=CDICtrlEquipo.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDICtrlEquipoLista.CDICtrlEquipo.RamaDepor]
Carpeta=CDICtrlEquipoLista
Clave=CDICtrlEquipo.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDICtrlEquipoLista.CDICtrlEquipo.Fuerza]
Carpeta=CDICtrlEquipoLista
Clave=CDICtrlEquipo.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICtrlEquipoLista.Columnas]
Nombre=190
CapitanSocio=64
Deporte=70
RamaDepor=46
Fuerza=94



Nombre_1=184

Clave=64
[CDICtrlEquipoLista.Cte.Nombre]
Carpeta=CDICtrlEquipoLista
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco










[CDICtrlEquipoLista.CDICtrlEquipo.Clave]
Carpeta=CDICtrlEquipoLista
Clave=CDICtrlEquipo.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

























[CDICtrlEquipoLista.ListaEnCaptura]
(Inicio)=CDICtrlEquipo.Clave
CDICtrlEquipo.Clave=CDICtrlEquipo.Nombre
CDICtrlEquipo.Nombre=CDICtrlEquipo.CapitanSocio
CDICtrlEquipo.CapitanSocio=Cte.Nombre
Cte.Nombre=CDICtrlEquipo.Deporte
CDICtrlEquipo.Deporte=CDICtrlEquipo.RamaDepor
CDICtrlEquipo.RamaDepor=CDICtrlEquipo.Fuerza
CDICtrlEquipo.Fuerza=(Fin)
