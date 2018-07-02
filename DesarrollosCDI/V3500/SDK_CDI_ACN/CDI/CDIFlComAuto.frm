
[Forma]
Clave=CDIFlComAuto
Icono=0
Modulos=(Todos)
Nombre=Autorizar en Lote
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=C2
PosicionInicialIzquierda=0
PosicionInicialArriba=12
PosicionInicialAlturaCliente=705
PosicionInicialAncho=1382
PosicionSec1=320
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsMovimiento=S
MovModulo=COMS
MovimientosValidos=(Lista)
TituloAuto=S
MovEspecificos=Todos
AutoGuardarEncabezado=S
TituloAutoNombre=S
AutoRefrescarControles=S

ExpresionesAlMostrar=EjecutarSQl(<T>xpcdiCDIAutComs :fD, :fa, :nE, :tM<T>,Info.FechaD, Info.FechaA, EstacionTrabajo, Info.mov)
[CDIAutComs.Proyecto]
Carpeta=CDICReq
Clave=CDIAutComs.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAutComs.mov]
Carpeta=CDICReq
Clave=CDIAutComs.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIAutComs.movid]
Carpeta=CDICReq
Clave=CDIAutComs.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIAutComs.origen]
Carpeta=CDICReq
Clave=CDIAutComs.origen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIAutComs.origenid]
Carpeta=CDICReq
Clave=CDIAutComs.origenid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIAutComs.FechaEmision]
Carpeta=CDICReq
Clave=CDIAutComs.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAutComs.usuario]
Carpeta=CDICReq
Clave=CDIAutComs.usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIAutComs.moneda]
Carpeta=CDICReq
Clave=CDIAutComs.moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIAutComs.TipoCambio]
Carpeta=CDICReq
Clave=CDIAutComs.TipoCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAutComs.Almacen]
Carpeta=CDICReq
Clave=CDIAutComs.Almacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIAutComs.Importe]
Carpeta=CDICReq
Clave=CDIAutComs.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAutComs.impuestos]
Carpeta=CDICReq
Clave=CDIAutComs.impuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAutComs.FechaRegistro]
Carpeta=CDICReq
Clave=CDIAutComs.FechaRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAutComs.FechaCancelacion]
Carpeta=CDICReq
Clave=CDIAutComs.FechaCancelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAutComs.FechaProveedor]
Carpeta=CDICReq
Clave=CDIAutComs.FechaProveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAutComs.FechaRequerida]
Carpeta=CDICReq
Clave=CDIAutComs.FechaRequerida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAutComs.CDIEstado]
Carpeta=CDICReq
Clave=CDIAutComs.CDIEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIAutComs.Estatus]
Carpeta=CDICReq
Clave=CDIAutComs.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICReq.Columnas]
Proyecto=66
mov=66
movid=37
origen=60
origenid=60
FechaEmision=73
usuario=64
moneda=50
TipoCambio=64
Almacen=64
Importe=64
impuestos=64
FechaRegistro=111
FechaCancelacion=90
FechaProveedor=81
FechaRequerida=87
CDIEstado=75
Estatus=71

0=122
1=106
2=82
3=49
4=78
5=12
6=-2
7=72
8=95
9=159
10=-2
11=-2
12=72
13=-2
14=-2
15=-2
16=-2
17=-2
18=-2
19=-2
20=-2
21=-2
situacion=304
situacionusuario=85
situacionfecha=94
[CDICReqD]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Requisicion Detalle
Clave=CDICReqD
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIAutComs
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIAUtComs
LlaveLocal=CDIAutComs.ID
LlaveMaestra=CDIAutComs.ID
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
ValidarCampos=S

ListaCamposAValidar=CDIAutComs.Descripcion1
OtroOrden=S
ListaOrden=CDIAutComs.Renglon<TAB>(Acendente)







[CDICReqD.Columnas]
Articulo=124
Cantidad=64
CantidadA=64
CantidadPendiente=95
Costo=64
Unidad=51
FechaEntrega=94


ClavePresupuestal=120
Proveedor=64
Nombre=284
origen=73
origenid=57
mov=67
movid=55
Descripcion1=64
[CDICCot]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cotizacion
Clave=CDICCot
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICCot
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIAutComs
LlaveLocal=(Lista)

LlaveMaestra=(Lista)
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



ValidarCampos=S
ListaCamposAValidar=CDICCot.Descripcion1
OtroOrden=S
ListaOrden=CDICCot.Renglon<TAB>(Acendente)
[CDICCot.CDICCot.mov]
Carpeta=CDICCot
Clave=CDICCot.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICCot.CDICCot.movid]
Carpeta=CDICCot
Clave=CDICCot.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICCot.CDICCot.FechaEmision]
Carpeta=CDICCot
Clave=CDICCot.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.FechaRegistro]
Carpeta=CDICCot
Clave=CDICCot.FechaRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.FechaCancelacion]
Carpeta=CDICCot
Clave=CDICCot.FechaCancelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.FechaProveedor]
Carpeta=CDICCot
Clave=CDICCot.FechaProveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.FechaRequerida]
Carpeta=CDICCot
Clave=CDICCot.FechaRequerida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.Articulo]
Carpeta=CDICCot
Clave=CDICCot.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICCot.CDICCot.Cantidad]
Carpeta=CDICCot
Clave=CDICCot.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.CantidadA]
Carpeta=CDICCot
Clave=CDICCot.CantidadA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.CantidadPendiente]
Carpeta=CDICCot
Clave=CDICCot.CantidadPendiente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.Costo]
Carpeta=CDICCot
Clave=CDICCot.Costo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.Unidad]
Carpeta=CDICCot
Clave=CDICCot.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICCot.CDICCot.FechaEntrega]
Carpeta=CDICCot
Clave=CDICCot.FechaEntrega
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICCot.CDICCot.Estatus]
Carpeta=CDICCot
Clave=CDICCot.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[CDICCot.Columnas]
mov=67
movid=39
FechaEmision=70
FechaRegistro=132
FechaCancelacion=100
FechaProveedor=94
FechaRequerida=94
Articulo=76
Cantidad=64
CantidadA=64
CantidadPendiente=95
Costo=64
Unidad=42
FechaEntrega=78
Estatus=69




ClavePresupuestal=116
Proveedor=64
Nombre=262
origen=62
origenid=44
[CDICOC]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Orden Compra
Clave=CDICOC
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICOC
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDICCot
LlaveLocal=(Lista)

LlaveMaestra=(Lista)
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



OtroOrden=S
ListaOrden=CDICOC.Renglon<TAB>(Acendente)
ValidarCampos=S
ListaCamposAValidar=CDICOC.Descripcion1
[CDICOC.CDICOC.Articulo]
Carpeta=CDICOC
Clave=CDICOC.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICOC.CDICOC.Cantidad]
Carpeta=CDICOC
Clave=CDICOC.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICOC.CDICOC.CantidadA]
Carpeta=CDICOC
Clave=CDICOC.CantidadA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICOC.CDICOC.CantidadPendiente]
Carpeta=CDICOC
Clave=CDICOC.CantidadPendiente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICOC.CDICOC.Costo]
Carpeta=CDICOC
Clave=CDICOC.Costo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICOC.CDICOC.Unidad]
Carpeta=CDICOC
Clave=CDICOC.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICOC.CDICOC.FechaEntrega]
Carpeta=CDICOC
Clave=CDICOC.FechaEntrega
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDICOC.Columnas]
Articulo=80
Cantidad=64
CantidadA=64
CantidadPendiente=95
Costo=64
Unidad=44
FechaEntrega=79





mov=84
movid=64
FechaEmision=79
usuario=64
moneda=64
TipoCambio=64
Almacen=64



FechaRegistro=114
FechaCancelacion=94
FechaProveedor=94
FechaRequerida=87
Estatus=68
ClavePresupuestal=115
Proveedor=55
Nombre=158
origen=68
origenid=68
[CDICOC.CDICOC.mov]
Carpeta=CDICOC
Clave=CDICOC.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICOC.CDICOC.movid]
Carpeta=CDICOC
Clave=CDICOC.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICOC.CDICOC.FechaEmision]
Carpeta=CDICOC
Clave=CDICOC.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco









[CDICOC.CDICOC.FechaRegistro]
Carpeta=CDICOC
Clave=CDICOC.FechaRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICOC.CDICOC.FechaCancelacion]
Carpeta=CDICOC
Clave=CDICOC.FechaCancelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICOC.CDICOC.FechaProveedor]
Carpeta=CDICOC
Clave=CDICOC.FechaProveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICOC.CDICOC.FechaRequerida]
Carpeta=CDICOC
Clave=CDICOC.FechaRequerida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICOC.CDICOC.Estatus]
Carpeta=CDICOC
Clave=CDICOC.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco






[CDICEC]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Entrada Compra
Clave=CDICEC
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICEC
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDICOC
LlaveLocal=(Lista)

LlaveMaestra=(Lista)
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



OtroOrden=S
ListaOrden=CDICEC.Renglon<TAB>(Acendente)
ValidarCampos=S
ListaCamposAValidar=CDICEC.Descripcion1
[CDICEC.CDICEC.mov]
Carpeta=CDICEC
Clave=CDICEC.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICEC.CDICEC.movid]
Carpeta=CDICEC
Clave=CDICEC.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICEC.CDICEC.FechaEmision]
Carpeta=CDICEC
Clave=CDICEC.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.FechaRegistro]
Carpeta=CDICEC
Clave=CDICEC.FechaRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.FechaCancelacion]
Carpeta=CDICEC
Clave=CDICEC.FechaCancelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.FechaProveedor]
Carpeta=CDICEC
Clave=CDICEC.FechaProveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.FechaRequerida]
Carpeta=CDICEC
Clave=CDICEC.FechaRequerida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.Articulo]
Carpeta=CDICEC
Clave=CDICEC.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICEC.CDICEC.Cantidad]
Carpeta=CDICEC
Clave=CDICEC.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.CantidadA]
Carpeta=CDICEC
Clave=CDICEC.CantidadA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.CantidadPendiente]
Carpeta=CDICEC
Clave=CDICEC.CantidadPendiente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.Costo]
Carpeta=CDICEC
Clave=CDICEC.Costo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.Unidad]
Carpeta=CDICEC
Clave=CDICEC.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICEC.CDICEC.FechaEntrega]
Carpeta=CDICEC
Clave=CDICEC.FechaEntrega
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICEC.CDICEC.Estatus]
Carpeta=CDICEC
Clave=CDICEC.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco




[CDICEC.Columnas]
mov=92
movid=53
FechaEmision=70
FechaRegistro=119
FechaCancelacion=94
FechaProveedor=84
FechaRequerida=86
Articulo=82
Cantidad=64
CantidadA=64
CantidadPendiente=95
Costo=64
Unidad=44
FechaEntrega=77
Estatus=69







ClavePresupuestal=111
Proveedor=58
Nombre=202


origen=82
origenid=56

[CDICCot.CDICCot.ClavePresupuestal]
Carpeta=CDICCot
Clave=CDICCot.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDICOC.CDICOC.ClavePresupuestal]
Carpeta=CDICOC
Clave=CDICOC.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDICEC.CDICEC.ClavePresupuestal]
Carpeta=CDICEC
Clave=CDICEC.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco












[CDICCot.CDICCot.Proveedor]
Carpeta=CDICCot
Clave=CDICCot.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICCot.CDICCot.Nombre]
Carpeta=CDICCot
Clave=CDICCot.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco




[CDICOC.CDICOC.Proveedor]
Carpeta=CDICOC
Clave=CDICOC.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICOC.CDICOC.Nombre]
Carpeta=CDICOC
Clave=CDICOC.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco




[CDICEC.CDICEC.Proveedor]
Carpeta=CDICEC
Clave=CDICEC.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICEC.CDICEC.Nombre]
Carpeta=CDICEC
Clave=CDICEC.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco














[CDICCot.CDICCot.origen]
Carpeta=CDICCot
Clave=CDICCot.origen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICCot.CDICCot.origenid]
Carpeta=CDICCot
Clave=CDICCot.origenid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[CDICOC.CDICOC.origen]
Carpeta=CDICOC
Clave=CDICOC.origen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICOC.CDICOC.origenid]
Carpeta=CDICOC
Clave=CDICOC.origenid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[CDICEC.CDICEC.origen]
Carpeta=CDICEC
Clave=CDICEC.origen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICEC.CDICEC.origenid]
Carpeta=CDICEC
Clave=CDICEC.origenid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco









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




[Acciones.Imprimir]
Nombre=Imprimir
Boton=29
NombreEnBoton=S
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Antes=S















AntesExpresiones=RegistrarSeleccion<BR> ReportePantallaModal(<T>xpCDIComs<T>, estaciontrabajo)
[Acciones.Excel]
Nombre=Excel
Boton=115
NombreDesplegar=Excel
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma



NombreEnBoton=S
EspacioPrevio=S






Antes=S
























































AntesExpresiones=RegistrarSeleccion<BR>// ReportePantallaModal(<T>xpCDIComs<T>, estaciontrabajo)<BR>ReporteExcel(<T>xpCDIComs<T>, estaciontrabajo)
[CDIAutComs.situacion]
Carpeta=CDICReq
Clave=CDIAutComs.situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAutComs.situacionfecha]
Carpeta=CDICReq
Clave=CDIAutComs.situacionfecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAutComs.situacionusuario]
Carpeta=CDICReq
Clave=CDIAutComs.situacionusuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
























































[CDICReq.]
Carpeta=CDICReq



Editar=N
EditarConBloqueo=N
IgnoraFlujo=N




ColorFondo=Negro










[C2]
Estilo=Hoja
Pestana=S
Clave=C2
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAUtComs
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PermiteEditar=S

[C2.CDIAutComs.mov]
Carpeta=C2
Clave=CDIAutComs.mov
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[C2.CDIAutComs.movid]
Carpeta=C2
Clave=CDIAutComs.movid
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[C2.CDIAutComs.origen]
Carpeta=C2
Clave=CDIAutComs.origen
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[C2.CDIAutComs.origenid]
Carpeta=C2
Clave=CDIAutComs.origenid
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[C2.CDIAutComs.FechaEmision]
Carpeta=C2
Clave=CDIAutComs.FechaEmision
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[C2.CDIAutComs.Importe]
Carpeta=C2
Clave=CDIAutComs.Importe
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[C2.CDIAutComs.impuestos]
Carpeta=C2
Clave=CDIAutComs.impuestos
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[C2.CDIAutComs.FechaRegistro]
Carpeta=C2
Clave=CDIAutComs.FechaRegistro
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[C2.CDIAutComs.FechaCancelacion]
Carpeta=C2
Clave=CDIAutComs.FechaCancelacion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[C2.CDIAutComs.FechaProveedor]
Carpeta=C2
Clave=CDIAutComs.FechaProveedor
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[C2.CDIAutComs.FechaRequerida]
Carpeta=C2
Clave=CDIAutComs.FechaRequerida
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[C2.CDIAutComs.situacion]
Carpeta=C2
Clave=CDIAutComs.situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

EditarConBloqueo=S
IgnoraFlujo=N
[C2.CDIAutComs.situacionfecha]
Carpeta=C2
Clave=CDIAutComs.situacionfecha
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[C2.CDIAutComs.situacionusuario]
Carpeta=C2
Clave=CDIAutComs.situacionusuario
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco




[C2.Columnas]
mov=82
movid=68
origen=65
origenid=62
FechaEmision=64
Importe=64
impuestos=64
FechaRegistro=128
FechaCancelacion=94
FechaProveedor=94
FechaRequerida=87
situacion=149
situacionfecha=128
situacionusuario=127

















[CDICReq.ListaEnCaptura]
(Inicio)=CDIAutComs.Proyecto
CDIAutComs.Proyecto=CDIAutComs.mov
CDIAutComs.mov=CDIAutComs.movid
CDIAutComs.movid=CDIAutComs.origen
CDIAutComs.origen=CDIAutComs.origenid
CDIAutComs.origenid=CDIAutComs.FechaEmision
CDIAutComs.FechaEmision=CDIAutComs.Estatus
CDIAutComs.Estatus=CDIAutComs.CDIEstado
CDIAutComs.CDIEstado=CDIAutComs.situacion
CDIAutComs.situacion=CDIAutComs.situacionusuario
CDIAutComs.situacionusuario=CDIAutComs.situacionfecha
CDIAutComs.situacionfecha=CDIAutComs.usuario
CDIAutComs.usuario=CDIAutComs.moneda
CDIAutComs.moneda=CDIAutComs.TipoCambio
CDIAutComs.TipoCambio=CDIAutComs.Almacen
CDIAutComs.Almacen=CDIAutComs.Importe
CDIAutComs.Importe=CDIAutComs.impuestos
CDIAutComs.impuestos=CDIAutComs.FechaRegistro
CDIAutComs.FechaRegistro=CDIAutComs.FechaCancelacion
CDIAutComs.FechaCancelacion=CDIAutComs.FechaProveedor
CDIAutComs.FechaProveedor=CDIAutComs.FechaRequerida
CDIAutComs.FechaRequerida=(Fin)

[CDICReq.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=CANCELADO
CANCELADO=CONCLUIDO
CONCLUIDO=PENDIENTE
PENDIENTE=(Fin)

[CDICReq.ListaAcciones]
(Inicio)=Seleccionar Todo
Seleccionar Todo=Quitar Seleccion
Quitar Seleccion=(Fin)





























[CDICReqD.CDIAutComs.Articulo]
Carpeta=CDICReqD
Clave=CDIAutComs.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICReqD.CDIAutComs.Cantidad]
Carpeta=CDICReqD
Clave=CDIAutComs.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICReqD.CDIAutComs.CantidadA]
Carpeta=CDICReqD
Clave=CDIAutComs.CantidadA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICReqD.CDIAutComs.CantidadPendiente]
Carpeta=CDICReqD
Clave=CDIAutComs.CantidadPendiente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICReqD.CDIAutComs.Costo]
Carpeta=CDICReqD
Clave=CDIAutComs.Costo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICReqD.CDIAutComs.Unidad]
Carpeta=CDICReqD
Clave=CDIAutComs.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICReqD.CDIAutComs.FechaEntrega]
Carpeta=CDICReqD
Clave=CDIAutComs.FechaEntrega
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICReqD.CDIAutComs.Descripcion1]
Carpeta=CDICReqD
Clave=CDIAutComs.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICReqD.CDIAutComs.ClavePresupuestal]
Carpeta=CDICReqD
Clave=CDIAutComs.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco








[CDICCot.LlaveLocal]
(Inicio)=CDICCot.origen
CDICCot.origen=CDICCot.origenid
CDICCot.origenid=(Fin)

[CDICCot.LlaveMaestra]
(Inicio)=CDIAutComs.mov
CDIAutComs.mov=CDIAutComs.movid
CDIAutComs.movid=(Fin)

[CDICCot.ListaEnCaptura]
(Inicio)=CDICCot.origen
CDICCot.origen=CDICCot.origenid
CDICCot.origenid=CDICCot.mov
CDICCot.mov=CDICCot.movid
CDICCot.movid=CDICCot.FechaEmision
CDICCot.FechaEmision=CDICCot.FechaRegistro
CDICCot.FechaRegistro=CDICCot.FechaCancelacion
CDICCot.FechaCancelacion=CDICCot.FechaProveedor
CDICCot.FechaProveedor=CDICCot.FechaRequerida
CDICCot.FechaRequerida=CDICCot.Articulo
CDICCot.Articulo=CDICCot.Cantidad
CDICCot.Cantidad=CDICCot.CantidadA
CDICCot.CantidadA=CDICCot.CantidadPendiente
CDICCot.CantidadPendiente=CDICCot.Costo
CDICCot.Costo=CDICCot.Unidad
CDICCot.Unidad=CDICCot.FechaEntrega
CDICCot.FechaEntrega=CDICCot.Estatus
CDICCot.Estatus=CDICCot.ClavePresupuestal
CDICCot.ClavePresupuestal=CDICCot.Proveedor
CDICCot.Proveedor=CDICCot.Nombre
CDICCot.Nombre=(Fin)

[CDICOC.LlaveLocal]
(Inicio)=CDICOC.origen
CDICOC.origen=CDICOC.origenid
CDICOC.origenid=(Fin)

[CDICOC.LlaveMaestra]
(Inicio)=CDICCot.mov
CDICCot.mov=CDICCot.movid
CDICCot.movid=(Fin)

[CDICOC.ListaEnCaptura]
(Inicio)=CDICOC.origen
CDICOC.origen=CDICOC.origenid
CDICOC.origenid=CDICOC.mov
CDICOC.mov=CDICOC.movid
CDICOC.movid=CDICOC.FechaEmision
CDICOC.FechaEmision=CDICOC.FechaRegistro
CDICOC.FechaRegistro=CDICOC.FechaCancelacion
CDICOC.FechaCancelacion=CDICOC.FechaProveedor
CDICOC.FechaProveedor=CDICOC.FechaRequerida
CDICOC.FechaRequerida=CDICOC.Articulo
CDICOC.Articulo=CDICOC.Cantidad
CDICOC.Cantidad=CDICOC.CantidadA
CDICOC.CantidadA=CDICOC.CantidadPendiente
CDICOC.CantidadPendiente=CDICOC.Costo
CDICOC.Costo=CDICOC.Unidad
CDICOC.Unidad=CDICOC.FechaEntrega
CDICOC.FechaEntrega=CDICOC.Estatus
CDICOC.Estatus=CDICOC.ClavePresupuestal
CDICOC.ClavePresupuestal=CDICOC.Proveedor
CDICOC.Proveedor=CDICOC.Nombre
CDICOC.Nombre=(Fin)

[CDICEC.LlaveLocal]
(Inicio)=CDICEC.origen
CDICEC.origen=CDICEC.origenid
CDICEC.origenid=(Fin)

[CDICEC.LlaveMaestra]
(Inicio)=CDICOC.mov
CDICOC.mov=CDICOC.movid
CDICOC.movid=(Fin)

[CDICEC.ListaEnCaptura]
(Inicio)=CDICEC.origen
CDICEC.origen=CDICEC.origenid
CDICEC.origenid=CDICEC.mov
CDICEC.mov=CDICEC.movid
CDICEC.movid=CDICEC.FechaEmision
CDICEC.FechaEmision=CDICEC.FechaRegistro
CDICEC.FechaRegistro=CDICEC.FechaCancelacion
CDICEC.FechaCancelacion=CDICEC.FechaProveedor
CDICEC.FechaProveedor=CDICEC.FechaRequerida
CDICEC.FechaRequerida=CDICEC.Articulo
CDICEC.Articulo=CDICEC.Cantidad
CDICEC.Cantidad=CDICEC.CantidadA
CDICEC.CantidadA=CDICEC.CantidadPendiente
CDICEC.CantidadPendiente=CDICEC.Costo
CDICEC.Costo=CDICEC.Unidad
CDICEC.Unidad=CDICEC.FechaEntrega
CDICEC.FechaEntrega=CDICEC.Estatus
CDICEC.Estatus=CDICEC.ClavePresupuestal
CDICEC.ClavePresupuestal=CDICEC.Proveedor
CDICEC.Proveedor=CDICEC.Nombre
CDICEC.Nombre=(Fin)

[CDICReqD.ListaEnCaptura]
(Inicio)=CDIAutComs.Articulo
CDIAutComs.Articulo=CDIAutComs.Cantidad
CDIAutComs.Cantidad=CDIAutComs.CantidadA
CDIAutComs.CantidadA=CDIAutComs.CantidadPendiente
CDIAutComs.CantidadPendiente=CDIAutComs.Costo
CDIAutComs.Costo=CDIAutComs.Unidad
CDIAutComs.Unidad=CDIAutComs.FechaEntrega
CDIAutComs.FechaEntrega=CDIAutComs.Descripcion1
CDIAutComs.Descripcion1=CDIAutComs.ClavePresupuestal
CDIAutComs.ClavePresupuestal=(Fin)






















[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


























[C2.ListaEnCaptura]
(Inicio)=CDIAutComs.mov
CDIAutComs.mov=CDIAutComs.movid
CDIAutComs.movid=CDIAutComs.origen
CDIAutComs.origen=CDIAutComs.origenid
CDIAutComs.origenid=CDIAutComs.FechaEmision
CDIAutComs.FechaEmision=CDIAutComs.Importe
CDIAutComs.Importe=CDIAutComs.impuestos
CDIAutComs.impuestos=CDIAutComs.FechaRegistro
CDIAutComs.FechaRegistro=CDIAutComs.FechaCancelacion
CDIAutComs.FechaCancelacion=CDIAutComs.FechaProveedor
CDIAutComs.FechaProveedor=CDIAutComs.FechaRequerida
CDIAutComs.FechaRequerida=CDIAutComs.situacion
CDIAutComs.situacion=CDIAutComs.situacionfecha
CDIAutComs.situacionfecha=CDIAutComs.situacionusuario
CDIAutComs.situacionusuario=(Fin)










































































































[Forma.ListaCarpetas]
(Inicio)=C2
C2=CDICReqD
CDICReqD=CDICCot
CDICCot=CDICOC
CDICOC=CDICEC
CDICEC=(Fin)

[Forma.MovimientosValidos]
(Inicio)=Requisicion
Requisicion=Cotizacion
Cotizacion=Orden Compra
Orden Compra=(Fin)

[Forma.ListaAcciones]
(Inicio)=Imprimir
Imprimir=Excel
Excel=Guardar Cambios
Guardar Cambios=(Fin)
