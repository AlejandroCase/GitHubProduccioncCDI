[Forma]
Clave=CDIHerRenuevaSubsid
Nombre=Modificar Vencimiento - Subsidios
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=167
PosicionInicialArriba=120
PosicionInicialAltura=503
PosicionInicialAncho=1032
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionSeccion1=91
EsMovimiento=S
TituloAuto=S
MovModulo=SOC
MovEspecificos=Todos
EsConsultaExclusiva=S
PosicionInicialAlturaCliente=490

VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Fecha, Hoy)
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIHerRenuevaSubsidio
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
PestanaOtroNombre=S
BusquedaRapidaControles=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PENDIENTE
FiltroUsuarioDefault=(Usuario)
FiltroFechasNormal=S
FiltroMonedasCampo=Venta.Moneda
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
MenuLocal=S
ListaAcciones=(Lista)
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
BusquedaRespetarFiltros=S
BusquedaRespetarUsuario=S
FiltroFechasCampo=FechaEmision
FiltroFechasDefault=(Todo)
IconosSeleccionMultiple=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroMovDefault=(Todos)
FiltroSituacionTodo=S
FiltroSucursales=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroAutoCampo=(Validaciones Memoria)
FiltroAutoValidar=Alm
FiltroAutoOrden=Alm
FiltroTodo=S
FiltroAplicaEn=e.Almacen

ListaEnCaptura=(Lista)
IconosNombre=CDIHerRenuevaSubsidio:Mov + <T> - <T> + CDIHerRenuevaSubsidio:MovID
[Lista.Columnas]
0=157
1=96

2=106
3=86
4=77
5=-2
6=80
7=86
8=162
9=-2
[Acciones.Mostrar Campos]
Nombre=Mostrar Campos
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S
EspacioPrevio=S

[Acciones.SeleccionarTodo]
Nombre=SeleccionarTodo
Boton=0
NombreDesplegar=Seleccionar &Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S
EspacioPrevio=S

[(Variables).Info.Mov]
Carpeta=(Variables)
Clave=Info.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20

[Acciones.Seleccionar Todo]
Nombre=Seleccionar Todo
Boton=55
NombreEnBoton=S
NombreDesplegar=Seleccionar &Todo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S
EspacioPrevio=S

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

[Acciones.QuitarSeleccion]
Nombre=QuitarSeleccion
Boton=0
NombreDesplegar=&Quitar Seleccion
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S



[Acciones.Localizar]
Nombre=Localizar
Boton=0
UsaTeclaRapida=S
TeclaRapida=Alt+F3
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.LocalizarSiguiente]
Nombre=LocalizarSiguiente
Boton=0
UsaTeclaRapida=S
TeclaRapida=F3
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=0
NombreDesplegar=Presentación preliminar
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=0
NombreDesplegar=Enviar a Excel
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.LocalCampos]
Nombre=LocalCampos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S







[Lista.FechaEmision]
Carpeta=Lista
Clave=FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.FechaVigencia]
Carpeta=Lista
Clave=FechaVigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Referencia]
Carpeta=Lista
Clave=Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Concepto]
Carpeta=Lista
Clave=Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[Lista.Socio]
Carpeta=Lista
Clave=Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





[Lista.Membresia]
Carpeta=Lista
Clave=Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Nombre]
Carpeta=Lista
Clave=Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=152
ColorFondo=Blanco











[Lista.ImporteSubsidio]
Carpeta=Lista
Clave=ImporteSubsidio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


























[Acciones.Vencimiento]
Nombre=Vencimiento
Boton=78
NombreEnBoton=S
NombreDesplegar=Modificar &Vencimiento
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=EspecificarFecha
Activo=S
Visible=S




EspacioPrevio=S
[Acciones.Procesar]
Nombre=Procesar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Generar Subsidio
EnBarraHerramientas=S
Activo=S
Visible=S












TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Antes=S








ConCondicion=S
EjecucionConError=S
EjecucionCondicion=(ConDatos(Info.Fecha) y Info.Fecha > Hoy)
EjecucionMensaje=<T>La fecha debe ser mayor a hoy<T>
AntesExpresiones=Si Informacion(<T>Se generaran los nuevos subsidios con Vencimiento al <T> + Info.Fecha, BotonAceptar, BotonCancelar) = BotonAceptar<BR>Entonces RegistrarSeleccion<BR>         ProcesarSQL(<T>spCDIRenuevaSubsidio :nEstacion, :tUsuario, :fFecha, :Porcent<T>, EstacionTrabajo, Usuario, Info.Fecha, Info.Tasa)<BR>Fin
[Lista.ListaEnCaptura]
(Inicio)=FechaEmision
FechaEmision=FechaVigencia
FechaVigencia=Referencia
Referencia=Concepto
Concepto=ImporteSubsidio
ImporteSubsidio=Socio
Socio=Membresia
Membresia=Nombre
Nombre=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=SINAFECTAR
SINAFECTAR=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)

[Lista.ListaAcciones]
(Inicio)=Localizar
Localizar=LocalizarSiguiente
LocalizarSiguiente=SeleccionarTodo
SeleccionarTodo=QuitarSeleccion
QuitarSeleccion=Imprimir
Imprimir=Preliminar
Preliminar=Enviar a Excel
Enviar a Excel=LocalCampos
LocalCampos=(Fin)






































































[Acciones.Porcentaje]
Nombre=Porcentaje
Boton=98
NombreDesplegar=&Porcentaje
EnBarraHerramientas=S
TipoAccion=Formas
Activo=S
Visible=S



NombreEnBoton=S




ClaveAccion=EspecificarTasa






EspacioPrevio=S




[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Seleccionar Todo
Seleccionar Todo=Mostrar Campos
Mostrar Campos=Vencimiento
Vencimiento=Porcentaje
Porcentaje=Procesar
Procesar=(Fin)
