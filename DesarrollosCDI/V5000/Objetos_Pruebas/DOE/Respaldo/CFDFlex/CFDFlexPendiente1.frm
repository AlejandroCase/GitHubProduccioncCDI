
[Forma]
Clave=CFDFlexPendiente1
Icono=0
CarpetaPrincipal=CFDFlexPendiente1
BarraHerramientas=S
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Monitor CFD Flexible
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=CFDFlexPendiente1
PosicionInicialIzquierda=1742
PosicionInicialArriba=172
PosicionInicialAlturaCliente=642
PosicionInicialAncho=996
ListaAcciones=(Lista)




[CFDFlexPendiente1.Columnas]
0=87
1=90
2=100
3=252























4=82
5=82
6=121
[Acciones.Expresion]
Nombre=Expresion
Boton=7
NombreDesplegar=&Generar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S
NombreEnBoton=S

EspacioPrevio=S
Expresion=Si<BR>  CuantosSeleccionID(<T>CFDFlexPendiente1<T>)>0<BR>Entonces<BR>  RegistrarSeleccionID(<T>CFDFlexPendiente1<T>)<BR><BR>ProcesarSQL(<T> spGenerarCFDFlexLote :nEstacion, :tEmpresa<T>,EstacionTrabajo,Empresa)  <BR><BR>Fin<BR>ActualizarForma
[Acciones.Cerrar]
Nombre=Cerrar
Boton=21
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
















[Acciones.Seleccionar Todo]
Nombre=Seleccionar Todo
Boton=0
NombreDesplegar=Seleccionar Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S

[Acciones.Quitar Seleccion]
Nombre=Quitar Seleccion
Boton=0
NombreDesplegar=Quitar Seleccion
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S












[CFDFlexPendiente1]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Movimientos Pendientes
Clave=CFDFlexPendiente1
Filtros=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDFlexPendiente1
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
IconosSeleccionMultiple=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroAutoCampo=CFDFlexPendiente1.Modulo
FiltroAutoValidar=CFDFlexPendiente1.Modulo
FiltroAutoOrden=CFDFlexPendiente1.Modulo
FiltroGrupo1=CFDFlexPendiente1.Modulo
FiltroValida1=CFDFlexPendiente1.Modulo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroEstatus=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSucursales=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PROCESANDO
FiltroFechasCampo=CFDFlexPendiente1.FechaEmision
FiltroFechasDefault=Hoy
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaRespetarFiltros=S
BusquedaEnLinea=S
ListaAcciones=(Lista)
CarpetaVisible=S





IconosNombre=CFDFlexPendiente1:CFDFlexPendiente1.Mov
FiltroGeneral=CFDFlexPendiente1.Empresa = <T>{Empresa}<T>
[CFDFlexPendiente1.ReceptorNombre]
Carpeta=CFDFlexPendiente1
Clave=ReceptorNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[CFDFlexPendiente1.ImporteTotal]
Carpeta=CFDFlexPendiente1
Clave=ImporteTotal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CFDFlexPendiente1.ListaEnCaptura]
(Inicio)=CFDFlexPendiente1.MovID
CFDFlexPendiente1.MovID=CFDFlexPendiente1.Cliente_Proveedor
CFDFlexPendiente1.Cliente_Proveedor=ReceptorNombre
ReceptorNombre=CFDFlexPendiente1.Importe
CFDFlexPendiente1.Importe=CFDFlexPendiente1.Impuestos
CFDFlexPendiente1.Impuestos=ImporteTotal
ImporteTotal=(Fin)

[CFDFlexPendiente1.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ERROR
ERROR=PROCESANDO
PROCESANDO=(Fin)

[CFDFlexPendiente1.ListaAcciones]
(Inicio)=Seleccionar Todo
Seleccionar Todo=Quitar Seleccion
Quitar Seleccion=(Fin)

[CFDFlexPendiente1.CFDFlexPendiente1.MovID]
Carpeta=CFDFlexPendiente1
Clave=CFDFlexPendiente1.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CFDFlexPendiente1.CFDFlexPendiente1.Cliente_Proveedor]
Carpeta=CFDFlexPendiente1
Clave=CFDFlexPendiente1.Cliente_Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CFDFlexPendiente1.CFDFlexPendiente1.Importe]
Carpeta=CFDFlexPendiente1
Clave=CFDFlexPendiente1.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CFDFlexPendiente1.CFDFlexPendiente1.Impuestos]
Carpeta=CFDFlexPendiente1
Clave=CFDFlexPendiente1.Impuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





























[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Expresion
Expresion=(Fin)
