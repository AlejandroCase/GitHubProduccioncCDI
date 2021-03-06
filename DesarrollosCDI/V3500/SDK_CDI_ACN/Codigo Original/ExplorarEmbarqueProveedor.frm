[Forma]
Clave=ExplorarEmbarqueProveedor
Icono=47
Modulos=(Todos)
Nombre=<T>Explorando - Embarques (por Proveedor)<T>
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAltura=498
PosicionInicialAncho=838
EsConsultaExclusiva=S
PosicionInicialIzquierda=221
PosicionInicialArriba=263
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionInicialAlturaCliente=471
FiltrarFechasSinHora=S

[Lista.Columnas]
0=106
1=88

[Embarque.Columnas]
0=66
1=45

[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmbarqueT
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Embarque<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Movimientos
Filtros=S
OtroOrden=S
ListaOrden=Embarque.ID<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=EmbarqueD.Estado
FiltroValida1=EmbarqueD.Estado
FiltroAncho=20
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
FiltroTodoFinal=S
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PENDIENTE
FiltroFechasCampo=Embarque.FechaSalida
FiltroFechasDefault=(Todo)
FiltroFechasNormal=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroSucursales=S
IconosNombre=EmbarqueT:Embarque.Mov+<T> <T>+EmbarqueT:Embarque.MovID
FiltroGrupo2=Embarque.Proveedor
FiltroValida2=Embarque.Proveedor

[Lista.EmbarqueMov.Zona]
Carpeta=Lista
Clave=EmbarqueMov.Zona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Lista.EmbarqueMov.Ruta]
Carpeta=Lista
Clave=EmbarqueMov.Ruta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.EmbarqueD.Observaciones]
Carpeta=Lista
Clave=EmbarqueD.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ImporteTotal]
Carpeta=Lista
Clave=ImporteTotal
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Presentación preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Mostrar]
Nombre=Mostrar
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Lista.MovNombre]
Carpeta=Lista
Clave=MovNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Embarque.Proveedor]
Carpeta=Lista
Clave=Embarque.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.EmbarqueD.Estado]
Carpeta=Lista
Clave=EmbarqueD.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Dias]
Carpeta=Lista
Clave=Dias
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.MovPropiedades]
Nombre=MovPropiedades
Boton=35
NombreDesplegar=<T>&Movimiento<T>
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
Visible=S
NombreEnBoton=S
ConCondicion=S
EjecucionCondicion=ConDatos(EmbarqueT:EmbarqueMov.ModuloID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, EmbarqueT:EmbarqueMov.Modulo)<BR>Asigna(Info.ID, EmbarqueT:EmbarqueMov.ModuloID)

[Acciones.EmbPropiedades]
Nombre=EmbPropiedades
Boton=35
NombreEnBoton=S
NombreDesplegar=<T>&Embarque<T>
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(EmbarqueT:Embarque.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>EMB<T>)<BR>Asigna(Info.ID, EmbarqueT:Embarque.ID)
Visible=S

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=EmbPropiedades
EmbPropiedades=MovPropiedades
MovPropiedades=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Mostrar
Mostrar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=MovNombre
MovNombre=EmbarqueD.Estado
EmbarqueD.Estado=Dias
Dias=EmbarqueMov.Zona
EmbarqueMov.Zona=EmbarqueMov.Ruta
EmbarqueMov.Ruta=Embarque.Proveedor
Embarque.Proveedor=ImporteTotal
ImporteTotal=EmbarqueD.Observaciones
EmbarqueD.Observaciones=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)
