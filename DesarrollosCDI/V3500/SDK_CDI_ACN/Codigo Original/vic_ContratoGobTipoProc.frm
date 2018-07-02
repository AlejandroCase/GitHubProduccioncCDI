
[Forma]
Clave=vic_ContratoGobTipoProc
Icono=4
Modulos=(Todos)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=TipoProc
CarpetaPrincipal=TipoProc
PosicionInicialIzquierda=285
PosicionInicialArriba=257
PosicionInicialAlturaCliente=316
PosicionInicialAncho=581
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Nombre=Tipos Procedimiento Adjudicación
[TipoProc]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Tipo Procedimiento
Clave=TipoProc
PermiteEditar=S
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

[TipoProc.Columnas]
Clave=64
Descripcion=484

[Acciones.Guardar]
Nombre=Guardar
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
ActivoCondicion=Usuario.EnviarExcel
Visible=S





[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Excel
Excel=(Fin)
