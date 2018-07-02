
[Forma]
Clave=vic_ContratoGobSubTipoProcLissta
Icono=4
Modulos=(Todos)
Nombre=Subtipos de Procedimientos Adjudicación
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=SubtipoProc
CarpetaPrincipal=SubtipoProc
ListaAcciones=Seleccionar
PosicionInicialIzquierda=194
PosicionInicialArriba=215
PosicionInicialAlturaCliente=356
PosicionInicialAncho=833
[SubtipoProc]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Subtipos de Procedimiento
Clave=SubtipoProc
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGobSubTipoProc
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
[SubtipoProc.ListaEnCaptura]
(Inicio)=vic_ContratoGobSubTipoProc.Clave
vic_ContratoGobSubTipoProc.Clave=vic_ContratoGobSubTipoProc.Nacional
vic_ContratoGobSubTipoProc.Nacional=vic_ContratoGobSubTipoProc.Internacional
vic_ContratoGobSubTipoProc.Internacional=vic_ContratoGobSubTipoProc.InvitacionProv
vic_ContratoGobSubTipoProc.InvitacionProv=vic_ContratoGobSubTipoProc.AdjudicacionDirecta
vic_ContratoGobSubTipoProc.AdjudicacionDirecta=(Fin)

[SubtipoProc.vic_ContratoGobSubTipoProc.Clave]
Carpeta=SubtipoProc
Clave=vic_ContratoGobSubTipoProc.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[SubtipoProc.vic_ContratoGobSubTipoProc.Nacional]
Carpeta=SubtipoProc
Clave=vic_ContratoGobSubTipoProc.Nacional
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SubtipoProc.vic_ContratoGobSubTipoProc.Internacional]
Carpeta=SubtipoProc
Clave=vic_ContratoGobSubTipoProc.Internacional
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SubtipoProc.vic_ContratoGobSubTipoProc.InvitacionProv]
Carpeta=SubtipoProc
Clave=vic_ContratoGobSubTipoProc.InvitacionProv
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SubtipoProc.vic_ContratoGobSubTipoProc.AdjudicacionDirecta]
Carpeta=SubtipoProc
Clave=vic_ContratoGobSubTipoProc.AdjudicacionDirecta
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

[SubtipoProc.Columnas]
Clave=93
Nacional=141
Internacional=171
InvitacionProv=178
AdjudicacionDirecta=210
