[Forma]
Clave=CampanaTipoSituacion
Nombre=Situaciones del Tipo Campaña
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialIzquierda=647
PosicionInicialArriba=371
PosicionInicialAlturaCliente=422
PosicionInicialAncho=626
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
Comentarios=Info.Tipo
PosicionCol1=537

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CampanaTipoSituacion
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
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
OtroOrden=S
HojaTitulos=S
HojaMostrarColumnas=S
ListaOrden=CampanaTipoSituacion.Orden<TAB>(Acendente)
HojaMantenerSeleccion=S
FiltroGeneral=CampanaTipoSituacion.CampanaTipo=<T>{Info.Tipo}<T>

[Lista.CampanaTipoSituacion.Situacion]
Carpeta=Lista
Clave=CampanaTipoSituacion.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Situacion=333
Orden=35
Flujo=136

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

[Lista.CampanaTipoSituacion.Orden]
Carpeta=Lista
Clave=CampanaTipoSituacion.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Tareas]
Nombre=Tareas
Boton=70
NombreEnBoton=S
NombreDesplegar=&Tareas por Omisión
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CampanaTipoSituacionTarea
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CampanaTipoSituacion:CampanaTipoSituacion.Situacion)
AntesExpresiones=Asigna(Info.Situacion, CampanaTipoSituacion:CampanaTipoSituacion.Situacion)

[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CampanaTipoSituacion
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CampanaTipoSituacion.Icono
CarpetaVisible=S

[Ficha.CampanaTipoSituacion.Icono]
Carpeta=Ficha
Clave=CampanaTipoSituacion.Icono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CampanaTipoSituacion.Flujo]
Carpeta=Lista
Clave=CampanaTipoSituacion.Flujo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Ficha
Ficha=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Tareas
Tareas=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=CampanaTipoSituacion.Situacion
CampanaTipoSituacion.Situacion=CampanaTipoSituacion.Flujo
CampanaTipoSituacion.Flujo=CampanaTipoSituacion.Orden
CampanaTipoSituacion.Orden=(Fin)
