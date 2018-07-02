
[Forma]
Clave=CDIProcesarCotizaciones
Icono=24
BarraHerramientas=S
Modulos=(Todos)
Nombre=<T>Procesar Cotizaciones<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=564
PosicionInicialAncho=1263
ListaAcciones=(Lista)
Comentarios=Si(no Usuario.CompraGenerarOrdenesAlProcesar, Usuario.DefAgente
PosicionInicialIzquierda=33
PosicionInicialArriba=40
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
ValidarCampos=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CompraDRef
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=$00E6E6E6
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=25
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S
HojaAjustarColumnas=S
ListaEnCaptura=(Lista)

ListaCamposAValidar=(Lista)
FiltroGrupo1=Compra.Proyecto
FiltroValida1=Compra.Proyecto
FiltroTodo=S
FiltroFechas=S
FiltroMonedas=S
FiltroFechasCampo=Compra.FechaEmision
FiltroFechasDefault=(Todo)
FiltroMonedasCampo=Compra.Moneda
BusquedaRapida=S
BusquedaRespetarFiltros=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S


FiltroGrupo2=Autorizacion
FiltroValida2=Autorizacion
OtroOrden=S
ListaOrden=(Lista)
FiltroGeneral=Compra.Empresa=<T>{Empresa}<T> AND<BR>Compra.Estatus=<T>CONFIRMAR<T> AND<BR>CompraD.Cantidad>0 AND<BR>Compra.Mov IN ({MovListaSQL(<T>COMS<T>, COMS.C)})<BR>AND CompraD.CDIAutorizaCompra=<T>Si<T><BR>AND CompraD.Aplica+CompraD.AplicaID not in (SELECT mov+movid FROM compra WHERE mov=<T>Requisicion<T> AND compra.Estatus=<T>Cancelado<T>)
[Lista.MovNombre]
Carpeta=Lista
Clave=MovNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=$009FFFFF


[Lista.CompraD.Articulo]
Carpeta=Lista
Clave=CompraD.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CompraD.Unidad]
Carpeta=Lista
Clave=CompraD.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Compra.Proveedor]
Carpeta=Lista
Clave=Compra.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CompraD.Costo]
Carpeta=Lista
Clave=CompraD.Costo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Efectos=[Negritas]
[Lista.CompraD.Cantidad]
Carpeta=Lista
Clave=CompraD.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Importe]
Carpeta=Lista
Clave=Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CompraD.DescuentoLinea]
Carpeta=Lista
Clave=CompraD.DescuentoLinea
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CompraD.CantidadA]
Carpeta=Lista
Clave=CompraD.CantidadA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata

[Lista.CompraD.EstadoRef]
Carpeta=Lista
Clave=CompraD.EstadoRef
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Columnas]
MovNombre=159
Almacen=64
Articulo=77
Proveedor=91
Costo=72
Cantidad=64
Importe=64
DescuentoLinea=64
CantidadA=64
EstadoRef=115

Aplica=124
AplicaID=64
Unidad=64
AplicaNombre=132
Autorizacion=64
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

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
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


[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Presentación preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S


[Acciones.Generar.SQL]
Nombre=SQL
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=ProcesarSQL(<T>CDI_spGenerarCOMS_OC :nSuc, :tEmp, :tUsuario, :fFecha, :tMov<T>, Sucursal, Empresa, Usuario, FechaTrabajo, ConfigMov.CompraOrden)
[Acciones.Generar.Actualizar]
Nombre=Actualizar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Generar]
Nombre=Generar
Boton=7
NombreEnBoton=S
NombreDesplegar=Generar Ordenes de Compra
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Visible=S


EspacioPrevio=S

ActivoCondicion=Usuario.CompraGenerarOrdenesAlProcesar
[Lista.AplicaNombre]
Carpeta=Lista
Clave=AplicaNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=$00E6E6E6














Efectos=[Cursiva]
[Lista.Autorizacion]
Carpeta=Lista
Clave=Autorizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



Efectos=[Negritas]









[Acciones.Generar.ListaAccionesMultiples]
(Inicio)=SQL
SQL=Actualizar
Actualizar=(Fin)


























































[Lista.ListaEnCaptura]
(Inicio)=AplicaNombre
AplicaNombre=MovNombre
MovNombre=Autorizacion
Autorizacion=CompraD.Articulo
CompraD.Articulo=CompraD.Unidad
CompraD.Unidad=Compra.Proveedor
Compra.Proveedor=CompraD.Costo
CompraD.Costo=CompraD.Cantidad
CompraD.Cantidad=Importe
Importe=CompraD.DescuentoLinea
CompraD.DescuentoLinea=CompraD.CantidadA
CompraD.CantidadA=CompraD.EstadoRef
CompraD.EstadoRef=(Fin)

[Lista.ListaCamposAValidar]
(Inicio)=Art.Descripcion1
Art.Descripcion1=NombreProveedor
NombreProveedor=CompraD.DescripcionExtra
CompraD.DescripcionExtra=CompraD.FechaRequerida
CompraD.FechaRequerida=CDIAutorizacionPorArticulo
CDIAutorizacionPorArticulo=(Fin)

[Lista.ListaOrden]
(Inicio)=CompraD.Aplica	(Acendente)
CompraD.Aplica	(Acendente)=CompraD.AplicaID	(Acendente)
CompraD.AplicaID	(Acendente)=CompraD.Articulo	(Acendente)
CompraD.Articulo	(Acendente)=CompraD.Costo	(Acendente)
CompraD.Costo	(Acendente)=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=Actualizar
Actualizar=Imprimir
Imprimir=Preliminar
Preliminar=Generar
Generar=(Fin)