[Forma]
Clave=CDIVPuntosMembresia
Icono=0
Modulos=(Todos)
Nombre=Gesti�n Puntos CDI
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Dise�o
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
ListaCarpetas=(Lista)
CarpetaPrincipal=CDIGestionPuntos
PosicionInicialIzquierda=21
PosicionInicialArriba=116
PosicionInicialAlturaCliente=520
PosicionInicialAncho=829
PosicionSec1=257
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionCol1=591
PosicionSec2=571
ListaAcciones=(Lista)
DialogoAbrir=S
PosicionCol2=651
BarraAyuda=S
BarraAyudaBold=S
SinTransacciones=S

ExpresionesAlMostrar=asigna(info.cliente,nulo)<BR>asigna(info.cdisocio,nulo)
[CDIVPuntosMembresia]
Estilo=Hoja
Clave=CDIVPuntosMembresia
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVPuntosMembresia
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Compras
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroTipo=General
MenuLocal=S
ListaAcciones=Movimientos
OtroOrden=S
ListaOrden=CDIVPuntosMembresia.movid<TAB>(Decendente)
FiltroRespetar=S
ExpAntesRefrescar=asigna(Info.cdimembresia,CDIGestionPuntos:CDIGestionPuntos.Membresia)<BR>guardarcambios<BR>actualizarforma

RefrescarAlEntrar=S
FiltroGeneral=CDIVPuntosMembresia.Membresia={Info.CDIMembresia}
CondicionVisible=CDIGestionPuntos:CDIGestionPuntos.Estatus=<T>SINAFECTAR<T>
[CDIVPuntosMembresia.CDIVPuntosMembresia.Mov]
Carpeta=CDIVPuntosMembresia
Clave=CDIVPuntosMembresia.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVPuntosMembresia.CDIVPuntosMembresia.movid]
Carpeta=CDIVPuntosMembresia
Clave=CDIVPuntosMembresia.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVPuntosMembresia.CDIVPuntosMembresia.FechaEmision]
Carpeta=CDIVPuntosMembresia
Clave=CDIVPuntosMembresia.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPuntosMembresia.CDIVPuntosMembresia.Estatus]
Carpeta=CDIVPuntosMembresia
Clave=CDIVPuntosMembresia.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIVPuntosMembresia.CDIVPuntosMembresia.Cliente]
Carpeta=CDIVPuntosMembresia
Clave=CDIVPuntosMembresia.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVPuntosMembresia.CDIVPuntosMembresia.Articulo]
Carpeta=CDIVPuntosMembresia
Clave=CDIVPuntosMembresia.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[CDIVPuntosMembresia.Columnas]
Mov=71
movid=69
FechaEmision=73
Estatus=94
Cliente=64
Articulo=79
Cantidad=64

PunDis=93
[CDIVPuntosMembresiaDet]
Estilo=Hoja
Pestana=S
Clave=CDIVPuntosMembresiaDet
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIPuntosMembresia
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIVPuntosMembresia
LlaveLocal=CDIPuntosMembresia.Id
LlaveMaestra=CDIVPuntosMembresia.IdOC
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=Detalle Actual

CondicionVisible=CDIGestionPuntos:CDIGestionPuntos.Estatus=<T>SINAFECTAR<T>

[CDIVPuntosMembresiaDet.CDIPuntosMembresia.Socio]
Carpeta=CDIVPuntosMembresiaDet
Clave=CDIPuntosMembresia.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVPuntosMembresiaDet.CDIPuntosMembresia.Cantidad]
Carpeta=CDIVPuntosMembresiaDet
Clave=CDIPuntosMembresia.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Olivo

[CDIVPuntosMembresiaDet.CDIPuntosMembresia.Tipo]
Carpeta=CDIVPuntosMembresiaDet
Clave=CDIPuntosMembresia.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDIVPuntosMembresiaDet.CDIPuntosMembresia.Consumo]
Carpeta=CDIVPuntosMembresiaDet
Clave=CDIPuntosMembresia.Consumo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$0080FFFF

[CDIVPuntosMembresiaDet.Columnas]
Membresia=89
Socio=64
Cantidad=64
Tipo=46
Consumo=81
Estatus=94
Disponible=64

SocioNombre=304
[CDIPuntosMembresia.Columnas]
Membresia=74
Socio=64
Cantidad=54
Tipo=34
Consumo=49
id=64
Rid=64
Mov=60
Movid=66
FechaEmision=37
Estatus=45
IDGestion=64

SocioNombre=304
[Acciones.Movimientos]
Nombre=Movimientos
Boton=0
NombreDesplegar=Traspasar Puntos
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Multiple=S
ListaAccionesMultiples=(Lista)
GuardarAntes=S
ConCondicion=S
EjecucionConError=S

EjecucionCondicion=CDIGestionPuntos:CDIGestionPuntos.Estatus=<T>SINAFECTAR<T>
EjecucionMensaje=<T>Solo movimientos sin afectar<T>
[Acciones.Movimientos.MovsPuntos]
Nombre=MovsPuntos
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Ejecutarsql(<T>xpCDIPuntosMemMov :tS, :nI, :nG<T>,Info.cliente, Info.Id, Info.numero)<BR>FormaModal(<T>CDIPuntosMembresiaMov<T>)

[Acciones.Movimientos.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.Movimientos.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=ASigna(info.cliente,CDIVPuntosMembresia:CDIVPuntosMembresia.Cliente)<BR>ASigna(Info.Id,CDIVPuntosMembresia:CDIVPuntosMembresia.IdOC)<BR>Asigna(info.Numero,CDIGestionPuntos:CDIGestionPuntos.id)<BR>Asigna(info.mensaje,CDIVPuntosMembresia:CDIVPuntosMembresia.Mov+<T> <T>+CDIVPuntosMembresia:CDIVPuntosMembresia.movid)
[CDIPuntosMembresiaMov.CDIPuntosMembresiaMov.Socio]
Carpeta=CDIPuntosMembresiaMov
Clave=CDIPuntosMembresiaMov.Socio
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
Editar=S

[CDIPuntosMembresiaMov.CDIPuntosMembresiaMov.Cantidad]
Carpeta=CDIPuntosMembresiaMov
Clave=CDIPuntosMembresiaMov.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPuntosMembresiaMov.CDIPuntosMembresiaMov.Tipo]
Carpeta=CDIPuntosMembresiaMov
Clave=CDIPuntosMembresiaMov.Tipo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco
Editar=N

[CDIPuntosMembresiaMov.Columnas]
Socio=64
Cantidad=64
Tipo=30
Mov=80
Movid=87
Membresia=64

SocioNombre=184
[CDIPuntosMembresiaMov.CDIPuntosMembresiaMov.Mov]
Carpeta=CDIPuntosMembresiaMov
Clave=CDIPuntosMembresiaMov.Mov
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPuntosMembresiaMov.CDIPuntosMembresiaMov.Movid]
Carpeta=CDIPuntosMembresiaMov
Clave=CDIPuntosMembresiaMov.Movid
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDIGestionPuntos
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
OtroOrden=S
ListaOrden=CDIGestionPuntos.id<TAB>(Decendente)
PestanaNombre=Traspasos Puntos CDI
PestanaOtroNombre=S
ExpAlRefrescar=asigna(info.numero,CDIGestionPuntos:CDIGestionPuntos.id)

BusquedaRapidaControles=S
FiltroEstatus=S
FiltroUsuarios=S
FiltroFechas=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroUsuarioDefault=(Usuario)
FiltroFechasCampo=CDIGestionPuntos.FechaEmision
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroModificarEstatus=S
BusquedaRespetarUsuario=S
IconosNombre=CDIVPuntosMembresia:CDIVPuntosMembresia.Mov
[(Carpeta Abrir).CDIGestionPuntos.Mov]
Carpeta=(Carpeta Abrir)
Clave=CDIGestionPuntos.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[(Carpeta Abrir).CDIGestionPuntos.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDIGestionPuntos.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDIGestionPuntos.Estatus]
Carpeta=(Carpeta Abrir)
Clave=CDIGestionPuntos.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).CDIGestionPuntos.usuario]
Carpeta=(Carpeta Abrir)
Clave=CDIGestionPuntos.usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).CDIGestionPuntos.Cliente]
Carpeta=(Carpeta Abrir)
Clave=CDIGestionPuntos.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).CDIGestionPuntos.Socio]
Carpeta=(Carpeta Abrir)
Clave=CDIGestionPuntos.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).CDIGestionPuntos.Membresia]
Carpeta=(Carpeta Abrir)
Clave=CDIGestionPuntos.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).Columnas]
0=-2
1=93
2=39
3=89
4=86
5=84
6=75
7=69
8=77
9=-2

[CDIGestionPuntos]
Estilo=Ficha
Clave=CDIGestionPuntos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIGestionPuntos
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Gesti�n

[CDIGestionPuntos.CDIGestionPuntos.Mov]
Carpeta=CDIGestionPuntos
Clave=CDIGestionPuntos.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[CDIGestionPuntos.CDIGestionPuntos.Cliente]
Carpeta=CDIGestionPuntos
Clave=CDIGestionPuntos.Cliente
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

IgnoraFlujo=N
[CDIGestionPuntos.CDIGestionPuntos.Socio]
Carpeta=CDIGestionPuntos
Clave=CDIGestionPuntos.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIGestionPuntos.CDIGestionPuntos.Membresia]
Carpeta=CDIGestionPuntos
Clave=CDIGestionPuntos.Membresia
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIGestionPuntos.CDIGestionPuntos.FechaEmision]
Carpeta=CDIGestionPuntos
Clave=CDIGestionPuntos.FechaEmision
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=12

Pegado=S
IgnoraFlujo=N
[CDIGestionPuntos.Columnas]
Mov=124
MovId=124
Cliente=64
Socio=64
Membresia=64
FechaEmision=94

[CDIPuntosMembresiaMov.ListaEnCaptura]
(Inicio)=CDIPuntosMembresiaMov.Mov
CDIPuntosMembresiaMov.Mov=CDIPuntosMembresiaMov.Movid
CDIPuntosMembresiaMov.Movid=CDIPuntosMembresiaMov.Socio
CDIPuntosMembresiaMov.Socio=CDIPuntosMembresiaMov.Cantidad
CDIPuntosMembresiaMov.Cantidad=CDIPuntosMembresiaMov.Tipo
CDIPuntosMembresiaMov.Tipo=(Fin)

[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76



[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S

[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S

[CDIVPuntosMembresiaDet.CDIPuntosMembresia.Estatus]
Carpeta=CDIVPuntosMembresiaDet
Clave=CDIPuntosMembresia.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIVPuntosMembresiaDet.Disponible]
Carpeta=CDIVPuntosMembresiaDet
Clave=Disponible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Verde

[CDIPuntosMembresia]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Detalle Movimiento
Clave=CDIPuntosMembresia
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIPuntosMembresiaMov
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroTipo=General
ExpAntesRefrescar=asigna(info.numero,CDIGestionPuntos:CDIGestionPuntos.id)
FiltroRespetar=S
Detalle=S
VistaMaestra=CDIGestionPuntos
LlaveLocal=CDIPuntosMembresiaMov.IDGestion
LlaveMaestra=CDIGestionPuntos.id

FiltroGeneral=CDIPuntosMembresiaMov.IDGestion={info.numero}
CondicionVisible=CDIGestionPuntos:CDIGestionPuntos.Estatus=<T>CONCLUIDO<T>

[CDIPuntosMembresia.CDIPuntosMembresiaMov.Socio]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresiaMov.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPuntosMembresia.CDIPuntosMembresiaMov.Cantidad]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresiaMov.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[(Carpeta Abrir).CDIGestionPuntos.id]
Carpeta=(Carpeta Abrir)
Clave=CDIGestionPuntos.id
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S
EspacioPrevio=S

[Acciones.Navegador (Documentos)]
Nombre=Navegador (Documentos)
Boton=0
NombreDesplegar=Navegador (Documentos)
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S
EspacioPrevio=S


[CDIPuntosMembresia.CDIPuntosMembresiaMov.Mov]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresiaMov.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPuntosMembresia.CDIPuntosMembresiaMov.Movid]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresiaMov.Movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=CDIPuntosMembresia
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar


















ActivoCondicion=CDIGestionPuntos:CDIGestionPuntos.Estatus=<T>CONCLUIDO<T>
VisibleCondicion=CDIGestionPuntos:CDIGestionPuntos.Estatus=<T>CONCLUIDO<T>
[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIGestionPuntos.Mov
CDIGestionPuntos.Mov=CDIGestionPuntos.id
CDIGestionPuntos.id=CDIGestionPuntos.FechaEmision
CDIGestionPuntos.FechaEmision=CDIGestionPuntos.Estatus
CDIGestionPuntos.Estatus=CDIGestionPuntos.usuario
CDIGestionPuntos.usuario=CDIGestionPuntos.Cliente
CDIGestionPuntos.Cliente=CDIGestionPuntos.Socio
CDIGestionPuntos.Socio=CDIGestionPuntos.Membresia
CDIGestionPuntos.Membresia=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=CONCLUIDO
CONCLUIDO=(Fin)

















[CDIVPuntosMembresia.PunDis]
Carpeta=CDIVPuntosMembresia
Clave=PunDis
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


























[CDIGestionPuntos.SocioNombre]
Carpeta=CDIGestionPuntos
Clave=SocioNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco





[foto]
Estilo=Ficha
Pestana=S
Clave=foto
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDIGestionPuntos
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIImagen
CarpetaVisible=S

PestanaOtroNombre=S
PestanaNombre=Socio
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

[foto.CDIImagen]
Carpeta=foto
Clave=CDIImagen
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=25x13
ColorFondo=Blanco








Pegado=N
ConScroll=S
[foto.Columnas]
CDIImagen=604
RutaImagen=604

[foto.ListaEnCaptura]
(Inicio)=CDIImagen
CDIImagen=Cte.RutaImagen
Cte.RutaImagen=(Fin)






























[CDIGestionPuntos.ListaEnCaptura]
(Inicio)=CDIGestionPuntos.Mov
CDIGestionPuntos.Mov=CDIGestionPuntos.FechaEmision
CDIGestionPuntos.FechaEmision=CDIGestionPuntos.Socio
CDIGestionPuntos.Socio=CDIGestionPuntos.Cliente
CDIGestionPuntos.Cliente=CDIGestionPuntos.Membresia
CDIGestionPuntos.Membresia=SocioNombre
SocioNombre=(Fin)









[Acciones.Movimientos.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=MovsPuntos
MovsPuntos=Actualizar Forma
Actualizar Forma=(Fin)




[CDIVPuntosMembresia.ListaEnCaptura]
(Inicio)=CDIVPuntosMembresia.Mov
CDIVPuntosMembresia.Mov=CDIVPuntosMembresia.movid
CDIVPuntosMembresia.movid=CDIVPuntosMembresia.FechaEmision
CDIVPuntosMembresia.FechaEmision=CDIVPuntosMembresia.Estatus
CDIVPuntosMembresia.Estatus=CDIVPuntosMembresia.Cliente
CDIVPuntosMembresia.Cliente=CDIVPuntosMembresia.Articulo
CDIVPuntosMembresia.Articulo=PunDis
PunDis=(Fin)






































[CDIVPuntosMembresiaDet.SocioNombre]
Carpeta=CDIVPuntosMembresiaDet
Clave=SocioNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDIPuntosMembresia.SocioNombre]
Carpeta=CDIPuntosMembresia
Clave=SocioNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDIPuntosMembresia.ListaEnCaptura]
(Inicio)=CDIPuntosMembresiaMov.Mov
CDIPuntosMembresiaMov.Mov=CDIPuntosMembresiaMov.Movid
CDIPuntosMembresiaMov.Movid=CDIPuntosMembresiaMov.Socio
CDIPuntosMembresiaMov.Socio=SocioNombre
SocioNombre=CDIPuntosMembresiaMov.Cantidad
CDIPuntosMembresiaMov.Cantidad=(Fin)






[CDIVPuntosMembresiaDet.ListaEnCaptura]
(Inicio)=CDIPuntosMembresia.Socio
CDIPuntosMembresia.Socio=SocioNombre
SocioNombre=CDIPuntosMembresia.Cantidad
CDIPuntosMembresia.Cantidad=CDIPuntosMembresia.Consumo
CDIPuntosMembresia.Consumo=Disponible
Disponible=CDIPuntosMembresia.Tipo
CDIPuntosMembresia.Tipo=CDIPuntosMembresia.Estatus
CDIPuntosMembresia.Estatus=(Fin)



















[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
Carpeta=CDIPuntosMembresia
TipoAccion=Controles Captura
ClaveAccion=Imprimir



















ActivoCondicion=CDIGestionPuntos:CDIGestionPuntos.Estatus=<T>CONCLUIDO<T>
VisibleCondicion=CDIGestionPuntos:CDIGestionPuntos.Estatus=<T>CONCLUIDO<T>
























[Forma.ListaCarpetas]
(Inicio)=CDIGestionPuntos
CDIGestionPuntos=CDIVPuntosMembresia
CDIVPuntosMembresia=CDIVPuntosMembresiaDet
CDIVPuntosMembresiaDet=CDIPuntosMembresia
CDIPuntosMembresia=foto
foto=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Guardar Cambios
Guardar Cambios=Presentacion preliminar
Presentacion preliminar=Imprimir
Imprimir=Documento Eliminar
Documento Eliminar=Navegador (Documentos)
Navegador (Documentos)=(Fin)
