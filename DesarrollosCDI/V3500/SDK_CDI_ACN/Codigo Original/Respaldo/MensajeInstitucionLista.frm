[Forma]
Clave=MensajeInstitucionLista
Nombre=Mensajes de la Institución
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
PosicionInicialIzquierda=650
PosicionInicialArriba=305
PosicionInicialAltura=418
PosicionInicialAncho=620
Comentarios=Info.Cuenta
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
PosicionInicialAlturaCliente=553
PosicionSec1=447

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=MensajeInstitucion
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=MensajeInstitucion.Descripcion
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=MensajeInstitucion.Institucion=<T>{Info.Cuenta}<T><BR>AND MensajeInstitucion.Descripcion=MensajeInstitucion.Clasificacion

[Lista.MensajeInstitucion.Descripcion]
Carpeta=Lista
Clave=MensajeInstitucion.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Mensaje=84
Descripcion=393
ConciliarMismaFecha=108
ConciliarAuto=131
ConciliarTipo=142
Tipo=92
Movimiento=125
TipoMovimiento=89
ConceptoGasto=114
PermiteAbonoNoIdentificado=171
Clasificacion=184

[Ficha.MensajeInstitucion.ConceptoGasto]
Carpeta=Ficha
Clave=MensajeInstitucion.ConceptoGasto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.MensajeInstitucion.PermiteAbonoNoIdentificado]
Carpeta=Ficha
Clave=MensajeInstitucion.PermiteAbonoNoIdentificado
Editar=S
LineaNueva=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

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
