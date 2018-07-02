
[Forma]
Clave=CDICPConceptoGas
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Conceptos Gastos
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=279
PosicionInicialArriba=181
PosicionInicialAlturaCliente=410
PosicionInicialAncho=721
AutoGuardar=S
ListaAcciones=(Lista)
Comentarios=Info.ClavePresupuestal
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
OtroOrden=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPConcepto
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
HojaAjustarColumnas=S
HojaTitulosEnBold=S
HojaOrdenarColumnas=S
ListaEnCaptura=(Lista)

ValidarCampos=S

ListaOrden=(Lista)
GuardarPorRegistro=S
ListaCamposAValidar=Descripcion
FiltroGeneral=CDICPConcepto.ID = {Info.ID} AND CDICPConcepto.ClavePresupuestal=<T>{Info.ClavePresupuestal}<T> AND CDICPConcepto.Modulo = <T>{Info.Modulo}<T>
[Lista.CDICPConcepto.Concepto]
Carpeta=Lista
Clave=CDICPConcepto.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[Lista.CDICPConcepto.Referencia]
Carpeta=Lista
Clave=CDICPConcepto.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDICPConcepto.Observaciones]
Carpeta=Lista
Clave=CDICPConcepto.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco


[Lista.Columnas]
Concepto=228
Tipo=124
Cantidad=64
Precio=64
Referencia=143
Observaciones=319
EnMov=87












[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S




























[Lista.ListaEnCaptura]
(Inicio)=CDICPConcepto.Concepto
CDICPConcepto.Concepto=CDICPConcepto.Referencia
CDICPConcepto.Referencia=CDICPConcepto.Observaciones
CDICPConcepto.Observaciones=(Fin)

[Lista.ListaOrden]
(Inicio)=CDICPConcepto.Modulo	(Acendente)
CDICPConcepto.Modulo	(Acendente)=CDICPConcepto.Concepto	(Acendente)
CDICPConcepto.Concepto	(Acendente)=(Fin)











[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
