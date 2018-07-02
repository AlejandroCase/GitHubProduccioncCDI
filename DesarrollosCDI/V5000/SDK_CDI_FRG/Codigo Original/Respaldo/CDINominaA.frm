
[Forma]
Clave=CDINominaA
Icono=0
CarpetaPrincipal=CDINominaA
Modulos=(Todos)
Nombre=CDINominaA

ListaCarpetas=CDINominaA
PosicionInicialAlturaCliente=273
PosicionInicialAncho=796
PosicionInicialIzquierda=249
PosicionInicialArriba=235
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
BarraHerramientas=S
[CDINominaA]
Estilo=Hoja
Clave=CDINominaA
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=NominaA
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
OtroOrden=S

ListaOrden=Nomina.ID<TAB>(Decendente)
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=Nomina.Concepto
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroTodo=S
FiltroLocal=S
FiltroValida1=Concepto
HojaOrdenarColumnas=S
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
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
FiltroGeneral=MOV=<T>NOMINA<T>
[CDINominaA.Nomina.Mov]
Carpeta=CDINominaA
Clave=Nomina.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDINominaA.Nomina.MovID]
Carpeta=CDINominaA
Clave=Nomina.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDINominaA.Nomina.FechaEmision]
Carpeta=CDINominaA
Clave=Nomina.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDINominaA.Nomina.Concepto]
Carpeta=CDINominaA
Clave=Nomina.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDINominaA.Columnas]
Mov=110
MovID=69
FechaEmision=94
UltimoCambio=149
Concepto=190
















Observaciones=291
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreDesplegar=&Seleccionar
EnBarraAcciones=S
TipoAccion=ventana
Activo=S
Visible=S
ClaveAccion=Seleccionar
EnBarraHerramientas=S




[CDINominaA.Nomina.Observaciones]
Carpeta=CDINominaA
Clave=Nomina.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDINominaA.ListaEnCaptura]
(Inicio)=Nomina.Mov
Nomina.Mov=Nomina.MovID
Nomina.MovID=Nomina.FechaEmision
Nomina.FechaEmision=Nomina.Concepto
Nomina.Concepto=Nomina.Observaciones
Nomina.Observaciones=(Fin)
