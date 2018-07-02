
[Forma]
Clave=CDIFormaPagoParcialLst
Icono=0
Modulos=(Todos)
Nombre=Formas Pago y Parcialidades

ListaCarpetas=CDIFormaPagoParcial
CarpetaPrincipal=CDIFormaPagoParcial
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
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
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PermiteEditar=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Estatus=<T>ALTA<T>
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



[CDIFormaPagoParcial.Columnas]
FormaPago=94
Parcialidades=66
Estatus=94







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



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Seleccionar
Seleccionar=(Fin)



[CDIFormaPagoParcial.ListaEnCaptura]
(Inicio)=CDIFormaPagoParcial.FormaPago
CDIFormaPagoParcial.FormaPago=CDIFormaPagoParcial.Parcialidades
CDIFormaPagoParcial.Parcialidades=CDIFormaPagoParcial.Estatus
CDIFormaPagoParcial.Estatus=(Fin)
