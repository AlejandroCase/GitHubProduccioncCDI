[Forma]
Clave=MovLista
Nombre=Movimientos
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
PosicionInicialIzquierda=454
PosicionInicialArriba=232
PosicionInicialAlturaCliente=526
PosicionInicialAncho=843
Comentarios=Lista(Modulo.Nombre(Filtro.Modulo), Filtro.Mov)

[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Mov
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
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Movimientos
Filtros=S
BusquedaRapidaControles=S
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
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
IconosNombre=Mov:Movimiento
FiltroGeneral=Mov.Empresa=<T>{Empresa}<T> AND Mov.Modulo=<T>{Filtro.Modulo}<T> AND Mov.Mov=<T>{Filtro.Mov}<T>
FiltroFechas=S
FiltroSucursales=S
FiltroFechasCampo=Mov.FechaEmision
FiltroFechasDefault=Hoy

[Lista.Mov.FechaEmision]
Carpeta=Lista
Clave=Mov.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Mov.Concepto]
Carpeta=Lista
Clave=Mov.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Mov.Referencia]
Carpeta=Lista
Clave=Mov.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Mov.Observaciones]
Carpeta=Lista
Clave=Mov.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[Lista.Columnas]
0=166
1=86

[Lista.ListaEnCaptura]
(Inicio)=Mov.FechaEmision
Mov.FechaEmision=Mov.Concepto
Mov.Concepto=Mov.Referencia
Mov.Referencia=Mov.Observaciones
Mov.Observaciones=(Fin)
