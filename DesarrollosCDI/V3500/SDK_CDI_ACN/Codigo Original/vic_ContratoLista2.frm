
[Forma]
Clave=vic_ContratoLista2
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=<T>Contratos<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Contrato
CarpetaPrincipal=Contrato
PosicionInicialIzquierda=270
PosicionInicialArriba=358
PosicionInicialAlturaCliente=273
PosicionInicialAncho=740
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=Seleccionar
[Contrato]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Contratos
Clave=Contrato
OtroOrden=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Contrato
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

FiltroEstatus=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroEmpresas=S
FiltroSucursales=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=VIGENTE
FiltroFechasCampo=Contrato.Desde
FiltroFechasNormal=S
FiltroFechasCancelacion=Contrato.FechaCancelacion
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S




Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Contrato.Estatus Not in (<T>BAJA<T>, <T>BLOQUEADO<T>,<T>CANCELADO<T>)<BR>AND Contrato.ID NOT IN (SELECT IDContratoRelacion FROM vic_ContratoRelaciones WHERE IDContrato= ISNULL({Info.ID},0) )
[Contrato.Columnas]
ID=64
Concepto=304



Titulo=293



[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S









Antes=S
AntesExpresiones=Asigna(Info.ID, Contrato:Contrato.ID)




[Contrato.Contrato.MovID]
Carpeta=Contrato
Clave=Contrato.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Contrato.ListaOrden]
(Inicio)=Contrato.Mov	(Acendente)
Contrato.Mov	(Acendente)=Contrato.MovID	(Acendente)
Contrato.MovID	(Acendente)=(Fin)


[Contrato.Contrato.Mov]
Carpeta=Contrato
Clave=Contrato.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Contrato.Contrato.Cliente]
Carpeta=Contrato
Clave=Contrato.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Contrato.Cte.Nombre]
Carpeta=Contrato
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[Contrato.Contrato.Estatus]
Carpeta=Contrato
Clave=Contrato.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco











[Contrato.Contrato.Desde]
Carpeta=Contrato
Clave=Contrato.Desde
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Contrato.Contrato.Hasta]
Carpeta=Contrato
Clave=Contrato.Hasta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Contrato.ListaEnCaptura]
(Inicio)=Contrato.Mov
Contrato.Mov=Contrato.MovID
Contrato.MovID=Contrato.Cliente
Contrato.Cliente=Cte.Nombre
Cte.Nombre=Contrato.Estatus
Contrato.Estatus=Contrato.Desde
Contrato.Desde=Contrato.Hasta
Contrato.Hasta=(Fin)

[Contrato.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=VIGENTE
VIGENTE=PENDIENTE
PENDIENTE=CANCELADO
CANCELADO=CONCLUIDO
CONCLUIDO=(Fin)
