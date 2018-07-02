
[Forma]
Clave=CDICteDatSeguridad
Icono=0
Modulos=(Todos)
Nombre=Acceso CDI Seguridad
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDICteDatSeguridad
PosicionInicialIzquierda=125
PosicionInicialArriba=41
PosicionInicialAlturaCliente=647
PosicionInicialAncho=1116
PosicionCol1=560
[CDICteDatSeguridad]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Socios
Clave=CDICteDatSeguridad
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICteDatSeguridad
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
BusquedaRapidaControles=S

FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=40
BusquedaEnLinea=S
OtroOrden=S
ListaOrden=CDICteDatSeguridad.Socio<TAB>(Acendente)
HojaColoresPorEstatus=S
[CDICteDatSeguridad.CDICteDatSeguridad.Socio]
Carpeta=CDICteDatSeguridad
Clave=CDICteDatSeguridad.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICteDatSeguridad.CDICteDatSeguridad.Nombre]
Carpeta=CDICteDatSeguridad
Clave=CDICteDatSeguridad.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICteDatSeguridad.CDICteDatSeguridad.Membresia]
Carpeta=CDICteDatSeguridad
Clave=CDICteDatSeguridad.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICteDatSeguridad.CDICteDatSeguridad.Estatus]
Carpeta=CDICteDatSeguridad
Clave=CDICteDatSeguridad.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICteDatSeguridad.CDICteDatSeguridad.Titular]
Carpeta=CDICteDatSeguridad
Clave=CDICteDatSeguridad.Titular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICteDatSeguridad.CDICteDatSeguridad.Miembros]
Carpeta=CDICteDatSeguridad
Clave=CDICteDatSeguridad.Miembros
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Imagen]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Foto
Clave=Imagen
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDICteDatSeguridad
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

[Imagen.Imagen]
Carpeta=Imagen
Clave=Imagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=55x40
ColorFondo=Blanco

ConScroll=S
[Imagen.CDICteDatSeguridad.RutaImagen]
Carpeta=Imagen
Clave=CDICteDatSeguridad.RutaImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco


[CDICteDatSeguridad.Columnas]
Socio=60
Nombre=256
Membresia=64
Estatus=47
Titular=37
Miembros=50

[Imagen.Columnas]
Imagen=69
RutaImagen=604










[Imagen.ListaEnCaptura]
(Inicio)=Imagen
Imagen=CDICteDatSeguridad.RutaImagen
CDICteDatSeguridad.RutaImagen=(Fin)



















[CDICteDatSeguridad.ListaEnCaptura]
(Inicio)=CDICteDatSeguridad.Socio
CDICteDatSeguridad.Socio=CDICteDatSeguridad.Nombre
CDICteDatSeguridad.Nombre=CDICteDatSeguridad.Membresia
CDICteDatSeguridad.Membresia=CDICteDatSeguridad.Estatus
CDICteDatSeguridad.Estatus=CDICteDatSeguridad.Titular
CDICteDatSeguridad.Titular=CDICteDatSeguridad.Miembros
CDICteDatSeguridad.Miembros=(Fin)

[CDICteDatSeguridad.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BAJA
BAJA=(Fin)



[Forma.ListaCarpetas]
(Inicio)=CDICteDatSeguridad
CDICteDatSeguridad=Imagen
Imagen=(Fin)
