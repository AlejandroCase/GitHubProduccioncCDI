
[Forma]
Clave=CDIClavePresupuestalRelacion
Icono=0
BarraHerramientas=S
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Claves Relacionadas
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=468
PosicionInicialArriba=245
PosicionInicialAlturaCliente=273
PosicionInicialAncho=343
Comentarios=Info.ClavePresupuestal
ListaAcciones=Cerrar
[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Claves Relacionadas
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIClavePresupuestalRelacion
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
ListaEnCaptura=CDIClavePresupuestalRelacion.ClaveRelacionada
CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=CDIClavePresupuestalRelacion.ClavePresupuestal = <T>{Info.ClavePresupuestal}<T>
FiltroRespetar=S
FiltroTipo=General
[Lista.CDIClavePresupuestalRelacion.ClaveRelacionada]
Carpeta=Lista
Clave=CDIClavePresupuestalRelacion.ClaveRelacionada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Columnas]
0=401
1=315
ClaveRelacionada=304

[Acciones.Cerrar]
Nombre=Cerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
ConCondicion=S
EjecucionConError=S
EjecucionCondicion=Asigna(Temp.Texto, ListaBuscarDuplicados(CampoEnLista(CDIClavePresupuestalRelacion:CDIClavePresupuestalRelacion.ClaveRelacionada)))<BR>Vacio(Temp.Texto)
EjecucionMensaje=Comillas(Temp.Texto)+<T> Duplicado<T>
