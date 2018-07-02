
[Forma]
Clave=CDIExpMovSocios
Icono=0
Modulos=(Todos)
Nombre=Explorar Movimientos Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIExpMovSocios
CarpetaPrincipal=CDIExpMovSocios
PosicionInicialIzquierda=240
PosicionInicialArriba=106
PosicionInicialAlturaCliente=517
PosicionInicialAncho=886
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
[CDIExpMovSocios]
Estilo=Hoja
Clave=CDIExpMovSocios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

















HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
OtroOrden=S
ListaOrden=CDISocio.ID<TAB>(Decendente)
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDISocio
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

OtroOrden=S
ListaOrden=CDISocio.ID<TAB>(Decendente)





IconosNombre=CDISocio:CDISocio.Mov
IconosSeleccionPorLlave=S

[(Carpeta Abrir).CDISocio.Mov]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.MovID]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Cliente]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Socio]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Membresia]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Referencia]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Observaciones]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Causa]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Causa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDIExpMovSocios.CDISocio.Mov]
Carpeta=CDIExpMovSocios
Clave=CDISocio.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIExpMovSocios.CDISocio.MovID]
Carpeta=CDIExpMovSocios
Clave=CDISocio.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIExpMovSocios.CDISocio.FechaEmision]
Carpeta=CDIExpMovSocios
Clave=CDISocio.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIExpMovSocios.CDISocio.Cliente]
Carpeta=CDIExpMovSocios
Clave=CDISocio.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIExpMovSocios.CDISocio.Socio]
Carpeta=CDIExpMovSocios
Clave=CDISocio.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIExpMovSocios.CDISocio.Membresia]
Carpeta=CDIExpMovSocios
Clave=CDISocio.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIExpMovSocios.CDISocio.Referencia]
Carpeta=CDIExpMovSocios
Clave=CDISocio.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIExpMovSocios.CDISocio.Observaciones]
Carpeta=CDIExpMovSocios
Clave=CDISocio.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIExpMovSocios.CDISocio.Estatus]
Carpeta=CDIExpMovSocios
Clave=CDISocio.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDISocio.Mov
CDISocio.Mov=CDISocio.MovID
CDISocio.MovID=CDISocio.FechaEmision
CDISocio.FechaEmision=CDISocio.Cliente
CDISocio.Cliente=CDISocio.Socio
CDISocio.Socio=CDISocio.Membresia
CDISocio.Membresia=CDISocio.Referencia
CDISocio.Referencia=CDISocio.Observaciones
CDISocio.Observaciones=CDISocio.Causa
CDISocio.Causa=(Fin)






[CDIExpMovSocios.Columnas]
Mov=124
MovID=124
FechaEmision=94
Cliente=64
Socio=59
Referencia=144
Observaciones=137
Estatus=94

[CDIExpMovSocios.ListaEnCaptura]
(Inicio)=CDISocio.Mov
CDISocio.Mov=CDISocio.MovID
CDISocio.MovID=CDISocio.FechaEmision
CDISocio.FechaEmision=CDISocio.Cliente
CDISocio.Cliente=CDISocio.Socio
CDISocio.Socio=CDISocio.Membresia
CDISocio.Membresia=CDISocio.Referencia
CDISocio.Referencia=CDISocio.Observaciones
CDISocio.Observaciones=CDISocio.Estatus
CDISocio.Estatus=(Fin)

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S
