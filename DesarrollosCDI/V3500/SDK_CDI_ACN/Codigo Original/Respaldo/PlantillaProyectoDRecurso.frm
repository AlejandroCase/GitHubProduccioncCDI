[Forma]
Clave=PlantillaProyectoDRecurso
Nombre=Recursos de la Actividad
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=PlantillaProyectoDRecurso
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Gris
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=PlantillaProyectoDRecurso.Plantilla=<T>{Info.Plantilla}<T> AND<BR>PlantillaProyectoDRecurso.Actividad=<T>{Info.Actividad}<T>
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

[Lista.PlantillaProyectoDRecurso.Recurso]
Carpeta=Lista
Clave=PlantillaProyectoDRecurso.Recurso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Recurso.Nombre]
Carpeta=Lista
Clave=Recurso.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Gris

[Lista.ListaEnCaptura]
(Inicio)=PlantillaProyectoDRecurso.Recurso
PlantillaProyectoDRecurso.Recurso=Recurso.Nombre
Recurso.Nombre=(Fin)
