[Forma]
Clave=CDIVPuntosMembresiacopia
Icono=0
Modulos=(Todos)
Nombre=Gestión Puntos CDI
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
ListaCarpetas=(Lista)
CarpetaPrincipal=CDIGestionPuntos
PosicionInicialIzquierda=333
PosicionInicialArriba=131
PosicionInicialAlturaCliente=468
PosicionInicialAncho=699
PosicionSec1=215
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionCol1=510
PosicionSec2=571
ListaAcciones=(Lista)
DialogoAbrir=S
PosicionCol2=81
BarraAyuda=S
BarraAyudaBold=S
SinCondicionDespliege=S
SinTransacciones=S

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
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Movimientos
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
ListaOrden=CDIVPuntosMembresia.FechaEmision<TAB>(Decendente)
FiltroRespetar=S
ExpAntesRefrescar=asigna(Info.cdimembresia,CDIGestionPuntos:CDIGestionPuntos.Membresia)
ExpAlRefrescar=asigna(Info.cdimembresia,CDIGestionPuntos:CDIGestionPuntos.Membresia)

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

[CDIVPuntosMembresia.CDIVPuntosMembresia.Cantidad]
Carpeta=CDIVPuntosMembresia
Clave=CDIVPuntosMembresia.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPuntosMembresia.Columnas]
Mov=71
movid=69
FechaEmision=73
Estatus=94
Cliente=64
Articulo=124
Cantidad=64

[CDIVPuntosMembresiaDet]
Estilo=Hoja
Pestana=S
Clave=CDIVPuntosMembresiaDet
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
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
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=Detalle Actual

CondicionVisible=CDIGestionPuntos:CDIGestionPuntos.Estatus=<T>SINAFECTAR<T>
[CDIVPuntosMembresiaDet.CDIPuntosMembresia.Membresia]
Carpeta=CDIVPuntosMembresiaDet
Clave=CDIPuntosMembresia.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

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
ColorFondo=Rojo

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

[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=
Totalizadores2=
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Negro
CarpetaVisible=S
ConFuenteEspecial=S

[Acciones.Movimientos]
Nombre=Movimientos
Boton=0
NombreDesplegar=Movimientos
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
Expresion=ASigna(info.cliente,CDIVPuntosMembresia:CDIVPuntosMembresia.Cliente)<BR>ASigna(Info.Id,CDIVPuntosMembresia:CDIVPuntosMembresia.IdOC)<BR>Asigna(info.Numero,CDIGestionPuntos:CDIGestionPuntos.id)

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
Tipo=90
Mov=80
Movid=87
Membresia=64

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

[(Carpeta Abrir).CDIGestionPuntos.MovId]
Carpeta=(Carpeta Abrir)
Clave=CDIGestionPuntos.MovId
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
1=40
2=114
3=65
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
PestanaNombre=Gestión

[CDIGestionPuntos.CDIGestionPuntos.Mov]
Carpeta=CDIGestionPuntos
Clave=CDIGestionPuntos.Mov
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[CDIGestionPuntos.CDIGestionPuntos.MovId]
Carpeta=CDIGestionPuntos
Clave=CDIGestionPuntos.MovId
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco
Pegado=S

[CDIGestionPuntos.CDIGestionPuntos.Cliente]
Carpeta=CDIGestionPuntos
Clave=CDIGestionPuntos.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

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
Editar=S
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
Tamano=15

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

[CDIGestionPuntos.CteNombre]
Carpeta=CDIGestionPuntos
Clave=CteNombre
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Blanco

[CDIGestionPuntos.SocioNombre]
Carpeta=CDIGestionPuntos
Clave=SocioNombre
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Blanco

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
Zona=B2
Vista=CDIPuntosMembresiaMov
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
[CDIPuntosMembresia.CDIPuntosMembresiaMov.Membresia]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresiaMov.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

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

[Acciones.Movimientos.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=MovsPuntos
MovsPuntos=Actualizar Forma
Actualizar Forma=(Fin)


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

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIGestionPuntos.id
CDIGestionPuntos.id=CDIGestionPuntos.Mov
CDIGestionPuntos.Mov=CDIGestionPuntos.MovId
CDIGestionPuntos.MovId=CDIGestionPuntos.FechaEmision
CDIGestionPuntos.FechaEmision=CDIGestionPuntos.Estatus
CDIGestionPuntos.Estatus=CDIGestionPuntos.usuario
CDIGestionPuntos.usuario=CDIGestionPuntos.Cliente
CDIGestionPuntos.Cliente=CDIGestionPuntos.Socio
CDIGestionPuntos.Socio=CDIGestionPuntos.Membresia
CDIGestionPuntos.Membresia=(Fin)

[CDIPuntosMembresia.ListaEnCaptura]
(Inicio)=CDIPuntosMembresiaMov.Mov
CDIPuntosMembresiaMov.Mov=CDIPuntosMembresiaMov.Movid
CDIPuntosMembresiaMov.Movid=CDIPuntosMembresiaMov.Membresia
CDIPuntosMembresiaMov.Membresia=CDIPuntosMembresiaMov.Socio
CDIPuntosMembresiaMov.Socio=CDIPuntosMembresiaMov.Cantidad
CDIPuntosMembresiaMov.Cantidad=(Fin)

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

[CDIVPuntosMembresia.ListaEnCaptura]
(Inicio)=CDIVPuntosMembresia.Mov
CDIVPuntosMembresia.Mov=CDIVPuntosMembresia.movid
CDIVPuntosMembresia.movid=CDIVPuntosMembresia.FechaEmision
CDIVPuntosMembresia.FechaEmision=CDIVPuntosMembresia.Estatus
CDIVPuntosMembresia.Estatus=CDIVPuntosMembresia.Cliente
CDIVPuntosMembresia.Cliente=CDIVPuntosMembresia.Articulo
CDIVPuntosMembresia.Articulo=CDIVPuntosMembresia.Cantidad
CDIVPuntosMembresia.Cantidad=(Fin)

[CDIVPuntosMembresiaDet.ListaEnCaptura]
(Inicio)=CDIPuntosMembresia.Membresia
CDIPuntosMembresia.Membresia=CDIPuntosMembresia.Socio
CDIPuntosMembresia.Socio=CDIPuntosMembresia.Cantidad
CDIPuntosMembresia.Cantidad=CDIPuntosMembresia.Consumo
CDIPuntosMembresia.Consumo=Disponible
Disponible=CDIPuntosMembresia.Tipo
CDIPuntosMembresia.Tipo=CDIPuntosMembresia.Estatus
CDIPuntosMembresia.Estatus=(Fin)

[CDIGestionPuntos.ListaEnCaptura]
(Inicio)=CDIGestionPuntos.Mov
CDIGestionPuntos.Mov=CDIGestionPuntos.MovId
CDIGestionPuntos.MovId=CDIGestionPuntos.FechaEmision
CDIGestionPuntos.FechaEmision=CDIGestionPuntos.Cliente
CDIGestionPuntos.Cliente=CteNombre
CteNombre=CDIGestionPuntos.Socio
CDIGestionPuntos.Socio=SocioNombre
SocioNombre=CDIGestionPuntos.Membresia
CDIGestionPuntos.Membresia=(Fin)

[Forma.ListaCarpetas]
(Inicio)=CDIGestionPuntos
CDIGestionPuntos=CDIVPuntosMembresia
CDIVPuntosMembresia=CDIVPuntosMembresiaDet
CDIVPuntosMembresiaDet=CDIPuntosMembresia
CDIPuntosMembresia=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Abrir
Documento Abrir=Documento Nuevo
Documento Nuevo=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=Navegador (Documentos)
Navegador (Documentos)=(Fin)
