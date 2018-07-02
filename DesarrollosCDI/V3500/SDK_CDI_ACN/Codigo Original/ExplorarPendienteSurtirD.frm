[Forma]
Clave=ExplorarPendienteSurtirD
Nombre=Explorando - Pendientes por Surtir
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
ListaAcciones=(Lista)
PosicionInicialIzquierda=254
PosicionInicialArriba=275
PosicionInicialAltura=466
PosicionInicialAncho=771
EsConsultaExclusiva=S
PosicionInicialAlturaCliente=439

[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=PendienteSurtirD
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
PestanaOtroNombre=S
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroArbol=Articulos
FiltroArbolAplica=Art.Rama
IconosNombre=PendienteSurtirD:PendienteSurtirD.Mov+<T> <T>+PendienteSurtirD:PendienteSurtirD.MovID
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=Fabricante
FiltroAplicaEn5=Art.Fabricante
FiltroGeneral=PendienteSurtirD.Empresa=<T>{Empresa}<T>

[Lista.PendienteSurtirD.Articulo]
Carpeta=Lista
Clave=PendienteSurtirD.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Art.Descripcion1]
Carpeta=Lista
Clave=Art.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.PendienteSurtirD.CantidadNeta]
Carpeta=Lista
Clave=PendienteSurtirD.CantidadNeta
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.PendienteSurtirD.CantidadOrdenada]
Carpeta=Lista
Clave=PendienteSurtirD.CantidadOrdenada
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.PendienteSurtirD.CantidadReservada]
Carpeta=Lista
Clave=PendienteSurtirD.CantidadReservada
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.PendienteSurtirD.CantidadPendiente]
Carpeta=Lista
Clave=PendienteSurtirD.CantidadPendiente
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
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
0=95
1=85

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

[Acciones.preliminar]
Nombre=preliminar
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

[Acciones.Propiedades]
Nombre=Propiedades
Boton=35
NombreDesplegar=<T>&Movimiento<T>
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
ConCondicion=S
Visible=S
NombreEnBoton=S
EjecucionCondicion=ConDatos(PendienteSurtirD:PendienteSurtirD.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, PendienteSurtirD:PendienteSurtirD.Modulo)<BR>Asigna(Info.ID, PendienteSurtirD:PendienteSurtirD.ID)

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
EjecucionCondicion=ConDatos(PendienteSurtirD:PendienteSurtirD.Articulo)
Antes=S
AntesExpresiones=Asigna(Info.Articulo, PendienteSurtirD:PendienteSurtirD.Articulo)
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
Imprimir=preliminar
preliminar=Excel
Excel=Propiedades
Propiedades=ArtInfo
ArtInfo=Campos
Campos=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=PendienteSurtirD.Articulo
PendienteSurtirD.Articulo=Art.Descripcion1
Art.Descripcion1=PendienteSurtirD.CantidadNeta
PendienteSurtirD.CantidadNeta=PendienteSurtirD.CantidadOrdenada
PendienteSurtirD.CantidadOrdenada=PendienteSurtirD.CantidadReservada
PendienteSurtirD.CantidadReservada=PendienteSurtirD.CantidadPendiente
PendienteSurtirD.CantidadPendiente=(Fin)
