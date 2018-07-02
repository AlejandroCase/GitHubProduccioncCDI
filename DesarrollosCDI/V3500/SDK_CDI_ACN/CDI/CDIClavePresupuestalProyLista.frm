
[Forma]
Clave=CDIClavePresupuestalProyLista
Icono=6
Modulos=(Todos)
Nombre=Claves Presupuestales

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=365
PosicionInicialArriba=199
PosicionInicialAlturaCliente=375
PosicionInicialAncho=550
ExpresionesAlMostrar=ActualizarVista
[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
Zona=A1
Vista=CDIClavePresupuestalProyLista
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=25
FiltroRespetar=S
FiltroTipo=Arbol
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Proyectos



BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S

IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
IconosSubTitulo=<T>Clave<T>
FiltroArbolClave=ClavePresupuestal.ClavePresupuestal
FiltroArbolValidar=ClavePresupuestal.Descripcion
FiltroArbolRama=ClavePresupuestal.Rama
FiltroArbolAcumulativas=ClavePresupuestal.EsAcumulativa
MenuLocal=S
FiltroEstatus=S
ListaAcciones=Actualizar
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
FiltroFechasNormal=S
IconosNombre=CDIClavePresupuestalProyLista:ClavePresupuestal.ClavePresupuestal+<T>  <T>+CDIClavePresupuestalProyLista:ClavePresupuestal.Descripcion
FiltroGeneral=((ClavePresupuestal.EsAcumulativa = 0 AND CDICPProy.Proyecto = <T>{Info.Proyecto}<T>) OR<BR> (ClavePresupuestal.EsAcumulativa = 1 AND ISNULL(CDICPProy.Proyecto,<T><T>) = <T><T>))
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=&Personalizar Vista
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



EspacioPrevio=S






[Lista.Columnas]
0=354
1=293















Descripcion=217



2=-2



Proyecto=90





ClavePresupuestal=170
Nombre=164

ObjetoGasto=93
3=-2



[Lista.ListaEnCaptura]
(Inicio)=CDICPProy.ClavePresupuestal
CDICPProy.ClavePresupuestal=ClavePresupuestal.Descripcion
ClavePresupuestal.Descripcion=ClavePresupuestal.ObjetoGasto
ClavePresupuestal.ObjetoGasto=(Fin)
















































[Acciones.Actualizar]
Nombre=Actualizar
Boton=0
NombreDesplegar=&Actualiza
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S




















[Lista.FiltroListaEstatus]
(Inicio)=ALTA
ALTA=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)

[Forma.ListaAcciones]
(Inicio)=Seleccionar
Seleccionar=Personalizar
Personalizar=(Fin)
