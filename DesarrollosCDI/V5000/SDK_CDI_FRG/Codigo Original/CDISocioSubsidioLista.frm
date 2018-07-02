
[Forma]
Clave=CDISocioSubsidioLista
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Lista Subsidios
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Seleccionar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaCarpetas=CDISocioSubsidioLista
CarpetaPrincipal=CDISocioSubsidioLista
PosicionInicialIzquierda=559
PosicionInicialArriba=210
PosicionInicialAlturaCliente=274
PosicionInicialAncho=290
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

[CDISocioSubsidioLista]
Estilo=Hoja
Clave=CDISocioSubsidioLista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocioSubsidio
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

HojaColorFondo=Plata
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral={info.filtro}
FiltroRespetar=S
FiltroTipo=General
[CDISocioSubsidioLista.CDISocioSubsidio.Subsidio]
Carpeta=CDISocioSubsidioLista
Clave=CDISocioSubsidio.Subsidio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDISocioSubsidioLista.Columnas]
Subsidio=184

Importe=64

[CDISocioSubsidioLista.CDISocioSubsidio.Importe]
Carpeta=CDISocioSubsidioLista
Clave=CDISocioSubsidio.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco













[CDISocioSubsidioLista.ListaEnCaptura]
(Inicio)=CDISocioSubsidio.Subsidio
CDISocioSubsidio.Subsidio=CDISocioSubsidio.Importe
CDISocioSubsidio.Importe=(Fin)
