[Forma]
Clave=vic_AreaLista
Icono=6
Modulos=(Todos)
Nombre=Areas
MovModulo=(Todos)
ListaCarpetas=Area
CarpetaPrincipal=Area
PosicionInicialAlturaCliente=273
PosicionInicialAncho=706
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=159
PosicionInicialArriba=230
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
Comentarios=<T>Inmueble: <T> & Info.Inmueble
[Area]
Estilo=Iconos
Clave=Area
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_AreaA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Areas
IconosSubTitulo=<T>Area<T>

Filtros=S
IconosNombre=vic_AreaA:vic_Area.Area
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=vic_Area.Inmueble=<T>{Info.Inmueble}<T>
FiltroRespetar=S
FiltroTipo=General
[Area.vic_Area.Nombre]
Carpeta=Area
Clave=vic_Area.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco
ColorFuente=Negro
[Area.Columnas]
0=90
1=198


2=106
3=-2
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S


[Area.vic_Area.Inmueble]
Carpeta=Area
Clave=vic_Area.Inmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro




[Area.NombreInmueble]
Carpeta=Area
Clave=NombreInmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Area.ListaEnCaptura]
(Inicio)=vic_Area.Nombre
vic_Area.Nombre=vic_Area.Inmueble
vic_Area.Inmueble=NombreInmueble
NombreInmueble=(Fin)
