[Forma]
Clave=CDISocioLista
Nombre=Socios
Icono=44
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=236
PosicionInicialArriba=83
PosicionInicialAltura=477
PosicionInicialAncho=807
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
ExpresionesAlCerrar=Asigna( Info.CDINIP, CteA:Cte.NIPCDI )<BR>Asigna( Info.CDIMembresia, CteA:Cte.Membresia )<BR>Asigna( Info.CDISocio, CteA:Cte.Socio )
[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteA
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
FiltroListasAplicaEn=Cte.Cliente
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=CteFam
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=CteGrupo
FiltroAplicaEn1=Cte.Categoria
FiltroAplicaEn2=Cte.Familia
FiltroAplicaEn3=Cte.Grupo
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
FiltroAplicaEn4=Cte.Agente
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=CteTipo
FiltroAplicaEn5=Cte.Tipo
FiltroGrupo6=(Validaciones Memoria)
FiltroValida6=Espacio
FiltroAplicaEn6=Cte.Espacio
OtroOrden=S
ListaOrden=Cte.Socio<TAB>(Acendente)

HojaTitulosEnBold=S

MenuLocal=S
ListaAcciones=(Lista)
[Lista.Columnas]
Cliente=127
Nombre=293
0=121
1=280
RFC=124

Socio=127
NombreSocio=171
Tipo=76
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreDesplegar=&Seleccionar
TipoAccion=Ventana
ClaveAccion=Seleccionar
Visible=S
Activo=S
NombreEnBoton=S
EnBarraHerramientas=S

Antes=S
AntesExpresiones=Asigna( Info.CDINIP, CteA:Cte.NIPCDI )<BR>Asigna( Info.CDIMembresia, CteA:Cte.Membresia )<BR>Asigna( Info.CDISocio, CteA:Cte.Socio )
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
EjecucionCondicion=ConDatos(CteA:Cte.Cliente) y ((CteA:Cte.Tipo<><T>Deudor<T>) o Usuario.VerInfoDeudores)
AntesExpresiones=Asigna(Info.Cliente, CteA:Cte.Cliente)

[Lista.Cte.Cliente]
Carpeta=Lista
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.Cte.RFC]
Carpeta=Lista
Clave=Cte.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

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







[Lista.Cte.Socio]
Carpeta=Lista
Clave=Cte.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.NombreSocio]
Carpeta=Lista
Clave=NombreSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=120
ColorFondo=Blanco

[Lista.Cte.Tipo]
Carpeta=Lista
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco














[Acciones.SeleccionarTodo]
Nombre=SeleccionarTodo
Boton=0
NombreDesplegar=Seleccionar &Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S

[Acciones.Quitar]
Nombre=Quitar
Boton=0
NombreDesplegar=&Quitar Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S





[Lista.ListaEnCaptura]
(Inicio)=Cte.Socio
Cte.Socio=NombreSocio
NombreSocio=Cte.Cliente
Cte.Cliente=Cte.RFC
Cte.RFC=Cte.Tipo
Cte.Tipo=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQ_AVISO
BLOQ_AVISO=BLOQUEADO
BLOQUEADO=BAJA
BAJA=CONFIRMAR
CONFIRMAR=RECHAZADO
RECHAZADO=(Fin)

[Lista.ListaAcciones]
(Inicio)=SeleccionarTodo
SeleccionarTodo=Quitar
Quitar=(Fin)



[Forma.ListaAcciones]
(Inicio)=Seleccionar
Seleccionar=CteInfo
CteInfo=(Fin)
