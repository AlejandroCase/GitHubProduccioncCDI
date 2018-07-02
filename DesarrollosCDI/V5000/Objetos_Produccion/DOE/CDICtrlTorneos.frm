[Forma]
Clave=CDICtrlTorneos
Icono=0
Modulos=(Todos)
Nombre=Control Torneos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDICtrlTorneos
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=457
PosicionInicialArriba=126
PosicionInicialAlturaCliente=376
PosicionInicialAncho=499
PosicionSec1=104
DialogoAbrir=S
SinTransacciones=S
BarraAyuda=S
[CDICtrlTorneos]
Estilo=Ficha
Clave=CDICtrlTorneos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICtrlTorneos
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[CDICtrlTorneos.CDICtrlTorneos.Mov]
Carpeta=CDICtrlTorneos
Clave=CDICtrlTorneos.Mov
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=20
ColorFondo=Blanco

[CDICtrlTorneos.CDICtrlTorneos.MovId]
Carpeta=CDICtrlTorneos
Clave=CDICtrlTorneos.MovId
Editar=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[CDICtrlTorneos.CDICtrlTorneos.FechaEmision]
Carpeta=CDICtrlTorneos
Clave=CDICtrlTorneos.FechaEmision
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

Tamano=15

[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S

[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S


[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Visible=S


ActivoCondicion=CDICtrlTorneos:CDICtrlTorneos.Estatus=<T>SINAFECTAR<T>
[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S





ActivoCondicion=CDICtrlTorneos:CDICtrlTorneos.Estatus=<T>SINAFECTAR<T>
[Equipos]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Equipos Participantes
Clave=Equipos
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICtrlTorneosD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDICtrlTorneos
LlaveLocal=CDICtrlTorneosD.IdTorneo
LlaveMaestra=CDICtrlTorneos.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDICtrlTorneosD.Equipo
CarpetaVisible=S

ControlRenglon=S
CampoRenglon=CDICtrlTorneosD.RenglonId
ExpAlRefrescar=ASigna(info.cdiClaveTorneo,CDICtrlTorneos:CDICatTorneos.ClaveTorneo)<BR>ASigna(Info.CDIDeporte,sql(<T>select Deporte from CDICatTorneos where ClaveTorneo=:tC<T>,CDICtrlTorneos:CDICatTorneos.ClaveTorneo))<BR>ASigna(Info.CDIRamaDeporte,sql(<T>select RamaDepor from CDICatTorneos where ClaveTorneo=:tC<T>,CDICtrlTorneos:CDICatTorneos.ClaveTorneo))<BR>ASigna(Info.CDIFuerzaDeporte,sql(<T>select Fuerza from CDICatTorneos where ClaveTorneo=:tC<T>,CDICtrlTorneos:CDICatTorneos.ClaveTorneo))
ExpAntesRefrescar=ASigna(info.cdiClaveTorneo,CDICtrlTorneos:CDICatTorneos.ClaveTorneo)<BR>ASigna(Info.CDIDeporte,sql(<T>select Deporte from CDICatTorneos where ClaveTorneo=:tC<T>,CDICtrlTorneos:CDICatTorneos.ClaveTorneo))<BR>ASigna(Info.CDIRamaDeporte,sql(<T>select RamaDepor from CDICatTorneos where ClaveTorneo=:tC<T>,CDICtrlTorneos:CDICatTorneos.ClaveTorneo))<BR>ASigna(Info.CDIFuerzaDeporte,sql(<T>select Fuerza from CDICatTorneos where ClaveTorneo=:tC<T>,CDICtrlTorneos:CDICatTorneos.ClaveTorneo))
CondicionEdicion=CDICtrlTorneos:CDICtrlTorneos.Estatus=<T>SINAFECTAR<T>
[Equipos.CDICtrlTorneosD.Equipo]
Carpeta=Equipos
Clave=CDICtrlTorneosD.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Equipos.Columnas]
Equipo=165







;[CDICtrlEquipoLista.Columnas]
;Nombre=190
;CapitanSocio=64
;Nombre_1=184
;Deporte=70
;RamaDepor=46
;Fuerza=94

























Clave=64
[ListaTorneos.Columnas]
Nombre=174
Deporte=184
RamaDepor=60
Fuerza=94













[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDICtrlTorneos
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=Movimiento
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
OtroOrden=S
ListaOrden=CDICtrlTorneos.ID<TAB>(Decendente)

PestanaOtroNombre=S
PestanaNombre=Torneos
BusquedaRapidaControles=S
IconosNombre=CDICtrlTorneos:CDICtrlTorneos.Mov+<T> <T>+CDICtrlTorneos:CDICtrlTorneos.MovId
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=CONCLUIDO
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
[(Carpeta Abrir).CDICtrlTorneos.Nombre]
Carpeta=(Carpeta Abrir)
Clave=CDICtrlTorneos.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[(Carpeta Abrir).Columnas]
0=-2
1=89
2=-2
3=-2











[Acciones.Expresion]
Nombre=Expresion
Boton=7
NombreDesplegar=Expresion
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S




































































GuardarAntes=S
Expresion=ProcesarSql(<T>xpCDIAfectarCtrlTorneos :nI<T>,CDICtrlTorneos:CDICtrlTorneos.ID)<BR>ActualizarForma
ActivoCondicion=CDICtrlTorneos:CDICtrlTorneos.Estatus=<T>SINAFECTAR<T>
[CDICtrlTorneos.CDICtrlTorneos.ClaveTorneo]
Carpeta=CDICtrlTorneos
Clave=CDICtrlTorneos.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco




[(Carpeta Abrir).CDICtrlTorneos.ClaveTorneo]
Carpeta=(Carpeta Abrir)
Clave=CDICtrlTorneos.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco











[CDICatTorneosLista.Columnas]
ClaveTorneo=82
Nombre=124
FechaInicio=94
FechaFin=94
Deporte=184
RamaDepor=46
Fuerza=94

























[CDICtrlTorneos.CDICtrlTorneos.Nombre]
Carpeta=CDICtrlTorneos
Clave=CDICtrlTorneos.Nombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDICtrlTorneos.ListaEnCaptura]
(Inicio)=CDICtrlTorneos.Mov
CDICtrlTorneos.Mov=CDICtrlTorneos.MovId
CDICtrlTorneos.MovId=CDICtrlTorneos.FechaEmision
CDICtrlTorneos.FechaEmision=CDICtrlTorneos.ClaveTorneo
CDICtrlTorneos.ClaveTorneo=CDICtrlTorneos.Nombre
CDICtrlTorneos.Nombre=(Fin)


















































































































[CDICtrlEquipoLista.Columnas]
Clave=64
Nombre=190
CapitanSocio=64
Nombre_1=184
Deporte=70
RamaDepor=46
Fuerza=94

























































[Acciones.ControlEquipo]
Nombre=ControlEquipo
Boton=80
NombreEnBoton=S
NombreDesplegar=&Control Equipos y Jugadores
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICtrlEquipo
Activo=S
Visible=S







[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDICtrlTorneos.ClaveTorneo
CDICtrlTorneos.ClaveTorneo=CDICtrlTorneos.Nombre
CDICtrlTorneos.Nombre=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=CONCLUIDO
CONCLUIDO=SINAFECTAR
SINAFECTAR=(Fin)



[Forma.ListaCarpetas]
(Inicio)=CDICtrlTorneos
CDICtrlTorneos=Equipos
Equipos=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=Expresion
Expresion=ControlEquipo
ControlEquipo=(Fin)
