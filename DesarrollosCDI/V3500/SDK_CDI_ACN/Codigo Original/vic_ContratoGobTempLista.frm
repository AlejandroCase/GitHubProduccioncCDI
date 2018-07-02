
[Forma]
Clave=vic_ContratoGobTempLista
Icono=4
Modulos=(Todos)
Nombre=Temporalidad
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Temporalidad
CarpetaPrincipal=Temporalidad
ListaAcciones=Seleccionar
PosicionInicialIzquierda=326
PosicionInicialArriba=278
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
[Temporalidad]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Temporalidad
Clave=Temporalidad
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGobTemp
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
[Temporalidad.ListaEnCaptura]
(Inicio)=vic_ContratoGobTemp.Clave
vic_ContratoGobTemp.Clave=vic_ContratoGobTemp.Descripcion
vic_ContratoGobTemp.Descripcion=(Fin)

[Temporalidad.vic_ContratoGobTemp.Clave]
Carpeta=Temporalidad
Clave=vic_ContratoGobTemp.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Temporalidad.vic_ContratoGobTemp.Descripcion]
Carpeta=Temporalidad
Clave=vic_ContratoGobTemp.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[Temporalidad.Columnas]
Clave=64
Descripcion=484
