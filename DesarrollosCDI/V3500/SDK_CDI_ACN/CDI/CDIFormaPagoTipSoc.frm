
[Forma]
Clave=CDIFormaPagoTipSoc
Icono=0
BarraHerramientas=S
AutoGuardar=S
Modulos=(Todos)
Nombre=<T>Formas de Pago<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Guardar
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=553
PosicionInicialArriba=232
PosicionInicialAlturaCliente=273
PosicionInicialAncho=270
Comentarios=Info.CDITipoSocio
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

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
GuardarPorRegistro=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIFormaPagoTipSoc
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
ListaEnCaptura=CDIFormaPagoTipSoc.FormaPago
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=CDIFormaPagoTipSoc.Tipo = <T>{Info.CDITipoSocio}<T>
[Lista.CDIFormaPagoTipSoc.FormaPago]
Carpeta=Lista
Clave=CDIFormaPagoTipSoc.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Columnas]
FormaPago=219
