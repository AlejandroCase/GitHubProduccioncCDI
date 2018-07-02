[Forma]
Clave=pFiscalArt
Nombre=Información Fiscal (Artículos)
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
PosicionInicialIzquierda=513
PosicionInicialArriba=203
PosicionInicialAlturaCliente=601
PosicionInicialAncho=869
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=pFiscalArt
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=ArtCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=ArtGrupo
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=ArtFam
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=Fabricante
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=ArtLinea
FiltroAplicaEn1=pFiscalArt.Categoria
FiltroAplicaEn2=pFiscalArt.Grupo
FiltroAplicaEn3=pFiscalArt.Familia
FiltroAplicaEn4=pFiscalArt.Fabricante
FiltroAplicaEn5=pFiscalArt.Linea
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
HojaAjustarColumnas=S
HojaMantenerSeleccion=S

[Lista.pFiscalArt.Articulo]
Carpeta=Lista
Clave=pFiscalArt.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalArt.Descripcion1]
Carpeta=Lista
Clave=pFiscalArt.Descripcion1
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalArt.Impuesto1]
Carpeta=Lista
Clave=pFiscalArt.Impuesto1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalArt.Impuesto2]
Carpeta=Lista
Clave=pFiscalArt.Impuesto2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalArt.Impuesto3]
Carpeta=Lista
Clave=pFiscalArt.Impuesto3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalArt.Impuesto1Excento]
Carpeta=Lista
Clave=pFiscalArt.Impuesto1Excento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalArt.Excento2]
Carpeta=Lista
Clave=pFiscalArt.Excento2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalArt.Excento3]
Carpeta=Lista
Clave=pFiscalArt.Excento3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista.Columnas]
Articulo=107
Descripcion1=214
Impuesto1=41
Impuesto2=47
Impuesto3=72
Impuesto1Excento=64
Excento2=64
Excento3=69

[Lista.ListaEnCaptura]
(Inicio)=pFiscalArt.Articulo
pFiscalArt.Articulo=pFiscalArt.Descripcion1
pFiscalArt.Descripcion1=pFiscalArt.Impuesto1
pFiscalArt.Impuesto1=pFiscalArt.Impuesto2
pFiscalArt.Impuesto2=pFiscalArt.Impuesto3
pFiscalArt.Impuesto3=pFiscalArt.Impuesto1Excento
pFiscalArt.Impuesto1Excento=pFiscalArt.Excento2
pFiscalArt.Excento2=pFiscalArt.Excento3
pFiscalArt.Excento3=(Fin)
