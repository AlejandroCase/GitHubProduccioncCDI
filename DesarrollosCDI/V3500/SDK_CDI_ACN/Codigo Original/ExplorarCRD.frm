[Forma]
Clave=ExplorarCRD
Nombre=<T>Explorando - Movimientos Cajas Registradoras a Nivel Detalle<T>
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=489
PosicionInicialAncho=901
PosicionInicialIzquierda=61
PosicionInicialArriba=122
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CRT
Fuente={Tahoma, 8, Negro, []}
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
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Automático
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Movimientos
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroUsuarios=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacion=S
FiltroMonedas=S
FiltroSucursales=S
FiltroUENs=S
FiltroUENsCampo=CR.UEN
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=CONCLUIDO
FiltroUsuarioDefault=(Todos)
FiltroFechasCampo=CR.FechaEmision
FiltroFechasDefault=Esta Semana
FiltroFechasNormal=S
FiltroMonedasCampo=CR.Moneda
FiltroFechasCancelacion=CR.FechaCancelacion
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroAplicaEn=CRD.Tipo
FiltroGrupo1=CRD.Tipo
FiltroValida1=CRD.Tipo
FiltroAutoCampo=CRD.Tipo
FiltroAutoValidar=CRD.Tipo
IconosNombre=CRT:CR.Mov+<T> <T>+CRT:CR.MovID
FiltroEstilo=Directorio
FiltroGeneral=CR.Empresa=<T>{Empresa}<T>

[Lista.CR.FechaEmision]
Carpeta=Lista
Clave=CR.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CR.Caja]
Carpeta=Lista
Clave=CR.Caja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CR.Cajero]
Carpeta=Lista
Clave=CR.Cajero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

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

[Lista.Columnas]
0=161
1=79

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

[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=Personalizar Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.Info]
Nombre=Info
Boton=34
NombreDesplegar=Información de la Caja
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CtaDineroInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CRT:CR.Caja)
AntesExpresiones=Asigna(Info.CtaDinero, CRT:CR.Caja)

[Lista.CRD.Movimiento]
Carpeta=Lista
Clave=CRD.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CRD.CtaDinero]
Carpeta=Lista
Clave=CRD.CtaDinero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CRD.Referencia]
Carpeta=Lista
Clave=CRD.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CRD.FormaPago]
Carpeta=Lista
Clave=CRD.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CRD.ImporteNeto]
Carpeta=Lista
Clave=CRD.ImporteNeto
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Propiedades]
Nombre=Propiedades
Boton=35
NombreDesplegar=Propiedades
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
ConCondicion=S
Antes=S
Visible=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(CRT:CR.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>CR<T>)<BR>Asigna(Info.ID, CRT:CR.ID)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Propiedades
Propiedades=Info
Info=Personalizar
Personalizar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=CR.FechaEmision
CR.FechaEmision=CR.Caja
CR.Caja=CR.Cajero
CR.Cajero=CRD.Movimiento
CRD.Movimiento=CRD.CtaDinero
CRD.CtaDinero=CRD.Referencia
CRD.Referencia=CRD.FormaPago
CRD.FormaPago=CRD.ImporteNeto
CRD.ImporteNeto=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)
