[Forma]
Clave=pExplorarpFiscal
Nombre=<T>Explorando - Módulo pFiscal<T>
Icono=47
Modulos=FIS
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=430
PosicionInicialArriba=358
PosicionInicialAltura=448
PosicionInicialAncho=1060
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsConsultaExclusiva=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionInicialAlturaCliente=447
MovModulo=FIS
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos

[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Movimientos
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=pFiscalT
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
FiltroTipo=General
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroListas=S
FiltroListasRama=CXP
FiltroListasAplicaEn=Compra.Proveedor
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=ProvCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=ProvFam
FiltroTodo=S
FiltroTodoFinal=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=CONCLUIDO
FiltroEstatusDefault=CONCLUIDO
FiltroFechasCampo=pFiscal.FechaEmision
FiltroFechasDefault=Este Mes
FiltroFechasNormal=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroMovsTodos=S
FiltroMovDefault=(Todos)
FiltroMonedas=S
FiltroMonedasCampo=pFiscal.Moneda
PermiteLocalizar=S
FiltroSucursales=S
FiltroProyectos=S
FiltroUENs=S
FiltroUENsCampo=pFiscal.UEN
FiltroSituacionTodo=S
FiltroMovs=S
IconosNombre=pFiscalT:pFiscal.Mov+<T> <T>+pFiscalT:pFiscal.MovID
FiltroGeneral=pFiscal.Empresa=<T>{Empresa}<T> AND pFiscal.Estatus=<T>CONCLUIDO<T>

[Lista.Columnas]
0=143
1=81

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

[Acciones.Mostrar Campos]
Nombre=Mostrar Campos
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
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
EjecucionCondicion=ConDatos(pFiscalT:pFiscalD.OrigenModuloID)
AntesExpresiones=Asigna(Info.Modulo, pFiscalT:pFiscalD.OrigenModulo)<BR>Asigna(Info.ID, pFiscalT:pFiscalD.OrigenModuloID)

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=&Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentación preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Lista.pFiscal.FechaEmision]
Carpeta=Lista
Clave=pFiscal.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalD.ObligacionFiscal]
Carpeta=Lista
Clave=pFiscalD.ObligacionFiscal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalD.Importe]
Carpeta=Lista
Clave=pFiscalD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalD.Tasa]
Carpeta=Lista
Clave=pFiscalD.Tasa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalD.Contacto]
Carpeta=Lista
Clave=pFiscalD.Contacto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ContactoNombre]
Carpeta=Lista
Clave=ContactoNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ContactoRFC]
Carpeta=Lista
Clave=ContactoRFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ContactoSubTipo]
Carpeta=Lista
Clave=ContactoSubTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.OrigenNombre]
Carpeta=Lista
Clave=OrigenNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalD.Neto]
Carpeta=Lista
Clave=pFiscalD.Neto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Presentacion preliminar
Presentacion preliminar=Excel
Excel=MovPropiedades
MovPropiedades=Mostrar Campos
Mostrar Campos=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=pFiscal.FechaEmision
pFiscal.FechaEmision=pFiscalD.ObligacionFiscal
pFiscalD.ObligacionFiscal=pFiscalD.Importe
pFiscalD.Importe=pFiscalD.Tasa
pFiscalD.Tasa=OrigenNombre
OrigenNombre=ContactoSubTipo
ContactoSubTipo=pFiscalD.Contacto
pFiscalD.Contacto=ContactoNombre
ContactoNombre=ContactoRFC
ContactoRFC=pFiscalD.Neto
pFiscalD.Neto=(Fin)
