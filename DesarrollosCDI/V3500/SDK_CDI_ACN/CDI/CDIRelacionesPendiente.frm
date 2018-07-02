
[Forma]
Clave=CDIRelacionesPendiente
Icono=48
Modulos=(Todos)
Nombre=Autorizar Relaciones Restringidas

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=39
PosicionInicialArriba=76
PosicionInicialAlturaCliente=621
PosicionInicialAncho=1202






BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Usuario
[CDIRelacionesPendiente.Columnas]
0=-2
1=-2
2=-2
3=181
4=79



5=118


















6=108

7=95


[Acciones.LocalTodo]
Nombre=LocalTodo
Boton=0
NombreDesplegar=Seleccionar &Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S



[CDIRelacionesPendiente.ListaEnCaptura]
(Inicio)=CDIRelacionesPendiente.NIPCDI
CDIRelacionesPendiente.NIPCDI=CDIRelacionesPendiente.Personal
CDIRelacionesPendiente.Personal=NombrePersonal
NombrePersonal=CDIRelacionesPendiente.Catalogo
CDIRelacionesPendiente.Catalogo=CDIRelacionesPendiente.RolAnterior
CDIRelacionesPendiente.RolAnterior=CDIRelacionesPendiente.PermiteRelacionCon
CDIRelacionesPendiente.PermiteRelacionCon=CDIRelacionesPendiente.FechaEmision
CDIRelacionesPendiente.FechaEmision=(Fin)

[Lista]
Estilo=Iconos
Clave=Lista
BusquedaRapidaControles=S
MenuLocal=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIRelacionesPendiente
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=Consecutivo
IconosNombreNumerico=S
IconosSeleccionMultiple=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
ListaAcciones=(Lista)
CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosNombre=CDIRelacionesPendiente:CDIRelacionesPendiente.ID
FiltroGeneral=CDIRelacionesRestringidasRoles.BajoAutorizacion = {1}  AND<BR>CDIRelacionesPendiente.Estatus = <T>PENDIENTE<T> AND<BR>CDIUsuarioAutorizaRelacion.Usuario = <T>{Usuario}<T>
[Lista.CDIRelacionesPendiente.NIPCDI]
Carpeta=Lista
Clave=CDIRelacionesPendiente.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIRelacionesPendiente.Personal]
Carpeta=Lista
Clave=CDIRelacionesPendiente.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.NombrePersonal]
Carpeta=Lista
Clave=NombrePersonal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.CDIRelacionesPendiente.Catalogo]
Carpeta=Lista
Clave=CDIRelacionesPendiente.Catalogo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIRelacionesPendiente.RolAnterior]
Carpeta=Lista
Clave=CDIRelacionesPendiente.RolAnterior
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIRelacionesPendiente.PermiteRelacionCon]
Carpeta=Lista
Clave=CDIRelacionesPendiente.PermiteRelacionCon
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIRelacionesPendiente.FechaEmision]
Carpeta=Lista
Clave=CDIRelacionesPendiente.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Columnas]
0=-2
1=116
2=103
3=100
4=160
5=74
6=95
7=91

8=181
9=118
10=80
[Acciones.LocalQuitar]
Nombre=LocalQuitar
Boton=0
NombreDesplegar=&Quitar Seleccion
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S



[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.CDIAutorizarRelacion]
Nombre=CDIAutorizarRelacion
Boton=7
NombreEnBoton=S
NombreDesplegar=&Autorizar Relación
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
Visible=S



ListaAccionesMultiples=(Lista)


[Acciones.CDIAutorizarRelacion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S






Expresion=RegistrarListaSt(<T>Lista<T>, <T>CDIRelacionesPendiente.ID<T>)<BR>EjecutarSQL(<T>Exec spCDIRelacionesPendienteEstatus :tEstatus1, :nEstacion1, :tUsuario1<T>, <T>AUTORIZADO<T>, EstacionTrabajo, Usuario)<BR>Informacion(<T>Proceso Realizado...<T>)<BR>OtraForma( <T>Cte<T>,      Forma.ActualizarVista)<BR>OtraForma( <T>Prov<T>,     Forma.ActualizarVista)<BR>OtraForma( <T>Personal<T>, Forma.ActualizarVista)<BR>OtraForma( <T>CDISocios<T>,Forma.ActualizarVista)
[Acciones.CDIAutorizarRelacion.Actualizar]
Nombre=Actualizar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S









[Lista.NombrePersonal2]
Carpeta=Lista
Clave=NombrePersonal2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





[Lista.CDIRelacionesPendiente.PersonalNuevo]
Carpeta=Lista
Clave=CDIRelacionesPendiente.PersonalNuevo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CDIRelacionesPendiente.CatalogoNuevo]
Carpeta=Lista
Clave=CDIRelacionesPendiente.CatalogoNuevo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


















[Lista.ListaEnCaptura]
(Inicio)=CDIRelacionesPendiente.NIPCDI
CDIRelacionesPendiente.NIPCDI=CDIRelacionesPendiente.Catalogo
CDIRelacionesPendiente.Catalogo=CDIRelacionesPendiente.Personal
CDIRelacionesPendiente.Personal=NombrePersonal
NombrePersonal=CDIRelacionesPendiente.RolAnterior
CDIRelacionesPendiente.RolAnterior=CDIRelacionesPendiente.CatalogoNuevo
CDIRelacionesPendiente.CatalogoNuevo=CDIRelacionesPendiente.PersonalNuevo
CDIRelacionesPendiente.PersonalNuevo=NombrePersonal2
NombrePersonal2=CDIRelacionesPendiente.PermiteRelacionCon
CDIRelacionesPendiente.PermiteRelacionCon=CDIRelacionesPendiente.FechaEmision
CDIRelacionesPendiente.FechaEmision=(Fin)

[Lista.ListaAcciones]
(Inicio)=LocalTodo
LocalTodo=LocalQuitar
LocalQuitar=(Fin)












[Acciones.CDIAutorizarRelacion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar
Actualizar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=CDIAutorizarRelacion
CDIAutorizarRelacion=(Fin)
