
[Forma]
Clave=CDIPlanPagosCond
Icono=0
Modulos=(Todos)
Nombre=Plan de Pagos

ListaCarpetas=CDIPlanPagosCond
CarpetaPrincipal=CDIPlanPagosCond
PosicionInicialAlturaCliente=273
PosicionInicialAncho=339
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=417
PosicionInicialArriba=228
Comentarios=<T>Condición: <T>+info.Condicion
[CDIPlanPagosCond]
Estilo=Hoja
Clave=CDIPlanPagosCond
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPlanPagosCond
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
CarpetaVisible=S
PermiteEditar=S
ListaEnCaptura=(Lista)


Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIPlanPagosCond.Condicion=<T>{Info.Condicion}<T>

[CDIPlanPagosCond.CDIPlanPagosCond.Documento]
Carpeta=CDIPlanPagosCond
Clave=CDIPlanPagosCond.Documento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPlanPagosCond.CDIPlanPagosCond.FechaDocumento]
Carpeta=CDIPlanPagosCond
Clave=CDIPlanPagosCond.FechaDocumento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPlanPagosCond.CDIPlanPagosCond.Importe]
Carpeta=CDIPlanPagosCond
Clave=CDIPlanPagosCond.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
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

[CDIPlanPagosCond.Columnas]
Condicion=193
Documento=64
FechaDocumento=101
Importe=64

Moneda=69

[CDIPlanPagosCond.CDIPlanPagosCond.Moneda]
Carpeta=CDIPlanPagosCond
Clave=CDIPlanPagosCond.Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Lista.Columnas]
Moneda=144
TipoCambio=69


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
























[CDIPlanPagosCond.ListaEnCaptura]
(Inicio)=CDIPlanPagosCond.Documento
CDIPlanPagosCond.Documento=CDIPlanPagosCond.FechaDocumento
CDIPlanPagosCond.FechaDocumento=CDIPlanPagosCond.Importe
CDIPlanPagosCond.Importe=CDIPlanPagosCond.Moneda
CDIPlanPagosCond.Moneda=(Fin)













[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
