
[Forma]
Clave=CDIClaveHonorJusticia
Icono=0
Modulos=(Todos)
Nombre=Clave Honor y Justicia
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
ListaAcciones=Seleccionar
PosicionInicialIzquierda=202
PosicionInicialArriba=197
PosicionInicialAlturaCliente=603
PosicionInicialAncho=876
[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIClaveHonorJusticia
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
CarpetaVisible=S




Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIClaveHonorJusticia.Tipo = <T>{Info.ABC}<T>
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=Seleccionar
GuardarAntes=S
[Lista.Columnas]
NIPCDI=131
Tipo=82
Nombre=159



Clave=64
NombreCorto=224
Socio=604
[Acciones.Seleccionar.Seleccionar]
Nombre=Seleccionar
Boton=0
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S














[Acciones.Seleccionar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Seleccionar
Seleccionar=(Fin)




[Lista.CDIClaveHonorJusticia.Tipo]
Carpeta=Lista
Clave=CDIClaveHonorJusticia.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco

[Lista.CDIClaveHonorJusticia.Clave]
Carpeta=Lista
Clave=CDIClaveHonorJusticia.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CDIClaveHonorJusticia.Nombre]
Carpeta=Lista
Clave=CDIClaveHonorJusticia.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=152
ColorFondo=Blanco

[Lista.CDIClaveHonorJusticia.NombreCorto]
Carpeta=Lista
Clave=CDIClaveHonorJusticia.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.CDIClaveHonorJusticia.NIPCDI]
Carpeta=Lista
Clave=CDIClaveHonorJusticia.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.CDIClaveHonorJusticia.Socio]
Carpeta=Lista
Clave=CDIClaveHonorJusticia.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[Lista.ListaEnCaptura]
(Inicio)=CDIClaveHonorJusticia.Tipo
CDIClaveHonorJusticia.Tipo=CDIClaveHonorJusticia.Clave
CDIClaveHonorJusticia.Clave=CDIClaveHonorJusticia.Nombre
CDIClaveHonorJusticia.Nombre=CDIClaveHonorJusticia.NombreCorto
CDIClaveHonorJusticia.NombreCorto=CDIClaveHonorJusticia.NIPCDI
CDIClaveHonorJusticia.NIPCDI=CDIClaveHonorJusticia.Socio
CDIClaveHonorJusticia.Socio=(Fin)
