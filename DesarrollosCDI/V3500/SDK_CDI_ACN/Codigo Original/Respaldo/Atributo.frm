
[Forma]
Clave=Atributo
Icono=4
Modulos=(Todos)
Nombre=Atributos

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=352
PosicionInicialArriba=201
PosicionInicialAlturaCliente=330
PosicionInicialAncho=662
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionCol1=434
DialogoAbrir=S

Menus=S
ListaAcciones=(Lista)
MenuPrincipal=(Lista)
[Lista.Atributo.Atributo]
Carpeta=Lista
Clave=Atributo.Atributo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.Atributo.Nombre]
Carpeta=Lista
Clave=Atributo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco




[Lista.Columnas]
Atributo=113
Nombre=277
Descripcion=236
Categoria=267
Estatus=115




[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Atributo
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

[Ficha.Atributo.Atributo]
Carpeta=Ficha
Clave=Atributo.Atributo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

Efectos=[Negritas]
[Ficha.Atributo.Nombre]
Carpeta=Ficha
Clave=Atributo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[Ficha.Atributo.Descripcion]
Carpeta=Ficha
Clave=Atributo.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80x3
ColorFondo=Blanco

[Ficha.Atributo.Categoria]
Carpeta=Ficha
Clave=Atributo.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

EspacioPrevio=S
[Ficha.Atributo.Grupo]
Carpeta=Ficha
Clave=Atributo.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Ficha.Atributo.Familia]
Carpeta=Ficha
Clave=Atributo.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Ficha.Atributo.Estatus]
Carpeta=Ficha
Clave=Atributo.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco










[Lista.ListaEnCaptura]
(Inicio)=Atributo.Atributo
Atributo.Atributo=Atributo.Nombre
Atributo.Nombre=(Fin)







[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=Atributo
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
CarpetaVisible=S

Filtros=S
BusquedaRapidaControles=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
PestanaOtroNombre=S
PestanaNombre=Atributos
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=AtributoCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=AtributoGrupo
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=AtributoFam
FiltroAplicaEn1=Atributo.Categoria
FiltroAplicaEn2=Atributo.Grupo
FiltroAplicaEn3=Atributo.Familia
FiltroTodo=S
FiltroTodoFinal=S
IconosNombre=Atributo:Atributo.Atributo
[(Carpeta Abrir).Atributo.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Atributo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco







[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Ficha
Ficha=(Fin)





[(Carpeta Abrir).Columnas]
0=190
1=164
2=93
3=139
4=-2






[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+N
NombreDesplegar=<T>&Nuevo<T>
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
NombreDesplegar=<T>&Abrir...<T>
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
NombreDesplegar=<T>&Guardar Cambios<T>
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
NombreDesplegar=E&liminar
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
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
NombreDesplegar=<T>&Cerrar<T>
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S







[Acciones.AtributoCat]
Nombre=AtributoCat
Boton=0
Menu=&Maestros
NombreDesplegar=<T>&Categorías<T>
EnMenu=S
TipoAccion=Formas
ClaveAccion=AtributoCat
Activo=S
Visible=S



EspacioPrevio=S
[Acciones.AtributoGrupo]
Nombre=AtributoGrupo
Boton=0
Menu=&Maestros
NombreDesplegar=<T>&Grupos<T>
EnMenu=S
TipoAccion=Formas
ClaveAccion=AtributoGrupo
Activo=S
Visible=S



[Acciones.AtributoFam]
Nombre=AtributoFam
Boton=0
Menu=&Maestros
NombreDesplegar=<T>&Familias<T>
EnMenu=S
TipoAccion=Formas
ClaveAccion=AtributoFam
Activo=S
Visible=S



























[(Carpeta Abrir).Atributo.Tipo]
Carpeta=(Carpeta Abrir)
Clave=Atributo.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[Ficha.Atributo.Tipo]
Carpeta=Ficha
Clave=Atributo.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=50
ColorFondo=Blanco



[Acciones.AtributoTipo]
Nombre=AtributoTipo
Boton=0
Menu=&Maestros
NombreDesplegar=<T>&Tipos<T>
EnMenu=S
TipoAccion=Formas
ClaveAccion=AtributoTipo
Activo=S
Visible=S































[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=Atributo.Nombre
Atributo.Nombre=Atributo.Tipo
Atributo.Tipo=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)















[Acciones.Niveles]
Nombre=Niveles
Boton=47
NombreEnBoton=S
Menu=&Edición
NombreDesplegar=<T>&Niveles<T>
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=AtributoNivel
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Atributo:Atributo.Atributo)
Antes=S
AntesExpresiones=Asigna(Info.Atributo, Atributo:Atributo.Atributo)<BR>Asigna(Info.Nombre, Atributo:Atributo.Nombre)
Visible=S




















[Ficha.ListaEnCaptura]
(Inicio)=Atributo.Atributo
Atributo.Atributo=Atributo.Nombre
Atributo.Nombre=Atributo.Descripcion
Atributo.Descripcion=Atributo.Tipo
Atributo.Tipo=Atributo.Categoria
Atributo.Categoria=Atributo.Grupo
Atributo.Grupo=Atributo.Familia
Atributo.Familia=Atributo.Estatus
Atributo.Estatus=(Fin)









[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=Eliminar
Eliminar=Cerrar
Cerrar=Niveles
Niveles=Navegador
Navegador=AtributoTipo
AtributoTipo=AtributoCat
AtributoCat=AtributoGrupo
AtributoGrupo=AtributoFam
AtributoFam=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=(Fin)
