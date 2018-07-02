[Forma]
Clave=ArtPrueba
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Expresion
PosicionInicialIzquierda=524
PosicionInicialArriba=474
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Art
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
CarpetaVisible=S
ListaEnCaptura=(Lista)
PermiteEditar=S

[Acciones.Expresion]
Nombre=Expresion
Boton=71
NombreDesplegar=Expresion
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Informacion( CampoEnLista( Art:Art.Alta, <T>dd/mmm/aaaa<T> ) )

[Lista.Columnas]
Articulo=124
Descripcion1=184
Alta=94

[Lista.Art.Articulo]
Carpeta=Lista
Clave=Art.Articulo
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

[Lista.Art.Alta]
Carpeta=Lista
Clave=Art.Alta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ListaEnCaptura]
(Inicio)=Art.Articulo
Art.Articulo=Art.Descripcion1
Art.Descripcion1=Art.Alta
Art.Alta=(Fin)
