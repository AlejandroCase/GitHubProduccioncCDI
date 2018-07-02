
[Forma]
Clave=CDIReasignaCobradorP
Icono=111
Modulos=(Todos)
Nombre=<T>Reasignar Cobrador<T>

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=470
PosicionInicialAncho=858
PosicionInicialIzquierda=270
PosicionInicialArriba=92
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Forma(<T>CDIReasignaCobrador<T>)
Comentarios=Info.AgenteD
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIReasignaCobrador
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Socio<T>
ElementosPorPaginaEsp=200
IconosSeleccionMultiple=S
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
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=CteCat
FiltroAplicaEn1=Categoria
FiltroTodo=S
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=CteGrupo
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=CteFam
FiltroAplicaEn2=Grupo
FiltroAplicaEn3=Familia
PestanaOtroNombre=S
PestanaNombre=Registro(s)
MenuLocal=S
ListaAcciones=(Lista)
IconosNombre=CDIReasignaCobrador:Socio
FiltroGeneral=Agente = <T>{Info.AgenteD}<T>
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


[Lista.Columnas]
0=106
1=103
2=264
3=135




















[Lista.Saldo]
Carpeta=Lista
Clave=Saldo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

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

[Acciones.Generar]
Nombre=Generar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Generar Reasignación
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S
Visible=S


































EspacioPrevio=S
ClaveAccion=Actualizar Vista
ConCondicion=S
EjecucionConError=S
Antes=S
EjecucionCondicion=ConDatos(Info.AgenteA)
EjecucionMensaje=<T>Falta indicar el Nuevo Cobrador de las Membresias<T>
AntesExpresiones=Si Informacion(<T>Se Reasignaran las Membresias del Cobrador <T> + Info.AgenteD + <T> al Cobrador: <T> + Info.AgenteA, BotonAceptar, BotonCancelar) = BotonAceptar<BR>Entonces RegistrarSeleccion<BR>         ProcesarSQL(<T>spCDIReasignaCobrador :nEstacion, :tUsuario, :tAgente<T>, EstacionTrabajo, Usuario, Info.AgenteA)<BR>Fin
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=0
NombreDesplegar=&Seleccionar Todos
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S

[Acciones.QuitarSeleccion]
Nombre=QuitarSeleccion
Boton=0
NombreDesplegar=&Quitar Selección
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S



[Acciones.Selecciona]
Nombre=Selecciona
Boton=55
NombreEnBoton=S
NombreDesplegar=&Seleccionar Todo
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S






[Acciones.MostrarCampo]
Nombre=MostrarCampo
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



EspacioPrevio=S





































[Lista.ListaEnCaptura]
(Inicio)=Membresia
Membresia=Nombre
Nombre=Saldo
Saldo=(Fin)

[Lista.ListaAcciones]
(Inicio)=Seleccionar
Seleccionar=QuitarSeleccion
QuitarSeleccion=(Fin)


















































[Acciones.CambiaAgente]
Nombre=CambiaAgente
Boton=81
NombreEnBoton=S
NombreDesplegar=&Otro Agente
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S



Antes=S






AntesExpresiones=Forma(<T>CDIReasignaCobrador<T>)






[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Selecciona
Selecciona=CambiaAgente
CambiaAgente=MostrarCampo
MostrarCampo=Generar
Generar=(Fin)
