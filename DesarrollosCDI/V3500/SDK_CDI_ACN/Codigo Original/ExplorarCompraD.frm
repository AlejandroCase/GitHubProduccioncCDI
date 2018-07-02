[Forma]
Clave=ExplorarCompraD
Nombre=<T>Explorando - Compras<T>
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=554
PosicionInicialArriba=347
PosicionInicialAltura=496
PosicionInicialAncho=812
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsConsultaExclusiva=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionInicialAlturaCliente=469

[Lista]
Estilo=Iconos
PestanaOtroNombre=S
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CompraExplorarD
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=ArtCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=ArtGrupo
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=ArtFam
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=ArtLinea
FiltroAplicaEn1=Art.Categoria
FiltroAplicaEn2=Art.Grupo
FiltroAplicaEn3=Art.Familia
FiltroAplicaEn4=Art.Linea
FiltroAncho=25
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroTodoFinal=S
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=25
BusquedaEnLinea=S
FiltroFechas=S
FiltroMonedas=S
FiltroFechasCampo=Compra.FechaEmision
FiltroFechasDefault=Este Mes
FiltroMonedasCampo=Compra.Moneda
FiltroMovsTodos=S
FiltroMovDefault=Factura
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=CONCLUIDO
PermiteLocalizar=S
FiltroListas=S
FiltroListasRama=INV
FiltroListasAplicaEn=CompraD.Articulo
FiltroArbol=Articulos
FiltroArbolAplica=Art.Rama
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=Fabricante
FiltroAplicaEn5=Art.Fabricante
FiltroSucursales=S
FiltroProyectos=S
FiltroUENs=S
FiltroUENsCampo=Compra.UEN
IconosNombre=CompraExplorarD:Compra.Mov+<T> <T>+CompraExplorarD:Compra.MovID
FiltroGeneral=Compra.Empresa=<T>{Empresa}<T> AND<BR>Compra.Estatus=<T>CONCLUIDO<T> AND<BR>Compra.Mov IN ({MovListaSQL(<T>COMS<T>, COMS.F, COMS.FL, COMS.EG, COMS.EI, COMS.D, COMS.B)})

[Lista.CompraD.Articulo]
Carpeta=Lista
Clave=CompraD.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Compra.Proveedor]
Carpeta=Lista
Clave=Compra.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
0=127
1=79

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
NombreDesplegar=Enviar a Excel
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
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.Desglosar]
Nombre=Desglosar
Boton=47
NombreEnBoton=S
NombreDesplegar=&Desglosar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=VerAcum
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CompraExplorarD:CompraD.Articulo) y ConDatos(CompraExplorarD:Compra.Proveedor)
AntesExpresiones=IrModulo(<T>COMS<T>)<BR>IrDireccion(<T>COMS<T>, CompraExplorarD:CompraD.Articulo, CompraExplorarD:Compra.Proveedor)

[Acciones.ProvInfo]
Nombre=ProvInfo
Boton=34
NombreEnBoton=S
NombreDesplegar=&Proveedor
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ProvInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CompraExplorarD:Compra.Proveedor)
AntesExpresiones=Asigna(Info.Proveedor, CompraExplorarD:Compra.Proveedor)

[Acciones.ArtInfo]
Nombre=ArtInfo
Boton=34
NombreDesplegar=&Artículo
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ArtInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
NombreEnBoton=S
EjecucionCondicion=ConDatos(CompraExplorarD:CompraD.Articulo)
AntesExpresiones=Asigna(Info.Articulo, CompraExplorarD:CompraD.Articulo)

[Lista.DescuentosNetos]
Carpeta=Lista
Clave=DescuentosNetos
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

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
EjecucionCondicion=ConDatos(CompraExplorarD:Compra.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>COMS<T>)<BR>Asigna(Info.ID, CompraExplorarD:Compra.ID)

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

[Lista.CantidadF]
Carpeta=Lista
Clave=CantidadF
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CostoTotalNeto]
Carpeta=Lista
Clave=CostoTotalNeto
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
Excel=Desglosar
Desglosar=ProvInfo
ProvInfo=ArtInfo
ArtInfo=MovPropiedades
MovPropiedades=Mostrar Campos
Mostrar Campos=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=Compra.Proveedor
Compra.Proveedor=CompraD.Articulo
CompraD.Articulo=CantidadF
CantidadF=CostoTotalNeto
CostoTotalNeto=DescuentosNetos
DescuentosNetos=SubTotalNeto
SubTotalNeto=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)
