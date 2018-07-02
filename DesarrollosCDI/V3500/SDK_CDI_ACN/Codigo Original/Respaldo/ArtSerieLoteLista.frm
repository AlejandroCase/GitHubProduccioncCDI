[Forma]
Clave=ArtSerieLoteLista
Nombre=e(Info.ArtTipo+<T>s<T>)+<T> <T>+e(<T>del Artículo en el Almacén<T>)
Icono=6
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=664
PosicionInicialArriba=387
PosicionInicialAltura=417
PosicionInicialAncho=592
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Articulo, Recorta(Info.SubCuenta), Info.Almacen)
EsConsultaExclusiva=S
PosicionInicialAlturaCliente=390

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=SerieLote
Fuente={Fixedsys, 9, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
ConFuenteEspecial=S
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
Filtros=S
FiltroPredefinido=S
FiltroAncho=30
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=General
OtroOrden=S
HojaAjustarColumnas=S
ListaOrden=(Lista)
MenuLocal=S
ListaAcciones=SeleccionarTodoLocal
HojaMantenerSeleccion=S
FiltroGeneral=SerieLote.Empresa=<T>{Empresa}<T> AND<BR>SerieLote.Articulo=<T>{Info.Articulo}<T> AND <BR>SerieLote.SubCuenta=<T>{Info.SubCuenta}<T> AND<BR>SerieLote.Existencia{Si(Info.AlmTipo=<T>Activos Fijos<T>,<T>ActivoFijo<T>,<T><T>)}>0 AND<BR>SerieLote.Almacen=<T>{Info.Almacen}<T><BR>{Si(General.Autotransportes y ConDatos(Filtro.Espacio), <T> AND SerieLote.SerieLote LIKE <T>+Comillas(Filtro.Espacio+<T>%<T>), <T><T>)}

[Lista.Columnas]
SerieLote=188
Propiedades=124
Existencia=75
EnExistencia=69
0=164
SubCuenta=108
ExistenciaAlterna=68
ExistenciaActivoFijo=69
Fecha1=97

[Lista.SerieLote.SerieLote]
Carpeta=Lista
Clave=SerieLote.SerieLote
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.SerieLoteInfo]
Nombre=SerieLoteInfo
Boton=34
NombreEnBoton=S
NombreDesplegar=&Información
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=SerieLoteInfo
Activo=S
Antes=S
AntesExpresiones=Asigna( Info.SerieLote, SerieLote:SerieLote.SerieLote )
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[Lista.SerieLote.Existencia]
Carpeta=Lista
Clave=SerieLote.Existencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.SerieLote.ExistenciaAlterna]
Carpeta=Lista
Clave=SerieLote.ExistenciaAlterna
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.SeleccionarTodoLocal]
Nombre=SeleccionarTodoLocal
Boton=0
NombreDesplegar=&Seleccionar Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S

[Lista.SerieLote.ExistenciaActivoFijo]
Carpeta=Lista
Clave=SerieLote.ExistenciaActivoFijo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.SerieLoteProp.Fecha1]
Carpeta=Lista
Clave=SerieLoteProp.Fecha1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=SerieLoteInfo
SerieLoteInfo=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=SerieLote.SerieLote
SerieLote.SerieLote=SerieLote.Existencia
SerieLote.Existencia=SerieLote.ExistenciaAlterna
SerieLote.ExistenciaAlterna=SerieLote.ExistenciaActivoFijo
SerieLote.ExistenciaActivoFijo=SerieLoteProp.Fecha1
SerieLoteProp.Fecha1=(Fin)

[Lista.ListaOrden]
(Inicio)=SerieLote.Existencia<TAB>(Decendente)
SerieLote.Existencia<TAB>(Decendente)=SerieLote.SerieLote<TAB>(Acendente)
SerieLote.SerieLote<TAB>(Acendente)=(Fin)
