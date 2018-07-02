
[Forma]
Clave=CDICPClasificacionGas
Icono=0
Modulos=(Todos)
Nombre=Clasificación Gasto
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=291
PosicionInicialArriba=181
PosicionInicialAlturaCliente=411
PosicionInicialAncho=697
ListaAcciones=(Lista)
Comentarios=Info.ClavePresupuestal
AutoGuardar=S
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
OtroOrden=S
ValidarCampos=S
PermiteEditar=S
GuardarPorRegistro=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPClasificacion
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaOrdenarColumnas=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaCamposAValidar=Descripcion
ListaOrden=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S


FiltroGeneral=CDICPClasificacion.ID = {Info.ID} AND CDICPClasificacion.ClavePresupuestal =<T>{Info.ClavePresupuestal}<T>  AND CDICPClasificacion.Modulo = <T>{Info.Modulo}<T>
[Lista.CDICPClasificacion.Clasificacion]
Carpeta=Lista
Clave=CDICPClasificacion.Clasificacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[Lista.CDICPClasificacion.Referencia]
Carpeta=Lista
Clave=CDICPClasificacion.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[Lista.Columnas]
Clasificacion=181
Tipo=124
Cantidad=64
Precio=64
Referencia=165
Observaciones=318
EnMov=87



Clase=185


[Lista.CDICPClasificacion.Observaciones]
Carpeta=Lista
Clave=CDICPClasificacion.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

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
(Inicio)=CDICPClasificacion.Clasificacion
CDICPClasificacion.Clasificacion=CDICPClasificacion.Referencia
CDICPClasificacion.Referencia=CDICPClasificacion.Observaciones
CDICPClasificacion.Observaciones=(Fin)

[Lista.ListaOrden]
(Inicio)=CDICPClasificacion.Modulo	(Acendente)
CDICPClasificacion.Modulo	(Acendente)=CDICPClasificacion.Clasificacion	(Acendente)
CDICPClasificacion.Clasificacion	(Acendente)=(Fin)





[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
