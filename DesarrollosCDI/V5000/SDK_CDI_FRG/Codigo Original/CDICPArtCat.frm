
[Forma]
Clave=CDICPArtCat
Icono=0
Modulos=(Todos)
Nombre=Categor�as de Art�culos

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=308
PosicionInicialArriba=182
PosicionInicialAlturaCliente=409
PosicionInicialAncho=663
Comentarios=Info.ClavePresupuestal
AutoGuardar=S
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPArtCat
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
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PermiteEditar=S


Filtros=S
ValidarCampos=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
ListaCamposAValidar=Descripcion
GuardarPorRegistro=S
FiltroGeneral=CDICPArtCat.ID = {Info.ID} AND<BR>CDICPArtCat.ClavePresupuestal=<T>{Info.ClavePresupuestal}<T>
[Lista.CDICPArtCat.Categoria]
Carpeta=Lista
Clave=CDICPArtCat.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[Lista.CDICPArtCat.Referencia]
Carpeta=Lista
Clave=CDICPArtCat.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDICPArtCat.Observaciones]
Carpeta=Lista
Clave=CDICPArtCat.Observaciones
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

[Lista.Columnas]
ClavePresupuestal=133
Categoria=132
Cantidad=64
Precio=64
Referencia=171
Observaciones=330


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
(Inicio)=CDICPArtCat.Categoria
CDICPArtCat.Categoria=CDICPArtCat.Referencia
CDICPArtCat.Referencia=CDICPArtCat.Observaciones
CDICPArtCat.Observaciones=(Fin)





[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)