
[Forma]
Clave=vic_ConceptosInmuebles
Icono=4
Modulos=(Todos)
Nombre=Conceptos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=Encabezado
PosicionInicialIzquierda=109
PosicionInicialArriba=105
PosicionInicialAlturaCliente=524
PosicionInicialAncho=805
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionSec1=175
DialogoAbrir=S
Menus=S
ListaAcciones=(Lista)
BarraAyuda=S
BarraAyudaBold=S
MenuPrincipal=(Lista)
[Encabezado]
Estilo=Ficha
Clave=Encabezado
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ConceptosInmuebles
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

[Encabezado.vic_ConceptosInmuebles.Concepto]
Carpeta=Encabezado
Clave=vic_ConceptosInmuebles.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=20
[Encabezado.vic_ConceptosInmuebles.Descripcion]
Carpeta=Encabezado
Clave=vic_ConceptosInmuebles.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=57
ColorFondo=Blanco
ColorFuente=Negro

[Encabezado.vic_ConceptosInmuebles.Frecuencia]
Carpeta=Encabezado
Clave=vic_ConceptosInmuebles.Frecuencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Encabezado.vic_ConceptosInmuebles.TipoInforme]
Carpeta=Encabezado
Clave=vic_ConceptosInmuebles.TipoInforme
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Encabezado.vic_ConceptosInmuebles.PeriodosAnterior]
Carpeta=Encabezado
Clave=vic_ConceptosInmuebles.PeriodosAnterior
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=20

[Detalle]
Estilo=Hoja
Clave=Detalle
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_ConceptosInmuebles_Def
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_ConceptosInmuebles
LlaveLocal=vic_ConceptosInmuebles_Def.ID
LlaveMaestra=vic_ConceptosInmuebles.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ControlRenglon=S
CampoRenglon=vic_ConceptosInmuebles_Def.Renglon

CarpetaVisible=S
[Detalle.vic_ConceptosInmuebles_Def.Dato_Concepto]
Carpeta=Detalle
Clave=vic_ConceptosInmuebles_Def.Dato_Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_ConceptosInmuebles_Def.Tipo_Dato]
Carpeta=Detalle
Clave=vic_ConceptosInmuebles_Def.Tipo_Dato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_ConceptosInmuebles_Def.Num_Decimales]
Carpeta=Detalle
Clave=vic_ConceptosInmuebles_Def.Num_Decimales
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_ConceptosInmuebles_Def.Maneja_Totales]
Carpeta=Detalle
Clave=vic_ConceptosInmuebles_Def.Maneja_Totales
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro


[Detalle.Columnas]
Dato_Concepto=198
Tipo_Dato=90
Num_Decimales=101
Maneja_Totales=104





[(Carpeta Abrir)]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Conceptos
Clave=(Carpeta Abrir)
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=vic_ConceptosInmuebles
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Clave<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

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

FiltroEstatus=S
FiltroUsuarios=S
FiltroFechas=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ACTIVO
FiltroFechasCampo=vic_ConceptosInmuebles.FechaEmision
FiltroFechasDefault=Este Mes
FiltroEmpresas=S
FiltroSucursales=S
IconosNombre=vic_ConceptosInmuebles:vic_ConceptosInmuebles.Concepto
[(Carpeta Abrir).vic_ConceptosInmuebles.Descripcion]
Carpeta=(Carpeta Abrir)
Clave=vic_ConceptosInmuebles.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).vic_ConceptosInmuebles.Frecuencia]
Carpeta=(Carpeta Abrir)
Clave=vic_ConceptosInmuebles.Frecuencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).vic_ConceptosInmuebles.TipoInforme]
Carpeta=(Carpeta Abrir)
Clave=vic_ConceptosInmuebles.TipoInforme
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro


[(Carpeta Abrir).Columnas]
0=137
1=158
2=182
3=-2





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




[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Edición
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S




[Acciones.Salir]
Nombre=Salir
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























[Encabezado.vic_ConceptosInmuebles.Estatus]
Carpeta=Encabezado
Clave=vic_ConceptosInmuebles.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Encabezado.vic_ConceptosInmuebles.FechaEmision]
Carpeta=Encabezado
Clave=vic_ConceptosInmuebles.FechaEmision
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=20







[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=vic_ConceptosInmuebles.Descripcion
vic_ConceptosInmuebles.Descripcion=vic_ConceptosInmuebles.Frecuencia
vic_ConceptosInmuebles.Frecuencia=vic_ConceptosInmuebles.TipoInforme
vic_ConceptosInmuebles.TipoInforme=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ACTIVO
ACTIVO=INACTIVO
INACTIVO=(Fin)



























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




























[Detalle.ListaEnCaptura]
(Inicio)=vic_ConceptosInmuebles_Def.Dato_Concepto
vic_ConceptosInmuebles_Def.Dato_Concepto=vic_ConceptosInmuebles_Def.Tipo_Dato
vic_ConceptosInmuebles_Def.Tipo_Dato=vic_ConceptosInmuebles_Def.Maneja_Totales
vic_ConceptosInmuebles_Def.Maneja_Totales=vic_ConceptosInmuebles_Def.Num_Decimales
vic_ConceptosInmuebles_Def.Num_Decimales=(Fin)


















































































































































































































































































[Encabezado.ListaEnCaptura]
(Inicio)=vic_ConceptosInmuebles.Concepto
vic_ConceptosInmuebles.Concepto=vic_ConceptosInmuebles.FechaEmision
vic_ConceptosInmuebles.FechaEmision=vic_ConceptosInmuebles.Estatus
vic_ConceptosInmuebles.Estatus=vic_ConceptosInmuebles.Descripcion
vic_ConceptosInmuebles.Descripcion=vic_ConceptosInmuebles.Frecuencia
vic_ConceptosInmuebles.Frecuencia=vic_ConceptosInmuebles.TipoInforme
vic_ConceptosInmuebles.TipoInforme=vic_ConceptosInmuebles.PeriodosAnterior
vic_ConceptosInmuebles.PeriodosAnterior=(Fin)










































































































[Acciones.Actualizar Vista]
Nombre=Actualizar Vista
Boton=82
NombreDesplegar=&Actualizar
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

























































































































[Forma.ListaCarpetas]
(Inicio)=Encabezado
Encabezado=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=Eliminar
Eliminar=Actualizar Vista
Actualizar Vista=Salir
Salir=Navegador (Documentos)
Navegador (Documentos)=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=(Fin)
