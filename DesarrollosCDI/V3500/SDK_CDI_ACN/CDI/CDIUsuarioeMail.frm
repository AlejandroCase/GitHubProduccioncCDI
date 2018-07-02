
[Forma]
Clave=CDIUsuarioeMail
Icono=0
BarraHerramientas=S
Modulos=(Todos)
MovModulo=(Todos)
Nombre=eMail
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Detalle
CarpetaPrincipal=Detalle
ListaAcciones=Aceptar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=390
PosicionInicialArriba=245
PosicionInicialAlturaCliente=273
PosicionInicialAncho=348
[Detalle]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=eMail
Clave=Detalle
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIUsuarioeMail
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
ListaEnCaptura=CDIUsuarioeMail.eMail
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=CDIUsuarioeMail.Usuario = <T>{Info.Usuario}<T>
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

[Detalle.CDIUsuarioeMail.eMail]
Carpeta=Detalle
Clave=CDIUsuarioeMail.eMail
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

ConCondicion=S
EjecucionCondicion=Asigna(Temp.Texto, ListaBuscarDuplicados(CampoEnLista(CDIUsuarioeMail:CDIUsuarioeMail.eMail)))<BR>Vacio(Temp.Texto)
EjecucionMensaje=Comillas(Temp.Texto)+<T> Duplicado<T>
EjecucionConError=S
[Detalle.Columnas]
eMail=304
