[Forma]
Clave=ExplorarCxc
Nombre=<T>Explorando - Cuentas por Cobrar (Movimientos)<T>
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=159
PosicionInicialArriba=258
PosicionInicialAltura=508
PosicionInicialAncho=962
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsMovimiento=S
TituloAuto=S
MovModulo=CXC
MovEspecificos=Todos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
EsConsultaExclusiva=S
PosicionInicialAlturaCliente=481

[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cxc
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroAutoCampo=(Validaciones Memoria)
FiltroAutoValidar=Mon
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroAplicaEn=Cxc.Moneda
FiltroRespetar=S
FiltroTipo=General
FiltroEstatus=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PENDIENTE
FiltroFechasCampo=Cxc.FechaEmision
FiltroFechasDefault=Este Mes
FiltroFechasNormal=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Movimientos
FiltroMovs=S
FiltroMovsTodos=S
FiltroMovDefault=(Todos)
FiltroMonedasCampo=Cxc.Moneda
FiltroSucursales=S
FiltroMonedas=S
FiltroProyectos=S
FiltroUENs=S
FiltroUENsCampo=Cxc.UEN
IconosNombre=Cxc:Cxc.Mov+<T> <T>+Cxc:Cxc.MovID
FiltroGeneral=Cxc.Empresa=<T>{Empresa}<T>

[Lista.Cxc.Cliente]
Carpeta=Lista
Clave=Cxc.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cte.Nombre]
Carpeta=Lista
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.FechaEmision]
Carpeta=Lista
Clave=Cxc.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.Referencia]
Carpeta=Lista
Clave=Cxc.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.Concepto]
Carpeta=Lista
Clave=Cxc.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
0=127
1=91

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

[Lista.Cxc.Vencimiento]
Carpeta=Lista
Clave=Cxc.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Presentación preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Campos]
Nombre=Campos
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.Propiedades]
Nombre=Propiedades
Boton=35
NombreDesplegar=Propiedades
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
Visible=S
ConCondicion=S
Antes=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(Cxc:Cxc.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)

[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
NombreDesplegar=Información
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CteInfo
ActivoCondicion=Usuario.CteInfo
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cxc:Cxc.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cxc:Cxc.Cliente)

[Lista.SaldoF]
Carpeta=Lista
Clave=SaldoF
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.Importe]
Carpeta=Lista
Clave=Cxc.Importe
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.Impuestos]
Carpeta=Lista
Clave=Cxc.Impuestos
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ImporteTotal]
Carpeta=Lista
Clave=ImporteTotal
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Propiedades
Propiedades=CteInfo
CteInfo=Campos
Campos=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=Cxc.Cliente
Cxc.Cliente=Cte.Nombre
Cte.Nombre=Cxc.FechaEmision
Cxc.FechaEmision=Cxc.Vencimiento
Cxc.Vencimiento=Cxc.Referencia
Cxc.Referencia=Cxc.Concepto
Cxc.Concepto=Cxc.Importe
Cxc.Importe=Cxc.Impuestos
Cxc.Impuestos=ImporteTotal
ImporteTotal=SaldoF
SaldoF=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=SINAFECTAR
SINAFECTAR=(Fin)
