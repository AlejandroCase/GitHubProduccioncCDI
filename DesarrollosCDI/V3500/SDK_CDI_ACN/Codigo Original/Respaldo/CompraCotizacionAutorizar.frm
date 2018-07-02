[Forma]
Clave=CompraCotizacionAutorizar
Icono=24
Modulos=(Todos)
Nombre=Autorizar Cotizaciones
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=562
PosicionInicialArriba=309
PosicionInicialAlturaCliente=548
PosicionInicialAncho=796
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

[Lista]
Estilo=Iconos
PestanaOtroNombre=S
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CompraConfirmarD
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Artículo<T>
ElementosPorPagina=200
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
FiltroTipo=Múltiple (por Grupos)
IconosSeleccionMultiple=S
MenuLocal=S
ListaAcciones=(Lista)
BusquedaRapidaControles=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CompraConfirmarD.FechaEmision
FiltroFechasDefault=(Todo)
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaEnLinea=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
FiltroGrupo1=Art.Familia
FiltroValida1=Art.Familia
FiltroTodo=S
FiltroTodoFinal=S
IconosNombre=CompraConfirmarD:CompraConfirmarD.Articulo
FiltroGeneral=CompraConfirmarD.MovTipo=<T>COMS.C<T><BR>{Si(no Config.CompraMultiEmpresas, <T> AND CompraConfirmarD.Empresa=<T>+Comilllas(Empresa), <T><T>)}

[Lista.CompraConfirmarD.CantidadPendiente]
Carpeta=Lista
Clave=CompraConfirmarD.CantidadPendiente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CompraConfirmarD.Costo]
Carpeta=Lista
Clave=CompraConfirmarD.Costo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Movimiento]
Carpeta=Lista
Clave=Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
0=74
1=112

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista.Art.Descripcion1]
Carpeta=Lista
Clave=Art.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.LocalTodo]
Nombre=LocalTodo
Boton=0
NombreDesplegar=Seleccionar &Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S

[Acciones.LocalQuitar]
Nombre=LocalQuitar
Boton=0
NombreDesplegar=&Quitar Seleccion
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S

[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=Personalizar
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.GenerarOC]
Nombre=GenerarOC
Boton=7
NombreEnBoton=S
NombreDesplegar=Generar &Ordenes Compra
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Expresion=RegistrarSeleccionIDRenglon( <T>Lista<T>, <T>CompraConfirmarD.Modulo<T>, <T>CompraConfirmarD.ID<T>, <T>CompraConfirmarD.Renglon<T>, <T>CompraConfirmarD.RenglonSub<T>)<BR>ProcesarSQL(<T>spCompraCotizacionAutorizar :nEstacion, :tEmpresa, :nSucursal, :tUsuario, :fFecha<T>,  EstacionTrabajo, Empresa, Sucursal, Usuario, FechaTrabajo)
Activo=S
Visible=S

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=GenerarOC
GenerarOC=Personalizar
Personalizar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=Art.Descripcion1
Art.Descripcion1=CompraConfirmarD.CantidadPendiente
CompraConfirmarD.CantidadPendiente=CompraConfirmarD.Costo
CompraConfirmarD.Costo=Movimiento
Movimiento=(Fin)

[Lista.ListaAcciones]
(Inicio)=LocalTodo
LocalTodo=LocalQuitar
LocalQuitar=(Fin)
