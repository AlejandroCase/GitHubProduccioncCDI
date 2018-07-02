
[Forma]
Clave=CDICompraLista
Icono=0
Modulos=(Todos)
Nombre=CDICompraLista

ListaCarpetas=CDICompraLista
CarpetaPrincipal=CDICompraLista
PosicionInicialIzquierda=214
PosicionInicialArriba=216
PosicionInicialAlturaCliente=273
PosicionInicialAncho=953
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccion
[CDICompraLista]
Estilo=Hoja
Clave=CDICompraLista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=compra
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

CarpetaVisible=S
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
OtroOrden=S
ListaOrden=Compra.FechaEmision<TAB>(Decendente)
HojaAjustarColumnas=S
HojaOrdenarColumnas=S
BusquedaRapidaControles=S
FiltroEstatus=S
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
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroGeneral=Compra.Proveedor =<T>{Info.Proveedor}<T> and <BR>Compra.Mov=<T>Entrada Compra<T> 
[CDICompraLista.Compra.Mov]
Carpeta=CDICompraLista
Clave=Compra.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICompraLista.Compra.MovID]
Carpeta=CDICompraLista
Clave=Compra.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICompraLista.Compra.FechaEmision]
Carpeta=CDICompraLista
Clave=Compra.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICompraLista.Compra.UltimoCambio]
Carpeta=CDICompraLista
Clave=Compra.UltimoCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICompraLista.Compra.Concepto]
Carpeta=CDICompraLista
Clave=Compra.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICompraLista.Compra.Proyecto]
Carpeta=CDICompraLista
Clave=Compra.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICompraLista.Compra.Observaciones]
Carpeta=CDICompraLista
Clave=Compra.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICompraLista.Compra.Estatus]
Carpeta=CDICompraLista
Clave=Compra.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICompraLista.Columnas]
Mov=124
MovID=64
FechaEmision=94
UltimoCambio=94
Concepto=119
Proyecto=137
Observaciones=179
Estatus=94










Proveedor=64
[Acciones.Seleccion]
Nombre=Seleccion
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccion
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

















[CDICompraLista.Compra.Proveedor]
Carpeta=CDICompraLista
Clave=Compra.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco





[CDICompraLista.ListaEnCaptura]
(Inicio)=Compra.Mov
Compra.Mov=Compra.MovID
Compra.MovID=Compra.Estatus
Compra.Estatus=Compra.Proveedor
Compra.Proveedor=Compra.FechaEmision
Compra.FechaEmision=Compra.UltimoCambio
Compra.UltimoCambio=Compra.Concepto
Compra.Concepto=Compra.Proyecto
Compra.Proyecto=Compra.Observaciones
Compra.Observaciones=(Fin)

[CDICompraLista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=CONCLUIDO
CONCLUIDO=PENDIENTE
PENDIENTE=(Fin)
