
[Forma]
Clave=CDIVMemGEstion
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Acciones a realizar en Fecha

ListaCarpetas=CDIVMemGEstion
CarpetaPrincipal=CDIVMemGEstion
PosicionInicialIzquierda=189
PosicionInicialArriba=80
PosicionInicialAlturaCliente=502
PosicionInicialAncho=1070
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
[CDIVMemGEstion]
Estilo=Hoja
Clave=CDIVMemGEstion
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVMemGest
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
FiltroGrupo1=CDIVMemGest.agente
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
OtroOrden=S
HojaOrdenarColumnas=S
ListaOrden=CDIVMemGest.FechaCompromiso<TAB>(Decendente)
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FiltroFechas=S
FiltroFechasCampo=CDIVMemGest.FechaCompromiso
FiltroFechasDefault=Hoy
[CDIVMemGEstion.CDIVMemGest.mov]
Carpeta=CDIVMemGEstion
Clave=CDIVMemGest.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGEstion.CDIVMemGest.movid]
Carpeta=CDIVMemGEstion
Clave=CDIVMemGest.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGEstion.CDIVMemGest.fechaemision]
Carpeta=CDIVMemGEstion
Clave=CDIVMemGest.fechaemision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIVMemGEstion.CDIVMemGest.membresiainicial]
Carpeta=CDIVMemGEstion
Clave=CDIVMemGest.membresiainicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVMemGEstion.CDIVMemGest.FechaCompromiso]
Carpeta=CDIVMemGEstion
Clave=CDIVMemGest.FechaCompromiso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVMemGEstion.CDIVMemGest.Accion]
Carpeta=CDIVMemGEstion
Clave=CDIVMemGest.Accion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGEstion.CDIVMemGest.Acuerdo]
Carpeta=CDIVMemGEstion
Clave=CDIVMemGest.Acuerdo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVMemGEstion.Columnas]
mov=62
movid=64
fechaemision=74
agente=90
membresiainicial=64
FechaCompromiso=137
Accion=154
Acuerdo=153

Referencia=143

Mov=62
Movid=64
FechaEmision=74
MembresiaInicial=64
[CDIVMemGEstion.CDIVMemGest.Referencia]
Carpeta=CDIVMemGEstion
Clave=CDIVMemGest.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco






[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





[CDIVMemGEstion.ListaEnCaptura]
(Inicio)=CDIVMemGest.mov
CDIVMemGest.mov=CDIVMemGest.movid
CDIVMemGest.movid=CDIVMemGest.fechaemision
CDIVMemGest.fechaemision=CDIVMemGest.membresiainicial
CDIVMemGest.membresiainicial=CDIVMemGest.FechaCompromiso
CDIVMemGest.FechaCompromiso=CDIVMemGest.Accion
CDIVMemGest.Accion=CDIVMemGest.Acuerdo
CDIVMemGest.Acuerdo=CDIVMemGest.Referencia
CDIVMemGest.Referencia=(Fin)
