
[Forma]
Clave=vic_CondicionLista
Icono=6
Modulos=(Todos)
Nombre=Condiciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Seleccionar
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=262
PosicionInicialArriba=137
PosicionInicialAlturaCliente=412
PosicionInicialAncho=755
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

[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Condciones
Clave=Lista
Filtros=S
OtroOrden=S
BusquedaRapidaControles=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Condicion
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Contrato<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
ListaOrden=vic_Condicion.ID<TAB>(Acendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroListasRama=CXC
FiltroListasAplicaEn=vic_Condicion.IDContrato
FiltroRespetar=S
FiltroTipo=General
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroListaEstatus=(Lista)

FiltroEstatusDefault=(Todos)
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S

IconosNombre=vic_Condicion:vic_Condicion.ID
FiltroGeneral=vic_Condicion.IDContrato=<T>{Info.ID}<T><BR>AND vic_Condicion.ID not in (<T>{Info.ActividadID}<T>)  and vic_Condicion.DependeCond = 0
[Lista.vic_Condicion.Articulo]
Carpeta=Lista
Clave=vic_Condicion.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
0=92
1=158
















2=176


3=-2

[Lista.vic_Condicion.Concepto]
Carpeta=Lista
Clave=vic_Condicion.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco







[Lista.Art.Descripcion1]
Carpeta=Lista
Clave=Art.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=vic_Condicion.Concepto
vic_Condicion.Concepto=vic_Condicion.Articulo
vic_Condicion.Articulo=Art.Descripcion1
Art.Descripcion1=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BAJA
BAJA=ACTIVO
ACTIVO=INACTIVO
INACTIVO=(Fin)
