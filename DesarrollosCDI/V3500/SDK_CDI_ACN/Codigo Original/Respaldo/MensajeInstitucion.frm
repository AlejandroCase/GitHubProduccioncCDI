[Forma]
Clave=MensajeInstitucion
Nombre=Mensajes de la Institución
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=646
PosicionInicialArriba=305
PosicionInicialAltura=418
PosicionInicialAncho=627
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
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
PermiteEditar=S
ListaEnCaptura=(Lista)
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=MensajeInstitucion.Institucion=<T>{Info.Cuenta}<T>

[Lista.MensajeInstitucion.Mensaje]
Carpeta=Lista
Clave=MensajeInstitucion.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

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

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Enviar/Recibir Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Activo=S
Visible=S

[Lista.Columnas]
Mensaje=84
Descripcion=320
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

[Lista.MensajeInstitucion.Clasificacion]
Carpeta=Lista
Clave=MensajeInstitucion.Clasificacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Clase]
Nombre=Clase
Boton=91
NombreEnBoton=S
NombreDesplegar=&Clasificaciones
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MensajeInstitucionClase
Activo=S
Visible=S

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excel
Excel=Clase
Clase=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=MensajeInstitucion.Mensaje
MensajeInstitucion.Mensaje=MensajeInstitucion.Descripcion
MensajeInstitucion.Descripcion=MensajeInstitucion.Clasificacion
MensajeInstitucion.Clasificacion=(Fin)
