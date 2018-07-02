
[Forma]
Clave=ProyPendientes
Icono=0
CarpetaPrincipal=Lista
Modulos=(Todos)
Nombre=Pendientes

ListaCarpetas=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
PosicionInicialAlturaCliente=487
PosicionInicialAncho=288
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=557
PosicionInicialArriba=193
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ProyPendientes
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Proyecto<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

Filtros=S
IconosNombre=ProyPendientes:Proyecto
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=Estatus = <T>{EstatusPendiente}<T>
FiltroRespetar=S
FiltroTipo=General
[Lista.Mov]
Carpeta=Lista
Clave=Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.MovID]
Carpeta=Lista
Clave=MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

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

[Lista.Columnas]
0=183
1=-2
2=56



[Lista.ListaEnCaptura]
(Inicio)=Mov
Mov=MovID
MovID=(Fin)
