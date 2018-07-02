
[Forma]
Clave=CDIPlanCondicion
Icono=0
Modulos=(Todos)
Nombre=Condicion Plan de Pagos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIPlanCondicion
CarpetaPrincipal=CDIPlanCondicion
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=511
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=344
[CDIPlanCondicion]
Estilo=Hoja
Clave=CDIPlanCondicion
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPlanCondicion
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
ListaEnCaptura=CDIPlanCondicion.Condicion
CarpetaVisible=S

[CDIPlanCondicion.CDIPlanCondicion.Condicion]
Carpeta=CDIPlanCondicion
Clave=CDIPlanCondicion.Condicion
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

[Acciones.PlanPagos]
Nombre=PlanPagos
Boton=61
NombreEnBoton=S
NombreDesplegar=Plan de Pagos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIPlanPagosCond
Activo=S
Visible=S


Antes=S
GuardarAntes=S
AntesExpresiones=Asigna(Info.Condicion,CDIPlanCondicion:CDIPlanCondicion.Condicion)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


EspacioPrevio=S
[CDIPlanCondicion.Columnas]
Condicion=304































































[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=PlanPagos
PlanPagos=Cerrar
Cerrar=(Fin)
