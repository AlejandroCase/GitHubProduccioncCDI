
[Forma]
Clave=CDIAlergias
Icono=4
Modulos=(Todos)
Nombre=Alergias

ListaCarpetas=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
CarpetaPrincipal=Lista
PosicionInicialIzquierda=287
PosicionInicialArriba=362
PosicionInicialAlturaCliente=273
PosicionInicialAncho=705
ListaAcciones=(Lista)
MovModulo=(Todos)
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
Vista=CDIAlergias
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
FiltroGeneral=CDIAlergias.Cliente = <T>{Info.Cliente}<T>
FiltroRespetar=S
FiltroTipo=General
[Lista.CDIAlergias.Alergia]
Carpeta=Lista
Clave=CDIAlergias.Alergia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.CDIAlergias.Descripcion]
Carpeta=Lista
Clave=CDIAlergias.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.Columnas]
Alergia=308
Descripcion=368

Cliente=64
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
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S







Carpeta=(Carpeta principal)








EspacioPrevio=S




















[Lista.ListaEnCaptura]
(Inicio)=CDIAlergias.Alergia
CDIAlergias.Alergia=CDIAlergias.Descripcion
CDIAlergias.Descripcion=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Eliminar
Eliminar=(Fin)
