
[Forma]
Clave=CDIFormaPago
Icono=0
Modulos=(Todos)
Nombre=Catalogo Forma de Pago
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=CDIFormaPago
CarpetaPrincipal=CDIFormaPago
ListaAcciones=(Lista)
PosicionInicialIzquierda=503
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=359
[CDIFormaPago]
Estilo=Hoja
Clave=CDIFormaPago
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIFormaPago
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIFormaPago.FormaPago
CarpetaVisible=S

[CDIFormaPago.CDIFormaPago.FormaPago]
Carpeta=CDIFormaPago
Clave=CDIFormaPago.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
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


[CDIFormaPago.Columnas]
FormaPago=318



































[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
