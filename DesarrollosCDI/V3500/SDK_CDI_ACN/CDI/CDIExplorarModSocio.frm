[Forma]
Clave=CDIExplorarModSocio
Nombre=<T>Explorando - Modulo Socios  (Movimientos)<T>
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=195
PosicionInicialArriba=124
PosicionInicialAltura=508
PosicionInicialAncho=975
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsMovimiento=S
TituloAuto=S
MovModulo=SOC
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
Vista=CDISocio
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
FiltroAplicaEn=Cxc.Moneda
FiltroRespetar=S
FiltroTipo=General
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacionTodo=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PENDIENTE
FiltroFechasCampo=CDISocio.FechaEmision
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
FiltroMonedasCampo=CDISocio.Moneda
FiltroSucursales=S
FiltroMonedas=S
FiltroProyectos=S
FiltroUENs=S
FiltroUENsCampo=CDISocio.UEN






ListaEnCaptura=(Lista)
FiltroEstatus=S
BusquedaActualizacionManual=S
IconosNombre=CDISocio:CDISocio.Mov + <T> <T> + CDISocio:CDISocio.MovID
FiltroGeneral=CDISocio.Empresa=<T>{Empresa}<T>
[Lista.Columnas]
0=145
1=79

2=143
3=85
4=93
5=117
6=105
7=102
8=89
9=-2
10=-2
11=-2
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



[Lista.Cte.Socio]
Carpeta=Lista
Clave=Cte.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[Lista.NombreSocio]
Carpeta=Lista
Clave=NombreSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.CDISocio.FechaEmision]
Carpeta=Lista
Clave=CDISocio.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDISocio.FechaVigencia]
Carpeta=Lista
Clave=CDISocio.FechaVigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDISocio.Referencia]
Carpeta=Lista
Clave=CDISocio.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDISocio.Concepto]
Carpeta=Lista
Clave=CDISocio.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDISocio.ImporteAnualidad]
Carpeta=Lista
Clave=CDISocio.ImporteAnualidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDISocio.ImporteMensualidad]
Carpeta=Lista
Clave=CDISocio.ImporteMensualidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco












[Acciones.Info]
Nombre=Info
Boton=34
NombreDesplegar=Información
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDISocioInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S











EjecucionCondicion=ConDatos(CDISocio:Cte.Socio)
AntesExpresiones=Asigna(Info.Cliente, CDISocio:CDISocio.Cliente)<BR>Asigna(Info.Socio, CDISocio:Cte.Socio)










[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S




[Acciones.BitacoraBloq]
Nombre=BitacoraBloq
Boton=38
NombreDesplegar=Bitácora de Bloqueo
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIInfoTextoBloqueo
Visible=S









ActivoCondicion=MovTipo(<T>SOC<T>, CDISocio:CDISocio.Mov) = <T>SOC.BAJA<T>
Antes=S
AntesExpresiones=Asigna(Info.CDIComentBloqueo, CDISocio:CDISocio.ComentBloqueo)












[Lista.Cte.Tipo]
Carpeta=Lista
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.Cte.Estatus]
Carpeta=Lista
Clave=Cte.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco







[Lista.Cte.Tipo0]
Carpeta=Lista
Clave=Cte.Tipo0
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco




[Lista.ListaEnCaptura]
(Inicio)=Cte.Socio
Cte.Socio=NombreSocio
NombreSocio=CDISocio.FechaEmision
CDISocio.FechaEmision=CDISocio.FechaVigencia
CDISocio.FechaVigencia=CDISocio.Referencia
CDISocio.Referencia=CDISocio.Concepto
CDISocio.Concepto=CDISocio.ImporteAnualidad
CDISocio.ImporteAnualidad=CDISocio.ImporteMensualidad
CDISocio.ImporteMensualidad=Cte.Tipo
Cte.Tipo=Cte.Estatus
Cte.Estatus=Cte.Tipo0
Cte.Tipo0=(Fin)

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
Excel=Campos
Campos=Info
Info=Actualizar
Actualizar=BitacoraBloq
BitacoraBloq=(Fin)
