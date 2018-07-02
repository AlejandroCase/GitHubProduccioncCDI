
[Forma]
Clave=CDICasilleroRecibo
Icono=0
Modulos=(Todos)
MovModulo=CDICasilleroRecibo
Nombre=Recibos del casillero

ListaCarpetas=CDICasilleroRecibo
CarpetaPrincipal=CDICasilleroRecibo
PosicionInicialAlturaCliente=273
PosicionInicialAncho=622
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=372
PosicionInicialArriba=228
VentanaBloquearAjuste=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
Comentarios=<T>Casillero<T>+ <T> <T>+info.cdicasal
[CDICasilleroRecibo]
Estilo=Hoja
Clave=CDICasilleroRecibo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICasilleroRecibo
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

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
OtroOrden=S
ListaOrden=CDICasilleroRecibo.id<TAB>(Decendente)
FiltroGeneral=Casillero={info.cdicasal}
[CDICasilleroRecibo.CDICasilleroRecibo.Movimiento]
Carpeta=CDICasilleroRecibo
Clave=CDICasilleroRecibo.Movimiento
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[CDICasilleroRecibo.CDICasilleroRecibo.Cliente]
Carpeta=CDICasilleroRecibo
Clave=CDICasilleroRecibo.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[CDICasilleroRecibo.CDICasilleroRecibo.FechaEmision]
Carpeta=CDICasilleroRecibo
Clave=CDICasilleroRecibo.FechaEmision
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICasilleroRecibo.CDICasilleroRecibo.Casillero]
Carpeta=CDICasilleroRecibo
Clave=CDICasilleroRecibo.Casillero
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICasilleroRecibo.CDICasilleroRecibo.Usuario]
Carpeta=CDICasilleroRecibo
Clave=CDICasilleroRecibo.Usuario
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICasilleroRecibo.CDICasilleroRecibo.Estatus]
Carpeta=CDICasilleroRecibo
Clave=CDICasilleroRecibo.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICasilleroRecibo.Columnas]
Movimiento=117
Cliente=60
CdiFacturarA=87
FechaEmision=94
Casillero=64
Usuario=80
Estatus=76














[CDICasilleroRecibo.CDICasilleroRecibo.CdiFacturarA]
Carpeta=CDICasilleroRecibo
Clave=CDICasilleroRecibo.CdiFacturarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICasilleroRecibo.ListaEnCaptura]
(Inicio)=CDICasilleroRecibo.Movimiento
CDICasilleroRecibo.Movimiento=CDICasilleroRecibo.Cliente
CDICasilleroRecibo.Cliente=CDICasilleroRecibo.CdiFacturarA
CDICasilleroRecibo.CdiFacturarA=CDICasilleroRecibo.FechaEmision
CDICasilleroRecibo.FechaEmision=CDICasilleroRecibo.Casillero
CDICasilleroRecibo.Casillero=CDICasilleroRecibo.Usuario
CDICasilleroRecibo.Usuario=CDICasilleroRecibo.Estatus
CDICasilleroRecibo.Estatus=(Fin)

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
