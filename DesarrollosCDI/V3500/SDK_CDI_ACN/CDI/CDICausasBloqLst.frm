
[Forma]
Clave=CDICausasBloqLst
Icono=0
Modulos=(Todos)
Nombre=Causas
MovModulo=(Todos)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICausasBloq
CarpetaPrincipal=CDICausasBloq
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
PosicionInicialIzquierda=587
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=311
[CDICausasBloq]
Estilo=Hoja
Clave=CDICausasBloq
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICausasBloq
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

[CDICausasBloq.CDICausasBloq.Causa]
Carpeta=CDICausasBloq
Clave=CDICausasBloq.Causa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

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

[CDICausasBloq.Columnas]
Causa=150

Mov=124




[CDICausasBloq.ListaEnCaptura]
(Inicio)=CDICausasBloq.Mov
CDICausasBloq.Mov=CDICausasBloq.Causa
CDICausasBloq.Causa=(Fin)

[CDICausasBloq.CDICausasBloq.Mov]
Carpeta=CDICausasBloq
Clave=CDICausasBloq.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
