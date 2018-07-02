
[Forma]
Clave=vic_ContratoPSolicitudes
Icono=4
Modulos=(Todos)
Nombre=Plantillas de Solicitudes
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraAyuda=S
BarraAyudaBold=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Encabezado
PosicionInicialIzquierda=9
PosicionInicialArriba=34
PosicionInicialAlturaCliente=665
PosicionInicialAncho=1005
PosicionSec1=199
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
DialogoAbrir=S
Menus=S
ListaAcciones=(Lista)
MenuPrincipal=&Archivo
[Encabezado]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Generales
Clave=Encabezado
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoPSolicitudes
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

[Encabezado.vic_ContratoPSolicitudes.Nombre]
Carpeta=Encabezado
Clave=vic_ContratoPSolicitudes.Nombre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Encabezado.vic_ContratoPSolicitudes.NombreCorto]
Carpeta=Encabezado
Clave=vic_ContratoPSolicitudes.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Encabezado.vic_ContratoPSolicitudes.Tipo]
Carpeta=Encabezado
Clave=vic_ContratoPSolicitudes.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Encabezado.vic_ContratoPSolicitudes.FechaEmision]
Carpeta=Encabezado
Clave=vic_ContratoPSolicitudes.FechaEmision
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=20
[Encabezado.vic_ContratoPSolicitudes.Estatus]
Carpeta=Encabezado
Clave=vic_ContratoPSolicitudes.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Comentarios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Comentarios
Clave=Comentarios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoPSolicitudes
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
ListaEnCaptura=vic_ContratoPSolicitudes.Comentarios
CarpetaVisible=S
AlinearTodaCarpeta=S

[Comentarios.vic_ContratoPSolicitudes.Comentarios]
Carpeta=Comentarios
Clave=vic_ContratoPSolicitudes.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50x30
ColorFondo=Blanco
ColorFuente=Negro


[Detalle]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Detalle
Clave=Detalle
OtroOrden=S
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_ContratoPSolicitudesD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_ContratoPSolicitudes
LlaveLocal=vic_ContratoPSolicitudesD.ID
LlaveMaestra=vic_ContratoPSolicitudes.ID
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

ListaOrden=vic_ContratoPSolicitudesD.Renglon<TAB>(Acendente)
CarpetaVisible=S
ControlRenglon=S
CampoRenglon=vic_ContratoPSolicitudesD.Renglon

[Detalle.vic_ContratoPSolicitudesD.Actividad]
Carpeta=Detalle
Clave=vic_ContratoPSolicitudesD.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_ContratoPSolicitudesD.Titulo]
Carpeta=Detalle
Clave=vic_ContratoPSolicitudesD.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_ContratoPSolicitudesD.Recurso]
Carpeta=Detalle
Clave=vic_ContratoPSolicitudesD.Recurso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_ContratoPSolicitudesD.Email]
Carpeta=Detalle
Clave=vic_ContratoPSolicitudesD.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_ContratoPSolicitudesD.Concepto]
Carpeta=Detalle
Clave=vic_ContratoPSolicitudesD.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_ContratoPSolicitudesD.Texto]
Carpeta=Detalle
Clave=vic_ContratoPSolicitudesD.Texto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro


[Detalle.Columnas]
Actividad=94
Titulo=247
Recurso=124
Email=156
Concepto=144
Texto=210




Notaria=64
NombreCorto=184
Nombre_1=185
[Encabezado.ListaEnCaptura]
(Inicio)=vic_ContratoPSolicitudes.NombreCorto
vic_ContratoPSolicitudes.NombreCorto=vic_ContratoPSolicitudes.Nombre
vic_ContratoPSolicitudes.Nombre=vic_ContratoPSolicitudes.Tipo
vic_ContratoPSolicitudes.Tipo=vic_ContratoPSolicitudes.FechaEmision
vic_ContratoPSolicitudes.FechaEmision=vic_ContratoPSolicitudes.Estatus
vic_ContratoPSolicitudes.Estatus=(Fin)








[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=vic_ContratoPSolicitudes
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Plantilla<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
OtroOrden=S
BusquedaRapidaControles=S

ListaOrden=vic_ContratoPSolicitudes.ID<TAB>(Acendente)
FiltroEstatus=S
FiltroUsuarios=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroEmpresas=S
FiltroSucursales=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroUsuarioDefault=(Usuario)
FiltroFechasCampo=vic_ContratoPSolicitudes.FechaEmision
FiltroFechasDefault=Este Mes
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S

PestanaOtroNombre=S
PestanaNombre=Plantillas de Solicitudes y Trámites
IconosNombre=vic_ContratoPSolicitudes:vic_ContratoPSolicitudes.NombreCorto
[(Carpeta Abrir).vic_ContratoPSolicitudes.Tipo]
Carpeta=(Carpeta Abrir)
Clave=vic_ContratoPSolicitudes.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).vic_ContratoPSolicitudes.Estatus]
Carpeta=(Carpeta Abrir)
Clave=vic_ContratoPSolicitudes.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro




[(Carpeta Abrir).Columnas]
0=144
1=279
2=156
3=-2




[(Carpeta Abrir).vic_ContratoPSolicitudes.Nombre]
Carpeta=(Carpeta Abrir)
Clave=vic_ContratoPSolicitudes.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro




[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+N
NombreDesplegar=Nuevo
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
NombreDesplegar=Abrir
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S



[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=Guardar cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S



[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=Eliminar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S



[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=Salir
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S















[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=vic_ContratoPSolicitudes.Nombre
vic_ContratoPSolicitudes.Nombre=vic_ContratoPSolicitudes.Tipo
vic_ContratoPSolicitudes.Tipo=vic_ContratoPSolicitudes.Estatus
vic_ContratoPSolicitudes.Estatus=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BAJA
BAJA=(Fin)






[Detalle.vic_ContratoPSolicitudesD.Notaria]
Carpeta=Detalle
Clave=vic_ContratoPSolicitudesD.Notaria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro










[Detalle.ListaOrden]
(Inicio)=vic_ContratoPSolicitudesD.Renglon	(Acendente)
vic_ContratoPSolicitudesD.Renglon	(Acendente)=vic_Notaria.NombreCorto	(Acendente)
vic_Notaria.NombreCorto	(Acendente)=(Fin)



[vic_Notaria.Columnas]
0=129
1=166
2=162
3=250
4=-2


[Detalle.vic_Notaria.NombreCorto]
Carpeta=Detalle
Clave=vic_Notaria.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Gris




[Lista.Columnas]
0=-2
1=232
2=-2










[Detalle.Recurso.Nombre]
Carpeta=Detalle
Clave=Recurso.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Gris



[Detalle.ListaEnCaptura]
(Inicio)=vic_ContratoPSolicitudesD.Actividad
vic_ContratoPSolicitudesD.Actividad=vic_ContratoPSolicitudesD.Titulo
vic_ContratoPSolicitudesD.Titulo=vic_ContratoPSolicitudesD.Recurso
vic_ContratoPSolicitudesD.Recurso=Recurso.Nombre
Recurso.Nombre=vic_ContratoPSolicitudesD.Email
vic_ContratoPSolicitudesD.Email=vic_ContratoPSolicitudesD.Concepto
vic_ContratoPSolicitudesD.Concepto=vic_ContratoPSolicitudesD.Texto
vic_ContratoPSolicitudesD.Texto=vic_ContratoPSolicitudesD.Notaria
vic_ContratoPSolicitudesD.Notaria=vic_Notaria.NombreCorto
vic_Notaria.NombreCorto=(Fin)



[Forma.ListaCarpetas]
(Inicio)=Encabezado
Encabezado=Comentarios
Comentarios=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=Eliminar
Eliminar=Cerrar
Cerrar=(Fin)
