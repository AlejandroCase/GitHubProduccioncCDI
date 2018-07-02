
[Forma]
Clave=CDIEXplorarCvePresComite
Icono=0
BarraHerramientas=S
EsConsultaExclusiva=S
MovModulo=CP
Nombre=<T>Explorando - CP<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=403
PosicionInicialAncho=1050
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=158
PosicionInicialArriba=163
Modulos=(Todos)
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
ListaAcciones=(Lista)
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Movimientos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIExplorarCP
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroEstatus=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroMonedas=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=CONCLUIDO
FiltroFechasCampo=CP.FechaEmision
FiltroFechasDefault=Este Mes
FiltroMovDefault=(Todos)
FiltroFechasNormal=S
FiltroMonedasCampo=CP.Moneda
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S



IconosSubTitulo=<T>Movimiento<T>
IconosNombre=CDIExplorarCP:CP.Mov+<T> <T>+CDIExplorarCP:CP.MovID
FiltroGeneral=CP.Empresa=<T>{Empresa}<T> and CP.Proyecto=<T>{Usuario.DefProyecto}<T>
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

[Lista.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2

























[Lista.CPD.ClavePresupuestal]
Carpeta=Lista
Clave=CPD.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
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





[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Movimiento
Movimiento=Campos
Campos=(Fin)
