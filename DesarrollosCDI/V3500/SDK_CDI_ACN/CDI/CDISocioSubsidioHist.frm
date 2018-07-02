
[Forma]
Clave=CDISocioSubsidioHist
Icono=6
Modulos=(Todos)
Nombre=Histórico Subsidios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=ListaHist
CarpetaPrincipal=ListaHist
ListaAcciones=Cerrar
PosicionInicialAlturaCliente=312
PosicionInicialAncho=321
PosicionInicialIzquierda=479
PosicionInicialArriba=339
Comentarios=Info.CDISubsidio
[ListaHist]
Estilo=Iconos
Clave=ListaHist
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocioSubsidioHist
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

ListaEnCaptura=CDISocioSubsidioHist.Importe
PestanaOtroNombre=S
PestanaNombre=Cambios
Filtros=S
OtroOrden=S
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
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=Fecha y Hora
ElementosPorPaginaEsp=200
ListaOrden=CDISocioSubsidioHist.Fecha<TAB>(Acendente)
FiltroFechas=S
FiltroFechasCampo=CDISocioSubsidioHist.Fecha
FiltroFechasDefault=Este Mes
IconosNombre=CDISocioSubsidioHist:CDISocioSubsidioHist.Fecha
FiltroGeneral=CDISocioSubsidioHist.Subsidio = <T>{Info.CDISubsidio}<T>
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



[ListaHist.CDISocioSubsidioHist.Importe]
Carpeta=ListaHist
Clave=CDISocioSubsidioHist.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[ListaHist.Columnas]
Subsidio=184
Importe=64
Fecha=94







0=137
1=127
[ListaHist.ListaEnCaptura]
(Inicio)=CDISocioSubsidioHist.Subsidio
CDISocioSubsidioHist.Subsidio=CDISocioSubsidioHist.Importe
CDISocioSubsidioHist.Importe=CDISocioSubsidioHist.Fecha
CDISocioSubsidioHist.Fecha=(Fin)
