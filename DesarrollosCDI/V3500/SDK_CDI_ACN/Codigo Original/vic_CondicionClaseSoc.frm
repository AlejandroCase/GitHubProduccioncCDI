[Forma]
Clave=vic_CondicionClaseSoc
Nombre=Movimiento Control Venta
Icono=4
Modulos=(Todos)
CarpetaPrincipal=Condiciones
PosicionInicialIzquierda=248
PosicionInicialArriba=172
PosicionInicialAltura=593
PosicionInicialAncho=852
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
PosicionInicialAlturaCliente=678
BarraAyudaBold=S
ListaAcciones002=<CONTINUA>R>Otros4
ListaCarpetas=(Lista)
VentanaEstadoInicial=Normal
VentanaExclusiva=S
ExpresionesAlMostrar=Asigna(Info.Copiar, Falso)
MenuPrincipal=(Lista)
[(Carpeta Abrir).Columnas]
0=106
1=230
2=263
3=80
4=69

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
Vista=vic_CondicionA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Condición<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
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
FiltroEstatusDefault=ACTIVA
FiltroFechasNormal=S
FiltroFechasNombre=Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
FiltroListasRama=CXC
FiltroListasAplicaEn=vic_Condicion.IDContrato
ListaAcciones=(Lista)
PestanaOtroNombre=S
PestanaNombre=Condiciones
FiltroSituacion=S
FiltroSituacionTodo=S
IconosConPaginas=S
OtroOrden=S

FiltroGrupo1=vic_Condicion.TipoCondicion
FiltroValida1=vic_Condicion.TipoCondicion
FiltroGrupo2=vic_Condicion.Agrupador
FiltroValida2=vic_Condicion.Agrupador
FiltroGrupo3=vic_Condicion.Pena
FiltroValida3=vic_Condicion.Pena


ListaOrden=vic_Condicion.ID<TAB>(Acendente)
ListaEnCaptura=(Lista)
FiltroFechas=S
FiltroFechasCampo=vic_Condicion.FechaIni
FiltroFechasDefault=Este Mes
IconosNombre=vic_CondicionA:vic_Condicion.ID

[Incremento]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Incremento
Clave=Incremento
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Condicion
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=9
FichaEspacioNombres=100
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

PermiteEditar=S


CondicionVisible=(vic_Condicion:vic_Condicion.ConIncremento = 1) y (vic_Condicion:vic_Condicion.TipoCondicion en (<T>RECURRENTE<T>))
[Control]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Control
Clave=Control
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Condicion
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=122
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

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
Vista=vic_Condicion
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=vic_Condicion.Comentarios

CarpetaVisible=S
PermiteEditar=S



AlinearTodaCarpeta=S
GuardarPorRegistro=S








[Incremento.vic_Condicion.IncIndice]
Carpeta=Incremento
Clave=vic_Condicion.IncIndice
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Incremento.vic_Condicion.IncFactor]
Carpeta=Incremento
Clave=vic_Condicion.IncFactor
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Incremento.vic_Condicion.IncMas]
Carpeta=Incremento
Clave=vic_Condicion.IncMas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

EspacioPrevio=S
[Incremento.vic_Condicion.ImportePactado]
Carpeta=Incremento
Clave=vic_Condicion.ImportePactado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Incremento.vic_Condicion.Fecharev]
Carpeta=Incremento
Clave=vic_Condicion.Fecharev
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Incremento.vic_Condicion.MesesRev]
Carpeta=Incremento
Clave=vic_Condicion.MesesRev
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Moratoria.vic_Condicion.Pena]
Carpeta=Moratoria
Clave=vic_Condicion.Pena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Moratoria.vic_Condicion.PenaIndice]
Carpeta=Moratoria
Clave=vic_Condicion.PenaIndice
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Moratoria.vic_Condicion.PenaFactor]
Carpeta=Moratoria
Clave=vic_Condicion.PenaFactor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

EspacioPrevio=S
[Moratoria.vic_Condicion.PenaMas]
Carpeta=Moratoria
Clave=vic_Condicion.PenaMas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Moratoria.vic_Condicion.PenaDiasGracia]
Carpeta=Moratoria
Clave=vic_Condicion.PenaDiasGracia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Control.vic_Condicion.ID]
Carpeta=Control
Clave=vic_Condicion.ID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Control.vic_Condicion.IDContrato]
Carpeta=Control
Clave=vic_Condicion.IDContrato
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Control.vic_Condicion.FechaProxMov]
Carpeta=Control
Clave=vic_Condicion.FechaProxMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

EspacioPrevio=S
[Control.vic_Condicion.FechaMov]
Carpeta=Control
Clave=vic_Condicion.FechaMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Control.vic_Condicion.FechaProceso]
Carpeta=Control
Clave=vic_Condicion.FechaProceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Comentarios.vic_Condicion.Comentarios]
Carpeta=Comentarios
Clave=vic_Condicion.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=100x35
ColorFondo=Blanco



[Acciones.vic_CondicionCdc]
Nombre=vic_CondicionCdc
Boton=0
Menu=&Maestros
NombreDesplegar=&Tipo de condición
TipoAccion=Formas
ClaveAccion=vic_CondicionCdc
Activo=S
Visible=S

[Acciones.vic_CondicionAgp]
Nombre=vic_CondicionAgp
Boton=0
Menu=&Maestros
NombreDesplegar=&Agrupador
TipoAccion=Formas
ClaveAccion=vic_CondicionAgp
Activo=S
Visible=S

[Acciones.vic_CondicionPen]
Nombre=vic_CondicionPen
Boton=0
Menu=&Maestros
NombreDesplegar=&Moratorios
TipoAccion=Formas
ClaveAccion=vic_CondicionPen
Activo=S
Visible=S


[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=E&liminar
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
EnBarraHerramientas=S

Visible=S
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


EspacioPrevio=S
EjecucionCondicion=(ConDatos(vic_Condicion:vic_Condicion.ID)y ConDatos(vic_Condicion:vic_Condicion.IDContrato) )
AntesExpresiones=Asigna(Info.Rama, <T>VICCC<T>)<BR>Asigna(Info.Cuenta, vic_Condicion:vic_Condicion.ID)<BR>Asigna(Info.Descripcion,  vic_Condicion:vic_Condicion.Concepto)
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
TipoAccion=Formas
ClaveAccion=AnexoCta
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S

EjecucionCondicion=ConDatos(vic_Condicion:vic_Condicion.ID) y ConDatos(vic_Condicion:vic_Condicion.IDContrato)
AntesExpresiones=Asigna(Info.Rama, <T>VICCC<T>)<BR>Asigna(Info.AnexoCfg, Verdadero)<BR>Asigna(Info.Cuenta, vic_Condicion:vic_Condicion.ID)<BR>Asigna(Info.Descripcion, vic_Condicion:vic_Condicion.Concepto)
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

EjecucionCondicion=ConDatos(vic_Condicion:vic_Condicion.ID) y ConDatos(vic_Condicion:vic_Condicion.IDContrato)
AntesExpresiones=Asigna(Info.Modulo, <T>VICCC<T>)<BR>Asigna(Info.Tipo, vic_Condicion:vic_Condicion.Concepto)<BR>Asigna(Info.Cuenta, vic_Condicion:vic_Condicion.ID)<BR>Asigna(Info.Descripcion,  vic_Condicion:vic_Condicion.Concepto)<BR>Asigna(Info.PuedeEditar, Verdadero)
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

Expresion=EditarDocumentacion(<T>VICCC<T>, vic_Condicion:vic_Condicion.ID, <T>Documentación - <T>+<T><T>)
EjecucionCondicion=ConDatos(vic_Condicion:vic_Condicion.ID) y ConDatos(vic_Condicion:vic_Condicion.IDContrato)
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

Antes=S
AntesExpresiones=CampoAsignaVariable(vic_Condicion:vic_Condicion.FechaProxMov,vic_Condicion:vic_Condicion.FechaIni)
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


[Acciones.Reportes]
Nombre=Reportes
Boton=100
Menu=&Ver
NombreDesplegar=<T>Reportes<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Dialogos
ClaveAccion=ReporteCondicion
Activo=S
Visible=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(vic_Condicion:vic_Condicion.ID<BR>ID_Contrato)
AntesExpresiones=Asigna(Info.Cliente, vic_Condicion:vic_Condicion.ID<BR>ID_Contrato)<BR>Asigna(Info.Nombre, vic_Condicion:vic_Condicion.Nombre)


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



EjecucionCondicion=ConDatos(vic_Condicion:vic_Condicion.ID) y ConDatos(vic_Condicion:vic_Condicion.IDContrato)
AntesExpresiones=Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Asigna(Info.Clave, vic_Condicion:vic_Condicion.ID)<BR>Asigna(Info.Nombre, vic_Condicion:vic_Condicion.Concepto)<BR>Asigna(Info.Aplica, <T>Desarrollos<T>)
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

EjecucionCondicion=ConDatos(vic_Condicion:vic_Condicion.ID) y ConDatos(vic_Condicion:vic_Condicion.IDContrato)
AntesExpresiones=Asigna(Info.Rama, <T>VICCC<T>)<BR>Asigna(Info.Clave, vic_Condicion:vic_Condicion.ID)
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

EjecucionCondicion=ConDatos(vic_Condicion:vic_Condicion.ID) y ConDatos(vic_Condicion:vic_Condicion.IDContrato)
AntesExpresiones=Asigna(Info.Rama, <T>VICCC<T>)<BR>Asigna(Info.Cuenta, vic_Condicion:vic_Condicion.ID)<BR>Asigna(Info.Nombre,  vic_Condicion:vic_Condicion.Concepto)
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

Expresion=Asigna(Info.Forma, <T>VICCC<T>)<BR>Asigna(Info.Nombre, <T>Condicion<T>)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Si                                       <BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin
[Acciones.Evento]
Nombre=Evento
Boton=0
Menu=&Edición
NombreDesplegar=Eventos
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CondicionEvento
ConCondicion=S
Antes=S
DespuesGuardar=S

EjecucionCondicion=ConDatos(vic_Condicion:vic_Condicion.ID) y ConDatos(vic_Condicion:vic_Condicion.IDContrato)
AntesExpresiones=Asigna(Info.Cliente, vic_Condicion:vic_Condicion.ID)<BR>Asigna(Info.Nombre,  vic_Condicion:vic_Condicion.Concepto)
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
EjecucionCondicion=ConDatos(vic_Condicion:vic_Condicion.ID) y ConDatos(vic_Condicion:vic_Condicion.IDContrato)
AntesExpresiones=Asigna(Info.Modulo, <T>VICCO<T>)<BR>Asigna(Info.Cuenta, vic_Condicion:vic_Condicion.ID)<BR>Asigna(Info.Descripcion,  vic_Condicion:vic_Condicion.Concepto)
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
ActivoCondicion=no vic_Condicion:vic_Condicion.PermitirBorrar

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

























[(Carpeta Abrir).ListaOrden]
(Inicio)=vic_Condicion.ID
vic_Condicion.ID=ID_Contrato	(Acendente)
ID_Contrato	(Acendente)=(Fin)




















[Lista.Columnas]
Articulo=131
Descripcion1=244




Agrupador=304



Tipocondicion=304
Mov=200

Pena=304
TablaAnual=304
0=92
1=158
2=176
3=-2
Concepto=218
[(Carpeta Abrir).vic_Condicion.Articulo]
Carpeta=(Carpeta Abrir)
Clave=vic_Condicion.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco








[Local.Columnas]
0=59
1=149
2=111











3=82

4=78
5=92
6=110
7=53
8=-2


[Acciones.vic_CondicionCont]
Nombre=vic_CondicionCont
Boton=0
Menu=&Maestros
NombreDesplegar=&Tipos de Contrato
TipoAccion=Formas
ClaveAccion=vic_CondicionCont
Activo=S
Visible=S
























































[(Carpeta Abrir).vic_Condicion.Concepto]
Carpeta=(Carpeta Abrir)
Clave=vic_Condicion.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco











[Contrato.Columnas]
ID=64
Titulo=293
Concepto=304











[Acciones.ParamRentaSVenta]
Nombre=ParamRentaSVenta
Boton=65
Menu=&Edición
NombreDesplegar=&Parametrización Renta sobre Venta
EnMenu=S
TipoAccion=Formas
Visible=S




EspacioPrevio=S






Antes=S












GuardarAntes=S
ClaveAccion=vic_ConfRentaSVenta





































































































































































































































































EnBarraHerramientas=S
ActivoCondicion=(vic_Condicion:vic_Condicion.BasadoenVentas) y ConDatos(vic_Condicion:vic_Condicion.IDContrato)<BR>y ConDatos(vic_Condicion:vic_Condicion.ID)
AntesExpresiones=Asigna(Info.ID, vic_Condicion:vic_Condicion.ID)<BR>Asigna(Info.Numero, vic_Condicion:vic_Condicion.IDContrato)
[Eventos]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Eventos
Clave=Eventos
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaBitacora
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_Condicion
LlaveLocal=CtaBitacora.Cuenta
LlaveMaestra=vic_Condicion.ID
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Fecha<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CtaBitacora.Evento
CarpetaVisible=S

Filtros=S
OtroOrden=S
MenuLocal=S
ListaOrden=CtaBitacora.Fecha<TAB>(Decendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
ListaAcciones=(Lista)
IconosNombre=CtaBitacora:CtaBitacora.Fecha
FiltroGeneral=CtaBitacora.Modulo=<T>VICCO<T>
[Eventos.CtaBitacora.Evento]
Carpeta=Eventos
Clave=CtaBitacora.Evento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco




[Eventos.Columnas]
0=235
1=-2










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





[Acciones.EditarGestion.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.EditarGestion]
Nombre=EditarGestion
Boton=47
NombreEnBoton=S
Menu=&Edición
NombreDesplegar=&Editar Gestión
Multiple=S
EnBarraHerramientas=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Visible=S

Antes=S
GuardarAntes=S
ActivoCondicion=(ConDatos(vic_Condicion:vic_Condicion.ID)) y (ConDatos(vic_Condicion:vic_Condicion.IDContrato)) y (SQL(<T>SELECT Mov FROM Contrato WHERE ID=:nID<T>, vic_Condicion:vic_Condicion.IDContrato) en (<T>Mantenimiento<T>))
AntesExpresiones=Asigna(Info.ID, vic_Condicion:vic_Condicion.IDContrato)<BR>Asigna(Info.Clave,vic_Condicion:vic_Condicion.ID)

[Acciones.EditarGestion.vic_CondicionGestion]
Nombre=vic_CondicionGestion
Boton=0
TipoAccion=Formas
ClaveAccion=vic_CondicionGestion
Activo=S
Visible=S

















[Acciones.EditarGestion.ListaAccionesMultiples]
(Inicio)=vic_CondicionGestion
vic_CondicionGestion=Actualizar Vista
Actualizar Vista=(Fin)










































[Acciones.AgregarEvento.ListaAccionesMultiples]
(Inicio)=CtaBitacoraAgregar
CtaBitacoraAgregar=Actualizar Vista
Actualizar Vista=(Fin)

















































[MovTipo.Columnas]
Mov=169












































[Local]
Estilo=Ficha
Pestana=S
Clave=Local
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Condicion
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata

ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=Local

CondicionVisible=vic_Condicion:vic_Condicion.ConLocal
[Local.vic_Condicion.Local]
Carpeta=Local
Clave=vic_Condicion.Local
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[RentaSVenta]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Renta S/Venta
Clave=RentaSVenta
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_condicion
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
ListaEnCaptura=vic_Condicion.Tipodebase

CondicionVisible=(vic_Condicion:vic_Condicion.BasadoenVentas = 1) y (vic_Condicion:vic_Condicion.TipoCondicion noen (<T>RECURRENTE<T>))
[RentaSVenta.vic_Condicion.Tipodebase]
Carpeta=RentaSVenta
Clave=vic_Condicion.Tipodebase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco


















[ListadoCodic]
Estilo=Hoja
Pestana=S
Clave=ListadoCodic
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_CondicionListado
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco

PestanaOtroNombre=S
PestanaNombre=Listado

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
OtroOrden=S
ListaOrden=vic_CondicionListado.FechaAplicaMov<TAB>(Acendente)

Detalle=S
VistaMaestra=vic_Condicion
LlaveLocal=vic_CondicionListado.IDCondicion
LlaveMaestra=vic_Condicion.ID
ListaEnCaptura=(Lista)
PermiteEditar=S
CondicionVisible=vic_Condicion:vic_Condicion.TipoCondicion en (<T>DE LISTADO<T>)
[ListadoCodic.Columnas]
ID_2=64
FechaAplicaMov=76
















Aplicada=64


Monto=64
RefciaNumFac=124
[ListadoCodic.ListaCamposAValidar]
(Inicio)=vic_CondicionListado.FechaAplicaMov
vic_CondicionListado.FechaAplicaMov=vic_CondicionListado.Aplicada
vic_CondicionListado.Aplicada=(Fin)



































[Control.ListaEnCaptura]
(Inicio)=vic_Condicion.ID
vic_Condicion.ID=vic_Condicion.IDContrato
vic_Condicion.IDContrato=vic_Condicion.FechaProxMov
vic_Condicion.FechaProxMov=vic_Condicion.FechaMov
vic_Condicion.FechaMov=vic_Condicion.FechaProceso
vic_Condicion.FechaProceso=(Fin)




[ListadoCodic.vic_CondicionListado.FechaAplicaMov]
Carpeta=ListadoCodic
Clave=vic_CondicionListado.FechaAplicaMov
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata

[ListadoCodic.vic_CondicionListado.Aplicada]
Carpeta=ListadoCodic
Clave=vic_CondicionListado.Aplicada
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata










[Acciones.Guardar.Guarda]
Nombre=Guarda
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Guardar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=Caso  vic_Condicion:vic_Condicion.TipoCondicion<BR>  Es <T>FIJO<T> Entonces EjecutarSQL(<T>UPDATE vic_condicion SET FechaFin =:dFechaFinal WHERE ID = :nId<T>, vic_Condicion:vic_Condicion.FechaIni, vic_Condicion:vic_Condicion.ID)<BR>  Es <T>DE LISTADO<T> Entonces EjecutarSQL(<T>UPDATE vic_condicion SET FechaIni = (SELECT MIN(FechaAplicaMov) FROM vic_CondicionListado WHERE idcondicion = :nId) WHERE id = :nid2 <T>, vic_Condicion:vic_Condicion.ID, vic_Condicion:vic_Condicion.ID)<BR>                           EjecutarSQL(<T>UPDATE vic_condicion SET FechaFin = (SELECT MAX(FechaAplicaMov) FROM vic_CondicionListado WHERE idcondicion = :nId) WHERE id = :nid2 <T>, vic_Condicion:vic_Condicion.ID, vic_Condicion:vic_Condicion.ID)<BR>Fin
Activo=S
Visible=S

[Acciones.Guardar.ListaAccionesMultiples]
(Inicio)=Guarda
Guarda=Expresion
Expresion=(Fin)



























[Acciones.Listado]
Nombre=Listado
Boton=55
NombreEnBoton=S
NombreDesplegar=Genera Listado
EnBarraHerramientas=S
TipoAccion=Expresion


























Multiple=S
ListaAccionesMultiples=(Lista)
Visible=S
ActivoCondicion=ConDatos(vic_Condicion:vic_Condicion.ID) y ConDatos(vic_Condicion:vic_Condicion.IDContrato) y (vic_Condicion:vic_Condicion.TipoCondicion en (<T>DE LISTADO<T>))<BR>ConDatos(vic_Condicion:vic_Condicion.Frecuencia) y ConDatos(vic_Condicion:vic_Condicion.NumPagos)
[ListadoCodic.vic_CondicionListado.Monto]
Carpeta=ListadoCodic
Clave=vic_CondicionListado.Monto
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata





[ListadoCodic.vic_CondicionListado.RefciaNumFac]
Carpeta=ListadoCodic
Clave=vic_CondicionListado.RefciaNumFac
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco










EditarConBloqueo=N
[Acciones.Listado.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=EjecutarSQL(<T>vic_spGeneraListado :nIDContrato, :nIDCondicion, :nMonto, :nPago, :fFechaInicial, :tPeriodicidad<T>,<BR>vic_Condicion:vic_Condicion.IDContrato, vic_Condicion:vic_Condicion.ID, vic_Condicion:vic_Condicion.Importe, vic_Condicion:vic_Condicion.NumPagos,<BR>vic_Condicion:vic_Condicion.FechaIni, vic_Condicion:vic_Condicion.Frecuencia)
Activo=S
Visible=S

[Acciones.Listado.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S














[ListadoCodic.ListaEnCaptura]
(Inicio)=vic_CondicionListado.FechaAplicaMov
vic_CondicionListado.FechaAplicaMov=vic_CondicionListado.Monto
vic_CondicionListado.Monto=vic_CondicionListado.RefciaNumFac
vic_CondicionListado.RefciaNumFac=vic_CondicionListado.Aplicada
vic_CondicionListado.Aplicada=(Fin)



















[Local.vic_Local.Nombre]
Carpeta=Local
Clave=vic_Local.Nombre
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Plata

[Local.ListaEnCaptura]
(Inicio)=vic_Condicion.Local
vic_Condicion.Local=vic_Local.Nombre
vic_Local.Nombre=(Fin)







































































[Acciones.Listado.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)



















[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=vic_Condicion.Articulo
vic_Condicion.Articulo=vic_Condicion.Concepto
vic_Condicion.Concepto=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ACTIVA
ACTIVA=ALTA
ALTA=BLOQ_AVISO
BLOQ_AVISO=BLOQUEADO
BLOQUEADO=INACTIVA
INACTIVA=BAJA
BAJA=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Campos
Campos=(Fin)















































































[Moratoria.ListaEnCaptura]
(Inicio)=vic_Condicion.Pena
vic_Condicion.Pena=vic_Condicion.PenaIndice
vic_Condicion.PenaIndice=vic_Condicion.PenaFactor
vic_Condicion.PenaFactor=vic_Condicion.PenaMas
vic_Condicion.PenaMas=vic_Condicion.PenaDiasGracia
vic_Condicion.PenaDiasGracia=(Fin)


[Eventos.ListaAcciones]
(Inicio)=EVImprimir
EVImprimir=EVPresentacion
EVPresentacion=EVExcel
EVExcel=EVPersonalizar
EVPersonalizar=(Fin)











[Acciones.Inactivar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=Si Precaucion(<T>¿Esta seguro que desea Inactivar esta Condición?<T>+ NuevaLinea + NuevaLinea + <T>Condición <T> + vic_Condicion:vic_Condicion.ID, BotonSi, BotonNo ) = BotonSi<BR>Entonces EjecutarSQL(<T>vic_spCondicionInactivar :nID<T>, vic_Condicion:vic_Condicion.ID)<BR>Sino<BR><T><T>                                                         <BR>Fin
Activo=S
Visible=S

[Acciones.Inactivar.Actualiza]
Nombre=Actualiza
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Inactivar]
Nombre=Inactivar
Boton=0
Menu=&Edición
EsDefault=S
NombreDesplegar=&Inactivar Condición
GuardarAntes=S
Multiple=S
EnMenu=S
TipoAccion=Expresion
ListaAccionesMultiples=(Lista)

Visible=S





ActivoCondicion=vic_Condicion:vic_Condicion.Estatus = <T>ACTIVA<T>



[Acciones.Inactivar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualiza
Actualiza=(Fin)











































































[Vic_CondicionesClaseSoc.ListaEnCaptura]
(Inicio)=vic_Condicion.Estatus
vic_Condicion.Estatus=vic_Condicion.TipoCondicion
vic_Condicion.TipoCondicion=vic_Condicion.Frecuencia
vic_Condicion.Frecuencia=vic_Condicion.NumPagos
vic_Condicion.NumPagos=vic_Condicion.FechaIni
vic_Condicion.FechaIni=vic_Condicion.FechaFin
vic_Condicion.FechaFin=vic_Condicion.ContinuaFact
vic_Condicion.ContinuaFact=vic_Condicion.Articulo
vic_Condicion.Articulo=Art.Descripcion1
Art.Descripcion1=vic_Condicion.AF
vic_Condicion.AF=vic_Condicion.AFArticulo
vic_Condicion.AFArticulo=vic_Condicion.AFSerie
vic_Condicion.AFSerie=vic_Condicion.Concepto
vic_Condicion.Concepto=vic_Condicion.AgregaMesAno
vic_Condicion.AgregaMesAno=vic_Condicion.ImporteVenta
vic_Condicion.ImporteVenta=vic_Condicion.MetrosVendidos
vic_Condicion.MetrosVendidos=vic_Condicion.ImportePorSociedad
vic_Condicion.ImportePorSociedad=vic_Condicion.AmortizacionFondoGarantia
vic_Condicion.AmortizacionFondoGarantia=vic_Condicion.Importe
vic_Condicion.Importe=vic_Condicion.DependeCond
vic_Condicion.DependeCond=vic_Condicion.IDCondicion_depend
vic_Condicion.IDCondicion_depend=vic_Condicion.Porcentaje
vic_Condicion.Porcentaje=vic_Condicion.PorcIva
vic_Condicion.PorcIva=vic_Condicion.MonCot
vic_Condicion.MonCot=vic_Condicion.PorcRIva
vic_Condicion.PorcRIva=vic_Condicion.MonFact
vic_Condicion.MonFact=vic_Condicion.PorcRIsr
vic_Condicion.PorcRIsr=vic_Condicion.CargooAbono
vic_Condicion.CargooAbono=vic_Condicion.FormaFact
vic_Condicion.FormaFact=vic_Condicion.AgrupadoFact
vic_Condicion.AgrupadoFact=vic_Condicion.Agrupador
vic_Condicion.Agrupador=vic_Condicion.SerieFactura
vic_Condicion.SerieFactura=vic_Condicion.ConceptoVenta
vic_Condicion.ConceptoVenta=vic_Condicion.Empresa
vic_Condicion.Empresa=Empresa.Nombre
Empresa.Nombre=vic_Condicion.ConLocal
vic_Condicion.ConLocal=vic_Condicion.ConIncremento
vic_Condicion.ConIncremento=vic_Condicion.SiMoratorios
vic_Condicion.SiMoratorios=vic_Condicion.BasadoenVentas
vic_Condicion.BasadoenVentas=vic_Condicion.LeyendaPre
vic_Condicion.LeyendaPre=vic_Condicion.LeyendaPost
vic_Condicion.LeyendaPost=vic_Condicion.OpcionInversion
vic_Condicion.OpcionInversion=(Fin)











































[Condiciones]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Mov. Ctrl. Venta
Clave=Condiciones
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Condicion
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=118
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[Condiciones.vic_Condicion.Estatus]
Carpeta=Condiciones
Clave=vic_Condicion.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Condiciones.vic_Condicion.TipoCondicion]
Carpeta=Condiciones
Clave=vic_Condicion.TipoCondicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Condiciones.vic_Condicion.Frecuencia]
Carpeta=Condiciones
Clave=vic_Condicion.Frecuencia
Editar=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.NumPagos]
Carpeta=Condiciones
Clave=vic_Condicion.NumPagos
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

[Condiciones.vic_Condicion.FechaIni]
Carpeta=Condiciones
Clave=vic_Condicion.FechaIni
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.FechaFin]
Carpeta=Condiciones
Clave=vic_Condicion.FechaFin
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.ContinuaFact]
Carpeta=Condiciones
Clave=vic_Condicion.ContinuaFact
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[Condiciones.vic_Condicion.Articulo]
Carpeta=Condiciones
Clave=vic_Condicion.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.Art.Descripcion1]
Carpeta=Condiciones
Clave=Art.Descripcion1
Editar=S
3D=S
Pegado=S
Tamano=65
ColorFondo=Plata

[Condiciones.vic_Condicion.AF]
Carpeta=Condiciones
Clave=vic_Condicion.AF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.AFArticulo]
Carpeta=Condiciones
Clave=vic_Condicion.AFArticulo
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.AFSerie]
Carpeta=Condiciones
Clave=vic_Condicion.AFSerie
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.Concepto]
Carpeta=Condiciones
Clave=vic_Condicion.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=67
ColorFondo=Blanco

[Condiciones.vic_Condicion.AgregaMesAno]
Carpeta=Condiciones
Clave=vic_Condicion.AgregaMesAno
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
Efectos=[Negritas]

[Condiciones.vic_Condicion.ImporteVenta]
Carpeta=Condiciones
Clave=vic_Condicion.ImporteVenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

EspacioPrevio=S

[Condiciones.vic_Condicion.ImportePorSociedad]
Carpeta=Condiciones
Clave=vic_Condicion.ImportePorSociedad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.AmortizacionFondoGarantia]
Carpeta=Condiciones
Clave=vic_Condicion.AmortizacionFondoGarantia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.Importe]
Carpeta=Condiciones
Clave=vic_Condicion.Importe
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.DependeCond]
Carpeta=Condiciones
Clave=vic_Condicion.DependeCond
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Condiciones.vic_Condicion.IDCondicion_depend]
Carpeta=Condiciones
Clave=vic_Condicion.IDCondicion_depend
Editar=S
3D=S
Pegado=S
Tamano=20
ColorFondo=Blanco

[Condiciones.vic_Condicion.Porcentaje]
Carpeta=Condiciones
Clave=vic_Condicion.Porcentaje
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=20
ColorFondo=Blanco


[Condiciones.vic_Condicion.MonCot]
Carpeta=Condiciones
Clave=vic_Condicion.MonCot
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


LineaNueva=S
[Condiciones.vic_Condicion.MonFact]
Carpeta=Condiciones
Clave=vic_Condicion.MonFact
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


LineaNueva=S
[Condiciones.vic_Condicion.CargooAbono]
Carpeta=Condiciones
Clave=vic_Condicion.CargooAbono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.FormaFact]
Carpeta=Condiciones
Clave=vic_Condicion.FormaFact
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.AgrupadoFact]
Carpeta=Condiciones
Clave=vic_Condicion.AgrupadoFact
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.Agrupador]
Carpeta=Condiciones
Clave=vic_Condicion.Agrupador
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.SerieFactura]
Carpeta=Condiciones
Clave=vic_Condicion.SerieFactura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.ConceptoVenta]
Carpeta=Condiciones
Clave=vic_Condicion.ConceptoVenta
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.Empresa]
Carpeta=Condiciones
Clave=vic_Condicion.Empresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.Empresa.Nombre]
Carpeta=Condiciones
Clave=Empresa.Nombre
Editar=S
3D=S
Pegado=S
Tamano=65
ColorFondo=Plata

[Condiciones.vic_Condicion.ConLocal]
Carpeta=Condiciones
Clave=vic_Condicion.ConLocal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Condiciones.vic_Condicion.ConIncremento]
Carpeta=Condiciones
Clave=vic_Condicion.ConIncremento
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Condiciones.vic_Condicion.SiMoratorios]
Carpeta=Condiciones
Clave=vic_Condicion.SiMoratorios
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Condiciones.vic_Condicion.BasadoenVentas]
Carpeta=Condiciones
Clave=vic_Condicion.BasadoenVentas
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[Condiciones.vic_Condicion.LeyendaPre]
Carpeta=Condiciones
Clave=vic_Condicion.LeyendaPre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=67
ColorFondo=Blanco

[Condiciones.vic_Condicion.LeyendaPost]
Carpeta=Condiciones
Clave=vic_Condicion.LeyendaPost
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=67
ColorFondo=Blanco

[Condiciones.vic_Condicion.OpcionInversion]
Carpeta=Condiciones
Clave=vic_Condicion.OpcionInversion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]





[Incremento.ListaEnCaptura]
(Inicio)=vic_Condicion.IncIndice
vic_Condicion.IncIndice=vic_Condicion.IncFactor
vic_Condicion.IncFactor=vic_Condicion.IncMas
vic_Condicion.IncMas=vic_Condicion.Fecharev
vic_Condicion.Fecharev=vic_Condicion.ImportePactado
vic_Condicion.ImportePactado=vic_Condicion.MesesRev
vic_Condicion.MesesRev=(Fin)
















[Condiciones.ListaEnCaptura]
(Inicio)=vic_Condicion.Estatus
vic_Condicion.Estatus=vic_Condicion.TipoCondicion
vic_Condicion.TipoCondicion=vic_Condicion.Frecuencia
vic_Condicion.Frecuencia=vic_Condicion.NumPagos
vic_Condicion.NumPagos=vic_Condicion.FechaIni
vic_Condicion.FechaIni=vic_Condicion.FechaFin
vic_Condicion.FechaFin=vic_Condicion.ContinuaFact
vic_Condicion.ContinuaFact=vic_Condicion.Articulo
vic_Condicion.Articulo=Art.Descripcion1
Art.Descripcion1=vic_Condicion.AF
vic_Condicion.AF=vic_Condicion.AFArticulo
vic_Condicion.AFArticulo=vic_Condicion.AFSerie
vic_Condicion.AFSerie=vic_Condicion.Concepto
vic_Condicion.Concepto=vic_Condicion.AgregaMesAno
vic_Condicion.AgregaMesAno=vic_Condicion.ImporteVenta
vic_Condicion.ImporteVenta=vic_Condicion.ImportePorSociedad
vic_Condicion.ImportePorSociedad=vic_Condicion.AmortizacionFondoGarantia
vic_Condicion.AmortizacionFondoGarantia=vic_Condicion.Importe
vic_Condicion.Importe=vic_Condicion.DependeCond
vic_Condicion.DependeCond=vic_Condicion.IDCondicion_depend
vic_Condicion.IDCondicion_depend=vic_Condicion.Porcentaje
vic_Condicion.Porcentaje=vic_Condicion.MonCot
vic_Condicion.MonCot=vic_Condicion.MonFact
vic_Condicion.MonFact=vic_Condicion.CargooAbono
vic_Condicion.CargooAbono=vic_Condicion.FormaFact
vic_Condicion.FormaFact=vic_Condicion.AgrupadoFact
vic_Condicion.AgrupadoFact=vic_Condicion.Agrupador
vic_Condicion.Agrupador=vic_Condicion.SerieFactura
vic_Condicion.SerieFactura=vic_Condicion.ConceptoVenta
vic_Condicion.ConceptoVenta=vic_Condicion.Empresa
vic_Condicion.Empresa=Empresa.Nombre
Empresa.Nombre=vic_Condicion.ConLocal
vic_Condicion.ConLocal=vic_Condicion.ConIncremento
vic_Condicion.ConIncremento=vic_Condicion.SiMoratorios
vic_Condicion.SiMoratorios=vic_Condicion.BasadoenVentas
vic_Condicion.BasadoenVentas=vic_Condicion.LeyendaPre
vic_Condicion.LeyendaPre=vic_Condicion.LeyendaPost
vic_Condicion.LeyendaPost=vic_Condicion.OpcionInversion
vic_Condicion.OpcionInversion=(Fin)

[Forma.ListaCarpetas]
(Inicio)=Condiciones
Condiciones=Local
Local=Incremento
Incremento=RentaSVenta
RentaSVenta=ListadoCodic
ListadoCodic=Control
Control=Eventos
Eventos=Comentarios
Comentarios=(Fin)

[Forma.ListaAcciones]
(Inicio)=Abrir
Abrir=Guardar
Guardar=Situacion
Situacion=PlantillasOffice
PlantillasOffice=Eliminar
Eliminar=Cerrar
Cerrar=Evento
Evento=Inactivar
Inactivar=Propiedades
Propiedades=Evaluaciones
Evaluaciones=Anexos
Anexos=Doc
Doc=Politica
Politica=RefCta
RefCta=AgregarEvento
AgregarEvento=Bitacora
Bitacora=ParamRentaSVenta
ParamRentaSVenta=EditarGestion
EditarGestion=Listado
Listado=Navegador
Navegador=vic_CondicionCdc
vic_CondicionCdc=vic_CondicionAgp
vic_CondicionAgp=vic_CondicionPen
vic_CondicionPen=vic_CondicionCont
vic_CondicionCont=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=&Otros
&Otros=(Fin)
