[Forma]
Clave=ExplorarContratos
Nombre=<T>Explorando - Contratos<T>
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=94
PosicionInicialArriba=160
PosicionInicialAltura=448
PosicionInicialAncho=836
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsConsultaExclusiva=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Contratos
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=VentaExplorar
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroAncho=20
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroListas=S
FiltroListasRama=CXC
FiltroListasAplicaEn=Venta.Cliente
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=CteCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=CteFam
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=CteGrupo
FiltroAplicaEn1=Cte.Categoria
FiltroAplicaEn2=Cte.Familia
FiltroAplicaEn3=Cte.Grupo
FiltroTodo=S
FiltroTodoFinal=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=CANCELADO
FiltroFechasCampo=Venta.Vencimiento
FiltroFechasDefault=Vigente
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroMovsTodos=S
FiltroMovDefault=(Todos)
FiltroMonedas=S
FiltroMonedasCampo=Venta.Moneda
PermiteLocalizar=S
FiltroEstatus=S
FiltroFechasVencimiento=S
IconosConSenales=S
IconosNombre=VentaExplorar:Venta.Mov+<T> <T>+VentaExplorar:Venta.MovID
FiltroGeneral=Venta.Empresa=<T>{Empresa}<T> AND<BR>Venta.Mov IN ({MovListaSQL(<T>VTAS<T>, VTAS.CO)})
FiltroSucursales=S

[Lista.Venta.FechaEmision]
Carpeta=Lista
Clave=Venta.FechaEmision
Editar=S
Totalizador=0
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Venta.Cliente]
Carpeta=Lista
Clave=Venta.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
0=119
1=88

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

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Enviar a E&xcel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Lista.SubTotalNeto]
Carpeta=Lista
Clave=SubTotalNeto
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ImpuestosNetos]
Carpeta=Lista
Clave=ImpuestosNetos
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ImporteTotalNeto]
Carpeta=Lista
Clave=ImporteTotalNeto
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Mostrar Campos]
Nombre=Mostrar Campos
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
NombreEnBoton=S
NombreDesplegar=C&liente
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteInfo
ConCondicion=S
ActivoCondicion=Usuario.CteInfo
Activo=S
EjecucionCondicion=ConDatos(VentaExplorar:Venta.Cliente)
AntesExpresiones=Asigna(Info.Cliente, VentaExplorar:Venta.Cliente)
Visible=S

[Acciones.MovPropiedades]
Nombre=MovPropiedades
Boton=35
NombreEnBoton=S
NombreDesplegar=<T>&Movimiento<T>
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(VentaExplorar:Venta.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>VTAS<T>)<BR>Asigna(Info.ID, VentaExplorar:Venta.ID)

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Presentaci�n preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

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

[Lista.Venta.Vencimiento]
Carpeta=Lista
Clave=Venta.Vencimiento
Editar=S
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
Excel=CteInfo
CteInfo=MovPropiedades
MovPropiedades=Mostrar Campos
Mostrar Campos=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=Venta.Cliente
Venta.Cliente=Venta.FechaEmision
Venta.FechaEmision=Venta.Vencimiento
Venta.Vencimiento=SubTotalNeto
SubTotalNeto=ImpuestosNetos
ImpuestosNetos=ImporteTotalNeto
ImporteTotalNeto=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos menos uno)
(Todos menos uno)=VIGENTE
VIGENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)