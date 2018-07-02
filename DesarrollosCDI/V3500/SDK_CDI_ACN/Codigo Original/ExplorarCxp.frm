[Forma]
Clave=ExplorarCxp
Nombre=<T>Explorando - Cuentas por Pagar<T>
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=370
PosicionInicialArriba=267
PosicionInicialAltura=508
PosicionInicialAncho=1035
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsMovimiento=S
TituloAuto=S
MovModulo=CXP
MovEspecificos=Todos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
EsConsultaExclusiva=S
PosicionInicialAlturaCliente=485

[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cxp
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
FiltroAplicaEn=Cxp.Moneda
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
FiltroFechasCampo=Cxp.FechaEmision
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
FiltroMonedasCampo=Cxp.Moneda
FiltroSucursales=S
FiltroMonedas=S
FiltroProyectos=S
IconosNombre=Cxp:Cxp.Mov+<T> <T>+Cxp:Cxp.MovID
FiltroGeneral=Cxp.Empresa=<T>{Empresa}<T>
FiltroUENs=S
FiltroUENsCampo=Cxp.UEN

[Lista.Cxp.Proveedor]
Carpeta=Lista
Clave=Cxp.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Prov.Nombre]
Carpeta=Lista
Clave=Prov.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxp.FechaEmision]
Carpeta=Lista
Clave=Cxp.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxp.Referencia]
Carpeta=Lista
Clave=Cxp.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxp.Concepto]
Carpeta=Lista
Clave=Cxp.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
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

[Lista.Columnas]
0=127
1=83

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

[Lista.Cxp.Vencimiento]
Carpeta=Lista
Clave=Cxp.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxp.Importe]
Carpeta=Lista
Clave=Cxp.Importe
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxp.Impuestos]
Carpeta=Lista
Clave=Cxp.Impuestos
Editar=S
Totalizador=1
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
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cxp:Cxp.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>CXP<T>)<BR>Asigna(Info.ID, Cxp:Cxp.ID)
Visible=S

[Acciones.ProvInfo]
Nombre=ProvInfo
Boton=34
NombreDesplegar=ProvInfo
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ProvInfo
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cxp:Cxp.Proveedor)
Antes=S
AntesExpresiones=Asigna(Info.Proveedor, Cxp:Cxp.Proveedor)
Visible=S

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

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Propiedades
Propiedades=ProvInfo
ProvInfo=Campos
Campos=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=Cxp.Proveedor
Cxp.Proveedor=Prov.Nombre
Prov.Nombre=Cxp.FechaEmision
Cxp.FechaEmision=Cxp.Vencimiento
Cxp.Vencimiento=Cxp.Referencia
Cxp.Referencia=Cxp.Concepto
Cxp.Concepto=Cxp.Importe
Cxp.Importe=Cxp.Impuestos
Cxp.Impuestos=ImporteTotal
ImporteTotal=SaldoF
SaldoF=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=SINAFECTAR
SINAFECTAR=(Fin)
