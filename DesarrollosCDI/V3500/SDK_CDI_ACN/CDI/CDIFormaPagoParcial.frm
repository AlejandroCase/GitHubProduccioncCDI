
[Forma]
Clave=CDIFormaPagoParcial
Icono=0
Modulos=(Todos)
Nombre=Formas Pago y Parcialidades

ListaCarpetas=CDIFormaPagoParcial
CarpetaPrincipal=CDIFormaPagoParcial
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=532
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=301
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
[CDIFormaPagoParcial]
Estilo=Hoja
Clave=CDIFormaPagoParcial
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIFormaPagoParcial
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

[CDIFormaPagoParcial.CDIFormaPagoParcial.FormaPago]
Carpeta=CDIFormaPagoParcial
Clave=CDIFormaPagoParcial.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIFormaPagoParcial.CDIFormaPagoParcial.Parcialidades]
Carpeta=CDIFormaPagoParcial
Clave=CDIFormaPagoParcial.Parcialidades
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIFormaPagoParcial.CDIFormaPagoParcial.Estatus]
Carpeta=CDIFormaPagoParcial
Clave=CDIFormaPagoParcial.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
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
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[CDIFormaPagoParcial.Columnas]
FormaPago=94
Parcialidades=66
Estatus=94






[CDIFormaPagoParcial.ListaEnCaptura]
(Inicio)=CDIFormaPagoParcial.FormaPago
CDIFormaPagoParcial.FormaPago=CDIFormaPagoParcial.Parcialidades
CDIFormaPagoParcial.Parcialidades=CDIFormaPagoParcial.Estatus
CDIFormaPagoParcial.Estatus=(Fin)



















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
