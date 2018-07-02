
[Forma]
Clave=AtributoLista
Icono=4
Modulos=(Todos)
Nombre=Atributos

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=375
PosicionInicialArriba=121
PosicionInicialAlturaCliente=481
PosicionInicialAncho=730
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Atributos
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Atributo
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
Filtros=S
BusquedaRapidaControles=S
IconosSubTitulo=<T>Clave<T>
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
IconosNombre=Atributo:Atributo.Atributo

FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=AtributoCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=AtributoGrupo
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=AtributoFam
FiltroAplicaEn1=Atributo.Categoria
FiltroAplicaEn2=Atributo.Grupo
FiltroAplicaEn3=Atributo.Familia
FiltroTodo=S
FiltroTodoFinal=S

[Lista.Atributo.Nombre]
Carpeta=Lista
Clave=Atributo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Atributo.Tipo]
Carpeta=Lista
Clave=Atributo.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=Atributo.Nombre
Atributo.Nombre=Atributo.Tipo
Atributo.Tipo=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)

[Lista.Columnas]
0=113
1=284
2=125

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=<T>&Seleccionar<T>
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=Personalizar Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S









[Forma.ListaAcciones]
(Inicio)=Seleccionar
Seleccionar=Personalizar
Personalizar=(Fin)
