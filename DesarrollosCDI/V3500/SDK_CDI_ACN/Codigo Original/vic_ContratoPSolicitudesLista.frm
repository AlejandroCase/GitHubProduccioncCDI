
[Forma]
Clave=vic_ContratoPSolicitudesLista
Icono=4
Modulos=(Todos)
Nombre=Solicitudes de Trámites

ListaCarpetas=vic_ContratoPSolicitudes
CarpetaPrincipal=vic_ContratoPSolicitudes
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
PosicionInicialIzquierda=204
PosicionInicialArriba=273
PosicionInicialAlturaCliente=284
PosicionInicialAncho=744
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
[vic_ContratoPSolicitudes]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Plantillas
Clave=vic_ContratoPSolicitudes
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoPSolicitudes
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Plantilla<T>
ElementosPorPagina=200

Filtros=S
IconosNombre=vic_ContratoPSolicitudes:vic_ContratoPSolicitudes.NombreCorto
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=vic_ContratoPSolicitudes.Tipo=<T>Trámites<T>
FiltroRespetar=S
FiltroTipo=General
[vic_ContratoPSolicitudes.vic_ContratoPSolicitudes.Nombre]
Carpeta=vic_ContratoPSolicitudes
Clave=vic_ContratoPSolicitudes.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro


[vic_ContratoPSolicitudes.vic_ContratoPSolicitudes.Estatus]
Carpeta=vic_ContratoPSolicitudes
Clave=vic_ContratoPSolicitudes.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

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

[vic_ContratoPSolicitudes.Columnas]
Nombre=304
NombreCorto=124
Estatus=94

0=157
1=230
2=140
3=-2

[vic_ContratoPSolicitudes.vic_ContratoPSolicitudes.Tipo]
Carpeta=vic_ContratoPSolicitudes
Clave=vic_ContratoPSolicitudes.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro



[vic_ContratoPSolicitudes.ListaEnCaptura]
(Inicio)=vic_ContratoPSolicitudes.Nombre
vic_ContratoPSolicitudes.Nombre=vic_ContratoPSolicitudes.Tipo
vic_ContratoPSolicitudes.Tipo=vic_ContratoPSolicitudes.Estatus
vic_ContratoPSolicitudes.Estatus=(Fin)
