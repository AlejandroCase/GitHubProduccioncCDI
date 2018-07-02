
[Forma]
Clave=CDICeProgPerPrecioDescto
Icono=0
Modulos=(Todos)
Nombre=Periodos Precios y Devoluciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto
CarpetaPrincipal=CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=407
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=551
[CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto]
Estilo=Hoja
Clave=CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICeProgPerPrecioDescto
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

ControlRenglon=S
CampoRenglon=CDICeProgPerPrecioDescto.RenglonId

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=Programa=<T>{Info.Programa}<T>
FiltroRespetar=S
FiltroTipo=General
[CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto.CDICeProgPerPrecioDescto.Periodo]
Carpeta=CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto
Clave=CDICeProgPerPrecioDescto.Periodo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto.CDICeProgPerPrecioDescto.FechaInicio]
Carpeta=CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto
Clave=CDICeProgPerPrecioDescto.FechaInicio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto.CDICeProgPerPrecioDescto.FechaFin]
Carpeta=CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto
Clave=CDICeProgPerPrecioDescto.FechaFin
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto.CDICeProgPerPrecioDescto.Precio]
Carpeta=CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto
Clave=CDICeProgPerPrecioDescto.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto.CDICeProgPerPrecioDescto.TipoDescuento]
Carpeta=CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto
Clave=CDICeProgPerPrecioDescto.TipoDescuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto.CDICeProgPerPrecioDescto.MontoDescuento]
Carpeta=CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto
Clave=CDICeProgPerPrecioDescto.MontoDescuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto.Columnas]
Programa=124
Periodo=64
FechaInicio=94
FechaFin=94
Precio=77
TipoDescuento=80
MontoDescuento=95

[Acciones.Actualizar Forma]
Nombre=Actualizar Forma
Boton=7
NombreEnBoton=S
NombreDesplegar=Generar Periodos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Antes=S
AntesExpresiones=EjecutarSql(<T>xpCDIGenPeriodosProg :tP<T>,Info.Programa)
Visible=S













[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S




[CDICeProgPerPrecioDesctoCDICeProgPerPrecioDescto.ListaEnCaptura]
(Inicio)=CDICeProgPerPrecioDescto.Periodo
CDICeProgPerPrecioDescto.Periodo=CDICeProgPerPrecioDescto.FechaInicio
CDICeProgPerPrecioDescto.FechaInicio=CDICeProgPerPrecioDescto.FechaFin
CDICeProgPerPrecioDescto.FechaFin=CDICeProgPerPrecioDescto.Precio
CDICeProgPerPrecioDescto.Precio=CDICeProgPerPrecioDescto.TipoDescuento
CDICeProgPerPrecioDescto.TipoDescuento=CDICeProgPerPrecioDescto.MontoDescuento
CDICeProgPerPrecioDescto.MontoDescuento=(Fin)





















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Actualizar Forma
Actualizar Forma=Cerrar
Cerrar=(Fin)
