[Forma]
Clave=CDIExplorarCvePres
Nombre=<T>Explorando - CP<T>
Icono=47
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=186
PosicionInicialArriba=101
PosicionInicialAltura=508
PosicionInicialAncho=907
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
EsConsultaExclusiva=S
PosicionInicialAlturaCliente=570

VentanaEstadoInicial=Normal
MovModulo=CP
[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIExplorarCP
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroAutoCampo=(Validaciones Memoria)
FiltroAutoValidar=Mon
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroAplicaEn=Cxp.Moneda
FiltroRespetar=S
FiltroTipo=General
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacionTodo=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=CONCLUIDO
FiltroFechasCampo=CP.FechaEmision
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
FiltroMovsTodos=S
FiltroMovDefault=(Todos)
FiltroMonedasCampo=CP.Moneda
FiltroSucursales=S
FiltroMonedas=S
FiltroProyectos=S
FiltroUENs=S
FiltroUENsCampo=CP.UEN







FiltroMovs=S
FiltroFechasNombre=&Fecha
ListaEnCaptura=(Lista)
IconosNombre=CDIExplorarCP:CP.Mov+<T> <T>+CDIExplorarCP:CP.MovID
FiltroGeneral=CP.Empresa=<T>{Empresa}<T>
FiltroEstatus=S
[Lista.Columnas]
0=146
1=127

2=96
3=113
4=102
5=116
6=83
7=94
8=-2
9=-2
10=-2
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










[Acciones.Movimiento]
Nombre=Movimiento
Boton=35
NombreEnBoton=S
NombreDesplegar=&Movimiento
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
ConCondicion=S
Antes=S
Visible=S





































EjecucionCondicion=ConDatos(CDIExplorarCP:CP.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>CP<T>)<BR>Asigna(Info.ID, CDIExplorarCP:CP.ID)
[Acciones.vista]
Nombre=vista
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
TipoAccion=Otros
ClaveAccion=Vistas Especiales
Activo=S
Visible=S












[Lista.CPD.ClavePresupuestal]
Carpeta=Lista
Clave=CPD.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CP.FechaEmision]
Carpeta=Lista
Clave=CP.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CP.Concepto]
Carpeta=Lista
Clave=CP.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CP.Referencia]
Carpeta=Lista
Clave=CP.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CP.Origen]
Carpeta=Lista
Clave=CP.Origen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CP.OrigenID]
Carpeta=Lista
Clave=CP.OrigenID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CPD.Importe]
Carpeta=Lista
Clave=CPD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco














[Lista.ListaEnCaptura]
(Inicio)=CPD.ClavePresupuestal
CPD.ClavePresupuestal=CP.FechaEmision
CP.FechaEmision=CP.Concepto
CP.Concepto=CP.Referencia
CP.Referencia=CP.Origen
CP.Origen=CP.OrigenID
CP.OrigenID=CPD.Importe
CPD.Importe=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=SINAFECTAR
SINAFECTAR=(Fin)







[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Movimiento
Movimiento=Campos
Campos=(Fin)
