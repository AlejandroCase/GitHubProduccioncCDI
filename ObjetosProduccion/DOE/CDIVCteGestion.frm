[Forma]
Clave=CDIVCteGestion
Icono=0
Modulos=(Todos)
Nombre=Gestión Membresia
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIVCteGestion
PosicionInicialIzquierda=0
PosicionInicialArriba=12
PosicionInicialAlturaCliente=705
PosicionInicialAncho=1382
PosicionSec1=365
BarraAyudaEsp=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Totalizadores=S
PosicionSec2=320
PosicionCol1=1112
ListaAcciones=(Lista)
[CDIVCteGestion]
Estilo=Hoja
Clave=CDIVCteGestion
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVCteGestion
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
FiltroGrupo1=CDIVCteGestion.Gestor
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
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
ListaAcciones=(Lista)
HojaOrdenarColumnas=S
FiltroGrupo2=CDIVCteGestion.SituacionGestion
FiltroUsuarios=S
FiltroUsuarioDefault=(Todos)
FiltroGrupo3=CDIVCteGestion.Estatus
ValidarCampos=S
ListaCamposAValidar=(Lista)
HojaIndicador=S

FiltroGeneral=SituacionGestion=<T>Gestion<T> and isnull(Membresia,<T>99999999999<T>)<9999999999 and convert(int,DiasVencido)<=180
[CDIVCteGestion.CDIVCteGestion.Socio]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVCteGestion.CDIVCteGestion.Membresia]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVCteGestion.CDIVCteGestion.Nombre]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIVCteGestion.CDIVCteGestion.Estatus]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIVCteGestion.CDIVCteGestion.Descripcion13]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVCteGestion.CDIVCteGestion.SituacionGestion]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.SituacionGestion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[CDIVCteGestion.Columnas]
Cliente=64
Socio=54
Membresia=64
Nombre=192
Estatus=45
Descripcion13=81
SituacionGestion=101
Gestor=106
GestorNombre=192






CDIFormaPago=64
Categoria=70
SubCategoria=84
DiasVencido=64
[Det.CDIVMemGestion.mov]
Carpeta=Det
Clave=CDIVMemGestion.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Det.CDIVMemGestion.movid]
Carpeta=Det
Clave=CDIVMemGestion.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Det.CDIVMemGestion.fechaemision]
Carpeta=Det
Clave=CDIVMemGestion.fechaemision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Det.CDIVMemGestion.agente]
Carpeta=Det
Clave=CDIVMemGestion.agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[Det.Columnas]
mov=124
movid=124
fechaemision=94
agente=64


[Det.ListaEnCaptura]
(Inicio)=CDIVMemGestion.mov
CDIVMemGestion.mov=CDIVMemGestion.movid
CDIVMemGestion.movid=CDIVMemGestion.fechaemision
CDIVMemGestion.fechaemision=CDIVMemGestion.agente
CDIVMemGestion.agente=(Fin)














[CDIVMemGestionD]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Asignación
Clave=CDIVMemGestionD
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVMemGestionD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIVCteGestion
LlaveLocal=CDIVMemGestionD.socio
LlaveMaestra=CDIVCteGestion.Socio
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

RefrescarAlEntrar=S
HojaIndicador=S
HojaOrdenarColumnas=S
[CDIVMemGestionD.CDIVMemGestionD.mov]
Carpeta=CDIVMemGestionD
Clave=CDIVMemGestionD.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGestionD.CDIVMemGestionD.movid]
Carpeta=CDIVMemGestionD
Clave=CDIVMemGestionD.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGestionD.CDIVMemGestionD.fechaemision]
Carpeta=CDIVMemGestionD
Clave=CDIVMemGestionD.fechaemision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVMemGestionD.CDIVMemGestionD.estatus]
Carpeta=CDIVMemGestionD
Clave=CDIVMemGestionD.estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIVMemGestionD.CDIVMemGestionD.agente]
Carpeta=CDIVMemGestionD
Clave=CDIVMemGestionD.agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVMemGestionD.CDIVMemGestionD.membresiainicial]
Carpeta=CDIVMemGestionD
Clave=CDIVMemGestionD.membresiainicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIVMemGestionc]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cobros gestión
Clave=CDIVMemGestionc
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVMemGestionc
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIVCteGestion
LlaveLocal=CDIVMemGestionc.membresiainicial
LlaveMaestra=CDIVCteGestion.Membresia
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco

CarpetaVisible=S











ListaEnCaptura=(Lista)
BusquedaRapidaControles=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CDIVMemGestionc.fechaemision
FiltroFechasDefault=(Todo)
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
RefrescarAlEntrar=S
HojaIndicador=S
HojaOrdenarColumnas=S
[CDIVMemGestionCS.CDIVMemGestionCS.mov]
Carpeta=CDIVMemGestionCS
Clave=CDIVMemGestionCS.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGestionCS.CDIVMemGestionCS.movid]
Carpeta=CDIVMemGestionCS
Clave=CDIVMemGestionCS.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGestionCS.CDIVMemGestionCS.fechaemision]
Carpeta=CDIVMemGestionCS
Clave=CDIVMemGestionCS.fechaemision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVMemGestionCS.CDIVMemGestionCS.estatus]
Carpeta=CDIVMemGestionCS
Clave=CDIVMemGestionCS.estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIVMemGestionCS.CDIVMemGestionCS.agente]
Carpeta=CDIVMemGestionCS
Clave=CDIVMemGestionCS.agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVMemGestionCS.CDIVMemGestionCS.membresiainicial]
Carpeta=CDIVMemGestionCS
Clave=CDIVMemGestionCS.membresiainicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVMemGestionCS.CDIVMemGestionCS.SitPreviav]
Carpeta=CDIVMemGestionCS
Clave=CDIVMemGestionCS.SitPreviav
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVMemGestionCS.CDIVMemGestionCS.SitNueva]
Carpeta=CDIVMemGestionCS
Clave=CDIVMemGestionCS.SitNueva
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[CDIVMemGestionD.Columnas]
mov=124
movid=63
fechaemision=94
estatus=94
agente=64
membresiainicial=80

socio=84
Observaciones=397
referencia=304
[CDIVMemGestionc.Columnas]
mov=94
movid=71
fechaemision=71
estatus=72
agente=79
MovCxC=72
MovIdCxC=69
FechaDocto=69
Concepto=89
Saldo=64

IdCobroMov=77
IdCobroMovId=98
membresiainicial=64
Observaciones=164
referencia=140
[CDIVMemGestionCS.Columnas]
mov=124
movid=124
fechaemision=94
estatus=94
agente=64
membresiainicial=99
SitPreviav=88
SitNueva=96


[CDIVMemGestionCS]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Situación
Clave=CDIVMemGestionCS
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVMemGestionCS
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIVCteGestion
LlaveLocal=CDIVMemGestionCS.membresiainicial
LlaveMaestra=CDIVCteGestion.Membresia
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
FiltroFechasCampo=CDIVMemGestionCS.fechaemision
FiltroFechasDefault=(Todo)
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
RefrescarAlEntrar=S
OtroOrden=S
ListaOrden=CDIVMemGestionCS.ID<TAB>(Decendente)
HojaIndicador=S
HojaOrdenarColumnas=S
[Acciones.Gestion]
Nombre=Gestion
Boton=0
NombreDesplegar=Gestionar
EnMenu=S
TipoAccion=Formas
ClaveAccion=Campana
Activo=S
Visible=S




Antes=S
AntesExpresiones=asigna(Info.CDIMembresia,CDIVCteGestion:CDIVCteGestion.Membresia)asigna(Info.Agente,CDIVCteGestion:CDIVCteGestion.Gestor)
[Pendientes]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Pendientes CxC
Clave=Pendientes
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVGesPendCXC
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIVCteGestion
LlaveLocal=CDIVGesPendCXC.membresia
LlaveMaestra=CDIVCteGestion.Membresia
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

RefrescarAlEntrar=S
HojaIndicador=S
HojaOrdenarColumnas=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=membresia>0
[Pendientes.CDIVGesPendCXC.Mov]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Pendientes.CDIVGesPendCXC.MovId]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.MovId
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Pendientes.CDIVGesPendCXC.FechaEmision]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Pendientes.CDIVGesPendCXC.Vencimiento]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Pendientes.CDIVGesPendCXC.Concepto]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Pendientes.CDIVGesPendCXC.DiasVencido]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.DiasVencido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Pendientes.Columnas]
Mov=105
MovId=64
FechaEmision=94
FechaRequerida=94
Vencimiento=94
Concepto=90
DiasVencido=64
diasgestion=72


saldo=64
CDIsocio=73
nombre=276
membresia=64
[Acciones.Inf0cte]
Nombre=Inf0cte
Boton=0
NombreDesplegar=Información
EnMenu=S
TipoAccion=Formas
ClaveAccion=cteInfo
Activo=S
Antes=S
Visible=S







EspacioPrevio=S
AntesExpresiones=asigna(info.cliente,CDIVCteGestion:CDIVCteGestion.Cliente)
[CDIVMemGestionc.CDIVMemGestionc.mov]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.movid]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.fechaemision]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.fechaemision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.estatus]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.agente]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.MovCxC]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.MovCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.MovIdCxC]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.MovIdCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.FechaDocto]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.FechaDocto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.Concepto]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.Saldo]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.Saldo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDIVMemGest]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Gestión
Clave=CDIVMemGest
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVMemGest
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIVCteGestion
LlaveLocal=CDIVMemGest.membresiainicial
LlaveMaestra=CDIVCteGestion.Membresia
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=(Lista)


OtroOrden=S
ListaOrden=CDIVMemGest.ID<TAB>(Decendente)
BusquedaRapidaControles=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CDIVMemGest.fechaemision
FiltroFechasDefault=(Todo)
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
RefrescarAlEntrar=S
HojaIndicador=S
HojaOrdenarColumnas=S
MenuLocal=S
ListaAcciones=Observaciones
[CDIVMemGest.CDIVMemGest.mov]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.movid]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.fechaemision]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.fechaemision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.estatus]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.agente]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.Accion]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.Accion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.Acuerdo]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.Acuerdo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.Contacto]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.Contacto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.FechaCompromiso]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.FechaCompromiso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.FormaPago]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[CDIVMemGest.Columnas]
mov=70
movid=71
fechaemision=71
estatus=74
agente=64
Accion=81
Acuerdo=158
Contacto=92
FechaCompromiso=94
FormaPago=111




membresiainicial=64

Observaciones=193
Referencia=154
MembresiaInicial=64
Mov=70
Movid=71
FechaEmision=71
Estatus=74
Agente=64
Observa=179
[CDIVMemGestionc.CDIVMemGestionc.IdCobroMov]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.IdCobroMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.IdCobroMovId]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.IdCobroMovId
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Saldo<BR>Promedio Dias Pago<BR>Ultima Gestión<BR>Tiempo Gestión<BR>Membresias
Totalizadores2=suma(CDIVGesPendCXC:CDIVGesPendCXC.saldo)<BR>sql(<T>xpCDIGestProm :nM<T>,CDIVCteGestion:CDIVCteGestion.Membresia)<BR>sql(<T>xpCDIGestFecha :nM<T>,CDIVCteGestion:CDIVCteGestion.Membresia)<BR>sql(<T>xpCDIDiasGest :nM<T>,CDIVCteGestion:CDIVCteGestion.Membresia)<BR>sql(<T>xpcdiMemGEst :tM<T>,CDIVCteGestion:CDIVCteGestion.Gestor)
Totalizadores=S
TotCarpetaRenglones=Pendientes
TotExpresionesEnSumas=S
TotAlCambiar=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S











ListaEnCaptura=(Lista)



Totalizadores3=(Monetario)<BR>(Cantidades)<BR>dd/mmmm/aaaa<BR>(Cantidades)
[(Carpeta Totalizadores).Saldo]
Carpeta=(Carpeta Totalizadores)
Clave=Saldo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata





[Pendientes.CDIVGesPendCXC.saldo]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.saldo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco















































[(Carpeta Totalizadores).Promedio Dias Pago]
Carpeta=(Carpeta Totalizadores)
Clave=Promedio Dias Pago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata


[(Carpeta Totalizadores).Membresias]
Carpeta=(Carpeta Totalizadores)
Clave=Membresias
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata




[CDIVMemGestionD.CDIVMemGestionD.socio]
Carpeta=CDIVMemGestionD
Clave=CDIVMemGestionD.socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[CDIVMemGestionc.CDIVMemGestionc.membresiainicial]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.membresiainicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Pendientes.CDIVGesPendCXC.CDIsocio]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.CDIsocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Pendientes.CDIVGesPendCXC.nombre]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Pendientes.CDIVGesPendCXC.membresia]
Carpeta=Pendientes
Clave=CDIVGesPendCXC.membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIVMemGest.CDIVMemGest.membresiainicial]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.membresiainicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[(Carpeta Totalizadores).Ultima Gestión]
Carpeta=(Carpeta Totalizadores)
Clave=Ultima Gestión
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
























[Acciones.Tarjeton]
Nombre=Tarjeton
Boton=0
NombreDesplegar=Tarjetón
EnMenu=S
EspacioPrevio=S
TipoAccion=formas
ClaveAccion=CDIExpTarjeton
Activo=S
Antes=S
Visible=S




















AntesExpresiones=asigna(info.cliente,CDIVCteGestion:CDIVCteGestion.Cliente)
[CDIVMemGest.CDIVMemGest.Observaciones]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIVMemGest.CDIVMemGest.Referencia]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco





[CDIVMemGestionD.CDIVMemGestionD.Observaciones]
Carpeta=CDIVMemGestionD
Clave=CDIVMemGestionD.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIVMemGestionD.CDIVMemGestionD.referencia]
Carpeta=CDIVMemGestionD
Clave=CDIVMemGestionD.referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco






[CDIVMemGestionc.CDIVMemGestionc.Observaciones]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIVMemGestionc.CDIVMemGestionc.referencia]
Carpeta=CDIVMemGestionc
Clave=CDIVMemGestionc.referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco












[(Carpeta Totalizadores).Tiempo Gestión]
Carpeta=(Carpeta Totalizadores)
Clave=Tiempo Gestión
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata






[CDIVMemGestionc.ListaEnCaptura]
(Inicio)=CDIVMemGestionc.membresiainicial
CDIVMemGestionc.membresiainicial=CDIVMemGestionc.mov
CDIVMemGestionc.mov=CDIVMemGestionc.movid
CDIVMemGestionc.movid=CDIVMemGestionc.fechaemision
CDIVMemGestionc.fechaemision=CDIVMemGestionc.estatus
CDIVMemGestionc.estatus=CDIVMemGestionc.agente
CDIVMemGestionc.agente=CDIVMemGestionc.Observaciones
CDIVMemGestionc.Observaciones=CDIVMemGestionc.referencia
CDIVMemGestionc.referencia=CDIVMemGestionc.MovCxC
CDIVMemGestionc.MovCxC=CDIVMemGestionc.MovIdCxC
CDIVMemGestionc.MovIdCxC=CDIVMemGestionc.FechaDocto
CDIVMemGestionc.FechaDocto=CDIVMemGestionc.Concepto
CDIVMemGestionc.Concepto=CDIVMemGestionc.Saldo
CDIVMemGestionc.Saldo=CDIVMemGestionc.IdCobroMov
CDIVMemGestionc.IdCobroMov=CDIVMemGestionc.IdCobroMovId
CDIVMemGestionc.IdCobroMovId=(Fin)


[CDIVMemGestionD.ListaEnCaptura]
(Inicio)=CDIVMemGestionD.socio
CDIVMemGestionD.socio=CDIVMemGestionD.mov
CDIVMemGestionD.mov=CDIVMemGestionD.movid
CDIVMemGestionD.movid=CDIVMemGestionD.fechaemision
CDIVMemGestionD.fechaemision=CDIVMemGestionD.estatus
CDIVMemGestionD.estatus=CDIVMemGestionD.agente
CDIVMemGestionD.agente=CDIVMemGestionD.membresiainicial
CDIVMemGestionD.membresiainicial=CDIVMemGestionD.Observaciones
CDIVMemGestionD.Observaciones=CDIVMemGestionD.referencia
CDIVMemGestionD.referencia=(Fin)






[CDIVMemGestionCS.ListaEnCaptura]
(Inicio)=CDIVMemGestionCS.mov
CDIVMemGestionCS.mov=CDIVMemGestionCS.movid
CDIVMemGestionCS.movid=CDIVMemGestionCS.fechaemision
CDIVMemGestionCS.fechaemision=CDIVMemGestionCS.estatus
CDIVMemGestionCS.estatus=CDIVMemGestionCS.agente
CDIVMemGestionCS.agente=CDIVMemGestionCS.membresiainicial
CDIVMemGestionCS.membresiainicial=CDIVMemGestionCS.SitPreviav
CDIVMemGestionCS.SitPreviav=CDIVMemGestionCS.SitNueva
CDIVMemGestionCS.SitNueva=(Fin)


[Acciones.Actualizar Forma]
Nombre=Actualizar Forma
Boton=82
NombreEnBoton=S
NombreDesplegar=Actualiza&r
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S











































[Pendientes.ListaEnCaptura]
(Inicio)=CDIVGesPendCXC.CDIsocio
CDIVGesPendCXC.CDIsocio=CDIVGesPendCXC.nombre
CDIVGesPendCXC.nombre=CDIVGesPendCXC.membresia
CDIVGesPendCXC.membresia=CDIVGesPendCXC.Mov
CDIVGesPendCXC.Mov=CDIVGesPendCXC.MovId
CDIVGesPendCXC.MovId=CDIVGesPendCXC.FechaEmision
CDIVGesPendCXC.FechaEmision=CDIVGesPendCXC.Vencimiento
CDIVGesPendCXC.Vencimiento=CDIVGesPendCXC.Concepto
CDIVGesPendCXC.Concepto=CDIVGesPendCXC.DiasVencido
CDIVGesPendCXC.DiasVencido=CDIVGesPendCXC.saldo
CDIVGesPendCXC.saldo=(Fin)















[CDIVCteGestion.CDIVCteGestion.CDIFormaPago]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.CDIFormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVCteGestion.CDIVCteGestion.Categoria]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVCteGestion.CDIVCteGestion.SubCategoria]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.SubCategoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco








[Acciones.Observaciones]
Nombre=Observaciones
Boton=0
NombreDesplegar=&Observaciones
EnMenu=S
TipoAccion=formas
ClaveAccion=CDIVMemGest
Visible=S
ActivoCondicion=Condatos(CDIVMemGest:CDIVMemGest.ID)








Antes=S
AntesExpresiones=asigna(info.id,CDIVMemGest:CDIVMemGest.ID)







[CDIVMemGest.CDIVMemGest.Observa]
Carpeta=CDIVMemGest
Clave=CDIVMemGest.Observa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco








[CDIVMemGest.ListaEnCaptura]
(Inicio)=CDIVMemGest.membresiainicial
CDIVMemGest.membresiainicial=CDIVMemGest.mov
CDIVMemGest.mov=CDIVMemGest.movid
CDIVMemGest.movid=CDIVMemGest.fechaemision
CDIVMemGest.fechaemision=CDIVMemGest.estatus
CDIVMemGest.estatus=CDIVMemGest.agente
CDIVMemGest.agente=CDIVMemGest.Accion
CDIVMemGest.Accion=CDIVMemGest.Acuerdo
CDIVMemGest.Acuerdo=CDIVMemGest.Contacto
CDIVMemGest.Contacto=CDIVMemGest.FechaCompromiso
CDIVMemGest.FechaCompromiso=CDIVMemGest.FormaPago
CDIVMemGest.FormaPago=CDIVMemGest.Observa
CDIVMemGest.Observa=CDIVMemGest.Referencia
CDIVMemGest.Referencia=(Fin)














[Acciones.AccionesFechascom]
Nombre=AccionesFechascom
Boton=9
NombreEnBoton=S
NombreDesplegar=&Acciones en Fecha Compromiso
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=formas
ClaveAccion=CDIVMemGEstion
Activo=S
Visible=S







[CDIVCteGestion.ListaEnCaptura]
(Inicio)=CDIVCteGestion.Socio
CDIVCteGestion.Socio=CDIVCteGestion.Membresia
CDIVCteGestion.Membresia=CDIVCteGestion.Nombre
CDIVCteGestion.Nombre=CDIVCteGestion.Estatus
CDIVCteGestion.Estatus=CDIVCteGestion.Descripcion13
CDIVCteGestion.Descripcion13=CDIVCteGestion.SituacionGestion
CDIVCteGestion.SituacionGestion=CDIVCteGestion.CDIFormaPago
CDIVCteGestion.CDIFormaPago=CDIVCteGestion.Categoria
CDIVCteGestion.Categoria=CDIVCteGestion.SubCategoria
CDIVCteGestion.SubCategoria=CDIVCteGestion.DiasVencido
CDIVCteGestion.DiasVencido=(Fin)

[CDIVCteGestion.ListaCamposAValidar]
(Inicio)=CDIVCteGestion.EMail1
CDIVCteGestion.EMail1=CDIVCteGestion.email2
CDIVCteGestion.email2=CDIVCteGestion.telefonos
CDIVCteGestion.telefonos=CDIVCteGestion.Gestor
CDIVCteGestion.Gestor=CDIVCteGestion.GestorNombre
CDIVCteGestion.GestorNombre=CDIVCteGestion.CDIFormaPago
CDIVCteGestion.CDIFormaPago=CDIVCteGestion.Categoria
CDIVCteGestion.Categoria=CDIVCteGestion.SubCategoria
CDIVCteGestion.SubCategoria=(Fin)

[CDIVCteGestion.ListaAcciones]
(Inicio)=Gestion
Gestion=Tarjeton
Tarjeton=Inf0cte
Inf0cte=(Fin)

[CDIVCteGestion.CDIVCteGestion.DiasVencido]
Carpeta=CDIVCteGestion
Clave=CDIVCteGestion.DiasVencido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco















[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Saldo
Saldo=Promedio Dias Pago
Promedio Dias Pago=Ultima Gestión
Ultima Gestión=Tiempo Gestión
Tiempo Gestión=Membresias
Membresias=(Fin)

[Forma.ListaCarpetas]
(Inicio)=CDIVCteGestion
CDIVCteGestion=CDIVMemGestionD
CDIVMemGestionD=CDIVMemGest
CDIVMemGest=CDIVMemGestionCS
CDIVMemGestionCS=CDIVMemGestionc
CDIVMemGestionc=Pendientes
Pendientes=(Fin)

[Forma.ListaAcciones]
(Inicio)=Actualizar Forma
Actualizar Forma=AccionesFechascom
AccionesFechascom=(Fin)
