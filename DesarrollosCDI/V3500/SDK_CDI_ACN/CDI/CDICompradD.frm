
[Forma]
Clave=CDICompradD
Icono=0
Modulos=(Todos)
Nombre=Detalle Compras
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICompradD
CarpetaPrincipal=CDICompradD
PosicionInicialIzquierda=103
PosicionInicialArriba=139
PosicionInicialAlturaCliente=451
PosicionInicialAncho=1160
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
[CDICompradD]
Estilo=Hoja
Clave=CDICompradD
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICompradD
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
ValidarCampos=S

ListaCamposAValidar=(Lista)
[CDICompradD.CDICompradD.Mov]
Carpeta=CDICompradD
Clave=CDICompradD.Mov
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICompradD.CDICompradD.MovID]
Carpeta=CDICompradD
Clave=CDICompradD.MovID
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[CDICompradD.CDICompradD.FechaEmision]
Carpeta=CDICompradD
Clave=CDICompradD.FechaEmision
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDICompradD.CDICompradD.Importe]
Carpeta=CDICompradD
Clave=CDICompradD.Importe
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[CDICompradD.CDICompradD.Articulo]
Carpeta=CDICompradD
Clave=CDICompradD.Articulo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICompradD.CDICompradD.Descripcion1]
Carpeta=CDICompradD
Clave=CDICompradD.Descripcion1
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICompradD.CDICompradD.cantidad]
Carpeta=CDICompradD
Clave=CDICompradD.cantidad
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICompradD.CDICompradD.costo]
Carpeta=CDICompradD
Clave=CDICompradD.costo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICompradD.CDICompradD.DescripcionExtra]
Carpeta=CDICompradD
Clave=CDICompradD.DescripcionExtra
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICompradD.CDICompradD.ClavePresupuestal]
Carpeta=CDICompradD
Clave=CDICompradD.ClavePresupuestal
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICompradD.Columnas]
Mov=79
MovID=36
Proveedor=64
Nombre=604
FechaEmision=71
Concepto=304
Referencia=304
Observaciones=604
Estatus=94
Importe=64
Origen=60
OrigenID=36
OrigenTipo=64
Articulo=82
Descripcion1=258
cantidad=72
costo=67
DescripcionExtra=98
ClavePresupuestal=152











CantidadE=64
CostoE=64


[CDICompradD.CDICompradD.CantidadE]
Carpeta=CDICompradD
Clave=CDICompradD.CantidadE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICompradD.CDICompradD.CostoE]
Carpeta=CDICompradD
Clave=CDICompradD.CostoE
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Editar=S
[CDICompradD.ListaEnCaptura]
(Inicio)=CDICompradD.Mov
CDICompradD.Mov=CDICompradD.MovID
CDICompradD.MovID=CDICompradD.FechaEmision
CDICompradD.FechaEmision=CDICompradD.Importe
CDICompradD.Importe=CDICompradD.Articulo
CDICompradD.Articulo=CDICompradD.Descripcion1
CDICompradD.Descripcion1=CDICompradD.cantidad
CDICompradD.cantidad=CDICompradD.CantidadE
CDICompradD.CantidadE=CDICompradD.costo
CDICompradD.costo=CDICompradD.CostoE
CDICompradD.CostoE=CDICompradD.DescripcionExtra
CDICompradD.DescripcionExtra=CDICompradD.ClavePresupuestal
CDICompradD.ClavePresupuestal=(Fin)

[CDICompradD.ListaCamposAValidar]
(Inicio)=CDICompradD.Proveedor
CDICompradD.Proveedor=CDICompradD.Nombre
CDICompradD.Nombre=CDICompradD.Concepto
CDICompradD.Concepto=CDICompradD.Referencia
CDICompradD.Referencia=CDICompradD.Observaciones
CDICompradD.Observaciones=CDICompradD.Estatus
CDICompradD.Estatus=(Fin)