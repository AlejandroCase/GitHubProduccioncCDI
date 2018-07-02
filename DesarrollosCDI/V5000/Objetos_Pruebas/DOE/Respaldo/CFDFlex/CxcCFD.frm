[Forma]
Clave=CxcCFD
Icono=0
Modulos=(Todos)
Nombre=Cuentas por Cobrar - Generar CFD

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=549
PosicionInicialAncho=755
PosicionInicialIzquierda=262
PosicionInicialArriba=107
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
MovModulo=CXC
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CxcCFD
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
IconosSeleccionMultiple=S
ListaEnCaptura=(Lista)

Filtros=S
MenuLocal=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
BusquedaRapidaControles=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroMonedas=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FiltroMovs=S
FiltroFechasCampo=v.FechaEmision
FiltroMovDefault=(Todos)
FiltroMonedasCampo=v.Moneda
FiltroEstatus=S
FiltroUsuarios=S
FiltroSucursales=S
FiltroEstatusDefault=PENDIENTE
FiltroUsuarioDefault=(Usuario)
IconosSubTitulo=<T>Movimiento<T>
FiltroListaEstatus=(Lista)
FiltroFechasDefault=Hoy
BusquedaRapida=S
BusquedaEnLinea=S
BusquedaAncho=20
BusquedaRespetarFiltros=S
BusquedaInicializar=S
BusquedaRespetarControlesNum=S
ListaAcciones=GenerarCFD
FiltroSucursalesSinTodas=S
IconosNombre=CxcCFD:v.Mov+<T> <T>+CxcCFD:v.MovID
FiltroGeneral=c.Sello IS NULL
FiltroMovsTodos=S
FiltroFechasCambiar=S
[Lista.v.FechaEmision]
Carpeta=Lista
Clave=v.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.v.Estatus]
Carpeta=Lista
Clave=v.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.Columnas]
0=172
1=120
2=95

3=93
4=94
5=97


[Lista.v.Impuestos]
Carpeta=Lista
Clave=v.Impuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

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

[Acciones.SeleccionarTodo]
Nombre=SeleccionarTodo
Boton=55
NombreDesplegar=Seleccionar &Todo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S
NombreEnBoton=S
EspacioPrevio=S

[Acciones.GenerarCFD]
Nombre=GenerarCFD
Boton=0
NombreDesplegar=Generar CFD
EnMenu=S
TipoAccion=Expresion
Activo=S
RefrescarIconos=S
EnLote=S
ConCondicion=S
Antes=S
Expresion=Si<BR>CxcCFD:v.Estatus=EstatusSinAfectar<BR>Entonces<BR>  EjecutarSQL(<T>spAfectar :tModulo, :nID, :tAccion<T>, <T>CXC<T>, CxcCFD:v.ID, <T>CONSECUTIVO<T>)<BR>  Si(no CFD.Generar(<T>CXC<T>, CxcCFD:v.ID), AbortarOperacion)<BR>  Afectar(<T>CXC<T>, CxcCFD:v.ID, CxcCFD:v.Mov, CxcCFD:v.MovID, <T>Todo<T>, <T><T>)<BR><BR>Sino<BR>  Si(no CFD.Generar(<T>CXC<T>, CxcCFD:v.ID), AbortarOperacion)<BR>  CFD.Confirmar<BR>Fin<BR>Asigna(Afectar.EnviarCFD, SQL(<T>SELECT EnviarAlAfectar FROM EmpresaCFD WHERE Empresa=:tEmpresa<T>, Empresa))<BR>Si(Afectar.EnviarCFD, CFD.Enviar(<T>CXC<T>, CxcCFD:v.ID))
EjecucionCondicion=SQL(<T>spVerMovTipoCFD :tEmpresa, :tModulo, :tMov<T>, Empresa, <T>CXC<T>, CxcCFD:v.Mov)
AntesExpresiones=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, CxcCFD:v.Usuario)<BR>EjecutarSQL(<T>EXEC spGeneraFechaMovCFD :tModulo, :nID<T>, <T>CXC<T>, CxcCFD:v.ID)
VisibleCondicion=Usuario.AfectarLote y Empresa.CFD
[Lista.v.Cliente]
Carpeta=Lista
Clave=v.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Lista.v.Importe]
Carpeta=Lista
Clave=v.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=v.FechaEmision
v.FechaEmision=v.Estatus
v.Estatus=v.Cliente
v.Cliente=v.Importe
v.Importe=v.Impuestos
v.Impuestos=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=CONCLUIDO
CONCLUIDO=PENDIENTE
PENDIENTE=CANCELADO
CANCELADO=(Fin)








[Acciones.QuitarSeleccion]
Nombre=QuitarSeleccion
Boton=72
NombreEnBoton=S
NombreDesplegar=Quitar Seleccion
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S





[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=SeleccionarTodo
SeleccionarTodo=QuitarSeleccion
QuitarSeleccion=(Fin)
