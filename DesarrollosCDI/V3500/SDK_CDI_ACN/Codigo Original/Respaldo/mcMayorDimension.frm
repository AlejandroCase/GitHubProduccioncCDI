[Forma]
Clave=mcMayorDimension
Nombre=Dimensiones de la Cuenta
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=605
PosicionInicialArriba=315
PosicionInicialAlturaCliente=533
PosicionInicialAncho=709
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
Comentarios=Info.Mayor
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=mcMayorDimension
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
FiltroGeneral=mcMayorDimension.Mayor=<T>{Info.Mayor}<T>

[Lista.mcMayorDimension.DimensionDestino]
Carpeta=Lista
Clave=mcMayorDimension.DimensionDestino
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Dimension=269
DimensionDestino=247
DimensionOrigen=270
DatoRequerido=81
Mayor=124
AceptaCeros=71

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

[Lista.mcMayorDimension.DatoRequerido]
Carpeta=Lista
Clave=mcMayorDimension.DatoRequerido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.mcMayorDimension.AceptaCeros]
Carpeta=Lista
Clave=mcMayorDimension.AceptaCeros
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.mcMayorDimension.Dimension]
Carpeta=Lista
Clave=mcMayorDimension.Dimension
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ListaEnCaptura]
(Inicio)=mcMayorDimension.Dimension
mcMayorDimension.Dimension=mcMayorDimension.DimensionDestino
mcMayorDimension.DimensionDestino=mcMayorDimension.DatoRequerido
mcMayorDimension.DatoRequerido=mcMayorDimension.AceptaCeros
mcMayorDimension.AceptaCeros=(Fin)
