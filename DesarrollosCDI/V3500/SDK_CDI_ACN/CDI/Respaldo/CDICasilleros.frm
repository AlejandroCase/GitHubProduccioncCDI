
[Forma]
Clave=CDICasilleros
Icono=0
Modulos=(Todos)
Nombre=CDICasilleros
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDICasilleros
PosicionInicialIzquierda=356
PosicionInicialArriba=15
PosicionInicialAlturaCliente=704
PosicionInicialAncho=648
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Informacion
[CDICasilleros]
Estilo=Hoja
Clave=CDICasilleros
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICasilleros
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
FiltroGrupo1=CDIVCasillerosXml.Seccion
FiltroGrupo2=CDIVCasillerosXml.Ubicacion
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
ValidarCampos=S
ListaCamposAValidar=(Lista)
OtroOrden=S
ListaOrden=CDICasilleros.Casillero<TAB>(Acendente)
BusquedaRapidaControles=S
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
MenuLocal=S
HojaTitulosEnBold=S
ListaAcciones=(Lista)
FiltroGrupo3=CDICasilleros.Tipo
FiltroEstatus=S
FiltroListaEstatus=(Lista)
HojaColoresPorCampo=S
HojaCampoColor=CDICasilleros.EstatusCas
HojaMostrarSeleccionColoresEsp=S
FiltroEstatusDefault=(Todos)
FiltroUsuarios=S
FiltroFechas=S
FiltroUsuarioSituacion=S
FiltroFechasCampo=CDICasilleros.FechaEmision
[CDICasilleros.CDICasilleros.Casillero]
Carpeta=CDICasilleros
Clave=CDICasilleros.Casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICasilleros.CDICasilleros.Tipo]
Carpeta=CDICasilleros
Clave=CDICasilleros.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICasilleros.CDICasilleros.Estatus]
Carpeta=CDICasilleros
Clave=CDICasilleros.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[CDICasilleros.CDICasilleros.Cilindro]
Carpeta=CDICasilleros
Clave=CDICasilleros.Cilindro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICasilleros.CDIVCasillerosXml.Seccion]
Carpeta=CDICasilleros
Clave=CDIVCasillerosXml.Seccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICasilleros.CDIVCasillerosXml.Ubicacion]
Carpeta=CDICasilleros
Clave=CDIVCasillerosXml.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDICasilleros.Columnas]
Casillero=64
Tipo=50
Estatus=51
EstatusA=55
Cliente=64
Membresia=94
EstatusCas=76
FechaEmision=75
UltimoCambio=122
Cilindro=48
Seccion=94
Ubicacion=67





















[Acciones.Expresion]
Nombre=Expresion
Boton=0
NombreDesplegar=Asignar
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

[Acciones.Expresion2]
Nombre=Expresion2
Boton=0
NombreDesplegar=traspasar
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S



















[CDICasilleros.CDICasilleros.EstatusCas]
Carpeta=CDICasilleros
Clave=CDICasilleros.EstatusCas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Expresion3]
Nombre=Expresion3
Boton=0
NombreDesplegar=Asignar Cilindro
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S













[CDICasilleros.ListaEnCaptura]
(Inicio)=CDIVCasillerosXml.Seccion
CDIVCasillerosXml.Seccion=CDIVCasillerosXml.Ubicacion
CDIVCasillerosXml.Ubicacion=CDICasilleros.Casillero
CDICasilleros.Casillero=CDICasilleros.Tipo
CDICasilleros.Tipo=CDICasilleros.Cilindro
CDICasilleros.Cilindro=CDICasilleros.EstatusCas
CDICasilleros.EstatusCas=CDICasilleros.Estatus
CDICasilleros.Estatus=CDICasilleros.FechaEmision
CDICasilleros.FechaEmision=(Fin)

[CDICasilleros.ListaCamposAValidar]
(Inicio)=CDICasilleros.Membresia
CDICasilleros.Membresia=CDICasilleros.Cliente
CDICasilleros.Cliente=Cte.Nombre
Cte.Nombre=Cte.Titular
Cte.Titular=CDICasilleros.FechaEmision
CDICasilleros.FechaEmision=CDIVCasillerosXml.Ubicacion
CDIVCasillerosXml.Ubicacion=(Fin)

[CDICasilleros.FiltroListaEstatus]
(Inicio)=DISPONIBLE
DISPONIBLE=(Todos)
(Todos)=(Fin)

[CDICasilleros.ListaAcciones]
(Inicio)=Expresion
Expresion=Expresion2
Expresion2=Expresion3
Expresion3=(Fin)

[CDICasilleros.CDICasilleros.FechaEmision]
Carpeta=CDICasilleros
Clave=CDICasilleros.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[aaa]
Estilo=Hoja
Pestana=S
Clave=aaa
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=cte
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Negro
CarpetaVisible=S






[Acciones.Informacion]
Nombre=Informacion
Boton=47
NombreDesplegar=Informacion
EnBarraHerramientas=S
TipoAccion=Expresion
Expresion=informacion(<T>xxxx<T>)
Activo=S
Visible=S



[Forma.ListaCarpetas]
(Inicio)=CDICasilleros
CDICasilleros=aaa
aaa=(Fin)
