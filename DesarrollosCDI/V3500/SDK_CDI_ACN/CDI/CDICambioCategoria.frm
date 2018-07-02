
[Forma]
Clave=CDICambioCategoria
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=<T>Cambio de Categoria<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Principal
CarpetaPrincipal=Principal
PosicionInicialIzquierda=171
PosicionInicialArriba=93
PosicionInicialAlturaCliente=477
PosicionInicialAncho=966
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
ListaAcciones=(Lista)
ExpresionesAlMostrar=EjecutarSQL(<T>spCDISugiereCategoria :nEst, :tTipo<T>, EstacionTrabajo, <T>Ini<T>)
[Principal]
Estilo=Iconos
Clave=Principal
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICambioCategoria
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Socio<T>
IconosSeleccionMultiple=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

MenuLocal=S
ListaAcciones=(Lista)
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
BusquedaRapidaControles=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=CteTipo
FiltroAplicaEn1=CDICambioCategoria.Tipo
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FiltroTodo=S
BusquedaRapida=S
BusquedaEnLinea=S
PestanaOtroNombre=S
PestanaNombre=Socio(s)
IconosNombre=CDICambioCategoria:CDICambioCategoria.Socio
FiltroGeneral=Estacion = <T>{EstacionTrabajo}<T>
[Principal.CDICambioCategoria.Membresia]
Carpeta=Principal
Clave=CDICambioCategoria.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Principal.CDICambioCategoria.Nombre]
Carpeta=Principal
Clave=CDICambioCategoria.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Principal.CDICambioCategoria.APaterno]
Carpeta=Principal
Clave=CDICambioCategoria.APaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Principal.CDICambioCategoria.AMaterno]
Carpeta=Principal
Clave=CDICambioCategoria.AMaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Principal.CDICambioCategoria.Estatus]
Carpeta=Principal
Clave=CDICambioCategoria.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Principal.CDICambioCategoria.Titular]
Carpeta=Principal
Clave=CDICambioCategoria.Titular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Principal.CDICambioCategoria.MotivoCambio]
Carpeta=Principal
Clave=CDICambioCategoria.MotivoCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Principal.CDICambioCategoria.Categoria]
Carpeta=Principal
Clave=CDICambioCategoria.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Principal.CDICambioCategoria.CategoriaSug]
Carpeta=Principal
Clave=CDICambioCategoria.CategoriaSug
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Principal.CDICambioCategoria.Tipo]
Carpeta=Principal
Clave=CDICambioCategoria.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Principal.Columnas]
0=102
1=82
2=117
3=141
4=131
5=80
6=44
7=140
8=117
9=127
10=68


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

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=55
NombreEnBoton=S
NombreDesplegar=&Selecciona Todo
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S




[Acciones.Sugerir]
Nombre=Sugerir
Boton=92
NombreEnBoton=S
NombreDesplegar=S&ugerir Cambio Categoria
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S
Visible=S



ClaveAccion=Actualizar Vista
Antes=S





AntesExpresiones=EjecutarSQL(<T>spCDISugiereCategoria :nEst, :tTipo<T>, EstacionTrabajo, <T>Sug<T>)
[Acciones.Selecciona]
Nombre=Selecciona
Boton=0
NombreDesplegar=&Seleccionar Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S

[Acciones.QuitarSeleccion]
Nombre=QuitarSeleccion
Boton=0
NombreDesplegar=Quitas Selección
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S



[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=Personalizar Vista
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S
Visible=S



Carpeta=(Carpeta principal)
ClaveAccion=Mostrar Campos




EspacioPrevio=S


































[Principal.ListaEnCaptura]
(Inicio)=CDICambioCategoria.Membresia
CDICambioCategoria.Membresia=CDICambioCategoria.Nombre
CDICambioCategoria.Nombre=CDICambioCategoria.APaterno
CDICambioCategoria.APaterno=CDICambioCategoria.AMaterno
CDICambioCategoria.AMaterno=CDICambioCategoria.Estatus
CDICambioCategoria.Estatus=CDICambioCategoria.Titular
CDICambioCategoria.Titular=CDICambioCategoria.MotivoCambio
CDICambioCategoria.MotivoCambio=CDICambioCategoria.Categoria
CDICambioCategoria.Categoria=CDICambioCategoria.CategoriaSug
CDICambioCategoria.CategoriaSug=CDICambioCategoria.Tipo
CDICambioCategoria.Tipo=(Fin)

[Principal.ListaAcciones]
(Inicio)=Selecciona
Selecciona=QuitarSeleccion
QuitarSeleccion=(Fin)




[Acciones.Cambio]
Nombre=Cambio
Boton=7
NombreDesplegar=<T>&Generar Cambio de Categoria<T>
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S









NombreEnBoton=S












Antes=S
























AntesExpresiones=Si Informacion(<T>Se Generarán los cambios de Categoria<T>, BotonAceptar, BotonCancelar) = BotonAceptar<BR>Entonces RegistrarSeleccion<BR>         ProcesarSQL(<T>spCDICambiaCategoria :nEstacion, :tUsuario, :tEmpresa<T>, EstacionTrabajo, Usuario, Empresa)<BR>Fin






[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Personalizar
Personalizar=Seleccionar
Seleccionar=Sugerir
Sugerir=Cambio
Cambio=(Fin)
