
[Forma]
Clave=FiscalRegimen
Icono=0
Modulos=(Todos)
Nombre=Regimenes Fiscales

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=212
PosicionInicialArriba=146
PosicionInicialAlturaCliente=439
PosicionInicialAncho=859
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FiscalRegimen
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
[Lista.ListaEnCaptura]
(Inicio)=FiscalRegimen.FiscalRegimen
FiscalRegimen.FiscalRegimen=FiscalRegimen.Nombre
FiscalRegimen.Nombre=FiscalRegimen.Descripcion
FiscalRegimen.Descripcion=(Fin)

[Lista.FiscalRegimen.FiscalRegimen]
Carpeta=Lista
Clave=FiscalRegimen.FiscalRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.FiscalRegimen.Nombre]
Carpeta=Lista
Clave=FiscalRegimen.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.FiscalRegimen.Descripcion]
Carpeta=Lista
Clave=FiscalRegimen.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.Columnas]
FiscalRegimen=124
Nombre=278
Descripcion=418

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
