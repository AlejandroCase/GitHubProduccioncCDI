
[Forma]
Clave=ExploradorExamen
Icono=0
Modulos=(Todos)
Nombre=Explorador Examen

ListaCarpetas=ExploradorExamen
CarpetaPrincipal=ExploradorExamen
PosicionInicialAlturaCliente=464
PosicionInicialAncho=926
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
PosicionInicialIzquierda=180
PosicionInicialArriba=258
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraHerramientas=S
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
ExpresionesAlActivar=Asigna(Info.Cliente,<T><T>)<BR>Asigna(Info.Articulo,<T><T>)
[ExploradorExamen]
Estilo=Iconos
Clave=ExploradorExamen
Filtros=S
OtroOrden=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ExploradorExamenA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
CarpetaVisible=S
ListaEnCaptura=(Lista)

ListaOrden=Cliente<TAB>(Acendente)
BusquedaRapida=S
BusquedaEnLinea=S

Paginacion=S
PaginacionTamano=100
FiltroTodo=S
FiltroTodoFinal=S
PestanaOtroNombre=S
PestanaNombre=Registros
FiltroGrupo1=Cliente
FiltroValida1=Cliente
IconosSubTitulo=<T>ClientesM<T>

IconosNombre=Cliente
FiltroGrupo2=Articulo
FiltroValida2=Articulo
FiltroGeneral={si(condatos(Info.Cliente),<T>Cliente=<T>+comillas(Info.Cliente),<T>1=1<T>)}<BR>AND<BR>{si(condatos(Info.Articulo),<T>Articulo=<T>+comillas(Info.Articulo),<T>1=1<T>)}
[ExploradorExamen.nombre]
Carpeta=ExploradorExamen
Clave=nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[ExploradorExamen.Articulo]
Carpeta=ExploradorExamen
Clave=Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ExploradorExamen.Descripcion1]
Carpeta=ExploradorExamen
Clave=Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[ExploradorExamen.Descripcion2]
Carpeta=ExploradorExamen
Clave=Descripcion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco


[ExploradorExamen.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2






5=-2
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraAcciones=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
EnBarraHerramientas=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=ExploradorExamen
TipoAccion=controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S








[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Preliminar
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=ExploradorExamen
TipoAccion=controles Captura
ClaveAccion=presentacion preliminar
Activo=S
Visible=S






[Acciones.Excel]
Nombre=Excel
Boton=115
NombreDesplegar=Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=enviar a Excel
Activo=S
Visible=S


[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=Personalizar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=controles Captura
ClaveAccion=mostrar Campos
Activo=S
Visible=S


[Acciones.Paginacion]
Nombre=Paginacion
Boton=0
NombreDesplegar=Paginacion
EnBarraHerramientas=S
TipoAccion=herramientas Captura
ClaveAccion=Navegador Paginacion
Activo=S
Visible=S








[Acciones.VariablesInfo]
Nombre=VariablesInfo
Boton=12
NombreDesplegar=Cliente y/o Art.
EnBarraHerramientas=S
TipoAccion=formas
Activo=S
Visible=S





NombreEnBoton=S
ClaveAccion=ArticulosCliente

















Multiple=S
ListaAccionesMultiples=(Lista)


[Acciones.VariablesInfo.Actu]
Nombre=Actu
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista



[Acciones.VariablesInfo.Vista]
Nombre=Vista
Boton=0
TipoAccion=formas
ClaveAccion=ArticulosCliente
Activo=S
Visible=S


[ExploradorExamen.ListaEnCaptura]
(Inicio)=nombre
nombre=Articulo
Articulo=Descripcion1
Descripcion1=Descripcion2
Descripcion2=(Fin)




















[Acciones.VariablesInfo.ACtAr]
Nombre=ACtAr
Boton=0
Carpeta=ExploradorExamen
TipoAccion=Controles Captura
ClaveAccion=Actualizar Arbol
Activo=S
Visible=S



[Acciones.VariablesInfo.ListaAccionesMultiples]
(Inicio)=Vista
Vista=Actu
Actu=ACtAr
ACtAr=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Personalizar
Personalizar=Paginacion
Paginacion=VariablesInfo
VariablesInfo=(Fin)
