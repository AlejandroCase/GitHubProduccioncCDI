[Forma]
Clave=vic_Local
Nombre=Local
Icono=4
Modulos=(Todos)
CarpetaPrincipal=Generales
PosicionInicialIzquierda=257
PosicionInicialArriba=165
PosicionInicialAltura=593
PosicionInicialAncho=766
Menus=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionSeccion1=7
BarraAyuda=S
DialogoAbrir=S
Plantillas=S
PermiteCopiarDoc=S
MovModulo=(Todos)
PosicionInicialAlturaCliente=659
BarraAyudaBold=S
ListaAcciones002=<CONTINUA>R>Otros4
ListaCarpetas=(Lista)
PosicionCol1=694
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Copiar, Falso)
MenuPrincipal=(Lista)
[(Carpeta Abrir).Columnas]
0=106
1=217
2=126
3=127
4=69
5=-2
[(Carpeta Abrir).vic_Local.Nombre]
Carpeta=(Carpeta Abrir)
Clave=vic_Local.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
Filtros=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=vic_LocalA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Local<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=DESOCUPADO
FiltroFechasNormal=S
FiltroFechasNombre=Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
FiltroListasRama=CXC
FiltroListasAplicaEn=vic_Local.Local
ListaAcciones=(Lista)
PestanaOtroNombre=S
PestanaNombre=Locales
FiltroSituacion=S
FiltroSituacionTodo=S
IconosConPaginas=S
OtroOrden=S
ListaOrden=vic_Local.Local<TAB>(Acendente)

FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=vic_LocalFam
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=vic_LocalCat
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=vic_LocalGrp
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=vic_LocalUsr
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=vic_LocalTng


FiltroAplicaEn1=vic_Local.Familia
FiltroAplicaEn2=vic_Local.Categoria
FiltroAplicaEn3=vic_Local.Grupo
FiltroAplicaEn4=vic_Local.Uso
FiltroAplicaEn5=vic_Local.Tipo
FiltroListas=S
FiltroArbol=Rama
FiltroArbolAplica=vic_Local.Local
IconosNombre=vic_LocalA:vic_Local.Local
[Generales]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Generales
Clave=Generales
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Local
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
ListaEnCaptura002=<CONTINUA>vic_Local.Nivel<BR>vic_Local.SubNivel

CarpetaVisible=S
PermiteEditar=S

[Caracteristicas]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Características
Clave=Caracteristicas
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaExtraValor
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Plata

CarpetaVisible=S

ListaEnCaptura=(Lista)
PermiteEditar=S
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
Filtros=S
OtroOrden=S
RefrescarAlEntrar=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
ListaOrden=GrupoOrden<TAB>(Acendente)
HojaFondoGris=S
FiltroGeneral=FormaExtraValor.Aplica=<T>Locales<T><BR>AND FormaExtraValor.AplicaClave=<T>{vic_Local:vic_Local.Local}<T><BR>AND FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnVICFormaExtraLocales(<T>{vic_Local:vic_Local.Uso}<T>))
[Historial]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Historial
Clave=Historial
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_HistLocal
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

Detalle=S
VistaMaestra=vic_Local
LlaveLocal=vic_HistLocal.Local
LlaveMaestra=vic_Local.Local
MenuLocal=S
ListaAcciones=(Lista)
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosNombre=vic_HistLocal:vic_HistLocal.IDContrato
IconosSubTitulo=<T>Contrato<T>
IconosConPaginas=S
ElementosPorPagina=200
[Ubicacion]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Ubicación
Clave=Ubicacion
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Local
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco

PermiteEditar=S

CondicionVisible=0

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
Vista=vic_Local
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=vic_Local.Comentarios

CarpetaVisible=S
PermiteEditar=S



AlinearTodaCarpeta=S
[Generales.vic_Local.Local]
Carpeta=Generales
Clave=vic_Local.Local
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
Efectos=[Negritas]

[Generales.vic_Local.Nombre]
Carpeta=Generales
Clave=vic_Local.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.NombreCorto]
Carpeta=Generales
Clave=vic_Local.NombreCorto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.Proyecto]
Carpeta=Generales
Clave=vic_Local.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.Familia]
Carpeta=Generales
Clave=vic_Local.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.Categoria]
Carpeta=Generales
Clave=vic_Local.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.Grupo]
Carpeta=Generales
Clave=vic_Local.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.Uso]
Carpeta=Generales
Clave=vic_Local.Uso
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco


[Generales.vic_Local.Inmueble]
Carpeta=Generales
Clave=vic_Local.Inmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.Area]
Carpeta=Generales
Clave=vic_Local.Area
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.SubArea]
Carpeta=Generales
Clave=vic_Local.SubArea
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.Medida]
Carpeta=Generales
Clave=vic_Local.Medida
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Generales.vic_Local.Unidad]
Carpeta=Generales
Clave=vic_Local.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Generales.vic_Local.MedidaEstimados]
Carpeta=Generales
Clave=vic_Local.MedidaEstimados
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Generales.vic_Local.Indiviso]
Carpeta=Generales
Clave=vic_Local.Indiviso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Generales.vic_Local.Factor1]
Carpeta=Generales
Clave=vic_Local.Factor1
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Generales.vic_Local.Factor2]
Carpeta=Generales
Clave=vic_Local.Factor2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Generales.vic_Local.Factor3]
Carpeta=Generales
Clave=vic_Local.Factor3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Generales.vic_Local.MesesRelComer]
Carpeta=Generales
Clave=vic_Local.MesesRelComer
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
EspacioPrevio=S

[Generales.vic_Local.FechaEstimOper]
Carpeta=Generales
Clave=vic_Local.FechaEstimOper
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Generales.vic_Local.PromPlanos]
Carpeta=Generales
Clave=vic_Local.PromPlanos
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco


[Generales.vic_Local.Complemento]
Carpeta=Generales
Clave=vic_Local.Complemento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco


[Generales.vic_Local.Descripcion]
Carpeta=Generales
Clave=vic_Local.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=76X3
ColorFondo=Blanco

[Generales.vic_Local.Contrato]
Carpeta=Generales
Clave=vic_Local.Contrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Generales.vic_Local.Predial]
Carpeta=Generales
Clave=vic_Local.Predial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco


[Generales.vic_Local.Nivel]
Carpeta=Generales
Clave=vic_Local.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Local.SubNivel]
Carpeta=Generales
Clave=vic_Local.SubNivel
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Comentarios.vic_Local.Comentarios]
Carpeta=Comentarios
Clave=vic_Local.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=100X35
ColorFondo=Blanco



[Acciones.vic_LocalFam]
Nombre=vic_LocalFam
Boton=0
Menu=&Maestros
NombreDesplegar=&Familias
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_LocalFam
Activo=S
Visible=S

[Acciones.vic_LocalCat]
Nombre=vic_LocalCat
Boton=0
Menu=&Maestros
NombreDesplegar=&Categorías
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_LocalCat
Activo=S
Visible=S

[Acciones.vic_LocalGrp]
Nombre=vic_LocalGrp
Boton=0
Menu=&Maestros
NombreDesplegar=&Grupos
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_LocalGrp
Activo=S
Visible=S

[Acciones.vic_LocalUsr]
Nombre=vic_LocalUsr
Boton=0
Menu=&Maestros
NombreDesplegar=&Usos
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_LocalUsr
Activo=S
Visible=S

[Acciones.vic_LocalTng]
Nombre=vic_LocalTng
Boton=0
Menu=&Maestros
NombreDesplegar=&Negociaciones
TipoAccion=Formas
ClaveAccion=vic_LocalTng
Activo=S
Visible=S

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Visible=S
Activo=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+N

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=E&liminar
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S
EnBarraHerramientas=S

ActivoCondicion=no vic_Local:vic_Local.PermitirBorrar
ConCondicion=S
EjecucionCondicion=SQL(<T>SELECT 1 FROM vic_condicion WHERE Local =:tlocal<T>, vic_Local:vic_Local.Nombre) <> 1
EjecucionMensaje=<T>El Local esta asociado a un Contrato. No se puede Eliminar<T>
EjecucionConError=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Cerrar
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Visible=S
Activo=S

[Acciones.Propiedades]
Nombre=Propiedades
Boton=35
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F11
NombreDesplegar=&Propiedades
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=Prop
Activo=S
Antes=S
Visible=S
GuardarAntes=S
ConCondicion=S
DespuesGuardar=S

EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Rama, <T>VICLO<T>)<BR>Asigna(Info.Cuenta, vic_Local:vic_Local.Local)<BR>Asigna(Info.Descripcion, vic_Local:vic_Local.Nombre)
[Acciones.Tareas]
Nombre=Tareas
Boton=70
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
NombreDesplegar=&Asignar Plantillas Tareas
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
Activo=S
Visible=S
Antes=S
ConCondicion=S

Multiple=S
ListaAccionesMultiples=(Lista)
EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Aplica, <T>Locales<T>)<BR>Asigna(Info.Clave, vic_Local:vic_Local.Local)
[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F4
NombreDesplegar=Ane&xos
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Rama, <T>VICLO<T>)<BR>Asigna(Info.AnexoCfg, Verdadero)<BR>Asigna(Info.Cuenta, vic_Local:vic_Local.Local)<BR>Asigna(Info.Descripcion, vic_Local:vic_Local.Nombre)
[Acciones.Bitacora]
Nombre=Bitacora
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+B
NombreDesplegar=&Bitácora
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaBitacora
Activo=S
ConCondicion=S
Antes=S
Visible=S

EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Modulo, <T>VICLO<T>)<BR>Asigna(Info.Tipo, vic_Local:vic_Local.Tipo)<BR>Asigna(Info.Cuenta, vic_Local:vic_Local.Local)<BR>Asigna(Info.Descripcion, vic_Local:vic_Local.Nombre)<BR>Asigna(Info.PuedeEditar, Verdadero)
[Acciones.Doc]
Nombre=Doc
Boton=17
Menu=&Edición
NombreDesplegar=&Documentación
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S

Expresion=EditarDocumentacion(<T>vic_LO<T>, vic_Local:vic_Local.Local, <T>Documentación - <T>+vic_Local:vic_Local.Nombre)
EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir...
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
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Situacion]
Nombre=Situacion
Boton=71
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F12
NombreDesplegar=&Situación
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Activo=S
Visible=S

[Acciones.Cubos]
Nombre=Cubos
Boton=100
Menu=&Ver
NombreDesplegar=<T>Cubos<T>
Activo=S
Visible=S
ConCondicion=S
Antes=S


EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Cliente, vic_Local:vic_Local.Local)<BR>Asigna(Info.Nombre, vic_Local:vic_Local.Nombre)
[Acciones.Reportes]
Nombre=Reportes
Boton=100
Menu=&Ver
NombreDesplegar=<T>Reportes<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Dialogos
ClaveAccion=ReporteLocal
Activo=S
Visible=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Cliente, vic_Local:vic_Local.Local)<BR>Asigna(Info.Nombre, vic_Local:vic_Local.Nombre)


[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=103
Menu=&Edición
NombreDesplegar=E&valuaciones
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=EvaluacionCalificacion
Activo=S
ConCondicion=S
Antes=S
Visible=S



EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Asigna(Info.Clave, vic_Local:vic_Local.Local)<BR>Asigna(Info.Nombre, vic_Local:vic_Local.Nombre)<BR>Asigna(Info.Aplica, <T>Desarrollos<T>)
[Acciones.Politica]
Nombre=Politica
Boton=22
Menu=&Edición
NombreDesplegar=Política
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=Politica
Activo=S
ConCondicion=S
Antes=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Shift+Ctrl+O

EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Rama, <T>VICLO<T>)<BR>Asigna(Info.Clave, vic_Local:vic_Local.Local)
[Acciones.RefCta]
Nombre=RefCta
Boton=110
Menu=&Edición
NombreDesplegar=&Referencias
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=RefCta
Activo=S
ConCondicion=S
Antes=S
Visible=S

EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Rama, <T>VICLO<T>)<BR>Asigna(Info.Cuenta, vic_Local:vic_Local.Local)<BR>Asigna(Info.Nombre, vic_Local:vic_Local.Nombre)
[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F11
NombreDesplegar=Plantillas &Office
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S


Expresion=Asigna(Info.Forma, <T>vic_Local<T>)<BR>Asigna(Info.Nombre, <T>Local<T>)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin
[Acciones.AgregarEvento]
Nombre=AgregarEvento
Boton=56
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+E
NombreDesplegar=Agregar &Evento
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
AntesExpresiones=Asigna(Info.Modulo, <T>VICLO<T>)<BR>Asigna(Info.Cuenta, vic_Local:vic_Local.Local)<BR>Asigna(Info.Descripcion, vic_Local:vic_Local.Nombre)
[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Visible=S
Activo=S

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Visible=S
Activo=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+N

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=E&liminar
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S
EnBarraHerramientas=S
ActivoCondicion=no vic_Local:vic_Local.PermitirBorrar

[Acciones.Actualizar]
Nombre=Actualizar
Boton=0
UsaTeclaRapida=S
TeclaRapida=F5
NombreDesplegar=&Actualizar
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Actualizar Arbol
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=0
NombreDesplegar=&Presentacion preliminar
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Campos]
Nombre=Campos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S
[Acciones.Contactos]
Nombre=Contactos
Boton=74
Menu=&Edición
NombreDesplegar=&Contactos del Local
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovCto
Activo=S
Antes=S
Visible=S

AntesExpresiones=Asigna(Info.Modulo, <T>VICLO<T>)<BR>////Asigna(Info.ID, vic_Local:vic_Local.Local)<BR>Asigna(Info.Mov, vic_Local:vic_Local.Nombre)<BR>Asigna(Info.MovID, vic_Local:vic_Local.Local)
[Generales.vic_Local.Estatus]
Carpeta=Generales
Clave=vic_Local.Estatus
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

















Editar=S
Efectos=[Negritas]
[Area.Columnas]
0=90
1=198















2=106
3=-2
[Lista.Columnas]
0=101
1=300
2=-2










































































Familia=233
Grupo=304
Categoria=304
Uso=304
NombreCorto=244



Unidad=151
3=-2
4=-2
Negociacion=304
[(Carpeta Abrir).vic_Local.Estatus]
Carpeta=(Carpeta Abrir)
Clave=vic_Local.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco









[Historial.vic_HistLocal.IDCondicion]
Carpeta=Historial
Clave=vic_HistLocal.IDCondicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Historial.vic_HistLocal.AgpCondicion]
Carpeta=Historial
Clave=vic_HistLocal.AgpCondicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[Historial.vic_HistLocal.FechaInicio]
Carpeta=Historial
Clave=vic_HistLocal.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Historial.vic_HistLocal.FechaFinal]
Carpeta=Historial
Clave=vic_HistLocal.FechaFinal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Historial.vic_HistLocal.Importe]
Carpeta=Historial
Clave=vic_HistLocal.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Historial.vic_HistLocal.Moneda]
Carpeta=Historial
Clave=vic_HistLocal.Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro




[Historial.Columnas]
IDContrato=74
IDCondicion=76
AgpCondicion=118
FechaInicio=148
FechaFinal=136
Importe=103
Moneda=124






0=140
1=116
2=121
3=145
4=150
5=130
6=-2
[Fotografias.AnexoCta.Nombre]
Carpeta=Fotografias
Clave=AnexoCta.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro


Tamano=255
[Fotografias.Columnas]
Nombre=124

















Icono=64
0=57
1=201

2=169
3=164
4=-2

[Acciones.Anexos.AnexoCta]
Nombre=AnexoCta
Boton=0
TipoAccion=Formas
ClaveAccion=AnexoCta
Activo=S
Visible=S

[Acciones.Anexos.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S


[Imagen.Imagen]
Carpeta=Imagen
Clave=Imagen
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=50x20
ColorFondo=Blanco
ColorFuente=Negro







ConScroll=N

[Fotografias.AnexoCta.FechaEmision]
Carpeta=Fotografias
Clave=AnexoCta.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Fotografias.AnexoCta.Vencimiento]
Carpeta=Fotografias
Clave=AnexoCta.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro





























































[Fotografias]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Fotografías
Clave=Fotografias
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_LocalImagenes
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>ID<T>
ElementosPorPagina=200
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







Detalle=S
VistaMaestra=vic_Local
LlaveLocal=AnexoCta.Cuenta
LlaveMaestra=vic_Local.Local






MenuLocal=S
ListaAcciones=(Lista)
IconosNombre=vic_LocalImagenes:AnexoCta.IDR
FiltroGeneral=AnexoCta.Rama = <T>VICLO<T>
[Imagen.ListaEnCaptura]
(Inicio)=AnexoCta.FechaEmision
AnexoCta.FechaEmision=AnexoCta.Vencimiento
AnexoCta.Vencimiento=(Fin)




























































[ImagenFoto.Columnas]
0=-2

[ImagenFoto.Imagen]
Carpeta=ImagenFoto
Clave=Imagen
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=50x20
ColorFondo=Blanco
ColorFuente=Negro

































































































































































































































































[Acciones.VerFotografia]
Nombre=VerFotografia
Boton=0
NombreDesplegar=&Ver fotografía
EnMenu=S
TipoAccion=Expresion
Visible=S

Expresion=VerImagen(vic_LocalImagenes:AnexoCta.Nombre,vic_LocalImagenes:AnexoCta.Direccion )
ActivoCondicion=ConDatos(vic_LocalImagenes:AnexoCta.Direccion)





[Caracteristicas.VerCampo]
Carpeta=Caracteristicas
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Plata
ColorFuente=Negro

[Caracteristicas.VerValor]
Carpeta=Caracteristicas
Clave=VerValor
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro













[Caracteristicas.Columnas]
VerCampo=245
VerValor=378













[Acciones.CamposExtras]
Nombre=CamposExtras
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+1
NombreDesplegar=General.CamposExtras+<T>...<T>
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S






















ConCondicion=S












































































Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasContacto(<T>Locales<T>, vic_Local:vic_Local.Tipo,vic_Local:vic_Local.Local)<BR>Sino<BR>  Asigna(Info.Aplica, <T>Locales<T>)<BR>  Asigna(Info.Clave, vic_Local:vic_Local.Local)<BR>  Asigna(Info.Nombre, vic_Local:vic_Local.Nombre)<BR>  Asigna(Info.Modulo, Nulo)<BR>  Asigna(Info.Mov, Nulo)<BR>  Asigna(Info.Categoria, vic_Local:vic_Local.Categoria)<BR>  Asigna(Info.Grupo, vic_Local:vic_Local.Grupo)<BR>  Asigna(Info.Familia,vic_Local:vic_Local.Familia)<BR>  Asigna(Info.Departamento, Nulo)<BR>  Asigna(Info.Puesto, Nulo)<BR>  Asigna(Info.SIC, Nulo)<BR>  Asigna(Info.Uso, vic_Local:vic_Local.Uso)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaExtraVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC, :tUso<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC, Info.Uso))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si(ConDatos(Info.FormaTipo), iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre), Informacion(<T>No Tiene Definida Ninguna Forma<T>))<BR>Fin
EjecucionCondicion=ConDatos(vic_Local:vic_Local.Local)
[Acciones.Presentacion]
Nombre=Presentacion
Boton=0
NombreDesplegar=&Ver todas las fotografías
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_LocalImagenesLista
Antes=S
Visible=S




ActivoCondicion=ConDatos(vic_LocalImagenes:AnexoCta.Cuenta)
AntesExpresiones=Asigna(Info.Local, vic_Local:vic_Local.Local)
[Acciones.FOTOImprimir]
Nombre=FOTOImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Fotografias
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S
EspacioPrevio=S



[Acciones.HISTImprimir]
Nombre=HISTImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Historial
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.HISTPresentacion]
Nombre=HISTPresentacion
Boton=0
NombreDesplegar=&Presentación Preliminar
EnMenu=S
Carpeta=Historial
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.HISTExcel]
Nombre=HISTExcel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Historial
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.HISTPersonalizar]
Nombre=HISTPersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Historial
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Acciones.FOTOPresentacion]
Nombre=FOTOPresentacion
Boton=0
NombreDesplegar=&Presentación Preliminar
EnMenu=S
Carpeta=Fotografias
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.FOTOExcel]
Nombre=FOTOExcel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Fotografias
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.FOTOPersonalizar]
Nombre=FOTOPersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
Carpeta=Fotografias
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S
EspacioPrevio=S








[Acciones.AgregarEvento.CtaBitacoraAgregar]
Nombre=CtaBitacoraAgregar
Boton=0
TipoAccion=Formas
ClaveAccion=CtaBitacoraAgregar
Activo=S
Visible=S

[Acciones.AgregarEvento.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S






[Acciones.EVImprimir]
Nombre=EVImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Eventos
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Eventos]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Eventos
Clave=Eventos
Filtros=S
OtroOrden=S
Detalle=S
MenuLocal=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaBitacora
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_Local
LlaveLocal=CtaBitacora.Cuenta
LlaveMaestra=vic_Local.Local
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Fecha<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CtaBitacora.Evento
ListaOrden=CtaBitacora.Fecha<TAB>(Decendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
ListaAcciones=(Lista)
CarpetaVisible=S

IconosNombre=CtaBitacora:CtaBitacora.Fecha
FiltroGeneral=CtaBitacora.Modulo=<T>VICLO<T>
[Eventos.CtaBitacora.Evento]
Carpeta=Eventos
Clave=CtaBitacora.Evento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro




[Acciones.EVPresentacion]
Nombre=EVPresentacion
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=Eventos
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.EVExcel]
Nombre=EVExcel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Eventos
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.EVPersonalizar]
Nombre=EVPersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Eventos
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S


[Eventos.Columnas]
0=256
1=-2










[Acciones.Tareas.vic_PlantillaTareasAsigna]
Nombre=vic_PlantillaTareasAsigna
Boton=0
TipoAccion=Formas
ClaveAccion=vic_PlantillaTareasAsigna
Activo=S
Visible=S

[Acciones.Tareas.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S










[Acciones.ACTImprimir]
Nombre=ACTImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Actividades
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

EspacioPrevio=S
[Actividades]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Actividades
Clave=Actividades
Filtros=S
Detalle=S
MenuLocal=S
PermiteEditar=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ActividadesAsignadas
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_Local
LlaveLocal=vic_ActividadesAsignadas.Clave
LlaveMaestra=vic_Local.Local
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Clave<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
ListaAcciones=(Lista)
CarpetaVisible=S

IconosNombre=vic_ActividadesAsignadas:vic_ActividadesAsignadas.ClaveAct
FiltroGeneral=vic_ActividadesAsignadas.Modulo=<T>VICLO<T>
[Actividades.vic_ActividadesAsignadas.Actividad]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.FechaIni]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.FechaIni
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.FechaIniEst]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.FechaIniEst
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.FechaVen]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.FechaVen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.FechaConEst]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.FechaConEst
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.Responsable]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.Responsable
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.ACTPreliminar]
Nombre=ACTPreliminar
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=Actividades
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.ACTExcel]
Nombre=ACTExcel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Actividades
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.ACTPersonalizar]
Nombre=ACTPersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Actividades
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Actividades.Columnas]
0=141
1=228
2=117
3=115
4=100
5=-2
6=-2












7=-2
[Fotografias.ListaEnCaptura]
(Inicio)=AnexoCta.Nombre
AnexoCta.Nombre=AnexoCta.FechaEmision
AnexoCta.FechaEmision=AnexoCta.Vencimiento
AnexoCta.Vencimiento=(Fin)

[Fotografias.ListaAcciones]
(Inicio)=VerFotografia
VerFotografia=Presentacion
Presentacion=FOTOImprimir
FOTOImprimir=FOTOPresentacion
FOTOPresentacion=FOTOExcel
FOTOExcel=FOTOPersonalizar
FOTOPersonalizar=(Fin)











[Acciones.Tareas.ListaAccionesMultiples]
(Inicio)=vic_PlantillaTareasAsigna
vic_PlantillaTareasAsigna=Actualizar Vista
Actualizar Vista=(Fin)










[Acciones.Anexos.ListaAccionesMultiples]
(Inicio)=AnexoCta
AnexoCta=Actualizar Vista
Actualizar Vista=(Fin)


















[Eventos.ListaAcciones]
(Inicio)=EVImprimir
EVImprimir=EVPresentacion
EVPresentacion=EVExcel
EVExcel=EVPersonalizar
EVPersonalizar=(Fin)































[Acciones.AgregarEvento.ListaAccionesMultiples]
(Inicio)=CtaBitacoraAgregar
CtaBitacoraAgregar=Actualizar Vista
Actualizar Vista=(Fin)










































[Acciones.ACTEliminar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Precaucion(<T>¿ Esta seguro que desea eliminar esta Actividad ?<T>+ NuevaLinea + NuevaLinea + <T>Actividad <T> + vic_ActividadesAsignadas:vic_ActividadesAsignadas.ClaveAct, BotonSi, BotonNo ) = BotonSi<BR>Entonces   EjecutarSQL(<T>vic_spEliminaActividades :nID<T>, vic_ActividadesAsignadas:vic_ActividadesAsignadas.ID)<BR>Sino<BR><T><T><BR>Fin
[Acciones.ACTEliminar.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.ACTEliminar]
Nombre=ACTEliminar
Boton=0
NombreDesplegar=Eliminar Actividad
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Visible=S







ActivoCondicion=ConDatos(vic_ActividadesAsignadas:vic_ActividadesAsignadas.ID)


[Actividades.Usuario.Nombre]
Carpeta=Actividades
Clave=Usuario.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco






















[PlanosCon]
Estilo=Ficha
Clave=PlanosCon
Vista=vic_Local
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Negro
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Planos Configurables

CondicionVisible=0









[Caracteristicas.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)




















































































[Historial.ListaEnCaptura]
(Inicio)=vic_HistLocal.IDCondicion
vic_HistLocal.IDCondicion=vic_HistLocal.AgpCondicion
vic_HistLocal.AgpCondicion=vic_HistLocal.FechaInicio
vic_HistLocal.FechaInicio=vic_HistLocal.FechaFinal
vic_HistLocal.FechaFinal=vic_HistLocal.Importe
vic_HistLocal.Importe=vic_HistLocal.Moneda
vic_HistLocal.Moneda=(Fin)

[Historial.ListaAcciones]
(Inicio)=HISTImprimir
HISTImprimir=HISTPresentacion
HISTPresentacion=HISTExcel
HISTExcel=HISTPersonalizar
HISTPersonalizar=(Fin)





































[(Carpeta Abrir).vic_Local.Uso]
Carpeta=(Carpeta Abrir)
Clave=vic_Local.Uso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco










[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=vic_Local.Nombre
vic_Local.Nombre=vic_Local.Estatus
vic_Local.Estatus=vic_Inmueble.Nombre
vic_Inmueble.Nombre=vic_Local.Area
vic_Local.Area=vic_Local.Uso
vic_Local.Uso=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=DESOCUPADO
DESOCUPADO=RENTADO
RENTADO=VENDIDO
VENDIDO=APARTADO
APARTADO=BAJA
BAJA=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Campos
Campos=(Fin)

[(Carpeta Abrir).vic_Inmueble.Nombre]
Carpeta=(Carpeta Abrir)
Clave=vic_Inmueble.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco

[(Carpeta Abrir).vic_Local.Area]
Carpeta=(Carpeta Abrir)
Clave=vic_Local.Area
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco














































[Generales.vic_Inmueble.Nombre]
Carpeta=Generales
Clave=vic_Inmueble.Nombre
Editar=S
ValidaNombre=N
3D=S
Pegado=S
Tamano=46
ColorFondo=Blanco

[Generales.vic_Area.Nombre]
Carpeta=Generales
Clave=vic_Area.Nombre
Editar=S
ValidaNombre=N
3D=S
Pegado=S
Tamano=46
ColorFondo=Blanco

























[Acciones.vic_LocalConstruido]
Nombre=vic_LocalConstruido
Boton=0
NombreDesplegar=&Pasar a Construido
EnMenu=S
Activo=S
Visible=S













Menu=&Archivo






GuardarAntes=S
Multiple=S
ListaAccionesMultiples=(Lista)



[Acciones.vic_LocalConstruido.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=Si<BR>    vic_Local:vic_Local.Estatus = <T>VENDIDO<T><BR>Entonces<BR>    Si Precaucion(<T>¿Esta seguro que desea pasar a CONSTRUIDO el Local?<T>+ NuevaLinea + NuevaLinea + <T>Local <T> + vic_Local:vic_Local.Local, BotonSi, BotonNo ) = BotonSi<BR>        Entonces EjecutarSQL(<T>vic_spLocalActualizaEstatus :tLocal, :tEstatus<T>, vic_Local:vic_Local.Local, <T>CONSTRUIDO<T>)<BR>    Sino<BR>        <T><T><BR>    Fin<BR>Sino<BR>   Error(<T>El Local debe tener el Estatus: VENDIDO<T>)<BR>Fin
[Acciones.vic_LocalConstruido.Actualiza]
Nombre=Actualiza
Boton=0
TipoAccion=Controles Captura
Activo=S
Visible=S

ClaveAccion=Actualizar Vista






















[Acciones.vic_LocalBloqueado.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=Si<BR>    vic_Local:vic_Local.Estatus = <T>DESOCUPADO<T><BR>Entonces<BR>    Si Precaucion(<T>¿Esta seguro que desea pasar a BLOQUEADO el Local?<T>+ NuevaLinea + NuevaLinea + <T>Local <T> + vic_Local:vic_Local.Local, BotonSi, BotonNo ) = BotonSi<BR>        Entonces EjecutarSQL(<T>vic_spLocalActualizaEstatus :tLocal, :tEstatus<T>, vic_Local:vic_Local.Local, <T>BLOQUEADO<T>)<BR>    Sino<BR>        <T><T><BR>    Fin<BR>Sino<BR>   Error(<T>El Local debe tener el Estatus: DESOCUPADO<T>)<BR>Fin
[Acciones.vic_LocalBloqueado.Actualiza]
Nombre=Actualiza
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.vic_LocalBloqueado]
Nombre=vic_LocalBloqueado
Boton=0
NombreDesplegar=Pasar a Bloqueado
GuardarAntes=S
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

Menu=&Archivo
EspacioPrevio=S
[Acciones.vic_LocalApartado.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=Si<BR>    vic_Local:vic_Local.Estatus = <T>DESOCUPADO<T><BR>Entonces<BR>    Si Precaucion(<T>¿Esta seguro que desea pasar a APARTADO el Local?<T>+ NuevaLinea + NuevaLinea + <T>Local <T> + vic_Local:vic_Local.Local, BotonSi, BotonNo ) = BotonSi<BR>        Entonces EjecutarSQL(<T>vic_spLocalActualizaEstatus :tLocal, :tEstatus<T>, vic_Local:vic_Local.Local, <T>APARTADO<T>)<BR>    Sino<BR>        <T><T><BR>    Fin<BR>Sino<BR>   Error(<T>El Local debe tener el Estatus: DESOCUPADO<T>)<BR>Fin
[Acciones.vic_LocalApartado.Actualiza]
Nombre=Actualiza
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.vic_LocalApartado]
Nombre=vic_LocalApartado
Boton=0
NombreDesplegar=Pasar a Apartado
GuardarAntes=S
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

Menu=&Archivo
[Acciones.vic_LocalInteresado.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=Si<BR>    vic_Local:vic_Local.Estatus = <T>DESOCUPADO<T><BR>Entonces<BR>    Si Precaucion(<T>¿Esta seguro que desea pasar a INTERESADO el Local?<T>+ NuevaLinea + NuevaLinea + <T>Local <T> + vic_Local:vic_Local.Local, BotonSi, BotonNo ) = BotonSi<BR>        Entonces EjecutarSQL(<T>vic_spLocalActualizaEstatus :tLocal, :tEstatus<T>, vic_Local:vic_Local.Local, <T>INTERESADO<T>)<BR>    Sino<BR>        <T><T><BR>    Fin<BR>Sino<BR>   Error(<T>El Local debe tener el Estatus: DESOCUPADO<T>)<BR>Fin
[Acciones.vic_LocalInteresado.Actualiza]
Nombre=Actualiza
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.vic_LocalInteresado]
Nombre=vic_LocalInteresado
Boton=0
NombreDesplegar=Pasar a Interesado
GuardarAntes=S
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S


Menu=&Archivo
[Acciones.vic_LocalTermino.Actualiza]
Nombre=Actualiza
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.vic_LocalTermino]
Nombre=vic_LocalTermino
Boton=0
NombreDesplegar=Termino Construcción
GuardarAntes=S
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S





Menu=&Archivo


[Acciones.vic_LocalApartado.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualiza
Actualiza=(Fin)




[Acciones.vic_LocalInteresado.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualiza
Actualiza=(Fin)





[Acciones.vic_LocalTermino.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion

Expresion=Si<BR>    vic_Local:vic_Local.Estatus = <T>CONSTRUIDO<T><BR>Entonces<BR>    Si Precaucion(<T>¿Esta seguro que desea pasar a VENDIDO el Local?<T>+ NuevaLinea + NuevaLinea + <T>Local <T> + vic_Local:vic_Local.Local, BotonSi, BotonNo ) = BotonSi<BR>        Entonces EjecutarSQL(<T>vic_spLocalActualizaEstatus :tLocal, :tEstatus<T>, vic_Local:vic_Local.Local, <T>VENDIDO<T>)<BR>    Sino<BR>        <T><T><BR>    Fin<BR>Sino<BR>   Error(<T>El Local debe tener el Estatus: <T>CONSTRUIDO<T>)<BR>Fin

[Acciones.vic_LocalConstruido.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualiza
Actualiza=(Fin)








[Acciones.vic_LocalTermino.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualiza
Actualiza=(Fin)
















[Generales.vic_Local.PrecioVenta]
Carpeta=Generales
Clave=vic_Local.PrecioVenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Generales.vic_Local.MonedaPrecioVenta]
Carpeta=Generales
Clave=vic_Local.MonedaPrecioVenta
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco





[ReglasNegocio]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Regla Negocio
Clave=ReglasNegocio
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Local
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
CarpetaVisible=S

ListaEnCaptura=(Lista)



[ReglasNegocio.ListaEnCaptura]
(Inicio)=vic_Local.EstatusDisponible
vic_Local.EstatusDisponible=vic_Local.EstatusBloqueado
vic_Local.EstatusBloqueado=(Fin)

[ReglasNegocio.vic_Local.EstatusDisponible]
Carpeta=ReglasNegocio
Clave=vic_Local.EstatusDisponible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[ReglasNegocio.vic_Local.EstatusBloqueado]
Carpeta=ReglasNegocio
Clave=vic_Local.EstatusBloqueado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco













[Acciones.ACTEliminar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)

[Actividades.ListaEnCaptura]
(Inicio)=vic_ActividadesAsignadas.Actividad
vic_ActividadesAsignadas.Actividad=vic_ActividadesAsignadas.FechaIni
vic_ActividadesAsignadas.FechaIni=vic_ActividadesAsignadas.FechaIniEst
vic_ActividadesAsignadas.FechaIniEst=vic_ActividadesAsignadas.FechaVen
vic_ActividadesAsignadas.FechaVen=vic_ActividadesAsignadas.FechaConEst
vic_ActividadesAsignadas.FechaConEst=vic_ActividadesAsignadas.Responsable
vic_ActividadesAsignadas.Responsable=Usuario.Nombre
Usuario.Nombre=(Fin)

[Actividades.ListaAcciones]
(Inicio)=ACTEliminar
ACTEliminar=ACTImprimir
ACTImprimir=ACTPreliminar
ACTPreliminar=ACTExcel
ACTExcel=ACTPersonalizar
ACTPersonalizar=(Fin)














[Acciones.vic_LocalBloqueado.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualiza
Actualiza=(Fin)




















[Generales.vic_Local.ContratoCargoPorExcep]
Carpeta=Generales
Clave=vic_Local.ContratoCargoPorExcep
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

















































LineaNueva=S
















[Generales.RazonSocial]
Carpeta=Generales
Clave=RazonSocial
Editar=S
3D=S
Pegado=S
Tamano=56
ColorFondo=Blanco













[Generales.RazonSocialExcep]
Carpeta=Generales
Clave=RazonSocialExcep
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Blanco







[Generales.ListaEnCaptura]
(Inicio)=vic_Local.Local
vic_Local.Local=vic_Local.Estatus
vic_Local.Estatus=vic_Local.Nombre
vic_Local.Nombre=vic_Local.NombreCorto
vic_Local.NombreCorto=vic_Local.Inmueble
vic_Local.Inmueble=vic_Inmueble.Nombre
vic_Inmueble.Nombre=vic_Local.Area
vic_Local.Area=vic_Area.Nombre
vic_Area.Nombre=vic_Local.SubArea
vic_Local.SubArea=vic_Local.Nivel
vic_Local.Nivel=vic_Local.SubNivel
vic_Local.SubNivel=vic_Local.Categoria
vic_Local.Categoria=vic_Local.Uso
vic_Local.Uso=vic_Local.Grupo
vic_Local.Grupo=vic_Local.Proyecto
vic_Local.Proyecto=vic_Local.Familia
vic_Local.Familia=vic_Local.Contrato
vic_Local.Contrato=RazonSocial
RazonSocial=vic_Local.ContratoCargoPorExcep
vic_Local.ContratoCargoPorExcep=RazonSocialExcep
RazonSocialExcep=vic_Local.Predial
vic_Local.Predial=vic_Local.Descripcion
vic_Local.Descripcion=vic_Local.Unidad
vic_Local.Unidad=vic_Local.Medida
vic_Local.Medida=vic_Local.MedidaEstimados
vic_Local.MedidaEstimados=vic_Local.Indiviso
vic_Local.Indiviso=vic_Local.Factor1
vic_Local.Factor1=vic_Local.Factor2
vic_Local.Factor2=vic_Local.Factor3
vic_Local.Factor3=vic_Local.Complemento
vic_Local.Complemento=vic_Local.PromPlanos
vic_Local.PromPlanos=vic_Local.MesesRelComer
vic_Local.MesesRelComer=vic_Local.FechaEstimOper
vic_Local.FechaEstimOper=vic_Local.PrecioVenta
vic_Local.PrecioVenta=vic_Local.MonedaPrecioVenta
vic_Local.MonedaPrecioVenta=PrecioVentaMetro
PrecioVentaMetro=(Fin)

[Generales.PrecioVentaMetro]
Carpeta=Generales
Clave=PrecioVentaMetro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










[Forma.ListaCarpetas]
(Inicio)=Generales
Generales=Caracteristicas
Caracteristicas=ReglasNegocio
ReglasNegocio=Historial
Historial=Fotografias
Fotografias=Ubicacion
Ubicacion=PlanosCon
PlanosCon=Eventos
Eventos=Actividades
Actividades=Comentarios
Comentarios=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=vic_LocalBloqueado
vic_LocalBloqueado=vic_LocalApartado
vic_LocalApartado=vic_LocalInteresado
vic_LocalInteresado=vic_LocalConstruido
vic_LocalConstruido=vic_LocalTermino
vic_LocalTermino=Situacion
Situacion=PlantillasOffice
PlantillasOffice=Eliminar
Eliminar=Cerrar
Cerrar=CamposExtras
CamposExtras=Tareas
Tareas=Propiedades
Propiedades=Evaluaciones
Evaluaciones=Anexos
Anexos=Doc
Doc=Politica
Politica=RefCta
RefCta=AgregarEvento
AgregarEvento=Bitacora
Bitacora=Cubos
Cubos=Contactos
Contactos=Navegador
Navegador=vic_LocalCat
vic_LocalCat=vic_LocalGrp
vic_LocalGrp=vic_LocalFam
vic_LocalFam=vic_LocalUsr
vic_LocalUsr=vic_LocalTng
vic_LocalTng=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=&Otros
&Otros=(Fin)
