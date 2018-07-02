
[Forma]
Clave=vic_PlantillaTareasLista
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Plantillas de Tareas
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=238
PosicionInicialArriba=278
PosicionInicialAlturaCliente=273
PosicionInicialAncho=676
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=Seleccionar
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_PlantillaTareas
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
OtroOrden=S

ListaOrden=vic_PlantillaTareas.ID<TAB>(Acendente)
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Plantilla<T>
ElementosPorPagina=200

PestanaOtroNombre=S
PestanaNombre=Plantillas
IconosConPaginas=S
Filtros=S
IconosNombre=<T>Plantilla <T> +vic_PlantillaTareas:vic_PlantillaTareas.ID
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=vic_PlantillaTareas.Aplica=<T>{Info.Aplica}<T>
FiltroRespetar=S
FiltroTipo=General
[Lista.vic_PlantillaTareas.Aplica]
Carpeta=Lista
Clave=vic_PlantillaTareas.Aplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_PlantillaTareas.Estatus]
Carpeta=Lista
Clave=vic_PlantillaTareas.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
ID=92
Aplica=184
Estatus=94

0=178
1=224
2=-2
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













[Lista.ListaEnCaptura]
(Inicio)=vic_PlantillaTareas.Aplica
vic_PlantillaTareas.Aplica=vic_PlantillaTareas.Estatus
vic_PlantillaTareas.Estatus=(Fin)
