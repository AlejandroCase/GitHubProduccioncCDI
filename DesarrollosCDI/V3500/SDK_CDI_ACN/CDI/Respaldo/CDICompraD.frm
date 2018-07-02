
[Forma]
Clave=CDICompraD
Icono=0
Modulos=(Todos)
Nombre=Asignacion Compras
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICompraD
CarpetaPrincipal=CDICompraD
PosicionInicialIzquierda=0
PosicionInicialArriba=12
PosicionInicialAlturaCliente=705
PosicionInicialAncho=1382
[CDICompraD]
Estilo=Hoja
Clave=CDICompraD
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICompraD
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
ValidarCampos=S

ListaCamposAValidar=(Lista)
[CDICompraD.CDICompraD.Mov]
Carpeta=CDICompraD
Clave=CDICompraD.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICompraD.CDICompraD.MovID]
Carpeta=CDICompraD
Clave=CDICompraD.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[CDICompraD.CDICompraD.FechaEmision]
Carpeta=CDICompraD
Clave=CDICompraD.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDICompraD.CDICompraD.Importe]
Carpeta=CDICompraD
Clave=CDICompraD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICompraD.CDICompraD.Articulo]
Carpeta=CDICompraD
Clave=CDICompraD.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICompraD.CDICompraD.Descripcion1]
Carpeta=CDICompraD
Clave=CDICompraD.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICompraD.CDICompraD.cantidad]
Carpeta=CDICompraD
Clave=CDICompraD.cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICompraD.CDICompraD.costo]
Carpeta=CDICompraD
Clave=CDICompraD.costo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICompraD.CDICompraD.DescripcionExtra]
Carpeta=CDICompraD
Clave=CDICompraD.DescripcionExtra
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICompraD.CDICompraD.ClavePresupuestal]
Carpeta=CDICompraD
Clave=CDICompraD.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICompraD.Columnas]
Mov=77
MovID=50
Proveedor=64
Nombre=287
FechaEmision=94
Concepto=62
Referencia=272
Observaciones=179
Estatus=94
Importe=64
Articulo=124
Descripcion1=256
cantidad=56
costo=50
DescripcionExtra=198
ClavePresupuestal=119





[CDICompraD.ListaEnCaptura]
(Inicio)=CDICompraD.Mov
CDICompraD.Mov=CDICompraD.MovID
CDICompraD.MovID=CDICompraD.FechaEmision
CDICompraD.FechaEmision=CDICompraD.Importe
CDICompraD.Importe=CDICompraD.Articulo
CDICompraD.Articulo=CDICompraD.Descripcion1
CDICompraD.Descripcion1=CDICompraD.cantidad
CDICompraD.cantidad=CDICompraD.costo
CDICompraD.costo=CDICompraD.DescripcionExtra
CDICompraD.DescripcionExtra=CDICompraD.ClavePresupuestal
CDICompraD.ClavePresupuestal=(Fin)

[CDICompraD.ListaCamposAValidar]
(Inicio)=CDICompraD.Proveedor
CDICompraD.Proveedor=CDICompraD.Nombre
CDICompraD.Nombre=CDICompraD.Concepto
CDICompraD.Concepto=CDICompraD.Referencia
CDICompraD.Referencia=CDICompraD.Observaciones
CDICompraD.Observaciones=(Fin)
