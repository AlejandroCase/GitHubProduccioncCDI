[Forma]
Clave=ExplorarAlm
Nombre=Almacenes
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=570
PosicionInicialArriba=344
PosicionInicialAltura=504
PosicionInicialAncho=780
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsConsultaExclusiva=S

PosicionInicialAlturaCliente=477
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Almacenes
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Alm
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Clave<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=AlmGrupo
FiltroAplicaEn1=Alm.Grupo
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroAncho=25
FiltroListasRama=CXC
FiltroListasAplicaEn=Alm.Almacen
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
FiltroTodo=S
FiltroTodoFinal=S
OtroOrden=S
ListaOrden=Alm.Almacen<TAB>(Acendente)
MenuLocal=S
PermiteLocalizar=S
ListaAcciones=(Lista)

IconosNombre=Alm:Alm.Almacen
[Lista.Alm.Nombre]
Carpeta=Lista
Clave=Alm.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Alm.Tipo]
Carpeta=Lista
Clave=Alm.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
0=108
1=277

2=-2
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

[Acciones.Campos]
Nombre=Campos
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.LocalImprimir]
Nombre=LocalImprimir
Boton=0
UsaTeclaRapida=S
TeclaRapida=Ctrl+P
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.LocalPreliminar]
Nombre=LocalPreliminar
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Alt+F11

[Acciones.LocalExcel]
Nombre=LocalExcel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.LocalCampos]
Nombre=LocalCampos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S




[Acciones.LocalMapaTodo]
Nombre=LocalMapaTodo
Boton=0
NombreDesplegar=Ver Mapa (&Todos)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S

Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>Lista<T>, <T>Alm.Almacen<T>)<BR>Mapa.AgregarListaSt(<T>Almacen<T>)<BR>PlugIn(<T>Mapa<T>, <T>Almacen<T>, <T>Pintar<T>)
[Acciones.LocalMapaSeleccion]
Nombre=LocalMapaSeleccion
Boton=0
NombreDesplegar=Ver Mapa (&Selección)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>Lista<T>, <T>Alm.Almacen<T>, Verdadero)<BR>Mapa.AgregarListaSt(<T>Almacen<T>)<BR>PlugIn(<T>Mapa<T>, <T>Almacen<T>, <T>Pintar<T>)

[Lista.ListaEnCaptura]
(Inicio)=Alm.Nombre
Alm.Nombre=Alm.Tipo
Alm.Tipo=(Fin)

[Lista.ListaAcciones]
(Inicio)=LocalImprimir
LocalImprimir=LocalPreliminar
LocalPreliminar=LocalExcel
LocalExcel=LocalMapaTodo
LocalMapaTodo=LocalMapaSeleccion
LocalMapaSeleccion=LocalCampos
LocalCampos=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Campos
Campos=(Fin)
