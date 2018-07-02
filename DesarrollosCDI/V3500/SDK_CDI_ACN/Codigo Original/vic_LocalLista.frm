
[Forma]
Clave=vic_LocalLista
Icono=6
Modulos=(Todos)
Nombre=Locales
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Local
CarpetaPrincipal=Local
ListaAcciones=Seleccionar
PosicionInicialIzquierda=9
PosicionInicialArriba=190
PosicionInicialAlturaCliente=354
PosicionInicialAncho=1005
[Local]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Locales
Clave=Local
OtroOrden=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Local
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=vic_Local.Local<TAB>(Acendente)
CarpetaVisible=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Local<T>
ElementosPorPagina=200



Filtros=S
FiltroPredefinido=S
FiltroGrupo1=vic_Local.Categoria
FiltroValida1=vic_Local.Categoria
FiltroGrupo2=vic_Local.Familia
FiltroValida2=vic_Local.Familia
FiltroGrupo3=vic_Local.Grupo
FiltroValida3=vic_Local.Grupo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroListasRama=CXC
FiltroListasAplicaEn=vic_Local.Local
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=DESOCUPADO
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaAncho=20
BusquedaEnLinea=S
MenuLocal=S
ListaAcciones=(Lista)
IconosNombre=vic_Local:vic_Local.Local
FiltroGeneral=vic_Local.Estatus in (<T>DESOCUPADO<T>, <T>APARTADO<T>)<BR>AND vic_Local.Inmueble = <T>{Info.Aplica}<T><BR>AND vic_Local.Local NOT IN (SELECT Local FROM vic_Condicion WHERE IDContrato= ISNULL({Info.ID},0) AND Estatus = <T>ACTIVA<T>)<BR>AND vic_Local.Local NOT IN (SELECT vc.Local FROM vic_Condicion vc INNER JOIN Contrato c ON vc.IDContrato = c.ID WHERE c.Estatus = <T>SINAFECTAR<T> AND vc.Estatus = <T>ACTIVA<T> AND vc.ConLocal = 1)
[Local.vic_Local.Nombre]
Carpeta=Local
Clave=vic_Local.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco



[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[Local.Columnas]
Local=94
Nombre=604
NombreCorto=184
Rama=64

0=59
1=149
2=111
3=82













4=78
5=92
6=110
7=53
8=-2
[Local.vic_Local.Estatus]
Carpeta=Local
Clave=vic_Local.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





























[Local.vic_Local.Inmueble]
Carpeta=Local
Clave=vic_Local.Inmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

















[Local.vic_Local.Tipo]
Carpeta=Local
Clave=vic_Local.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Local.vic_Local.Uso]
Carpeta=Local
Clave=vic_Local.Uso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Local.vic_Local.Medida]
Carpeta=Local
Clave=vic_Local.Medida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Local.vic_Local.Unidad]
Carpeta=Local
Clave=vic_Local.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[Local.vic_Inmueble.Nombre]
Carpeta=Local
Clave=vic_Inmueble.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco

[Acciones.Preliminar]
Nombre=Preliminar
Boton=0
NombreDesplegar=&Presentación Preliminar
EnMenu=S
Carpeta=Local
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Local
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Local
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Personalizar]
Nombre=Personalizar
Boton=0
NombreDesplegar=&Personalizar vista
EnMenu=S
EspacioPrevio=S
Carpeta=Local
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S













[Local.vic_Area.Nombre]
Carpeta=Local
Clave=vic_Area.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco




[Local.vic_Local.Area]
Carpeta=Local
Clave=vic_Local.Area
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Local.ListaEnCaptura]
(Inicio)=vic_Local.Nombre
vic_Local.Nombre=vic_Local.Estatus
vic_Local.Estatus=vic_Local.Inmueble
vic_Local.Inmueble=vic_Inmueble.Nombre
vic_Inmueble.Nombre=vic_Local.Area
vic_Local.Area=vic_Area.Nombre
vic_Area.Nombre=vic_Local.Tipo
vic_Local.Tipo=vic_Local.Uso
vic_Local.Uso=vic_Local.Medida
vic_Local.Medida=vic_Local.Unidad
vic_Local.Unidad=(Fin)

[Local.FiltroListaEstatus]
(Inicio)=DESOCUPADO
DESOCUPADO=APARTADO
APARTADO=(Fin)

[Local.ListaAcciones]
(Inicio)=Preliminar
Preliminar=Excel
Excel=Imprimir
Imprimir=Personalizar
Personalizar=(Fin)
