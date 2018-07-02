
[Forma]
Clave=CDIPlanPagosCondCat
Icono=0
Modulos=(Todos)
Nombre=Condicion - Planes de Plago
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIPlanPagosCondCat
CarpetaPrincipal=CDIPlanPagosCondCat
PosicionInicialIzquierda=433
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=587
[CDIPlanPagosCondCat]
Estilo=Hoja
Clave=CDIPlanPagosCondCat
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPlanPagosCondCat
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
CarpetaVisible=S
PermiteEditar=S
ListaEnCaptura=(Lista)

[CDIPlanPagosCondCat.ListaEnCaptura]
(Inicio)=CDIPlanPagosCondCat.CDICondicion
CDIPlanPagosCondCat.CDICondicion=CDIPlanPagosCondCat.Documento
CDIPlanPagosCondCat.Documento=CDIPlanPagosCondCat.FechaDocumento
CDIPlanPagosCondCat.FechaDocumento=CDIPlanPagosCondCat.Importe
CDIPlanPagosCondCat.Importe=CDIPlanPagosCondCat.Moneda
CDIPlanPagosCondCat.Moneda=(Fin)

[CDIPlanPagosCondCat.CDIPlanPagosCondCat.CDICondicion]
Carpeta=CDIPlanPagosCondCat
Clave=CDIPlanPagosCondCat.CDICondicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPlanPagosCondCat.CDIPlanPagosCondCat.Documento]
Carpeta=CDIPlanPagosCondCat
Clave=CDIPlanPagosCondCat.Documento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPlanPagosCondCat.CDIPlanPagosCondCat.FechaDocumento]
Carpeta=CDIPlanPagosCondCat
Clave=CDIPlanPagosCondCat.FechaDocumento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPlanPagosCondCat.CDIPlanPagosCondCat.Importe]
Carpeta=CDIPlanPagosCondCat
Clave=CDIPlanPagosCondCat.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPlanPagosCondCat.CDIPlanPagosCondCat.Moneda]
Carpeta=CDIPlanPagosCondCat
Clave=CDIPlanPagosCondCat.Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIPlanPagosCondCat.Columnas]
CDICondicion=217
Documento=64
FechaDocumento=94
Importe=64
Moneda=42
