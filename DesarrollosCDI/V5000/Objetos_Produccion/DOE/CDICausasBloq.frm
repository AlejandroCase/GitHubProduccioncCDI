
[Forma]
Clave=CDICausasBloq
Icono=0
Modulos=(Todos)
Nombre=Causas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICausasBloq
CarpetaPrincipal=CDICausasBloq
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=449
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=467
[CDICausasBloq]
Estilo=Hoja
Clave=CDICausasBloq
PermiteEditar=S
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

[CDICausasBloq.CDICausasBloq.Causa]
Carpeta=CDICausasBloq
Clave=CDICausasBloq.Causa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[CDICausasBloq.Columnas]
Mov=124
Causa=304















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
