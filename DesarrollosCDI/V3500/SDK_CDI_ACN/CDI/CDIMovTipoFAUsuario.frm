
[Forma]
Clave=CDIMovTipoFAUsuario
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Flujo de Autorizaciones
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Detalle
CarpetaPrincipal=Detalle
PosicionInicialIzquierda=266
PosicionInicialArriba=245
PosicionInicialAlturaCliente=273
PosicionInicialAncho=747
ListaAcciones=Guardar
Comentarios=Lista(Info.Mov, Info.Proyecto)
[Detalle]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Flujo de Autorizaciones
Clave=Detalle
Filtros=S
ValidarCampos=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMovTipoFAUsuario
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

ListaCamposAValidar=Usuario.Nombre
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

OtroOrden=S
ListaOrden=CDIMovTipoFAUsuario.Orden<TAB>(Acendente)
FiltroGeneral=CDIMovTipoFAUsuario.Mov = <T>{Info.Mov}<T> AND CDIMovTipoFAUsuario.Modulo = <T>{Info.Modulo}<T> AND CDIMovTipoFAUsuario.Proyecto = <T>{Info.Proyecto}<T>
[Detalle.CDIMovTipoFAUsuario.Orden]
Carpeta=Detalle
Clave=CDIMovTipoFAUsuario.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Detalle.CDIMovTipoFAUsuario.Usuario]
Carpeta=Detalle
Clave=CDIMovTipoFAUsuario.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[Detalle.CDIMovTipoFAUsuario.Correo]
Carpeta=Detalle
Clave=CDIMovTipoFAUsuario.Correo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Detalle.CDIMovTipoFAUsuario.Tarea]
Carpeta=Detalle
Clave=CDIMovTipoFAUsuario.Tarea
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Detalle.CDIMovTipoFAUsuario.Tiempo]
Carpeta=Detalle
Clave=CDIMovTipoFAUsuario.Tiempo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Detalle.Columnas]
Orden=64
Usuario=193
Editar=101
Correo=104
Tarea=107
Tiempo=127

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





[Detalle.ListaEnCaptura]
(Inicio)=CDIMovTipoFAUsuario.Orden
CDIMovTipoFAUsuario.Orden=CDIMovTipoFAUsuario.Usuario
CDIMovTipoFAUsuario.Usuario=CDIMovTipoFAUsuario.Correo
CDIMovTipoFAUsuario.Correo=CDIMovTipoFAUsuario.Tarea
CDIMovTipoFAUsuario.Tarea=CDIMovTipoFAUsuario.Tiempo
CDIMovTipoFAUsuario.Tiempo=CDIMovTipoFAUsuario.Editar
CDIMovTipoFAUsuario.Editar=(Fin)

[Detalle.CDIMovTipoFAUsuario.Editar]
Carpeta=Detalle
Clave=CDIMovTipoFAUsuario.Editar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
