
[Forma]
Clave=CDIEnfermedades
Icono=4
Modulos=(Todos)
Nombre=Enfermedades
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=264
PosicionInicialArriba=365
PosicionInicialAlturaCliente=273
PosicionInicialAncho=865
ListaAcciones=(Lista)
Comentarios=Info.Cliente
[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEnfermedades
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

FiltroModificarEstatus=S
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
CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIEnfermedades.Cliente = <T>{Info.Cliente}<T>
[Lista.CDIEnfermedades.Enfermedad]
Carpeta=Lista
Clave=CDIEnfermedades.Enfermedad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.CDIEnfermedades.Descripcion]
Carpeta=Lista
Clave=CDIEnfermedades.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco


[Lista.Columnas]
Enfermedad=239
Descripcion=593

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

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S





























[Lista.ListaEnCaptura]
(Inicio)=CDIEnfermedades.Enfermedad
CDIEnfermedades.Enfermedad=CDIEnfermedades.Descripcion
CDIEnfermedades.Descripcion=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Eliminar
Eliminar=(Fin)
