
[Forma]
Clave=CDIExplorarInvDComite
Icono=0
BarraHerramientas=S
EsMovimiento=S
EsConsultaExclusiva=S
SinCondicionDespliege=S
Modulos=(Todos)
MovModulo=INV
Nombre=Explorar Inventarios
TituloAuto=S
MovEspecificos=Todos
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=180
PosicionInicialArriba=98
PosicionInicialAlturaCliente=506
PosicionInicialAncho=1072
ListaAcciones=(Lista)
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=InvT
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S
IconosSubTitulo=<T>Movimiento<T>
ListaEnCaptura=(Lista)


FiltroEstatus=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroMonedas=S
FiltroListaEstatus=(Lista)
FiltroFechasCampo=Inv.FechaEmision
FiltroFechasDefault=Este Mes
FiltroMovDefault=(Todos)
FiltroMonedasCampo=Inv.Moneda
FiltroFechasCancelacion=Inv.FechaCancelacion
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroEstatusDefault=PENDIENTE
IconosNombre=InvT:Inv.Mov+<T> <T>+InvT:Inv.MovID
FiltroGeneral=Inv.Empresa=<T>{Empresa}<T> and Inv.Proyecto=<T>{Usuario.DefProyecto}<T>
[Lista.Inv.FechaEmision]
Carpeta=Lista
Clave=Inv.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Inv.Almacen]
Carpeta=Lista
Clave=Inv.Almacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.InvD.Articulo]
Carpeta=Lista
Clave=InvD.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CantidadNeta]
Carpeta=Lista
Clave=CantidadNeta
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.InvD.Costo]
Carpeta=Lista
Clave=InvD.Costo
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Importe]
Carpeta=Lista
Clave=Importe
Editar=S
Totalizador=1
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
NombreDesplegar=&Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S


[Acciones.MovPropiedades]
Nombre=MovPropiedades
Boton=35
NombreDesplegar=Propiedades
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
Visible=S


ConCondicion=S
Antes=S







EspacioPrevio=S
EjecucionCondicion=ConDatos(InvT:Inv.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>INV<T>)<BR>Asigna(Info.ID, InvT:Inv.ID)
[Acciones.MostrarCampos]
Nombre=MostrarCampos
Boton=45
NombreDesplegar=MostrarCampos
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S






EspacioPrevio=S
[Acciones.ArtInfo]
Nombre=ArtInfo
Boton=34
NombreDesplegar=Información del Articulo
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ArtInfo
Activo=S
Visible=S

ConCondicion=S
















EspacioPrevio=S
















EjecucionCondicion=ConDatos(InvT:InvD.Articulo)
Antes=S
AntesExpresiones=Asigna(Info.Articulo, InvT:InvD.Articulo)





[Lista.ListaEnCaptura]
(Inicio)=Inv.FechaEmision
Inv.FechaEmision=Inv.Almacen
Inv.Almacen=InvD.Articulo
InvD.Articulo=CantidadNeta
CantidadNeta=InvD.Costo
InvD.Costo=Importe
Importe=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=CANCELADO
CANCELADO=CONCLUIDO
CONCLUIDO=CONFIRMAR
CONFIRMAR=PENDIENTE
PENDIENTE=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=PresentacionPreliminar
PresentacionPreliminar=Excel
Excel=ArtInfo
ArtInfo=MovPropiedades
MovPropiedades=MostrarCampos
MostrarCampos=(Fin)
