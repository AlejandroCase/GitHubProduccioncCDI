[Forma]
Clave=AlmPos
Nombre=Posiciones del Almacén
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
PosicionInicialIzquierda=511
PosicionInicialArriba=279
PosicionInicialAlturaCliente=605
PosicionInicialAncho=898
Comentarios=Info.Almacen
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionCol1=842
PosicionSec1=409

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AlmPos
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
FiltroGrupo1=AlmPos.Zona
FiltroValida1=AlmPos.Zona
FiltroGrupo2=AlmPos.Pasillo
FiltroValida2=AlmPos.Pasillo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
ValidarCampos=S
ListaCamposAValidar=Art.Descripcion1
HojaMantenerSeleccion=S
HojaAjustarColumnas=S
OtroOrden=S
ListaOrden=(Lista)
FiltroGeneral=AlmPos.Almacen=<T>{Info.Almacen}<T>

[Lista.AlmPos.Tipo]
Carpeta=Lista
Clave=AlmPos.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.AlmPos.Descripcion]
Carpeta=Lista
Clave=AlmPos.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.AlmPos.Pasillo]
Carpeta=Lista
Clave=AlmPos.Pasillo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.AlmPos.Nivel]
Carpeta=Lista
Clave=AlmPos.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.AlmPos.Zona]
Carpeta=Lista
Clave=AlmPos.Zona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.AlmPos.Estatus]
Carpeta=Lista
Clave=AlmPos.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
AlmPos=64
Tipo=67
Descripcion=144
Pasillo=34
Nivel=30
Zona=75
Estatus=57
Almacen=64
ArticuloEsp=98
Posicion=64
CategoriaEsp=304
GrupoEsp=304
FamiliaEsp=304
Capacidad=103
Fila=31

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

[Acciones.Zonas]
Nombre=Zonas
Boton=91
NombreEnBoton=S
NombreDesplegar=&Zonas
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=PosicionZona
Activo=S
Visible=S

[Lista.AlmPos.Posicion]
Carpeta=Lista
Clave=AlmPos.Posicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.AlmPos.CategoriaEsp]
Carpeta=Ficha
Clave=AlmPos.CategoriaEsp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.AlmPos.GrupoEsp]
Carpeta=Ficha
Clave=AlmPos.GrupoEsp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.AlmPos.FamiliaEsp]
Carpeta=Ficha
Clave=AlmPos.FamiliaEsp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.AlmPos.Capacidad]
Carpeta=Lista
Clave=AlmPos.Capacidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Tarimas.Columnas]
0=182
1=87

[Acciones.TarimasPersonalizar]
Nombre=TarimasPersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
Carpeta=Tarimas
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Tarimas.EstatusNombre]
Carpeta=Tarimas
Clave=EstatusNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.TarimaPosicion]
Nombre=TarimaPosicion
Boton=47
NombreEnBoton=S
NombreDesplegar=&Tarimas en la Posición
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=TarimaPosicion
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Posicion, AlmPos:AlmPos.Posicion)
Visible=S

[Lista.AlmPos.ArticuloEsp]
Carpeta=Lista
Clave=AlmPos.ArticuloEsp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.AlmPos.Fila]
Carpeta=Lista
Clave=AlmPos.Fila
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Zonas
Zonas=TarimaPosicion
TarimaPosicion=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=AlmPos.Posicion
AlmPos.Posicion=AlmPos.Descripcion
AlmPos.Descripcion=AlmPos.Pasillo
AlmPos.Pasillo=AlmPos.Fila
AlmPos.Fila=AlmPos.Nivel
AlmPos.Nivel=AlmPos.Zona
AlmPos.Zona=AlmPos.Tipo
AlmPos.Tipo=AlmPos.Capacidad
AlmPos.Capacidad=AlmPos.Estatus
AlmPos.Estatus=AlmPos.ArticuloEsp
AlmPos.ArticuloEsp=(Fin)

[Lista.ListaOrden]
(Inicio)=AlmPos.Pasillo<TAB>(Acendente)
AlmPos.Pasillo<TAB>(Acendente)=AlmPos.Fila<TAB>(Acendente)
AlmPos.Fila<TAB>(Acendente)=AlmPos.Nivel<TAB>(Acendente)
AlmPos.Nivel<TAB>(Acendente)=(Fin)
