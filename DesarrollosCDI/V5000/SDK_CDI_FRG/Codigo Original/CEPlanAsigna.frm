[Forma]
Clave=CEPlanAsigna
Nombre=<T>Asignación <T>
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
ListaCarpetas=CEPlanAsigna
CarpetaPrincipal=CEPlanAsigna
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialAlturaCliente=164
PosicionInicialAncho=466
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
PosicionInicialIzquierda=407
PosicionInicialArriba=413
ListaAcciones=Aceptar<BR>Cancelar
Comentarios=Info.Descripcion
[CEPlanAsigna]
Estilo=Ficha
Clave=CEPlanAsigna
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEPlanAsigna
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=CEPlanAsigna.Materia<BR>CEMateria.Descripcion<BR>CEPlanAsigna.Grupo<BR>CEProgramaD.Horario<BR>CEProgramaD.Cupo<BR>CEProgramaD.Disponible<BR>CEProgramaD.Profesor<BR>Profesor.Nombre
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
FiltroGeneral=CEPlanAsigna.Estacion = <T>{EstacionTrabajo}<T>
[CEPlanAsigna.CEPlanAsigna.Materia]
Carpeta=CEPlanAsigna
Clave=CEPlanAsigna.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro
[CEPlanAsigna.CEPlanAsigna.Grupo]
Carpeta=CEPlanAsigna
Clave=CEPlanAsigna.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro
[CEPlanAsigna.CEMateria.Descripcion]
Carpeta=CEPlanAsigna
Clave=CEMateria.Descripcion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=47
ColorFondo=Plata
ColorFuente=Negro
[CEPlanAsigna.CEProgramaD.Horario]
Carpeta=CEPlanAsigna
Clave=CEProgramaD.Horario
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro
[CEPlanAsigna.CEProgramaD.Cupo]
Carpeta=CEPlanAsigna
Clave=CEProgramaD.Cupo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Plata
ColorFuente=Rojo
Tamano=7
Efectos=[Negritas]
[CEPlanAsigna.CEProgramaD.Disponible]
Carpeta=CEPlanAsigna
Clave=CEProgramaD.Disponible
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Plata
ColorFuente=$00408000
Tamano=8
Efectos=[Negritas]
[CEPlanAsigna.Profesor.Nombre]
Carpeta=CEPlanAsigna
Clave=Profesor.Nombre
ValidaNombre=S
3D=S
Tamano=47
ColorFondo=Plata
ColorFuente=Negro
LineaNueva=N
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
Activo=S
Visible=S
GuardarAntes=S
ConCondicion=S
Multiple=S
ListaAccionesMultiples=Expresion<BR>Cerrar
EjecucionCondicion=ConDatos(CEPlanAsigna:CEPlanAsigna.Grupo)
[CEPlanAsigna.CEProgramaD.Profesor]
Carpeta=CEPlanAsigna
Clave=CEProgramaD.Profesor
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro
[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=ProcesarSQL(<T>spCEAsignaMateria :tEstacion, :tEmpresa, :nSuc, :nID, :tProg, :tPlan<T>, EstacionTrabajo, Empresa, Sucursal, Info.ID, Info.Programa, Info.Plan)
[Acciones.Aceptar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cancelar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S
