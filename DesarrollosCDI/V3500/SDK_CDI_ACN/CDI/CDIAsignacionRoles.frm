
[Forma]
Clave=CDIAsignacionRoles
Icono=17
BarraHerramientas=S
Modulos=(Todos)
Nombre=<T>Roles - <T> + Info.Titulo
AccionesTamanoBoton=15x5
AccionesDerecha=S
Comentarios=Info.Personal

ListaAcciones=Guardar
ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=563
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=240
AutoGuardar=S
VentanaExclusiva=S
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAsignacionRoles
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaOrdenarColumnas=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIAsignacionRoles.Rol
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

GuardarPorRegistro=S
FiltroGeneral=CDIAsignacionRoles.Catalogo  = <T>{Info.Titulo}<T> AND<BR>CDIAsignacionRoles.Personal  = <T>{Info.Personal}<T>
[Lista.CDIAsignacionRoles.Rol]
Carpeta=Lista
Clave=CDIAsignacionRoles.Rol
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Columnas]
Rol=210
Catalogo=151
