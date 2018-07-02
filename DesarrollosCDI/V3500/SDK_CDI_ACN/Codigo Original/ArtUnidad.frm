[Forma]
Clave=ArtUnidad
Nombre=Unidades de Artículo
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
PosicionInicialIzquierda=516
PosicionInicialArriba=366
PosicionInicialAltura=285
PosicionInicialAncho=248
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
Comentarios=Info.Articulo
VentanaExclusiva=S
PosicionInicialAlturaCliente=258

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ArtUnidad
Fuente={MS Sans Serif, 8, Negro, []}
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
CarpetaVisible=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
PermiteEditar=S
FiltroGeneral=ArtUnidad.Articulo=<T>{Info.Articulo}<T>

[Lista.ArtUnidad.Unidad]
Carpeta=Lista
Clave=ArtUnidad.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Cerrar]
Nombre=Cerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista.Columnas]
Unidad=117
Factor=82
Peso=60
Volumen=56

[Lista.ArtUnidad.Factor]
Carpeta=Lista
Clave=ArtUnidad.Factor
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Editar=S

[Lista.ListaEnCaptura]
(Inicio)=ArtUnidad.Unidad
ArtUnidad.Unidad=ArtUnidad.Factor
ArtUnidad.Factor=(Fin)
