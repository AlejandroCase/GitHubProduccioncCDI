[Forma]
Clave=Prospecto
Nombre=<T>Prospectos<T>
Icono=4
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=412
PosicionInicialArriba=130
PosicionInicialAltura=593
PosicionInicialAncho=616
Menus=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionSeccion1=7
BarraAyuda=S
VentanaBloquearAjuste=N
DialogoAbrir=S
MovModulo=CMP
ExpresionesAlMostrar=Asigna(Info.Copiar, Falso)
PosicionInicialAlturaProspecto=589
BarraAyudaBold=S
PosicionInicialAlturaCliente=606
PosicionSec1=238
MenuPrincipal=(Lista)

[Lista.Prospecto.Prospecto]
Carpeta=Lista
Clave=Prospecto.Prospecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Prospecto.Nombre]
Carpeta=Lista
Clave=Prospecto.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Prospecto=110
Nombre=304
Fecha=148
Usuario=82
Sucursal=64
Nombre_1=154
Empresa=69

[Ficha]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Prospecto
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
CarpetaVisible=S
PermiteEditar=S

[Ficha.Prospecto.Prospecto]
Carpeta=Ficha
Clave=Prospecto.Prospecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
Efectos=[Negritas]

[Ficha.Prospecto.Categoria]
Carpeta=Ficha
Clave=Prospecto.Categoria
Editar=S
ValidaNombre=S
3D=S
Tamano=30
LineaNueva=S
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.Prospecto.Nombre]
Carpeta=Ficha
Clave=Prospecto.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFuente=Negro
Efectos=[Negritas]
EspacioPrevio=S
ColorFondo=Blanco

[Ficha.Prospecto.RFC]
Carpeta=Ficha
Clave=Prospecto.RFC
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Direccion]
Carpeta=Ficha
Clave=Prospecto.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=54
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.CodigoPostal]
Carpeta=Ficha
Clave=Prospecto.CodigoPostal
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Colonia]
Carpeta=Ficha
Clave=Prospecto.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Poblacion]
Carpeta=Ficha
Clave=Prospecto.Poblacion
Editar=S
ValidaNombre=S
3D=S
Tamano=30
LineaNueva=S
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Estado]
Carpeta=Ficha
Clave=Prospecto.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Pais]
Carpeta=Ficha
Clave=Prospecto.Pais
Editar=S
ValidaNombre=S
3D=S
Tamano=20
LineaNueva=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Telefonos]
Carpeta=Ficha
Clave=Prospecto.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Fax]
Carpeta=Ficha
Clave=Prospecto.Fax
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.PedirTono]
Carpeta=Ficha
Clave=Prospecto.PedirTono
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Familia]
Carpeta=Ficha
Clave=Prospecto.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Grupo]
Carpeta=Ficha
Clave=Prospecto.Grupo
Editar=S
ValidaNombre=S
3D=S
Tamano=30
LineaNueva=S
ColorFondo=Blanco
ColorFuente=Negro

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
ActivoCondicion=no Prospecto:Prospecto.TieneMovimientos

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
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)
AntesExpresiones=Asigna(Info.Rama, <T>CMP<T>)<BR>Asigna(Info.Cuenta, Prospecto:Prospecto.Prospecto)<BR>Asigna(Info.Descripcion, Prospecto:Prospecto.Nombre)

[Ficha.Prospecto.Tipo]
Carpeta=Ficha
Clave=Prospecto.Tipo
Editar=S
ValidaNombre=S
3D=S
Tamano=30
Efectos=[Negritas]
ColorFondo=Blanco
ColorFuente=Negro
Pegado=N
LineaNueva=S

[Acciones.Tareas]
Nombre=Tareas
Boton=70
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
NombreDesplegar=&Tareas
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=Tarea
Activo=S
Visible=S
Antes=S
ConCondicion=S
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)
AntesExpresiones=Asigna(Info.PuedeEditar, Verdadero)<BR>Asigna(Info.Nombre, Prospecto:Prospecto.Nombre)<BR>Asigna(Info.Prospecto, Prospecto:Prospecto.Prospecto)<BR>Asigna(Info.Proveedor, Nulo)<BR>Asigna(Info.Agente, Nulo)<BR>Asigna(Info.Personal, Nulo)<BR>Asigna(Info.Proyecto, Nulo)<BR>Asigna(Info.UEN, Nulo)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.ID, Nulo)<BR>Asigna(Info.Reporte, Nulo)

[Ficha.Prospecto.EntreCalles]
Carpeta=Ficha
Clave=Prospecto.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Plano]
Carpeta=Ficha
Clave=Prospecto.Plano
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Observaciones]
Carpeta=Ficha
Clave=Prospecto.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

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
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)
AntesExpresiones=Asigna(Info.Rama, <T>CMP<T>)<BR>Asigna(Info.AnexoCfg, Verdadero)<BR>Asigna(Info.Cuenta, Prospecto:Prospecto.Prospecto)<BR>Asigna(Info.Descripcion, Prospecto:Prospecto.Nombre)

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
TipoAccion=Formas
ClaveAccion=CtaBitacoraAgregar
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)
AntesExpresiones=Asigna(Info.Modulo, <T>CMP<T>)<BR>Asigna(Info.Cuenta, Prospecto:Prospecto.Prospecto)<BR>Asigna(Info.Descripcion, Prospecto:Prospecto.Nombre)

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
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)
AntesExpresiones=Asigna(Info.Modulo, <T>CMP<T>)<BR>Asigna(Info.Tipo, Prospecto:Prospecto.Tipo)<BR>Asigna(Info.Cuenta, Prospecto:Prospecto.Prospecto)<BR>Asigna(Info.Descripcion, Prospecto:Prospecto.Nombre)<BR>Asigna(Info.PuedeEditar, Verdadero)

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
Expresion=EditarDocumentacion(<T>CMP<T>, Prospecto:Prospecto.Prospecto, <T>Documentación - <T>+Prospecto:Prospecto.Nombre)
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)

[Ficha.Prospecto.Estatus]
Carpeta=Ficha
Clave=Prospecto.Estatus
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=N

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
Vista=ProspectoA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Prospecto<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Prospecto.Nombre
FiltroPredefinido=S
FiltroGrupo1=Prospecto.Tipo
FiltroValida1=Prospecto.Tipo
FiltroGrupo2=SIC.Industria
FiltroValida2=SIC.Industria
FiltroGrupo3=SIC.Giro
FiltroValida3=SIC.Giro
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
FiltroEstatusDefault=ALTA
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
FiltroListasRama=CMP
FiltroListasAplicaEn=Prospecto.Prospecto
ListaAcciones=(Lista)
PestanaOtroNombre=S
PestanaNombre=Prospectos
FiltroSituacion=S
FiltroSituacionTodo=S
IconosConPaginas=S
OtroOrden=S
ListaOrden=Prospecto.Prospecto<TAB>(Acendente)
IconosNombre=ProspectoA:Prospecto.Prospecto

[(Carpeta Abrir).Prospecto.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Prospecto.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

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

[(Carpeta Abrir).Columnas]
0=106
1=283

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

[Acciones.Otros1]
Nombre=Otros1
Menu=&Otros
EnMenu=S
TipoAccion=Expresion
Boton=0

[Acciones.Otros2]
Nombre=Otros2
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros3]
Nombre=Otros3
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros4]
Nombre=Otros4
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros5]
Nombre=Otros5
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros6]
Nombre=Otros6
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros7]
Nombre=Otros7
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros8]
Nombre=Otros8
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros9]
Nombre=Otros9
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Ficha.Prospecto.Delegacion]
Carpeta=Ficha
Clave=Prospecto.Delegacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.CURP]
Carpeta=Ficha
Clave=Prospecto.CURP
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.ProspectoCto]
Nombre=ProspectoCto
Boton=80
Menu=&Edición
NombreDesplegar=&Contactos del Prospecto
EnMenu=S
TipoAccion=Formas
ClaveAccion=ProspectoCto
Activo=S
ConCondicion=S
Antes=S
Visible=S
EnBarraHerramientas=S
GuardarAntes=S
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)
AntesExpresiones=Asigna(Info.Prospecto, Prospecto:Prospecto.Prospecto)<BR>Asigna(Info.Nombre, Prospecto:Prospecto.Nombre)

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
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)
AntesExpresiones=Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Asigna(Info.Clave, Prospecto:Prospecto.Prospecto)<BR>Asigna(Info.Nombre, Prospecto:Prospecto.Nombre)<BR>Asigna(Info.Aplica, <T>Prospectos<T>)<BR>Asigna(Info.Nombre2, Prospecto:Agente.Nombre)

[Ficha.Prospecto.DireccionNumero]
Carpeta=Ficha
Clave=Prospecto.DireccionNumero
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.TelefonosLada]
Carpeta=Ficha
Clave=Prospecto.TelefonosLada
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=N

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
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)
AntesExpresiones=Asigna(Info.Rama, <T>CMP<T>)<BR>Asigna(Info.Clave, Prospecto:Prospecto.Prospecto)

[Personal.Prospecto.Extranjero]
Carpeta=Personal
Clave=Prospecto.Extranjero
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

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
Expresion=Asigna(Info.Forma, <T>Prospecto<T>)<BR>Asigna(Info.Nombre, <T>Prospectos<T>)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin

[Acciones.CamposExtras]
Nombre=CamposExtras
Boton=104
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+1
NombreDesplegar=General.CamposExtras+<T>...<T>
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
EnBarraHerramientas=S
RefrescarDespues=S
Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasContacto(<T>Prospecto<T>, Prospecto:Prospecto.Tipo, Prospecto:Prospecto.Prospecto)<BR>Sino<BR>  Asigna(Info.Aplica, <T>Prospecto<T>)<BR>  Asigna(Info.Clave, Prospecto:Prospecto.Prospecto)<BR>  Asigna(Info.Nombre, Prospecto:Prospecto.Nombre)<BR>  Asigna(Info.Modulo, Nulo)<BR>  Asigna(Info.Mov, Nulo)<BR>  Asigna(Info.Categoria, Prospecto:Prospecto.Categoria)<BR>  Asigna(Info.Grupo, Prospecto:Prospecto.Grupo)<BR>  Asigna(Info.Familia, Prospecto:Prospecto.Familia)<BR>  Asigna(Info.Departamento, Nulo)<BR>  Asigna(Info.Puesto, Nulo)<BR>  Asigna(Info.SIC, Prospecto:Prospecto.SIC)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaExtraVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si(ConDatos(Info.FormaTipo), iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre), Informacion(<T>No Tiene Definida Ninguna Forma<T>))<BR>Fin
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)

[Fiscal.Prospecto.ImportadorRegimen]
Carpeta=Fiscal
Clave=Prospecto.ImportadorRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.DireccionNumeroInt]
Carpeta=Ficha
Clave=Prospecto.DireccionNumeroInt
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco
ColorFuente=Negro

[Comentarios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Comentarios
Clave=Comentarios
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Prospecto
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
ListaEnCaptura=Prospecto.Comentarios
CarpetaVisible=S
AlinearTodaCarpeta=S

[Comentarios.Prospecto.Comentarios]
Carpeta=Comentarios
Clave=Prospecto.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10x10
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Prospecto.Agente]
Carpeta=Ficha
Clave=Prospecto.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.Agente.Nombre]
Carpeta=Ficha
Clave=Agente.Nombre
Editar=S
3D=S
Tamano=35
ColorFondo=Plata
ColorFuente=Negro

[Acciones.SIC]
Nombre=SIC
Boton=0
Menu=&Maestros
NombreDesplegar=&Sectores Industriales
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=SIC
Activo=S
Visible=S

[Ficha.Prospecto.SIC]
Carpeta=Ficha
Clave=Prospecto.SIC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Ficha.SIC.Nombre]
Carpeta=Ficha
Clave=SIC.Nombre
Editar=S
3D=S
Tamano=35
ColorFondo=Plata
ColorFuente=Negro

[Ficha.Prospecto.Origen]
Carpeta=Ficha
Clave=Prospecto.Origen
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Acciones.Origen]
Nombre=Origen
Boton=0
Menu=&Maestros
NombreDesplegar=&Origenes
EnMenu=S
TipoAccion=Formas
ClaveAccion=ProspectoOrigen
Activo=S
Visible=S

[FormaExtraValor]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Características
Clave=FormaExtraValor
Filtros=S
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaExtraValor
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaSinBorde=S
HojaFondoGris=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
ListaOrden=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
RefrescarAlEntrar=S
PermiteEditar=S
FiltroGeneral=FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaExtraVisibleProspecto(<T>{Prospecto:Prospecto.Categoria}<T>, <T>{Prospecto:Prospecto.Grupo}<T>, <T>{Prospecto:Prospecto.Familia}<T>, <T>{Prospecto:Prospecto.SIC}<T>)) AND FormaExtraValor.Aplica=<T>Prospecto<T> AND FormaExtraValor.AplicaClave=<T>{Prospecto:Prospecto.Prospecto}<T>
CondicionVisible=General.CamposExtras<><T>Campos Extras<T>

[FormaExtraValor.VerCampo]
Carpeta=FormaExtraValor
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Plata
ColorFuente=Negro

[FormaExtraValor.VerValor]
Carpeta=FormaExtraValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
Efectos=[Negritas]

[FormaExtraValor.Columnas]
VerCampo=283
VerValor=274

[Ficha.Prospecto.PaginaWeb]
Carpeta=Ficha
Clave=Prospecto.PaginaWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Historico]
Nombre=Historico
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+H
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
Expresion=Asigna(Info.Tabla, <T>Prospecto<T>)<BR>Asigna(Info.Llave, Carpeta.LlavePrimaria(<T>Ficha<T>, <T>|<T>))<BR>Si(Version.RegHist y (SQL(<T>SELECT Estatus FROM CfgRegHist WHERE SysTabla=:tTabla<T>, Info.Tabla)=EstatusActivo), Forma(<T>RegHist<T>))
EjecucionCondicion=ConDatos(Prospecto:Prospecto.Prospecto)

[Detalle.Columnas]
CampoNombre=311
Valor=303
ValorAnterior=285

[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Comentarios
Comentarios=FormaExtraValor
FormaExtraValor=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=Situacion
Situacion=PlantillasOffice
PlantillasOffice=Eliminar
Eliminar=Cerrar
Cerrar=ProspectoCto
ProspectoCto=CamposExtras
CamposExtras=Tareas
Tareas=Propiedades
Propiedades=Evaluaciones
Evaluaciones=Anexos
Anexos=Doc
Doc=Politica
Politica=AgregarEvento
AgregarEvento=Bitacora
Bitacora=Navegador
Navegador=Historico
Historico=Otros1
Otros1=Otros2
Otros2=Otros3
Otros3=Otros4
Otros4=Otros5
Otros5=Otros6
Otros6=Otros7
Otros7=Otros8
Otros8=Otros9
Otros9=SIC
SIC=Origen
Origen=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=&Otros
&Otros=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=Prospecto.Prospecto
Prospecto.Prospecto=Prospecto.Estatus
Prospecto.Estatus=Prospecto.Tipo
Prospecto.Tipo=Prospecto.Nombre
Prospecto.Nombre=Prospecto.SIC
Prospecto.SIC=SIC.Nombre
SIC.Nombre=Prospecto.Categoria
Prospecto.Categoria=Prospecto.Origen
Prospecto.Origen=Prospecto.Grupo
Prospecto.Grupo=Prospecto.RFC
Prospecto.RFC=Prospecto.Familia
Prospecto.Familia=Prospecto.CURP
Prospecto.CURP=Prospecto.Direccion
Prospecto.Direccion=Prospecto.DireccionNumero
Prospecto.DireccionNumero=Prospecto.DireccionNumeroInt
Prospecto.DireccionNumeroInt=Prospecto.EntreCalles
Prospecto.EntreCalles=Prospecto.Plano
Prospecto.Plano=Prospecto.Observaciones
Prospecto.Observaciones=Prospecto.Delegacion
Prospecto.Delegacion=Prospecto.Colonia
Prospecto.Colonia=Prospecto.CodigoPostal
Prospecto.CodigoPostal=Prospecto.Poblacion
Prospecto.Poblacion=Prospecto.Estado
Prospecto.Estado=Prospecto.Pais
Prospecto.Pais=Prospecto.Telefonos
Prospecto.Telefonos=Prospecto.TelefonosLada
Prospecto.TelefonosLada=Prospecto.Fax
Prospecto.Fax=Prospecto.PedirTono
Prospecto.PedirTono=Prospecto.PaginaWeb
Prospecto.PaginaWeb=Prospecto.Agente
Prospecto.Agente=Agente.Nombre
Agente.Nombre=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Campos
Campos=(Fin)

[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden<TAB>(Acendente)
GrupoOrden<TAB>(Acendente)=FormaExtraCampo.Orden<TAB>(Acendente)
FormaExtraCampo.Orden<TAB>(Acendente)=(Fin)
