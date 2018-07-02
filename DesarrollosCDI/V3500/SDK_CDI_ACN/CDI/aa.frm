
[Forma]
Clave=aa
Icono=0
Modulos=(Todos)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=a
CarpetaPrincipal=a
PosicionInicialIzquierda=0
PosicionInicialArriba=12
PosicionInicialAlturaCliente=706
PosicionInicialAncho=1382
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=CFD
[a]
Estilo=Hoja
Pestana=S
Clave=a
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=cxc
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
ListaEnCaptura=(Lista)


BusquedaRapidaControles=S
PermiteEditar=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=Cxc.FechaEmision
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
[a.Cxc.ID]
Carpeta=a
Clave=Cxc.ID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[a.Cxc.Mov]
Carpeta=a
Clave=Cxc.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[a.Cxc.MovID]
Carpeta=a
Clave=Cxc.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[a.Cxc.FechaEmision]
Carpeta=a
Clave=Cxc.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[a.Columnas]
ID=64
Mov=124
MovID=64
FechaEmision=94


[Acciones.CFD]
Nombre=CFD
Boton=24
NombreEnBoton=S
NombreDesplegar=CFD
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S



Expresion=cfd.generar(<T>CXC<T>,cxc:Cxc.ID)
Antes=S
AntesExpresiones=ASIGNA(Info.id,cxc:Cxc.ID)
[a.ListaEnCaptura]
(Inicio)=Cxc.ID
Cxc.ID=Cxc.Mov
Cxc.Mov=Cxc.MovID
Cxc.MovID=Cxc.FechaEmision
Cxc.FechaEmision=(Fin)
