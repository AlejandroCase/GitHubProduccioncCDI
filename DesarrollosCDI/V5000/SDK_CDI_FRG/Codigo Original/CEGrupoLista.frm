[Forma]
Clave=CEGrupoLista
Nombre=Grupos del Programa
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
ListaCarpetas=CEGrupoLista
CarpetaPrincipal=CEGrupoLista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
PosicionInicialIzquierda=326
PosicionInicialArriba=219
PosicionInicialAlturaCliente=292
PosicionInicialAncho=714






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
[CEProgramaD.Columnas]
0=75
1=77
2=79
3=191
4=151
5=41
6=62

[CEGrupoLista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Grupos
Clave=CEGrupoLista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEProgramaD
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Grupo<T>
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
CarpetaVisible=S

IconosNombre=CEProgramaD:CEProgramaD.Grupo
[CEGrupoLista.CEProgramaD.Programa]
Carpeta=CEGrupoLista
Clave=CEProgramaD.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CEGrupoLista.CEProgramaD.CEPlan]
Carpeta=CEGrupoLista
Clave=CEProgramaD.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CEGrupoLista.CEProgramaD.Materia]
Carpeta=CEGrupoLista
Clave=CEProgramaD.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CEGrupoLista.CEProgramaD.Espacio]
Carpeta=CEGrupoLista
Clave=CEProgramaD.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CEGrupoLista.CEProgramaD.Profesor]
Carpeta=CEGrupoLista
Clave=CEProgramaD.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CEGrupoLista.Profesor.Nombre]
Carpeta=CEGrupoLista
Clave=Profesor.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CEGrupoLista.CEProgramaD.Horario]
Carpeta=CEGrupoLista
Clave=CEProgramaD.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CEGrupoLista.CEProgramaD.Cupo]
Carpeta=CEGrupoLista
Clave=CEProgramaD.Cupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CEGrupoLista.CEProgramaD.Disponible]
Carpeta=CEGrupoLista
Clave=CEProgramaD.Disponible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CEGrupoLista.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2



[CEGrupoLista.ListaEnCaptura]
(Inicio)=CEProgramaD.Programa
CEProgramaD.Programa=CEProgramaD.CEPlan
CEProgramaD.CEPlan=CEProgramaD.Materia
CEProgramaD.Materia=CEProgramaD.Espacio
CEProgramaD.Espacio=CEProgramaD.Profesor
CEProgramaD.Profesor=Profesor.Nombre
Profesor.Nombre=CEProgramaD.Horario
CEProgramaD.Horario=CEProgramaD.Cupo
CEProgramaD.Cupo=CEProgramaD.Disponible
CEProgramaD.Disponible=(Fin)
