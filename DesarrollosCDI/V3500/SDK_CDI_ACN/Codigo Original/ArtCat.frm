[Forma]
Clave=ArtCat
Nombre=Categorías de Artículos
Icono=0
Modulos=INV
AccionesTamanoBoton=14x5
AccionesDerecha=S
ListaCarpetas=Lista
PosicionInicialIzquierda=758
PosicionInicialArriba=424
PosicionInicialAltura=345
PosicionInicialAncho=404
CarpetaPrincipal=Lista
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
BarraHerramientas=S
PosicionInicialAlturaCliente=318

[ArtCat.Columnas]
Categoria=104
Descripcion=304

[Lista]
Estilo=Hoja
PestanaNombre=Lista
Clave=Lista
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ArtCat
Fuente={MS Sans Serif, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
ListaOrden=ArtCat.Categoria<TAB>(Acendente)
CarpetaVisible=S
HojaAjustarColumnas=S
PermiteEditar=S
HojaConfirmarEliminar=S
HojaVistaOmision=Automática
HojaTitulos=S
HojaMostrarColumnas=S

[Lista.ArtCat.Categoria]
Carpeta=Lista
Clave=ArtCat.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Categoria=234
Descripcion=325
ValidarPresupuestoCompra=139

[Detalles.ArtCat.Categoria]
Carpeta=Detalles
Clave=ArtCat.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[Detalles.ArtCat.Icono]
Carpeta=Detalles
Clave=ArtCat.Icono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
EnBarraHerramientas=S
EnMenu=S
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Visible=S
Activo=S
GuardarAntes=S
ConCondicion=S
EjecucionConError=S
EjecucionCondicion=Asigna(Temp.Texto, ListaBuscarDuplicados(CampoEnLista(ArtCat:ArtCat.Categoria)))<BR>Vacio(Temp.Texto)
EjecucionMensaje=Comillas(Temp.Texto)+<T> Duplicado<T>

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Visible=S
ActivoCondicion=Usuario.EnviarExcel

[Acciones.ArtCatABC]
Nombre=ArtCatABC
Boton=47
NombreEnBoton=S
NombreDesplegar=&ABC
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=ArtCatABC
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.ArtCat, ArtCat:ArtCat.Categoria)
VisibleCondicion=General.Prod

[Lista.ArtCat.ValidarPresupuestoCompra]
Carpeta=Lista
Clave=ArtCat.ValidarPresupuestoCompra
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Excel
Excel=ArtCatABC
ArtCatABC=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=ArtCat.Categoria
ArtCat.Categoria=ArtCat.ValidarPresupuestoCompra
ArtCat.ValidarPresupuestoCompra=(Fin)
