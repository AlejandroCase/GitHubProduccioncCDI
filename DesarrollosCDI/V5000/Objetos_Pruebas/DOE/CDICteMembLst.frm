
[Forma]
Clave=CDICteMembLst
Icono=0
Modulos=(Todos)
Nombre=Membresias
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICteMembLst
CarpetaPrincipal=CDICteMembLst
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=473
PosicionInicialArriba=96
PosicionInicialAlturaCliente=537
PosicionInicialAncho=420
ListaAcciones=Seleccionar
[CDICteMembLst]
Estilo=Hoja
Clave=CDICteMembLst
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
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
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

OtroOrden=S
BusquedaRapidaControles=S
ListaOrden=Cte.Membresia<TAB>(Decendente)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
BusquedaActualizacionManual=S
FiltroGeneral=cte.CDISocio=1 and cte.Titular=1 and cte.estatus=<T>ALTA<T>
[CDICteMembLst.Cte.Membresia]
Carpeta=CDICteMembLst
Clave=Cte.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICteMembLst.Cte.Socio]
Carpeta=CDICteMembLst
Clave=Cte.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICteMembLst.Cte.Nombre]
Carpeta=CDICteMembLst
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICteMembLst.Columnas]
Membresia=64
Socio=62
Nombre=255








[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[CDICteMembLst.ListaEnCaptura]
(Inicio)=Cte.Membresia
Cte.Membresia=Cte.Socio
Cte.Socio=Cte.Nombre
Cte.Nombre=(Fin)
