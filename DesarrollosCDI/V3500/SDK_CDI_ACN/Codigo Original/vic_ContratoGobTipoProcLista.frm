
[Forma]
Clave=vic_ContratoGobTipoProcLista
Icono=4
Modulos=(Todos)
Nombre=Tipos Procedimiento Adjudicación
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=TipoProc
CarpetaPrincipal=TipoProc
ListaAcciones=Seleccionar
PosicionInicialIzquierda=322
PosicionInicialArriba=267
PosicionInicialAlturaCliente=295
PosicionInicialAncho=508
[TipoProc]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Tipos de Procedimientos
Clave=TipoProc
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGobTipoProc
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
[TipoProc.ListaEnCaptura]
(Inicio)=vic_ContratoGobTipoProc.Clave
vic_ContratoGobTipoProc.Clave=vic_ContratoGobTipoProc.Descripcion
vic_ContratoGobTipoProc.Descripcion=(Fin)

[TipoProc.vic_ContratoGobTipoProc.Clave]
Carpeta=TipoProc
Clave=vic_ContratoGobTipoProc.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[TipoProc.vic_ContratoGobTipoProc.Descripcion]
Carpeta=TipoProc
Clave=vic_ContratoGobTipoProc.Descripcion
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

[TipoProc.Columnas]
Clave=64
Descripcion=404
