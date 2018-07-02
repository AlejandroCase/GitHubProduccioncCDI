
[Forma]
Clave=SocioSeguridad
Icono=0
Modulos=(Todos)
Nombre=Seguridad
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=SocioSeguridad
PosicionInicialIzquierda=228
PosicionInicialArriba=116
PosicionInicialAlturaCliente=498
PosicionInicialAncho=940
PosicionCol1=486
[SocioSeguridad]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Socios
Clave=SocioSeguridad
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

CarpetaVisible=S
BusquedaRapidaControles=S

FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha



ListaEnCaptura=(Lista)
FiltroEstatus=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
BusquedaRapida=S
BusquedaEnLinea=S
[SocioSeguridad.Columnas]
Nombre=184
Tipo=94
Estatus=94


Socio=70
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
Vista=Cte
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

[Imagen.Cte.RutaImagen]
Carpeta=Imagen
Clave=Cte.RutaImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Imagen.CDIImagen]
Carpeta=Imagen
Clave=CDIImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=45x30
ColorFondo=Blanco







ConScroll=S


[SocioSeguridad.Cte.Socio]
Carpeta=SocioSeguridad
Clave=Cte.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[SocioSeguridad.Cte.Nombre]
Carpeta=SocioSeguridad
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[SocioSeguridad.Cte.Tipo]
Carpeta=SocioSeguridad
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[SocioSeguridad.Cte.Estatus]
Carpeta=SocioSeguridad
Clave=Cte.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco




[Imagen.ListaEnCaptura]
(Inicio)=CDIImagen
CDIImagen=Cte.RutaImagen
Cte.RutaImagen=(Fin)


[SocioSeguridad.ListaEnCaptura]
(Inicio)=Cte.Socio
Cte.Socio=Cte.Nombre
Cte.Nombre=Cte.Tipo
Cte.Tipo=Cte.Estatus
Cte.Estatus=(Fin)

[SocioSeguridad.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BAJA
BAJA=(Fin)

[Forma.ListaCarpetas]
(Inicio)=SocioSeguridad
SocioSeguridad=Imagen
Imagen=(Fin)
