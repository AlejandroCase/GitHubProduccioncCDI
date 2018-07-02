
[Forma]
Clave=vic_PlantillaTareas
Icono=4
Menus=S
BarraHerramientas=S
BarraAyuda=S
BarraAyudaBold=S
Modulos=(Todos)
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=Encabezado
PosicionInicialIzquierda=0
PosicionInicialArriba=159
PosicionInicialAlturaCliente=416
PosicionInicialAncho=1036
PosicionSec1=101
DialogoAbrir=S
ListaAcciones=(Lista)
Nombre=Plantillas de Tareas
MenuPrincipal=(Lista)
[Encabezado]
Estilo=Ficha
Clave=Encabezado
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_PlantillaTareas
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[Encabezado.vic_PlantillaTareas.Aplica]
Carpeta=Encabezado
Clave=vic_PlantillaTareas.Aplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Encabezado.vic_PlantillaTareas.Estatus]
Carpeta=Encabezado
Clave=vic_PlantillaTareas.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro




[Detalle]
Estilo=Hoja
Clave=Detalle
OtroOrden=S
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_PlantillaTareasD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_PlantillaTareas
LlaveLocal=vic_PlantillaTareasD.ID
LlaveMaestra=vic_PlantillaTareas.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Gris
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=vic_PlantillaTareasD.Renglon<TAB>(Acendente)
CarpetaVisible=S
ControlRenglon=S
CampoRenglon=vic_PlantillaTareasD.Renglon

[Detalle.vic_PlantillaTareasD.ClaveAct]
Carpeta=Detalle
Clave=vic_PlantillaTareasD.ClaveAct
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_PlantillaTareasD.Actividad]
Carpeta=Detalle
Clave=vic_PlantillaTareasD.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_PlantillaTareasD.FechaIni]
Carpeta=Detalle
Clave=vic_PlantillaTareasD.FechaIni
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_PlantillaTareasD.FechaIniEst]
Carpeta=Detalle
Clave=vic_PlantillaTareasD.FechaIniEst
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_PlantillaTareasD.FechaVen]
Carpeta=Detalle
Clave=vic_PlantillaTareasD.FechaVen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_PlantillaTareasD.FechaConEst]
Carpeta=Detalle
Clave=vic_PlantillaTareasD.FechaConEst
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_PlantillaTareasD.Responsable]
Carpeta=Detalle
Clave=vic_PlantillaTareasD.Responsable
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro


[Detalle.Columnas]
ClaveAct=122
Actividad=297
FechaIni=117
FechaIniEst=152
FechaVen=123
FechaConEst=128
Responsable=96










Nombre=304
[(Carpeta Abrir)]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Plantillas de Tareas
Clave=(Carpeta Abrir)
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=vic_PlantillaTareas
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Plantillas<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ACTIVA
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S

FiltroUsuarios=S

IconosNombre=vic_PlantillaTareas:vic_PlantillaTareas.ID
FiltroFechas=S
FiltroEmpresas=S
FiltroSucursales=S
FiltroFechasCampo=vic_PlantillaTareas.FechaEmision
FiltroFechasDefault=Este Mes
[(Carpeta Abrir).vic_PlantillaTareas.Aplica]
Carpeta=(Carpeta Abrir)
Clave=vic_PlantillaTareas.Aplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).vic_PlantillaTareas.Estatus]
Carpeta=(Carpeta Abrir)
Clave=vic_PlantillaTareas.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro


[(Carpeta Abrir).Columnas]
0=140
1=231
2=-2



[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+N
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S





[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S




[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S







[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S




[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Salir
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S













[Lista.Columnas]
0=99
1=375

[Encabezado.ListaEnCaptura]
(Inicio)=vic_PlantillaTareas.Aplica
vic_PlantillaTareas.Aplica=vic_PlantillaTareas.Estatus
vic_PlantillaTareas.Estatus=(Fin)
























[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=vic_PlantillaTareas.Aplica
vic_PlantillaTareas.Aplica=vic_PlantillaTareas.Estatus
vic_PlantillaTareas.Estatus=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ACTIVA
ACTIVA=INACTIVA
INACTIVA=(Fin)













[Acciones.Navegador (Documentos)]
Nombre=Navegador (Documentos)
Boton=0
NombreDesplegar=Navegador (Documentos)
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S













[Acciones.Actualizar Vista]
Nombre=Actualizar Vista
Boton=82
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S
































































[Detalle.ListaEnCaptura]
(Inicio)=vic_PlantillaTareasD.ClaveAct
vic_PlantillaTareasD.ClaveAct=vic_PlantillaTareasD.Actividad
vic_PlantillaTareasD.Actividad=vic_PlantillaTareasD.FechaIni
vic_PlantillaTareasD.FechaIni=vic_PlantillaTareasD.FechaIniEst
vic_PlantillaTareasD.FechaIniEst=vic_PlantillaTareasD.FechaVen
vic_PlantillaTareasD.FechaVen=vic_PlantillaTareasD.FechaConEst
vic_PlantillaTareasD.FechaConEst=vic_PlantillaTareasD.Responsable
vic_PlantillaTareasD.Responsable=Usuario.Nombre
Usuario.Nombre=(Fin)

[Detalle.Usuario.Nombre]
Carpeta=Detalle
Clave=Usuario.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Gris










[Forma.ListaCarpetas]
(Inicio)=Encabezado
Encabezado=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Eliminar
Eliminar=Guardar
Guardar=Cerrar
Cerrar=Actualizar Vista
Actualizar Vista=Navegador (Documentos)
Navegador (Documentos)=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=(Fin)
