[Forma]
Clave=TMAPendiente
Nombre=Pendiente
Icono=4
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=339
PosicionInicialAncho=713
EsConsultaExclusiva=S
SinCondicionDespliege=S
PosicionInicialIzquierda=283
PosicionInicialArriba=325
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Iconos
PestanaOtroNombre=S
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=TMAPendiente
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
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
IconosNombre=TMAPendiente:TMA.Mov+<T> <T>+TMAPendiente:TMA.MovID
FiltroGeneral=TMA.Estatus=<T>PENDIENTE<T> AND ISNULL(TMAD.CantidadPendiente, 0)>0

[Lista.TMA.FechaEmision]
Carpeta=Lista
Clave=TMA.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.TMAD.Tarima]
Carpeta=Lista
Clave=TMAD.Tarima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
0=128
1=79

[Lista.TMAD.Posicion]
Carpeta=Lista
Clave=TMAD.Posicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ListaEnCaptura]
(Inicio)=TMA.FechaEmision
TMA.FechaEmision=TMAD.Tarima
TMAD.Tarima=TMAD.Posicion
TMAD.Posicion=(Fin)
