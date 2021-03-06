[Forma]
Clave=ProvL
Nombre=Listas de Proveedores
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=378
PosicionInicialArriba=237
PosicionInicialAltura=294
PosicionInicialAncho=268
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaExclusiva=S

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ProvL
Fuente={MS Sans Serif, 8, Negro, []}
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
HojaMantenerSeleccion=S
Filtros=S
FiltroPredefinido=S
FiltroAncho=30
FiltroTipo=General
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroGeneral=ProvL.Rama = <T>CXP<T> AND <BR>ProvL.Visible IN (<T>General<T>, {Comillas(Empresa)}, {Comillas(Usuario)})
FiltroRespetar=S
HojaConfirmarEliminar=S

[Lista.ProvL.Lista]
Carpeta=Lista
Clave=ProvL.Lista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50

[Lista.Columnas]
Lista=170
Visible=69

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
NombreEnBoton=S

[Acciones.Editar]
Nombre=Editar
Boton=47
NombreEnBoton=S
NombreDesplegar=E&ditar Lista
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ProvLD
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(ProvL:ProvL.Lista)
EjecucionMensaje=
Antes=S
AntesExpresiones=Asigna(Info.Lista, ProvL:ProvL.Lista)<BR>Asigna(Info.Visible, ProvL:ProvL.Visible)
Visible=S
EspacioPrevio=S

[Lista.ProvL.Visible]
Carpeta=Lista
Clave=ProvL.Visible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Editar
Editar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=ProvL.Lista
ProvL.Lista=ProvL.Visible
ProvL.Visible=(Fin)
