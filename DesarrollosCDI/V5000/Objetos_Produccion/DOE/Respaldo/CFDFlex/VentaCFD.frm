
[Forma]
Clave=VentaCFD
Icono=0
Modulos=(Todos)
Nombre=Ventas - Generar CFD

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=549
PosicionInicialAncho=755
PosicionInicialIzquierda=262
PosicionInicialArriba=109
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
MovModulo=VTAS
ListaAcciones=Cerrar<BR>SeleccionarTodo
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
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

Filtros=S
MenuLocal=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
BusquedaRapidaControles=S
IconosSubTitulo=<T>Movimiento<T>
ListaAcciones=GenerarCFD
Vista=VentaCFD
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
ListaEnCaptura=v.FechaEmision<BR>v.Cliente<BR>v.Importe<BR>v.Impuestos
BusquedaRapida=S
BusquedaRespetarFiltros=S
BusquedaInicializar=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroFechas=S
FiltroMovs=S
BusquedaRespetarControlesNum=S
FiltroUsuarios=S
FiltroSucursales=S
FiltroUsuarioDefault=(Todos)
FiltroFechasCampo=v.FechaEmision
FiltroFechasDefault=Hoy
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroMonedas=S
FiltroListaEstatus=CONCLUIDO<BR>PENDIENTE<BR>PROCESAR<BR>CANCELADO
FiltroEstatusDefault=CONCLUIDO
FiltroMovDefault=(Todos)
FiltroMonedasCampo=v.Moneda
IconosNombre=VentaCFD:v.Mov+<T> <T>+VentaCFD:v.MovID
FiltroGeneral=c.Sello IS NULL


[Lista.Columnas]
0=172
1=120
2=95

3=93
4=94
5=97



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
Expresion=Si<BR>VentaCFD:v.Estatus=EstatusSinAfectar<BR>Entonces<BR>  EjecutarSQL(<T>spAfectar :tModulo, :nID, :tAccion<T>, <T>VTAS<T>, VentaCFD:v.ID, <T>CONSECUTIVO<T>)<BR>  Si(no CFD.Generar(<T>VTAS<T>, VentaCFD:v.ID), AbortarOperacion)<BR>  Afectar(<T>VTAS<T>, VentaCFD:v.ID, VentaCFD:v.Mov, VentaCFD:v.MovID, <T>Todo<T>, <T><T>, <T>ProcesarVenta<T>)<BR><BR>Sino<BR>  Si(no CFD.Generar(<T>VTAS<T>, VentaCFD:v.ID), AbortarOperacion) <BR>Fin<BR>CFD.Confirmar<BR>Asigna(Afectar.EnviarCFD, SQL(<T>SELECT EnviarAlAfectar FROM EmpresaCFD WHERE Empresa=:tEmpresa<T>, Empresa))<BR>Si(Afectar.EnviarCFD, CFD.Enviar(<T>VTAS<T>, VentaCFD:v.ID))<BR>
EjecucionCondicion=SQL(<T>spVerMovTipoCFD :tEmpresa, :tModulo, :tMov<T>, Empresa, <T>VTAS<T>, VentaCFD:v.Mov)
AntesExpresiones=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, VentaCFD:v.Usuario)
VisibleCondicion=Usuario.AfectarLote y Empresa.CFD
[Lista.v.FechaEmision]
Carpeta=Lista
Clave=v.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[Lista.v.Cliente]
Carpeta=Lista
Clave=v.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[Lista.v.Importe]
Carpeta=Lista
Clave=v.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[Lista.v.Impuestos]
Carpeta=Lista
Clave=v.Impuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
