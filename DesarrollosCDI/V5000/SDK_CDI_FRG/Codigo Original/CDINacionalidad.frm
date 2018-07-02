
[Forma]
Clave=CDINacionalidad
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Nacionalidades
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
ListaAcciones=(Lista)
PosicionInicialIzquierda=529
PosicionInicialArriba=362
PosicionInicialAlturaCliente=273
PosicionInicialAncho=321
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
Vista=CDINacionalidad
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
ListaEnCaptura=CDINacionalidad.Nacionalidad

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

FiltroGeneral=CDINacionalidad.Cliente = <T>{Info.Cliente}<T>
[Lista.CDINacionalidad.Nacionalidad]
Carpeta=Lista
Clave=CDINacionalidad.Nacionalidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco


[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S


EspacioPrevio=S
[Lista.Columnas]
Cliente=64
Nacionalidad=291




[Lista.ListaEnCaptura]
(Inicio)=CDINacionalidad.Cliente
CDINacionalidad.Cliente=CDINacionalidad.Nacionalidad
CDINacionalidad.Nacionalidad=(Fin)
















[Acciones.GuardarCerrar.Seleccionar]
Nombre=Seleccionar
Boton=0
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[Acciones.GuardarCerrar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



[Acciones.GuardarCerrar.ListaAccionesMultiples]
(Inicio)=Seleccionar
Seleccionar=Cerrar
Cerrar=(Fin)









[Forma.ListaAcciones]
(Inicio)=GuardarCerrar
GuardarCerrar=Eliminar
Eliminar=(Fin)
