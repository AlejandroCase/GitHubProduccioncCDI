
[Forma]
Clave=CDIListaSlowpitch
Icono=0
Modulos=(Todos)
Nombre=Lista Torneos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=ListaTorneosSlowpitch
CarpetaPrincipal=ListaTorneosSlowpitch
PosicionInicialIzquierda=297
PosicionInicialArriba=208
PosicionInicialAlturaCliente=273
PosicionInicialAncho=771
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar/Aceptar

[ListaTorneos.Columnas]
Nombre=216
Deporte=72
RamaDepor=60
Fuerza=94




ClaveTorneo=65




[Acciones.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S



[ListaTorneos.ListaEnCaptura]
(Inicio)=CDICatTorneos.ClaveTorneo
CDICatTorneos.ClaveTorneo=CDICatTorneos.Nombre
CDICatTorneos.Nombre=CDICatTorneos.Deporte
CDICatTorneos.Deporte=CDICatTorneos.RamaDepor
CDICatTorneos.RamaDepor=CDICatTorneos.Fuerza
CDICatTorneos.Fuerza=(Fin)

[ListaTorneosSlowpitch]
Estilo=Hoja
Clave=ListaTorneosSlowpitch
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICatTorneos
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroGrupo1=CDICatTorneos.Deporte
FiltroGrupo2=CDICatTorneos.RamaDepor
FiltroGrupo3=CDICatTorneos.Fuerza
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=Estatus=<T>ALTA<T>  AND<BR>Deporte =<T>Slowpitch<T>
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
[ListaTorneosSlowpitch.ListaEnCaptura]
(Inicio)=CDICatTorneos.ClaveTorneo
CDICatTorneos.ClaveTorneo=CDICatTorneos.Nombre
CDICatTorneos.Nombre=CDICatTorneos.Deporte
CDICatTorneos.Deporte=CDICatTorneos.RamaDepor
CDICatTorneos.RamaDepor=CDICatTorneos.Fuerza
CDICatTorneos.Fuerza=(Fin)

[ListaTorneosSlowpitch.CDICatTorneos.ClaveTorneo]
Carpeta=ListaTorneosSlowpitch
Clave=CDICatTorneos.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[ListaTorneosSlowpitch.CDICatTorneos.Nombre]
Carpeta=ListaTorneosSlowpitch
Clave=CDICatTorneos.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ListaTorneosSlowpitch.CDICatTorneos.Deporte]
Carpeta=ListaTorneosSlowpitch
Clave=CDICatTorneos.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[ListaTorneosSlowpitch.CDICatTorneos.RamaDepor]
Carpeta=ListaTorneosSlowpitch
Clave=CDICatTorneos.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[ListaTorneosSlowpitch.CDICatTorneos.Fuerza]
Carpeta=ListaTorneosSlowpitch
Clave=CDICatTorneos.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[ListaTorneosSlowpitch.Columnas]
ClaveTorneo=65
Nombre=124
Deporte=184
RamaDepor=46
Fuerza=94
