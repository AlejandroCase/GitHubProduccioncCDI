[Forma]
Clave=POSCliente
Nombre=Clientes
Icono=44
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=146
PosicionInicialArriba=58
PosicionInicialAltura=477
PosicionInicialAncho=988
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
VentanaExclusiva=S
VentanaEscCerrar=S
EsConsultaExclusiva=S
MovModulo=CXC
PosicionInicialAlturaCliente=606
Comentarios=Si(no Usuario.ConsultarClientesOtrosAgentes, e(<T>Agente<T>)+<T>: <T>+Usuario.DefAgente)
PosicionSec1=300
PosicionCol1=430
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0

[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=POSCliente
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
Filtros=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=CteCat
FiltroPredefinido=S
FiltroAplicaEn=Cte.Categoria
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroTodoFinal=S
FiltroNullNombre=(sin categoría)
FiltroRespetar=S
FiltroAncho=20
FiltroFechasNormal=S
FiltroListas=S
FiltroListasRama=CXC
FiltroListasAplicaEn=POSCliente.Cliente
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=CteFam
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=CteGrupo
FiltroAplicaEn1=POSCliente.Categoria
FiltroAplicaEn2=POSCliente.Familia
FiltroAplicaEn3=POSCliente.Grupo
PermiteLocalizar=S
FiltroEstatus=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
FiltroArbol=Clientes
FiltroArbolAplica=Cte.Rama
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=Agente
FiltroAplicaEn4=POSCliente.Agente
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=CteTipo
FiltroAplicaEn5=POSCliente.Tipo
FiltroGrupo6=(Validaciones Memoria)
FiltroValida6=Espacio
FiltroAplicaEn6=POSCliente.Espacio
OtroOrden=S
ListaOrden=POSCliente.Cliente<TAB>(Acendente)

HojaMostrarSeleccionColoresEsp=S
HojaColoresPorCampo=S
HojaCampoColor=POSCliente.Estatus


FiltroGeneral=POSCliente.Tipo<><T>Estructura<T><BR>{Si(no Usuario.ConsultarClientesOtrosAgentes, <T> AND POSCliente.Agente=<T>+Comillas(Usuario.DefAgente), <T><T>)}
[Lista.Columnas]
Cliente=117
Nombre=293
0=121
1=280
RFC=107

Codigo=184
Estatus=94
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreDesplegar=&Seleccionar
TipoAccion=Ventana
ClaveAccion=Seleccionar/Aceptar
Visible=S
Activo=S
NombreEnBoton=S
EnBarraHerramientas=S

Antes=S
ConCondicion=S
EjecucionConError=S
EjecucionCondicion=POSCliente:POSCliente.Estatus = <T>ALTA<T>
EjecucionMensaje=<T>No se puede Generar Movimientos a este Cliente, Verifique...<T>
AntesExpresiones=Asigna(Info.Cliente,POSCliente:POSCliente.Cliente)
[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
NombreDesplegar=&Información
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteInfo
Antes=S
Visible=S
ConCondicion=S



ActivoCondicion=Usuario.CteInfo
EjecucionCondicion=ConDatos(POSCliente:POSCliente.Cliente) y ((POSCliente:POSCliente.Tipo<><T>Deudor<T>) o Usuario.VerInfoDeudores)
AntesExpresiones=Asigna(Info.Cliente, POSCliente:POSCliente.Cliente)
[Art.Art.Articulo]
Carpeta=Art
Clave=Art.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Art.Art.Descripcion1]
Carpeta=Art
Clave=Art.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Art.Columnas]
Articulo=124
Descripcion1=184




[Lista.POSCliente.Cliente]
Carpeta=Lista
Clave=POSCliente.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.POSCliente.Nombre]
Carpeta=Lista
Clave=POSCliente.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.POSCliente.Codigo]
Carpeta=Lista
Clave=POSCliente.Codigo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.POSCliente.RFC]
Carpeta=Lista
Clave=POSCliente.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[Lista.ListaEnCaptura]
(Inicio)=POSCliente.Cliente
POSCliente.Cliente=POSCliente.Nombre
POSCliente.Nombre=POSCliente.Codigo
POSCliente.Codigo=POSCliente.RFC
POSCliente.RFC=POSCliente.Estatus
POSCliente.Estatus=(Fin)


[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQ_AVISO
BLOQ_AVISO=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)


[Forma.ListaAcciones]
(Inicio)=Seleccionar
Seleccionar=CteInfo
CteInfo=(Fin)
