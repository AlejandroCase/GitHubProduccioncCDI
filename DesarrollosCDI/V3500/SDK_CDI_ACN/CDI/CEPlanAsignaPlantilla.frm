[Forma]
Clave=CEPlanAsignaPlantilla
Nombre=Plantilla de Materia
Icono=0
BarraHerramientas=S
Modulos=(Todos)
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaCarpetas=CEPlanAsignaPlantilla
CarpetaPrincipal=CEPlanAsignaPlantilla
ListaAcciones=Aceptar<BR>Cancelar<BR>Seleccionar Todo<BR>Quitar Seleccion
VentanaTipoMarco=Di�logo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
PosicionInicialIzquierda=231
PosicionInicialArriba=343
PosicionInicialAlturaCliente=304
PosicionInicialAncho=817
Comentarios=Lista(Info.Programa, Info.Plan)
[CEPlanAsignaPlantilla]
Estilo=Iconos
Clave=CEPlanAsignaPlantilla
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEPlanAsignaPlantilla
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CEMateria.Descripcion<BR>CEPlanAsignaPlantilla.Grupo<BR>CEPlanAsignaPlantilla.Espacio<BR>CEPlanAsignaPlantilla.Profesor<BR>Profesor.Nombre<BR>CEPlanAsignaPlantilla.Horario
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Materias
PermiteEditar=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Materia<T>
ElementosPorPagina=200
IconosSeleccionPorLlave=S
IconosSeleccionMultiple=S
IconosNombre=CEPlanAsignaPlantilla:CEPlanAsignaPlantilla.Materia
FiltroGeneral=CEPlanAsignaPlantilla.Estacion = {EstacionTrabajo}
[CEPlanAsignaPlantilla.CEMateria.Descripcion]
Carpeta=CEPlanAsignaPlantilla
Clave=CEMateria.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro
[CEPlanAsignaPlantilla.CEPlanAsignaPlantilla.Grupo]
Carpeta=CEPlanAsignaPlantilla
Clave=CEPlanAsignaPlantilla.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=RegistrarSeleccionID(<T>CEPlanAsignaPlantilla<T>)
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=Expresion<BR>SQL<BR>Aceptar
Activo=S
Visible=S
[CEPlanAsignaPlantilla.Columnas]
0=83
1=202
2=69
3=71
4=59
5=155
6=164
7=119
[Acciones.Aceptar.SQL]
Nombre=SQL
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=ProcesarSQL(<T>spCEAsignaPlantilla :tEmpresa, :nSuc, :nEstacion, :nID, :tPrograma, :tPlan<T>, Empresa, Sucursal, EstacionTrabajo, Info.ID, Info.Programa, Info.Plan)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S
[CEPlanAsignaPlantilla.CEPlanAsignaPlantilla.Espacio]
Carpeta=CEPlanAsignaPlantilla
Clave=CEPlanAsignaPlantilla.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[CEPlanAsignaPlantilla.CEPlanAsignaPlantilla.Profesor]
Carpeta=CEPlanAsignaPlantilla
Clave=CEPlanAsignaPlantilla.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[CEPlanAsignaPlantilla.Profesor.Nombre]
Carpeta=CEPlanAsignaPlantilla
Clave=Profesor.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro
[CEPlanAsignaPlantilla.CEPlanAsignaPlantilla.Horario]
Carpeta=CEPlanAsignaPlantilla
Clave=CEPlanAsignaPlantilla.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
[Acciones.Seleccionar Todo]
Nombre=Seleccionar Todo
Boton=82
NombreEnBoton=S
NombreDesplegar=Seleccionar Todo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S
[Acciones.Quitar Seleccion]
Nombre=Quitar Seleccion
Boton=75
NombreEnBoton=S
NombreDesplegar=Quitar Seleccion
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S
