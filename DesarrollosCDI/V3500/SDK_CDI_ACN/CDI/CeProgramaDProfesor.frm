[Forma]
Clave=CeProgramaDProfesor
Nombre=Expositores del Programa
Icono=0
CarpetaPrincipal=CeProgramaDProfesor
Modulos=(Todos)
ListaCarpetas=CeProgramaDProfesor
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialAlturaCliente=300
PosicionInicialAncho=450
PosicionSeccion1=50
PosicionInicialIzquierda=390
PosicionInicialArriba=111
ListaAcciones=Guardar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
Comentarios=Lista(Info.Plan, Info.Grupo, Info.Materia)



[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y  Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
GuardarAntes=S

[CeProgramaDProfesor]
Estilo=Hoja
Clave=CeProgramaDProfesor
Filtros=S
PermiteEditar=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEProgramaDProfesor
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco

ListaEnCaptura=CeProgramaDProfesor.Profesor<BR>Profesor.Nombre<BR>CeProgramaDProfesor.Tipo
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroTipo=Ninguno
CarpetaVisible=S
OtroOrden=S
ListaOrden=CeProgramaDProfesor.Tipo<TAB>(Acendente)<BR>CeProgramaDProfesor.Profesor<TAB>(Acendente)<BR>Profesor.Nombre<TAB>(Acendente)
FiltroGeneral=CeProgramaDProfesor.ID = {Info.ID}

[CeProgramaDProfesor.CeProgramaDProfesor.Profesor]
Carpeta=CeProgramaDProfesor
Clave=CeProgramaDProfesor.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[CeProgramaDProfesor.CeProgramaDProfesor.Tipo]
Carpeta=CeProgramaDProfesor
Clave=CeProgramaDProfesor.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[CeProgramaDProfesor.Profesor.Nombre]
Carpeta=CeProgramaDProfesor
Clave=Profesor.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[CeProgramaDProfesor.Columnas]
Profesor=60
Nombre=250
Tipo=100
