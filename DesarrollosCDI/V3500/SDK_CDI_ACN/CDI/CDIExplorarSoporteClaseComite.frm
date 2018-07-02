
[Forma]
Clave=CDIExplorarSoporteClaseComite
Icono=0
Modulos=(Todos)
Nombre=<T>Explorando - Movimientos<T>
BarraHerramientas=S
EsMovimiento=S
MovModulo=ST
TituloAuto=S
MovEspecificos=Todos
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=58
PosicionInicialArriba=64
PosicionInicialAlturaCliente=540
PosicionInicialAncho=1104
ListaAcciones=(Lista)
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=movimientos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=SoporteA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroAplicaEn=Soporte.Clase
FiltroPredefinido=S
FiltroGrupo1=Soporte.Clase
FiltroValida1=Soporte.Clase
FiltroGrupo2=Soporte.Subclase
FiltroValida2=Soporte.SubClase
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroEstatus=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PENDIENTE
FiltroUsuarioDefault=(Usuario)
FiltroFechasCampo=Soporte.FechaEmision
FiltroFechasDefault=Esta Semana
FiltroMovDefault=(Todos)
FiltroFechasNormal=S
FiltroFechasCancelacion=Soporte.FechaCancelacion
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S


IconosNombre=SoporteA:Soporte.Mov + <T> <T> + SoporteA:Soporte.MovID
FiltroGeneral=Soporte.SubModulo=<T>SI<T> and<BR>Soporte.Proyecto=<T>{Usuario.DefProyecto}<T>
[Lista.Soporte.FechaEmision]
Carpeta=Lista
Clave=Soporte.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Soporte.Concepto]
Carpeta=Lista
Clave=Soporte.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Soporte.Referencia]
Carpeta=Lista
Clave=Soporte.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Soporte.Observaciones]
Carpeta=Lista
Clave=Soporte.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Soporte.Prioridad]
Carpeta=Lista
Clave=Soporte.Prioridad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2

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

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S


[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S


[Acciones.MostrarCampos]
Nombre=MostrarCampos
Boton=45
NombreDesplegar=Mostrar Campos
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S




[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Presentación Preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S


[Acciones.Propiedades]
Nombre=Propiedades
Boton=35
NombreDesplegar=Propiedades
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
Visible=S




ConCondicion=S
EjecucionCondicion=ConDatos(SoporteA:Soporte.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>ST<T>)<BR>Asigna(Info.ID, SoporteA:Soporte.ID)















[Lista.ListaEnCaptura]
(Inicio)=Soporte.FechaEmision
Soporte.FechaEmision=Soporte.Concepto
Soporte.Concepto=Soporte.Referencia
Soporte.Referencia=Soporte.Observaciones
Soporte.Observaciones=Soporte.Prioridad
Soporte.Prioridad=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=SINAFECTAR
SINAFECTAR=ALTAPRIORIDAD
ALTAPRIORIDAD=PRIORIDADBAJA
PRIORIDADBAJA=(Fin)






[Acciones.Bitacora]
Nombre=Bitacora
Boton=56
NombreEnBoton=S
NombreDesplegar=&Bitacora
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovBitacora
Activo=S
Antes=S
Visible=S







AntesExpresiones=Asigna(Info.Modulo, <T>ST<T>)<BR>Asigna(Info.ID, SoporteA:Soporte.ID)<BR>Asigna(Info.Mov, SoporteA:Soporte.Mov)<BR>Asigna(Info.MovID, SoporteA:Soporte.MovID)<BR>Asigna(Info.PuedeEditar, SoporteA:Soporte.Estatus noen (EstatusConcluido, EstatusCancelado) y PuedeModificar(SoporteA:Soporte.Usuario))


[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Excel
Excel=Preliminar
Preliminar=Propiedades
Propiedades=MostrarCampos
MostrarCampos=Bitacora
Bitacora=(Fin)
