
[Forma]
Clave=vic_InmuebleConsumos
Icono=4
Modulos=(Todos)

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=412
PosicionInicialArriba=278
PosicionInicialAlturaCliente=273
PosicionInicialAncho=328
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Nombre=Consumos
[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Consumos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_InmuebleConsumos
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

[Lista.vic_InmuebleConsumos.Consumo]
Carpeta=Lista
Clave=vic_InmuebleConsumos.Consumo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Consumo=194

Factor=64
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
NombreDesplegar=&Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Visible=S

ActivoCondicion=Usuario.EnviarExcel














[Lista.vic_InmuebleConsumos.Factor]
Carpeta=Lista
Clave=vic_InmuebleConsumos.Factor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro






[Lista.ListaEnCaptura]
(Inicio)=vic_InmuebleConsumos.Consumo
vic_InmuebleConsumos.Consumo=vic_InmuebleConsumos.Factor
vic_InmuebleConsumos.Factor=(Fin)









[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Excel
Excel=(Fin)
