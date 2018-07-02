[Forma]
Clave=MovSituacionL
Nombre=<T>Situaciones - <T>+Info.Descripcion
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=362
PosicionInicialArriba=234
PosicionInicialAltura=300
PosicionInicialAncho=300
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=MovSituacionL
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
FiltroAncho=30
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=MovSituacionL.Modulo=<T>{Info.Modulo}<T>

[Lista.MovSituacionL.Mov]
Carpeta=Lista
Clave=MovSituacionL.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.MovSituacionL.Estatus]
Carpeta=Lista
Clave=MovSituacionL.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Modulo=39
Mov=156
Estatus=115

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

[Acciones.Situaciones]
Nombre=Situaciones
Boton=47
NombreEnBoton=S
NombreDesplegar=&Situaciones
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovSituacion
Activo=S
Visible=S
GuardarAntes=S
Antes=S
ConCondicion=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(MovSituacionL:MovSituacionL.Mov) y ConDatos(MovSituacionL:MovSituacionL.Estatus)
AntesExpresiones=Asigna(Info.Mov, MovSituacionL:MovSituacionL.Mov)<BR>Asigna(Info.Estatus, MovSituacionL:MovSituacionL.Estatus)<BR>Asigna(Info.Descripcion, Info.Mov+<T> (<T>+ Minusculas(Info.Estatus)+<T>)<T> )

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Situaciones
Situaciones=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=MovSituacionL.Mov
MovSituacionL.Mov=MovSituacionL.Estatus
MovSituacionL.Estatus=(Fin)
