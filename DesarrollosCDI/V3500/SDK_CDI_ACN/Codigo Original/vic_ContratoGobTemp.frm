
[Forma]
Clave=vic_ContratoGobTemp
Icono=4
Modulos=(Todos)
Nombre=Temporalidad

ListaCarpetas=Temporalidad
CarpetaPrincipal=Temporalidad
PosicionInicialIzquierda=257
PosicionInicialArriba=261
PosicionInicialAlturaCliente=307
PosicionInicialAncho=638
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=(Lista)
[Temporalidad]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Temporalidad
Clave=Temporalidad
PermiteEditar=S
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

[Temporalidad.Columnas]
Clave=110
Descripcion=484

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Enviar/Recibir Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Visible=S

EspacioPrevio=S
ActivoCondicion=Usuario.EnviarExcel
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

















[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Excel
Excel=(Fin)
