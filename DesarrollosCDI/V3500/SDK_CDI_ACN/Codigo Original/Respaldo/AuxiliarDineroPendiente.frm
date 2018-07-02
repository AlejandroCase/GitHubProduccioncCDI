[Forma]
Clave=AuxiliarDineroPendiente
Nombre=Movimientos por Conciliar
Icono=44
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=544
PosicionInicialArriba=341
PosicionInicialAlturaCliente=482
PosicionInicialAncho=832
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
Comentarios=Info.CtaDinero
EsConsultaExclusiva=S

[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AuxiliarDinero
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
Filtros=S
IconosSubTitulo=<T>Movimiento<T>
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
PestanaOtroNombre=S
PestanaNombre=Movimientos
IconosSeleccionMultiple=S
BusquedaRapidaControles=S
IconosNombre=AuxiliarDinero:Dinero.Mov+<T> <T>+AuxiliarDinero:Dinero.MovID
FiltroGeneral=Dinero.Empresa=<T>{Empresa}<T><BR>AND Dinero.Estatus IN (<T>PENDIENTE<T>, <T>CONCLUIDO<T>)<BR>AND Auxiliar.Cuenta=<T>{Info.CtaDinero}<T> <BR>AND Auxiliar.Conciliado = 0
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S

[Lista.Columnas]
0=149
1=95

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
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

[Lista.Dinero.FechaEmision]
Carpeta=Lista
Clave=Dinero.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Dinero.Concepto]
Carpeta=Lista
Clave=Dinero.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Dinero.Referencia]
Carpeta=Lista
Clave=Dinero.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Auxiliar.Cargo]
Carpeta=Lista
Clave=Auxiliar.Cargo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Auxiliar.Abono]
Carpeta=Lista
Clave=Auxiliar.Abono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Seleccionar
Seleccionar=Personalizar
Personalizar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=Dinero.FechaEmision
Dinero.FechaEmision=Dinero.Concepto
Dinero.Concepto=Dinero.Referencia
Dinero.Referencia=Auxiliar.Cargo
Auxiliar.Cargo=Auxiliar.Abono
Auxiliar.Abono=(Fin)
