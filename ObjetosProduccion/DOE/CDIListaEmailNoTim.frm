
[Forma]
Clave=CDIListaEmailNoTim
Icono=0
Modulos=(Todos)
Nombre=Recibo no Timbrado

ListaCarpetas=CDIListaEmailNoTim
CarpetaPrincipal=CDIListaEmailNoTim
PosicionInicialIzquierda=527
PosicionInicialArriba=197
PosicionInicialAlturaCliente=273
PosicionInicialAncho=318
VentanaSiempreAlFrente=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
ListaAcciones=(Lista)
[CDIListaEmailNoTim]
Estilo=Hoja
Clave=CDIListaEmailNoTim
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIListaEmailNoTim
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIListaEmailNoTim.Correo
CarpetaVisible=S

[CDIListaEmailNoTim.CDIListaEmailNoTim.Correo]
Carpeta=CDIListaEmailNoTim
Clave=CDIListaEmailNoTim.Correo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIListaEmailNoTim.Columnas]
Correo=279

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraAcciones=S
Activo=S
Visible=S
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S









































[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=(Fin)
