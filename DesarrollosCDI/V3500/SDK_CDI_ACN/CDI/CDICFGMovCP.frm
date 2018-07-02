
[Forma]
Clave=CDICFGMovCP
Icono=0
Modulos=(Todos)
Nombre=Configuración Cancelacion CP

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=461
PosicionInicialArriba=325
PosicionInicialAlturaCliente=272
PosicionInicialAncho=358
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICFGMovCP
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
[Lista.ListaEnCaptura]
(Inicio)=CDICFGMovCP.MovOrigen
CDICFGMovCP.MovOrigen=CDICFGMovCP.MovDestino
CDICFGMovCP.MovDestino=(Fin)

[Lista.CDICFGMovCP.MovOrigen]
Carpeta=Lista
Clave=CDICFGMovCP.MovOrigen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CDICFGMovCP.MovDestino]
Carpeta=Lista
Clave=CDICFGMovCP.MovDestino
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
MovOrigen=169
MovDestino=149

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



EspacioPrevio=S




















[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=(Fin)
