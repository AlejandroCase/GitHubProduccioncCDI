
[Forma]
Clave=CDIVistaNIPCDI
Icono=0
Modulos=(Todos)
Nombre=NIPCDI
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
ListaAcciones=Seleccionar
PosicionInicialIzquierda=337
PosicionInicialArriba=197
PosicionInicialAlturaCliente=603
PosicionInicialAncho=605
ExpresionesAlCerrar=Asigna( Info.ABC, CDIVistaNIPCDI:CDIVistaNIPCDI.Tipo )
[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVistaNIPCDI
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

[Lista.CDIVistaNIPCDI.NIPCDI]
Carpeta=Lista
Clave=CDIVistaNIPCDI.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.CDIVistaNIPCDI.Tipo]
Carpeta=Lista
Clave=CDIVistaNIPCDI.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco

[Lista.CDIVistaNIPCDI.Nombre]
Carpeta=Lista
Clave=CDIVistaNIPCDI.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=152
ColorFondo=Blanco

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
GuardarAntes=S
[Lista.Columnas]
NIPCDI=184
Tipo=82
Nombre=308



[Acciones.Seleccionar.Seleccionar]
Nombre=Seleccionar
Boton=0
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S












[Lista.ListaEnCaptura]
(Inicio)=CDIVistaNIPCDI.NIPCDI
CDIVistaNIPCDI.NIPCDI=CDIVistaNIPCDI.Tipo
CDIVistaNIPCDI.Tipo=CDIVistaNIPCDI.Nombre
CDIVistaNIPCDI.Nombre=(Fin)












[Acciones.Seleccionar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Expresion
Expresion=Asigna( Info.ABC, CDIVistaNIPCDI:CDIVistaNIPCDI.Tipo )<BR>//OtraForma( <T>CDIRelacionProvNIPCDI<T>, Forma.ActualizarForma )
Activo=S
Visible=S

[Acciones.Seleccionar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Seleccionar
Seleccionar=(Fin)
