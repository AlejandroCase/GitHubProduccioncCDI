
[Forma]
Clave=vic_ContratoLista
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

ListaOrden=Contrato.ID<TAB>(Acendente)
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
FiltroFechasCampo=Contrato.FechaEmision
FiltroFechasNormal=S
FiltroFechasCancelacion=Contrato.FechaCancelacion
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S


[Contrato.Contrato.ID]
Carpeta=Contrato
Clave=Contrato.ID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Contrato.Contrato.Concepto]
Carpeta=Contrato
Clave=Contrato.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

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














[Contrato.ListaEnCaptura]
(Inicio)=Contrato.ID
Contrato.ID=Contrato.Concepto
Contrato.Concepto=(Fin)

[Contrato.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=VIGENTE
VIGENTE=PENDIENTE
PENDIENTE=CANCELADO
CANCELADO=CONCLUIDO
CONCLUIDO=(Fin)
