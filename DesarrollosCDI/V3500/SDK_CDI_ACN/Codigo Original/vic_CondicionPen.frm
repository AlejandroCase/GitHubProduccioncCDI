
[Forma]
Clave=vic_CondicionPen
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=<T>Moratorios<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=407
PosicionInicialArriba=278
PosicionInicialAlturaCliente=273
PosicionInicialAncho=338
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
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
[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Moratorias
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_CondicionPen
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
ListaEnCaptura=vic_CondicionPen.Pena
CarpetaVisible=S

[Lista.vic_CondicionPen.Pena]
Carpeta=Lista
Clave=vic_CondicionPen.Pena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro


[Lista.Columnas]
Pena=304

































[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Excel
Excel=(Fin)
