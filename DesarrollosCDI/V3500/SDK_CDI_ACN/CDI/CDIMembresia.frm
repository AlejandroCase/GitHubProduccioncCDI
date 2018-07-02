
[Forma]
Clave=CDIMembresia
Icono=0
Modulos=(Todos)
Nombre=Membresias
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
ListaAcciones=Seleccionar
PosicionInicialIzquierda=325
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=716
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMembresia
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

CarpetaVisible=S

BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
BusquedaRapida=S
BusquedaEnLinea=S
FiltroGeneral=Cte.CDISocio = 1 and Cte.Titular = 1
[Lista.Cte.Cliente]
Carpeta=Lista
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


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


[Lista.SocioTitular]
Carpeta=Lista
Clave=SocioTitular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco








[Lista.Columnas]
Cliente=64
CDISocio=64
SocioTitular=313





Socio=133
NIPCDI=112
Membresia=64
[Lista.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Socio
Cte.Socio=Cte.NIPCDI
Cte.NIPCDI=Cte.Membresia
Cte.Membresia=SocioTitular
SocioTitular=(Fin)

[Lista.Cte.Socio]
Carpeta=Lista
Clave=Cte.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Cte.NIPCDI]
Carpeta=Lista
Clave=Cte.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.Cte.Membresia]
Carpeta=Lista
Clave=Cte.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
