
[Forma]
Clave=CDIChequesEmitidos
Icono=0
Modulos=(Todos)
Nombre=Cheques Emitidos

ListaCarpetas=CDIChequesEmitidos
CarpetaPrincipal=CDIChequesEmitidos
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1318
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
[CDIChequesEmitidos]
Estilo=Hoja
Clave=CDIChequesEmitidos
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIChequesEmitidos
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

BusquedaRapidaControles=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CDIChequesEmitidos.FechaEmision
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroFechasDefault=Hoy
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CDIChequesEmitidos.CtaDinero
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
MenuLocal=S
ListaAcciones=Activar
FiltroGeneral=EstaImpreso=1
[CDIChequesEmitidos.CDIChequesEmitidos.Mov]
Carpeta=CDIChequesEmitidos
Clave=CDIChequesEmitidos.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIChequesEmitidos.CDIChequesEmitidos.MovId]
Carpeta=CDIChequesEmitidos
Clave=CDIChequesEmitidos.MovId
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIChequesEmitidos.CDIChequesEmitidos.FechaEmision]
Carpeta=CDIChequesEmitidos
Clave=CDIChequesEmitidos.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIChequesEmitidos.CDIChequesEmitidos.Proyecto]
Carpeta=CDIChequesEmitidos
Clave=CDIChequesEmitidos.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIChequesEmitidos.CDIChequesEmitidos.concepto]
Carpeta=CDIChequesEmitidos
Clave=CDIChequesEmitidos.concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIChequesEmitidos.CDIChequesEmitidos.Referencia]
Carpeta=CDIChequesEmitidos
Clave=CDIChequesEmitidos.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIChequesEmitidos.CDIChequesEmitidos.Observaciones]
Carpeta=CDIChequesEmitidos
Clave=CDIChequesEmitidos.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIChequesEmitidos.CDIChequesEmitidos.BeneficiarioNombre]
Carpeta=CDIChequesEmitidos
Clave=CDIChequesEmitidos.BeneficiarioNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIChequesEmitidos.CDIChequesEmitidos.Importe]
Carpeta=CDIChequesEmitidos
Clave=CDIChequesEmitidos.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIChequesEmitidos.Columnas]
Mov=48
MovId=55
FechaEmision=81
Proyecto=90
concepto=60
Referencia=200
Observaciones=202
BeneficiarioNombre=326
Importe=64


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S






[Acciones.Activar]
Nombre=Activar
Boton=0
NombreDesplegar=Activar
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Antes=S
AntesExpresiones=sql(<T>xpcdiReactivarCheque :tC<T>,CDIChequesEmitidos:CDIChequesEmitidos.MovId)
Visible=S



[CDIChequesEmitidos.ListaEnCaptura]
(Inicio)=CDIChequesEmitidos.Mov
CDIChequesEmitidos.Mov=CDIChequesEmitidos.MovId
CDIChequesEmitidos.MovId=CDIChequesEmitidos.FechaEmision
CDIChequesEmitidos.FechaEmision=CDIChequesEmitidos.Proyecto
CDIChequesEmitidos.Proyecto=CDIChequesEmitidos.concepto
CDIChequesEmitidos.concepto=CDIChequesEmitidos.Referencia
CDIChequesEmitidos.Referencia=CDIChequesEmitidos.Observaciones
CDIChequesEmitidos.Observaciones=CDIChequesEmitidos.BeneficiarioNombre
CDIChequesEmitidos.BeneficiarioNombre=CDIChequesEmitidos.Importe
CDIChequesEmitidos.Importe=(Fin)
