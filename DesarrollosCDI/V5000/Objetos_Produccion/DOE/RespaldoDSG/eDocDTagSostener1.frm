
[Forma]
Clave=eDocDTagSostener1
Icono=0
Modulos=(Todos)
Nombre=Etiquetas XML vacias a conservar

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
Comentarios=Lista(Info.Modulo,Info.Descripcion,Info.Categoria)
PosicionInicialIzquierda=389
PosicionInicialArriba=145
PosicionInicialAlturaCliente=406
PosicionInicialAncho=502
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=eDocDTagSostener1
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=eDocDTagSostener1.Tag
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=eDocDTagSostener1.Modulo = {Comillas(Info.Modulo)} AND eDocDTagSostener1.eDoc = {Comillas(Info.Descripcion)} AND eDocDTagSostener1.SeccionID = {Info.RID}
[Lista.eDocDTagSostener1.Tag]
Carpeta=Lista
Clave=eDocDTagSostener1.Tag
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista.Columnas]
Tag=468