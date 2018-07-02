
[Forma]
Clave=CDIEstatusSocios
Icono=17
BarraHerramientas=S
Modulos=(Todos)
Nombre=Estatus
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaAcciones=Guardar
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=534
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=212
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista]
Estilo=Hoja
Clave=Lista
OtroOrden=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEstatusSocios
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=CDIEstatusSocios.Orden<TAB>(Acendente)
CarpetaVisible=S
[Lista.ListaEnCaptura]
(Inicio)=CDIEstatusSocios.Estatus
CDIEstatusSocios.Estatus=CDIEstatusSocios.Orden
CDIEstatusSocios.Orden=(Fin)

[Lista.CDIEstatusSocios.Estatus]
Carpeta=Lista
Clave=CDIEstatusSocios.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIEstatusSocios.Orden]
Carpeta=Lista
Clave=CDIEstatusSocios.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Columnas]
Estatus=105
Orden=75
