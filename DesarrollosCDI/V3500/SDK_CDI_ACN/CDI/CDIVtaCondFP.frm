
[Forma]
Clave=CDIVtaCondFP
Icono=0
Modulos=(Todos)
Nombre=Regla Concepto Condicion Forma Pago
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIVtaCondFP
CarpetaPrincipal=CDIVtaCondFP
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=206
PosicionInicialArriba=273
PosicionInicialAlturaCliente=182
PosicionInicialAncho=953
[CDIVtaCondFP]
Estilo=Hoja
Clave=CDIVtaCondFP
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVtaCondFP
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
[CDIVtaCondFP.ListaEnCaptura]
(Inicio)=CDIVtaCondFP.Concepto
CDIVtaCondFP.Concepto=CDIVtaCondFP.Condicion
CDIVtaCondFP.Condicion=CDIVtaCondFP.FormaPago
CDIVtaCondFP.FormaPago=(Fin)

[CDIVtaCondFP.CDIVtaCondFP.Concepto]
Carpeta=CDIVtaCondFP
Clave=CDIVtaCondFP.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVtaCondFP.CDIVtaCondFP.Condicion]
Carpeta=CDIVtaCondFP
Clave=CDIVtaCondFP.Condicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVtaCondFP.CDIVtaCondFP.FormaPago]
Carpeta=CDIVtaCondFP
Clave=CDIVtaCondFP.FormaPago
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
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S




[CDIVtaCondFP.Columnas]
Concepto=304
Condicion=304
FormaPago=304












[Lista.Columnas]
Concepto=218









































[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
