[Forma]
Clave=ExplorarValeSerie
Nombre=Vales
Icono=4
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=182
PosicionInicialArriba=127
PosicionInicialAltura=514
PosicionInicialAncho=659
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)

[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ValeSerie
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Serie<T>
ElementosPorPagina=200
PestanaOtroNombre=S
PestanaNombre=Vales
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroFechasCampo=ValeSerie.FechaEmision
FiltroFechasDefault=(Todo)
FiltroFechasNormal=S
FiltroFechasCancelacion=ValeSerie.FechaCancelacion
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
Filtros=S
FiltroPredefinido=S
FiltroAutoCampo=(Validaciones Memoria)
FiltroAutoValidar=ValeTipo
FiltroGrupo1=ValeSerie.Cliente
FiltroNullNombre=(Disponibles)
FiltroEnOrden=S
FiltroTodoNombre=(Todos)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
FiltroTodoFinal=S
FiltroValida1=ValeSerie.Cliente
FiltroGrupo2=ValeSerie.Tipo
FiltroValida2=ValeSerie.Tipo
FiltroNull=S
IconosNombre=ValeSerie:ValeSerie.Serie

[Lista.ValeSerie.Precio]
Carpeta=Lista
Clave=ValeSerie.Precio
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
0=172
1=82

[Lista.ValeSerie.FechaEmision]
Carpeta=Lista
Clave=ValeSerie.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=Personalizar Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

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
NombreDesplegar=Presentacion preliminar
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

[Acciones.Info]
Nombre=Info
Boton=34
NombreDesplegar=Información
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=ValeSerieInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(ValeSerie:ValeSerie.Serie)
AntesExpresiones=Asigna(Info.Vale, ValeSerie:ValeSerie.Serie)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Info
Info=Personalizar
Personalizar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=ValeSerie.FechaEmision
ValeSerie.FechaEmision=ValeSerie.Precio
ValeSerie.Precio=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=DISPONIBLE
DISPONIBLE=CIRCULACION
CIRCULACION=COBRADO
COBRADO=BLOQUEADO
BLOQUEADO=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)
