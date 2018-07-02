
[Forma]
Clave=vic_ConceptosInmueblesLista
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Conceptos del Inmueble
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=216
PosicionInicialArriba=278
PosicionInicialAlturaCliente=273
PosicionInicialAncho=720
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=Seleccionar
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ConceptosInmuebles
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
MenuLocal=S
PermiteLocalizar=S
ListaAcciones=(Lista)
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosNombre=vic_ConceptosInmuebles:vic_ConceptosInmuebles.Concepto
IconosSubTitulo=<T>Concepto<T>
ElementosPorPagina=200
FiltroGeneral=vic_ConceptosInmuebles.Estatus =<T>ACTIVO<T><BR>AND vic_ConceptosInmuebles.TipoInforme=<T>{Info.Tipo}<T>

[Lista.vic_ConceptosInmuebles.Descripcion]
Carpeta=Lista
Clave=vic_ConceptosInmuebles.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_ConceptosInmuebles.Frecuencia]
Carpeta=Lista
Clave=vic_ConceptosInmuebles.Frecuencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_ConceptosInmuebles.Estatus]
Carpeta=Lista
Clave=vic_ConceptosInmuebles.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Concepto=89
Descripcion=239
Frecuencia=184
Estatus=94

TipoInforme=80
0=120
1=126
2=161
3=161
4=-2
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






[Lista.vic_ConceptosInmuebles.TipoInforme]
Carpeta=Lista
Clave=vic_ConceptosInmuebles.TipoInforme
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro




[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Personalizar]
Nombre=Personalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Lista.ListaEnCaptura]
(Inicio)=vic_ConceptosInmuebles.Descripcion
vic_ConceptosInmuebles.Descripcion=vic_ConceptosInmuebles.Frecuencia
vic_ConceptosInmuebles.Frecuencia=vic_ConceptosInmuebles.TipoInforme
vic_ConceptosInmuebles.TipoInforme=vic_ConceptosInmuebles.Estatus
vic_ConceptosInmuebles.Estatus=(Fin)

[Lista.ListaAcciones]
(Inicio)=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Personalizar
Personalizar=(Fin)
