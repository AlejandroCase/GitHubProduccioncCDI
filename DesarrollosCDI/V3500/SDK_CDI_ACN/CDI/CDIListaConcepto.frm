
[Forma]
Clave=CDIListaConcepto
Icono=0
Modulos=(Todos)
Nombre=Lista Concepto
MovModulo=(Todos)
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal

ListaCarpetas=ListaConcepto
CarpetaPrincipal=ListaConcepto
PosicionInicialAlturaCliente=480
PosicionInicialAncho=661
PosicionInicialIzquierda=253
PosicionInicialArriba=42
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
ExpresionesAlMostrar=EjecutarSQL(<T>exec Sp_AyudaConceptoDim :tEmp, :nEstacion<T>,Empresa,EstacionTrabajo )
[ListaConcepto]
Estilo=Hoja
Clave=ListaConcepto
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIListaConcepto
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
BusquedaRapidaControles=S

FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaAncho=50
BusquedaRespetarControles=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
BusquedaEnLinea=S
BusquedaActualizacionManual=S


FiltroGeneral=CDIListaConcepto.Empresa=<T>{Empresa}<T>
[ListaConcepto.Columnas]
NominaConcepto=161
Concepto=389
































[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

GuardarAntes=S
Antes=S
AntesExpresiones=Asigna( Temp.Texto,<T><T> )<BR>Asigna(Temp.Texto,CDIListaConcepto:CDIListaConcepto.Concepto )
[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



































[ListaConcepto.CDIListaConcepto.NominaConcepto]
Carpeta=ListaConcepto
Clave=CDIListaConcepto.NominaConcepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ListaConcepto.CDIListaConcepto.Concepto]
Carpeta=ListaConcepto
Clave=CDIListaConcepto.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco










[ListaConcepto.ListaEnCaptura]
(Inicio)=CDIListaConcepto.NominaConcepto
CDIListaConcepto.NominaConcepto=CDIListaConcepto.Concepto
CDIListaConcepto.Concepto=(Fin)



[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
