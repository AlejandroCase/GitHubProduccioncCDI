
[Forma]
Clave=cdixcas
Icono=0
Modulos=(Todos)

ListaCarpetas=cdixcas
CarpetaPrincipal=cdixcas
PosicionInicialAlturaCliente=712
PosicionInicialAncho=663
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=351
PosicionInicialArriba=11
[cdixcas]
Estilo=Hoja
Pestana=S
Clave=cdixcas
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=cdixcas
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
ListaEnCaptura=cdixcas.casillero
CarpetaVisible=S

HojaMostrarSeleccionColoresEsp=S
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=cdixcas.seccion
FiltroGrupo2=cdixcas.ubicacion
FiltroGrupo3=cdixcas.linea
FiltroArbolClave=cdixcas.seccion
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
FiltroTodo=S
ValidarCampos=S
MenuLocal=S
ListaCamposAValidar=(Lista)
BusquedaRapidaControles=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroEstatus=S
FiltroListaEstatus=(Lista)
FiltroModificarEstatus=S
ListaAcciones=(Lista)
[cdixcas.cdixcas.casillero]
Carpeta=cdixcas
Clave=cdixcas.casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdixcas.Columnas]
casillero=64











[Acciones.Cte]
Nombre=Cte
Boton=0
NombreDesplegar=Cte
EnMenu=S
TipoAccion=Formas
ClaveAccion=Cte
Activo=S
Visible=S

[Acciones.vale]
Nombre=vale
Boton=0
NombreDesplegar=vale
EnMenu=S
TipoAccion=Formas
ClaveAccion=venta
Activo=S
Visible=S

[cdixcas.ListaCamposAValidar]
(Inicio)=cdixcas.casillero
cdixcas.casillero=cdixcas.seccion
cdixcas.seccion=cdixcas.ubicacion
cdixcas.ubicacion=cdixcas.linea
cdixcas.linea=cdixcas.Socio
cdixcas.Socio=cdixcas.membresia
cdixcas.membresia=cdixcas.tipo
cdixcas.tipo=cdixcas.cilindro
cdixcas.cilindro=cdixcas.estatus
cdixcas.estatus=(Fin)

[cdixcas.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=CONCLUIDO
CONCLUIDO=SINAFECTAR
SINAFECTAR=(Fin)

[cdixcas.ListaAcciones]
(Inicio)=Cte
Cte=vale
vale=(Fin)
