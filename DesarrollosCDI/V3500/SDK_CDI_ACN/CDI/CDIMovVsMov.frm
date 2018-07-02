
[Forma]
Clave=CDIMovVsMov
Icono=0
Modulos=(Todos)
MovModulo=CDIMovVsMov
Nombre=Movimiento Baja Vs Movimiento Alta
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIMovVsMov
CarpetaPrincipal=CDIMovVsMov
PosicionInicialIzquierda=461
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=444
ExpresionesAlMostrar=asigna(info.modulo,<T>SOC<T>)
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIMovVsMov]
Estilo=Hoja
Clave=CDIMovVsMov
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMovVsMov
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
PermiteEditar=S

[CDIMovVsMov.CDIMovVsMov.Mov]
Carpeta=CDIMovVsMov
Clave=CDIMovVsMov.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIMovVsMov.CDIMovVsMov.ContraMov]
Carpeta=CDIMovVsMov
Clave=CDIMovVsMov.ContraMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIMovVsMov.Columnas]
Mov=199
ContraMov=204

[CDIMovVsMov.ListaEnCaptura]
(Inicio)=CDIMovVsMov.Mov
CDIMovVsMov.Mov=CDIMovVsMov.ContraMov
CDIMovVsMov.ContraMov=(Fin)

[Lista.Columnas]
0=91
1=86
2=317
3=-2
Mov=224

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
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
