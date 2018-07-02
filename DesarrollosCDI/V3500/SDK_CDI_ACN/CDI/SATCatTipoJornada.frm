



[Forma]
Clave=SATCatTipoJornada
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Tipo de Jornada

ListaCarpetas=ListaTipoJornada
CarpetaPrincipal=ListaTipoJornada
PosicionInicialIzquierda=502
PosicionInicialArriba=207
PosicionInicialAlturaCliente=278
PosicionInicialAncho=435



BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=GuardarCerrar
[Lista.Columnas]
Clave=31
Descripcion=150





[Lista.ListaEnCaptura]
(Inicio)=SATCatTipoJonada.Clave
SATCatTipoJonada.Clave=SATCatTipoJonada.Descripcion
SATCatTipoJonada.Descripcion=(Fin)

[Lista.ListaOrden]
(Inicio)=SATCatTipoJonada.Clave	(Acendente)
SATCatTipoJonada.Clave	(Acendente)=SATCatTipoJonada.Descripcion	(Acendente)
SATCatTipoJonada.Descripcion	(Acendente)=(Fin)

[ListaTipoJornada]
Estilo=Hoja
Clave=ListaTipoJornada
OtroOrden=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=SATCatTipoJornada
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=SATCatTipoJornada.Clave<TAB>(Acendente)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaRespetarFiltros=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S


PermiteEditar=S


[ListaTipoJornada.Columnas]
Clave=31
Descripcion=304








[ListaTipoJornada.ListaOrden]
(Inicio)=SATCatTipoJonada.Clave	(Acendente)
SATCatTipoJonada.Clave	(Acendente)=SATCatTipoJonada.Descripcion	(Acendente)
SATCatTipoJonada.Descripcion	(Acendente)=(Fin)


[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
EnBarraHerramientas=S



[ListaTipoJornada.ListaEnCaptura]
(Inicio)=SATCatTipoJornada.Clave
SATCatTipoJornada.Clave=SATCatTipoJornada.Descripcion
SATCatTipoJornada.Descripcion=(Fin)

[ListaTipoJornada.SATCatTipoJornada.Clave]
Carpeta=ListaTipoJornada
Clave=SATCatTipoJornada.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[ListaTipoJornada.SATCatTipoJornada.Descripcion]
Carpeta=ListaTipoJornada
Clave=SATCatTipoJornada.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
