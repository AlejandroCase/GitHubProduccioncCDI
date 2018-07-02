
[Forma]
Clave=CDICPProy
Icono=0
BarraHerramientas=S
AutoGuardar=S
Modulos=(Todos)
Nombre=Proyectos
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=536
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=207
ListaAcciones=(Lista)
Comentarios=Info.ClavePresupuestal
VentanaExclusiva=S
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
OtroOrden=S
PermiteEditar=S
GuardarPorRegistro=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPProy
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDICPProy.Proyecto
ListaOrden=CDICPProy.Proyecto<TAB>(Acendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=CDICPProy.ClavePresupuestal = <T>{Info.ClavePresupuestal}<T>

[Lista.Columnas]
Proy=194

Proyecto=177
0=135
1=192
2=-2
3=-2
4=-2
[Lista.CDICPProy.Proyecto]
Carpeta=Lista
Clave=CDICPProy.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

EspacioPrevio=S


























[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=(Fin)
