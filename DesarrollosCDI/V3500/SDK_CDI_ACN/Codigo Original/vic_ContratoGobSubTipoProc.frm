
[Forma]
Clave=vic_ContratoGobSubTipoProc
Icono=4
Modulos=(Todos)
Nombre=Subtipos de Procedimiento Adjudicación
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=SubtiposProc
CarpetaPrincipal=SubtiposProc
PosicionInicialIzquierda=165
PosicionInicialArriba=253
PosicionInicialAlturaCliente=401
PosicionInicialAncho=803
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[SubtiposProc]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Subtipos de Procedimiento
Clave=SubtiposProc
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
PermiteEditar=S

[SubtiposProc.vic_ContratoGobSubTipoProc.Clave]
Carpeta=SubtiposProc
Clave=vic_ContratoGobSubTipoProc.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[SubtiposProc.vic_ContratoGobSubTipoProc.Nacional]
Carpeta=SubtiposProc
Clave=vic_ContratoGobSubTipoProc.Nacional
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SubtiposProc.vic_ContratoGobSubTipoProc.Internacional]
Carpeta=SubtiposProc
Clave=vic_ContratoGobSubTipoProc.Internacional
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SubtiposProc.vic_ContratoGobSubTipoProc.InvitacionProv]
Carpeta=SubtiposProc
Clave=vic_ContratoGobSubTipoProc.InvitacionProv
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SubtiposProc.vic_ContratoGobSubTipoProc.AdjudicacionDirecta]
Carpeta=SubtiposProc
Clave=vic_ContratoGobSubTipoProc.AdjudicacionDirecta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SubtiposProc.ListaEnCaptura]
(Inicio)=vic_ContratoGobSubTipoProc.Clave
vic_ContratoGobSubTipoProc.Clave=vic_ContratoGobSubTipoProc.Nacional
vic_ContratoGobSubTipoProc.Nacional=vic_ContratoGobSubTipoProc.Internacional
vic_ContratoGobSubTipoProc.Internacional=vic_ContratoGobSubTipoProc.InvitacionProv
vic_ContratoGobSubTipoProc.InvitacionProv=vic_ContratoGobSubTipoProc.AdjudicacionDirecta
vic_ContratoGobSubTipoProc.AdjudicacionDirecta=(Fin)

[SubtiposProc.Columnas]
Clave=59
Nacional=125
Internacional=158
InvitacionProv=200
AdjudicacionDirecta=222

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

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Visible=S

ActivoCondicion=Usuario.EnviarExcel






[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excel
Excel=(Fin)
