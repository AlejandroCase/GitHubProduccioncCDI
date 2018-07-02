
[Forma]
Clave=CDICfgCategoriaArt
Icono=0
Modulos=(Todos)
Nombre=Articulos de Categoria
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
PosicionInicialIzquierda=270
PosicionInicialArriba=368
PosicionInicialAlturaCliente=273
PosicionInicialAncho=633
Comentarios=Info.Categoria
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICfgCategoriaArt
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

CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDICfgCategoriaArt.Categoria = <T>{Info.Categoria}<T>
[Lista.CDICfgCategoriaArt.ArticuloM]
Carpeta=Lista
Clave=CDICfgCategoriaArt.ArticuloM
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CDICfgCategoriaArt.ArticuloA]
Carpeta=Lista
Clave=CDICfgCategoriaArt.ArticuloA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CDICfgCategoriaArt.EsRecurrente]
Carpeta=Lista
Clave=CDICfgCategoriaArt.EsRecurrente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


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
ArticuloM=128
ArticuloA=133
EsRecurrente=69





0=127
1=211
2=-2
3=-2


ArticuloBM=141
ArticuloBA=129
[Lista.ListaEnCaptura]
(Inicio)=CDICfgCategoriaArt.ArticuloM
CDICfgCategoriaArt.ArticuloM=CDICfgCategoriaArt.ArticuloA
CDICfgCategoriaArt.ArticuloA=CDICfgCategoriaArt.ArticuloBM
CDICfgCategoriaArt.ArticuloBM=CDICfgCategoriaArt.ArticuloBA
CDICfgCategoriaArt.ArticuloBA=CDICfgCategoriaArt.EsRecurrente
CDICfgCategoriaArt.EsRecurrente=(Fin)

[Lista.CDICfgCategoriaArt.ArticuloBM]
Carpeta=Lista
Clave=CDICfgCategoriaArt.ArticuloBM
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CDICfgCategoriaArt.ArticuloBA]
Carpeta=Lista
Clave=CDICfgCategoriaArt.ArticuloBA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
