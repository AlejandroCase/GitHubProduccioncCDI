[Forma]
Clave=CEPlanD
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
Nombre=Modulos
PosicionInicialAlturaCliente=455
PosicionInicialAncho=633
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
PosicionInicialIzquierda=369
PosicionInicialArriba=137
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Info.Descripcion
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEPlanD
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
ListaEnCaptura=(Lista)
CarpetaVisible=S
PermiteEditar=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CEPlanD.CEPlan = <T>{Info.Plan}<T>
[Lista.CEPlanD.Materia]
Carpeta=Lista
Clave=CEPlanD.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Lista.CEPlanD.Precio]
Carpeta=Lista
Clave=CEPlanD.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[Lista.CEPlanD.Creditos]
Carpeta=Lista
Clave=CEPlanD.Creditos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[Lista.Columnas]
Materia=89
Precio=68
Creditos=45
Nombre=278
Descripcion=312
Precio_1=70
Tipo=75
[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
[Acciones.Dependencia]
Nombre=Dependencia
Boton=50
NombreEnBoton=S
NombreDesplegar=&Dependencias
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CEMateriaDependencia
Activo=S
Visible=S
Antes=S
ConCondicion=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(CEPlanD:CEPlanD.Materia)
AntesExpresiones=Asigna(Info.Materia,CEPlanD:CEPlanD.Materia)<BR>Asigna(Info.Titulo, CEPlanD:CEMateria.Descripcion)
[Lista.CEMateria.Descripcion]
Carpeta=Lista
Clave=CEMateria.Descripcion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
IgnoraFlujo=N
[Lista.CEPlanD.Tipo]
Carpeta=Lista
Clave=CEPlanD.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=CEPlanD.Materia
CEPlanD.Materia=CEMateria.Descripcion
CEMateria.Descripcion=CEPlanD.Tipo
CEPlanD.Tipo=CEPlanD.Precio
CEPlanD.Precio=CEPlanD.Creditos
CEPlanD.Creditos=(Fin)





























[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Dependencia
Dependencia=(Fin)
