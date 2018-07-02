
[Forma]
Clave=HHCEMateriaArt
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Artículos de la Materia
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
Comentarios=Info.Materia
ListaAcciones=Aceptar
CarpetaPrincipal=Lista
PosicionInicialIzquierda=195
PosicionInicialArriba=301
PosicionInicialAlturaCliente=330
PosicionInicialAncho=619
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=HHCEMateriaArt
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=HHCEMateriaArt.Materia = <T>{Info.Materia}<T>
[Lista.HHCEMateriaArt.Articulo]
Carpeta=Lista
Clave=HHCEMateriaArt.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Art.Descripcion1]
Carpeta=Lista
Clave=Art.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Art.PrecioLista]
Carpeta=Lista
Clave=Art.PrecioLista
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista.Columnas]
Articulo=124
Descripcion1=353
PrecioLista=109

[Lista.ListaEnCaptura]
(Inicio)=HHCEMateriaArt.Articulo
HHCEMateriaArt.Articulo=Art.Descripcion1
Art.Descripcion1=Art.PrecioLista
Art.PrecioLista=(Fin)
