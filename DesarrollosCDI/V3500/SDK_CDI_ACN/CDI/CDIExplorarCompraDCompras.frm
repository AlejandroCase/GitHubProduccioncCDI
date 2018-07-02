
[Forma]
Clave=CDIExplorarCompraDCompras
Icono=0
Modulos=(Todos)
Nombre=<T>Compras por Comite<T>

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
EsMovimiento=S
EsConsultaExclusiva=S
TituloAuto=S
MovEspecificos=Todos
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialAlturaCliente=634
PosicionInicialAncho=1235
ListaAcciones=(Lista)
MovModulo=COMS
PosicionInicialArriba=40
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CompraExplorarD
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S
IconosSubTitulo=<T>Movimiento<T>
ListaEnCaptura=(Lista)

FiltroFechas=S
FiltroMonedas=S
FiltroSucursales=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaEnLinea=S

FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=ArtCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=ArtGrupo
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=ArtFam
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=ArtLinea
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=Fabricante
FiltroAplicaEn1=Art.Categoria
FiltroAplicaEn2=Art.Grupo
FiltroAplicaEn3=Art.Familia
FiltroAplicaEn4=Art.Linea
FiltroAplicaEn5=Art.Fabricante
FiltroTodo=S
FiltroTodoFinal=S
FiltroArbol=Articulos
FiltroArbolAplica=Art.Rama
FiltroEstatus=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroListaEstatus=(Lista)
FiltroFechasCampo=Compra.FechaEmision
FiltroFechasDefault=Este Mes
FiltroMonedasCampo=Compra.Moneda
BusquedaAncho=25
FiltroMovDefault=(Todos)
FiltroEstatusDefault=(Todos)
FiltroUsuarios=S
FiltroProyectos=S
FiltroUsuarioDefault=(Todos)
IconosNombre=CompraExplorarD:Compra.Mov + <T> <T> + CompraExplorarD:Compra.MovID
FiltroGeneral=Compra.Empresa=<T>{Empresa}<T> AND<BR>Compra.Mov IN ({MovListaSQL(<T>COMS<T>, COMS.F, COMS.FL, COMS.EG, COMS.EI, COMS.D, COMS.B,COMS.C,COMS.R,COMS.O  )})
[Lista.Compra.Proveedor]
Carpeta=Lista
Clave=Compra.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CompraD.Articulo]
Carpeta=Lista
Clave=CompraD.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CantidadF]
Carpeta=Lista
Clave=CantidadF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CostoTotalNeto]
Carpeta=Lista
Clave=CostoTotalNeto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.DescuentosNetos]
Carpeta=Lista
Clave=DescuentosNetos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.SubTotalNeto]
Carpeta=Lista
Clave=SubTotalNeto
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


[Acciones.PresentacionPreliminar]
Nombre=PresentacionPreliminar
Boton=6
NombreDesplegar=Presentación Preliminar
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
EjecucionCondicion=ConDatos(CompraExplorarD:CompraD.Articulo) y ConDatos(CompraExplorarD:Compra.Proveedor)
Antes=S
AntesExpresiones=IrModulo(<T>COMS<T>)<BR>IrDireccion(<T>COMS<T>, CompraExplorarD:CompraD.Articulo, CompraExplorarD:Compra.Proveedor)
Visible=S




[Acciones.ProvInfo]
Nombre=ProvInfo
Boton=34
NombreEnBoton=S
NombreDesplegar=&Proveedor
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ProvInfo
Activo=S
Visible=S

ConCondicion=S
EjecucionCondicion=ConDatos(CompraExplorarD:Compra.Proveedor)
Antes=S
AntesExpresiones=Asigna(Info.Proveedor, CompraExplorarD:Compra.Proveedor)



[Acciones.ArtInfo]
Nombre=ArtInfo
Boton=34
NombreEnBoton=S
NombreDesplegar=&Artículo
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ArtInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S

EjecucionCondicion=ConDatos(CompraExplorarD:CompraD.Articulo)
AntesExpresiones=Asigna(Info.Articulo, CompraExplorarD:CompraD.Articulo)



[Acciones.MovPropiedades]
Nombre=MovPropiedades
Boton=35
NombreDesplegar=<T>&Movimiento<T>
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
Visible=S

ConCondicion=S
EjecucionCondicion=ConDatos(CompraExplorarD:Compra.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>COMS<T>)<BR>Asigna(Info.ID, CompraExplorarD:Compra.ID)



















[Acciones.PersonalizarVista]
Nombre=PersonalizarVista
Boton=45
NombreDesplegar=Personalizar Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S




[Acciones.Bitacora]
Nombre=Bitacora
Boton=56
NombreEnBoton=S
NombreDesplegar=&Bitacora
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovBitacora
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>COMS<T>)<BR>Asigna(Info.ID, CompraExplorarD:Compra.ID)<BR>Asigna(Info.Mov, CompraExplorarD:Compra.Mov)<BR>Asigna(Info.MovID, CompraExplorarD:Compra.MovID)<BR>Asigna(Info.PuedeEditar, CompraExplorarD:Compra.Estatus noen (EstatusConcluido, EstatusCancelado) y PuedeModificar(CompraExplorarD:Compra.Usuario))
Visible=S





[Lista.ListaEnCaptura]
(Inicio)=Compra.Proveedor
Compra.Proveedor=CompraD.Articulo
CompraD.Articulo=CantidadF
CantidadF=CostoTotalNeto
CostoTotalNeto=DescuentosNetos
DescuentosNetos=SubTotalNeto
SubTotalNeto=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=CONFIRMAR
CONFIRMAR=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=PresentacionPreliminar
PresentacionPreliminar=Excel
Excel=Desglosar
Desglosar=ProvInfo
ProvInfo=ArtInfo
ArtInfo=MovPropiedades
MovPropiedades=PersonalizarVista
PersonalizarVista=Bitacora
Bitacora=(Fin)
