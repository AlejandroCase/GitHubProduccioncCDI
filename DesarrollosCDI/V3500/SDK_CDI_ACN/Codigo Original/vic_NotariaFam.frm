
[Forma]
Clave=vic_NotariaFam
Icono=4
Modulos=(Todos)
Nombre=Familia

ListaCarpetas=vic_NotariaFam
CarpetaPrincipal=vic_NotariaFam
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=(Lista)
PosicionInicialIzquierda=410
PosicionInicialArriba=187
PosicionInicialAlturaCliente=371
PosicionInicialAncho=353
[vic_NotariaFam]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Familias
Clave=vic_NotariaFam
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_NotariaFam
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
ListaEnCaptura=vic_NotariaFam.Familia
CarpetaVisible=S

[vic_NotariaFam.vic_NotariaFam.Familia]
Carpeta=vic_NotariaFam
Clave=vic_NotariaFam.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

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
Carpeta=vic_NotariaFam
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
ActivoCondicion=Usuario.EnviarExcel
Visible=S


[vic_NotariaFam.Columnas]
Familia=304



[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Excel
Excel=(Fin)
