
[Forma]
Clave=CDICePlanPerPrecioDescto
Icono=0
Modulos=(Todos)
MovModulo=CDICePlanPerPrecioDescto
Nombre=Precios y Descuentos Periodo
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICePlanPerPrecioDescto
CarpetaPrincipal=CDICePlanPerPrecioDescto
PosicionInicialIzquierda=425
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=516
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDICePlanPerPrecioDescto]
Estilo=Hoja
Clave=CDICePlanPerPrecioDescto
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICePlanPerPrecioDescto
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
ControlRenglon=S
CampoRenglon=CDICePlanPerPrecioDescto.RenglonId
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CondicionEdicion=Info.Estatus=<T>SINAFECTAR<T>
FiltroGeneral=Id=<T>{Info.id}<T>
[CDICePlanPerPrecioDescto.CDICePlanPerPrecioDescto.Periodo]
Carpeta=CDICePlanPerPrecioDescto
Clave=CDICePlanPerPrecioDescto.Periodo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICePlanPerPrecioDescto.CDICePlanPerPrecioDescto.FechaInicio]
Carpeta=CDICePlanPerPrecioDescto
Clave=CDICePlanPerPrecioDescto.FechaInicio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICePlanPerPrecioDescto.CDICePlanPerPrecioDescto.FechaFin]
Carpeta=CDICePlanPerPrecioDescto
Clave=CDICePlanPerPrecioDescto.FechaFin
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICePlanPerPrecioDescto.CDICePlanPerPrecioDescto.Precio]
Carpeta=CDICePlanPerPrecioDescto
Clave=CDICePlanPerPrecioDescto.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICePlanPerPrecioDescto.CDICePlanPerPrecioDescto.TipoDescuento]
Carpeta=CDICePlanPerPrecioDescto
Clave=CDICePlanPerPrecioDescto.TipoDescuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICePlanPerPrecioDescto.CDICePlanPerPrecioDescto.MontoDescuento]
Carpeta=CDICePlanPerPrecioDescto
Clave=CDICePlanPerPrecioDescto.MontoDescuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDICePlanPerPrecioDescto.Columnas]
Periodo=41
FechaInicio=68
FechaFin=72
Precio=78
TipoDescuento=80
MontoDescuento=114

[Acciones.Actualizar Forma]
Nombre=Actualizar Forma
Boton=61
NombreDesplegar=Generar Periodos
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Antes=S
NombreEnBoton=S

EspacioPrevio=S

ActivoCondicion=Info.Estatus=<T>SINAFECTAR<T>
AntesExpresiones=Ejecutarsql(<T>xpCDIGenPeriodosCeplan :nI, :tC, :tp, :tM<T>,info.Id, Info.plan, Info.Programa, Info.Mov)
VisibleCondicion=(Info.Mov=<T>Alta Programa<T>)
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S


EspacioPrevio=S
VisibleCondicion=Info.Estatus=<T>SINAFECTAR<T>
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



































[Acciones.TraerPrecios]
Nombre=TraerPrecios
Boton=51
NombreDesplegar=Traer Precios
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Antes=S











NombreEnBoton=S




EspacioPrevio=S
















































ActivoCondicion=(Info.Estatus=<T>SINAFECTAR<T>)
AntesExpresiones=GuardarCambios<BR>Ejecutarsql(<T>xpCDIGenPeriodosCeplan :nI, :tC, :tp, :tM<T>,info.Id, Info.plan, Info.Programa, Info.Mov)
VisibleCondicion=(Info.Mov=<T>Cambio Precio<T>)









[CDICePlanPerPrecioDescto.ListaEnCaptura]
(Inicio)=CDICePlanPerPrecioDescto.Periodo
CDICePlanPerPrecioDescto.Periodo=CDICePlanPerPrecioDescto.FechaInicio
CDICePlanPerPrecioDescto.FechaInicio=CDICePlanPerPrecioDescto.FechaFin
CDICePlanPerPrecioDescto.FechaFin=CDICePlanPerPrecioDescto.Precio
CDICePlanPerPrecioDescto.Precio=CDICePlanPerPrecioDescto.TipoDescuento
CDICePlanPerPrecioDescto.TipoDescuento=CDICePlanPerPrecioDescto.MontoDescuento
CDICePlanPerPrecioDescto.MontoDescuento=(Fin)

























[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar Cambios
Guardar Cambios=Actualizar Forma
Actualizar Forma=TraerPrecios
TraerPrecios=(Fin)
