
[Forma]
Clave=CDIMovTipoFAProyecto
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Comites

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Di�logo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=509
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=348
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Info.Mov
[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Comit�s
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMovTipoFAProyecto
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIMovTipoFAProyecto.Proyecto
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=CDIMovTipoFAProyecto.Mov = <T>{Info.Mov}<T> AND CDIMovTipoFAProyecto.Modulo = <T>{Info.Modulo}<T>
[Lista.CDIMovTipoFAProyecto.Proyecto]
Carpeta=Lista
Clave=CDIMovTipoFAProyecto.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Columnas]
Proyecto=304

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

[Acciones.Seguimiento]
Nombre=Seguimiento
Boton=55
NombreEnBoton=S
NombreDesplegar=&Seguimiento
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIMovTipoFAUsuario
Activo=S
Antes=S
DespuesGuardar=S
Visible=S









ConCondicion=S
EjecucionCondicion=Condatos(CDIMovTipoFAProyecto:CDIMovTipoFAProyecto.Proyecto)
AntesExpresiones=Asigna(Info.Proyecto, CDIMovTipoFAProyecto:CDIMovTipoFAProyecto.Proyecto)








[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Seguimiento
Seguimiento=(Fin)
