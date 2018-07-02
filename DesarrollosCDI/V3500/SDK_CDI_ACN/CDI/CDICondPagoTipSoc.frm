
[Forma]
Clave=CDICondPagoTipSoc
Icono=0
BarraHerramientas=S
AutoGuardar=S
Modulos=(Todos)
Nombre=<T>Condiciones de Pago<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Guardar
ListaCarpetas=CDICondPagoTipSoc
CarpetaPrincipal=CDICondPagoTipSoc
Comentarios=Info.CDITipoSocio
PosicionInicialIzquierda=601
PosicionInicialArriba=188
PosicionInicialAlturaCliente=273
PosicionInicialAncho=272
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[CDICondPagoTipSoc]
Estilo=Hoja
Clave=CDICondPagoTipSoc
Filtros=S
PermiteEditar=S
GuardarPorRegistro=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICondPagoTipSoc
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
ListaEnCaptura=CDICondPagoTipSoc.CondPago
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=CDICondPagoTipSoc.Tipo = <T>{Info.CDITipoSocio}<T>
[CDICondPagoTipSoc.CDICondPagoTipSoc.CondPago]
Carpeta=CDICondPagoTipSoc
Clave=CDICondPagoTipSoc.CondPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICondPagoTipSoc.Columnas]
CondPago=236
