
[Forma]
Clave=CDICtrlJornadas
Icono=0
Modulos=(Todos)
Nombre=Control Jornadas Torneo
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDITorneoJornada
PosicionInicialIzquierda=319
PosicionInicialArriba=74
PosicionInicialAlturaCliente=582
PosicionInicialAncho=727
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionSec1=189
DialogoAbrir=S
BarraAyuda=S
BarraAyudaBold=S
SinTransacciones=S
[CDITorneoJornada]
Estilo=Ficha
Clave=CDITorneoJornada
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITorneoJornada
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
PermiteEditar=S

ControlRenglon=S
CampoRenglon=CDITorneoJornada.RenglonId

ExpAlRefrescar=asigna(Info.CDIClaveTorneo,CDITorneoJornada:CDITorneoJornada.ClaveTorneo)<BR>ASigna(Info.CDIDeporte,sql(<T>select Deporte from CDICatTorneos where ClaveTorneo=:tC<T>,CDITorneoJornada:CDITorneoJornada.ClaveTorneo))<BR>ASigna(Info.CDIRamaDeporte,sql(<T>select RamaDepor from CDICatTorneos where ClaveTorneo=:tC<T>,CDITorneoJornada:CDITorneoJornada.ClaveTorneo))<BR>ASigna(Info.CDIFuerzaDeporte,sql(<T>select Fuerza from CDICatTorneos where ClaveTorneo=:tC<T>,CDITorneoJornada:CDITorneoJornada.ClaveTorneo))
[CDITorneoJornada.CDITorneoJornada.NoJornada]
Carpeta=CDITorneoJornada
Clave=CDITorneoJornada.NoJornada
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoJornada.CDITorneoJornada.TipoJornada]
Carpeta=CDITorneoJornada
Clave=CDITorneoJornada.TipoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDITorneoJornada.CDITorneoJornada.FechaEmision]
Carpeta=CDITorneoJornada
Clave=CDITorneoJornada.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDITorneoJornada.CDITorneoJornada.FechaInicio]
Carpeta=CDITorneoJornada
Clave=CDITorneoJornada.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDITorneoJornada.CDITorneoJornada.FechaFin]
Carpeta=CDITorneoJornada
Clave=CDITorneoJornada.FechaFin
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
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
Activo=S
Visible=S


[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S








[CDITorneoJornadaD]
Estilo=Hoja
Clave=CDITorneoJornadaD
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDITorneoJornadaD
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

Detalle=S
VistaMaestra=CDITorneoJornada
LlaveLocal=CDITorneoJornadaD.Id
ControlRenglon=S
CampoRenglon=CDITorneoJornadaD.RenglonId
ControlRenglonID=S
LlaveMaestra=CDITorneoJornada.id
ExpAntesRefrescar=asigna(Info.CDIClaveTorneo,CDITorneoJornada:CDITorneoJornada.ClaveTorneo)<BR>ASigna(Info.CDIDeporte,sql(<T>select Deporte from CDICatTorneos where ClaveTorneo=:tC<T>,CDITorneoJornada:CDITorneoJornada.ClaveTorneo))<BR>ASigna(Info.CDIRamaDeporte,sql(<T>select RamaDepor from CDICatTorneos where ClaveTorneo=:tC<T>,CDITorneoJornada:CDITorneoJornada.ClaveTorneo))<BR>ASigna(Info.CDIFuerzaDeporte,sql(<T>select Fuerza from CDICatTorneos where ClaveTorneo=:tC<T>,CDITorneoJornada:CDITorneoJornada.ClaveTorneo))
HojaConfirmarEliminar=S
[CDITorneoJornadaD.CDITorneoJornadaD.FechaPartido]
Carpeta=CDITorneoJornadaD
Clave=CDITorneoJornadaD.FechaPartido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoJornadaD.CDITorneoJornadaD.Horario]
Carpeta=CDITorneoJornadaD
Clave=CDITorneoJornadaD.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDITorneoJornadaD.CDITorneoJornadaD.Sede]
Carpeta=CDITorneoJornadaD
Clave=CDITorneoJornadaD.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDITorneoJornadaD.CDITorneoJornadaD.EquipoLocal]
Carpeta=CDITorneoJornadaD
Clave=CDITorneoJornadaD.EquipoLocal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDITorneoJornadaD.CDITorneoJornadaD.EquipoVisitante]
Carpeta=CDITorneoJornadaD
Clave=CDITorneoJornadaD.EquipoVisitante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDITorneoJornadaD.Columnas]
FechaPartido=94
Horario=39
Sede=124
EquipoLocal=126
EquipoVisitante=119


IDTorneo=64
MarcadorLocal=76
MarcadorVisitante=93
[CDICamposDep.Columnas]
Campo=184







;[CDICtrlEquipoLista.Columnas]
;Nombre=190
;CapitanSocio=64
;Nombre_1=184
;Deporte=70
;RamaDepor=46
;Fuerza=94





Clave=64
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDITorneoJornada
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=Clave
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
OtroOrden=S

ListaOrden=CDITorneoJornada.FechaEmision<TAB>(Decendente)
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CDICatTorneos.Deporte
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
PestanaOtroNombre=S
PestanaNombre=Jornadas
FiltroGrupo2=CDITorneoJornada.ClaveTorneo
FiltroGrupo3=CDITorneoJornada.NoVuelta
FiltroGrupo4=CDITorneoJornada.NoJornada
RefrescarAlEntrar=S
IconosNombre=CDITorneoJornada:CDITorneoJornada.ClaveTorneo
IconosEstiloFijo=S
[(Carpeta Abrir).CDITorneoJornada.NoJornada]
Carpeta=(Carpeta Abrir)
Clave=CDITorneoJornada.NoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDITorneoJornada.TipoJornada]
Carpeta=(Carpeta Abrir)
Clave=CDITorneoJornada.TipoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).CDITorneoJornada.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDITorneoJornada.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDITorneoJornada.FechaInicio]
Carpeta=(Carpeta Abrir)
Clave=CDITorneoJornada.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDITorneoJornada.FechaFin]
Carpeta=(Carpeta Abrir)
Clave=CDITorneoJornada.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[(Carpeta Abrir).Columnas]
0=-2
1=123
2=73
3=-2
4=-2
5=69




6=-2
7=-2
8=-2
[CDITorneoJornada.CDITorneoJornada.ClaveTorneo]
Carpeta=CDITorneoJornada
Clave=CDITorneoJornada.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco



[CDICatTorneosLista.Columnas]
ClaveTorneo=82
Nombre=124
FechaInicio=94
FechaFin=94
Deporte=184
RamaDepor=46
Fuerza=94








[CDITorneoJornada.NombreTorneo]
Carpeta=CDITorneoJornada
Clave=NombreTorneo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco










[CDITorneoJornadaD.LlaveLocal]
(Inicio)=CDITorneoJornadaD.IDTorneo
CDITorneoJornadaD.IDTorneo=CDITorneoJornadaD.NoJornada
CDITorneoJornadaD.NoJornada=(Fin)

[CDITorneoJornadaD.LlaveMaestra]
(Inicio)=CDITorneoJornada.IdTorneo
CDITorneoJornada.IdTorneo=CDITorneoJornada.NoJornada
CDITorneoJornada.NoJornada=(Fin)



[(Carpeta Abrir).NombreTorneo]
Carpeta=(Carpeta Abrir)
Clave=NombreTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
















[CDITorneoJornada.CDITorneoJornada.NoVuelta]
Carpeta=CDITorneoJornada
Clave=CDITorneoJornada.NoVuelta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Acciones.Afectar]
Nombre=Afectar
Boton=7
NombreDesplegar=Afectar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S




















[CDITorneoJornada.CDITorneoJornada.EquipoReprograma]
Carpeta=CDITorneoJornada
Clave=CDITorneoJornada.EquipoReprograma
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
















[(Carpeta Abrir).CDITorneoJornada.NoVuelta]
Carpeta=(Carpeta Abrir)
Clave=CDITorneoJornada.NoVuelta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






























[(Carpeta Abrir).CDICatTorneos.Deporte]
Carpeta=(Carpeta Abrir)
Clave=CDICatTorneos.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco












[CDICtrlEquipoLista.Columnas]
Clave=64
Nombre=190
CapitanSocio=64
Nombre_1=184
Deporte=70
RamaDepor=46
Fuerza=94










[CDITorneoJornada.ListaEnCaptura]
(Inicio)=CDITorneoJornada.FechaEmision
CDITorneoJornada.FechaEmision=CDITorneoJornada.ClaveTorneo
CDITorneoJornada.ClaveTorneo=NombreTorneo
NombreTorneo=CDITorneoJornada.NoVuelta
CDITorneoJornada.NoVuelta=CDITorneoJornada.NoJornada
CDITorneoJornada.NoJornada=CDITorneoJornada.TipoJornada
CDITorneoJornada.TipoJornada=CDITorneoJornada.EquipoReprograma
CDITorneoJornada.EquipoReprograma=CDITorneoJornada.FechaInicio
CDITorneoJornada.FechaInicio=CDITorneoJornada.FechaFin
CDITorneoJornada.FechaFin=(Fin)















[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDICatTorneos.Deporte
CDICatTorneos.Deporte=NombreTorneo
NombreTorneo=CDITorneoJornada.NoJornada
CDITorneoJornada.NoJornada=CDITorneoJornada.NoVuelta
CDITorneoJornada.NoVuelta=CDITorneoJornada.TipoJornada
CDITorneoJornada.TipoJornada=CDITorneoJornada.FechaEmision
CDITorneoJornada.FechaEmision=CDITorneoJornada.FechaInicio
CDITorneoJornada.FechaInicio=CDITorneoJornada.FechaFin
CDITorneoJornada.FechaFin=(Fin)




[CDITorneoJornadaD.ListaEnCaptura]
(Inicio)=CDITorneoJornadaD.FechaPartido
CDITorneoJornadaD.FechaPartido=CDITorneoJornadaD.Horario
CDITorneoJornadaD.Horario=CDITorneoJornadaD.Sede
CDITorneoJornadaD.Sede=CDITorneoJornadaD.EquipoLocal
CDITorneoJornadaD.EquipoLocal=CDITorneoJornadaD.MarcadorLocal
CDITorneoJornadaD.MarcadorLocal=CDITorneoJornadaD.EquipoVisitante
CDITorneoJornadaD.EquipoVisitante=CDITorneoJornadaD.MarcadorVisitante
CDITorneoJornadaD.MarcadorVisitante=(Fin)

[CDITorneoJornadaD.CDITorneoJornadaD.MarcadorLocal]
Carpeta=CDITorneoJornadaD
Clave=CDITorneoJornadaD.MarcadorLocal
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoJornadaD.CDITorneoJornadaD.MarcadorVisitante]
Carpeta=CDITorneoJornadaD
Clave=CDITorneoJornadaD.MarcadorVisitante
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[Acciones.Excel]
Nombre=Excel
Boton=115
NombreEnBoton=S
NombreDesplegar=Enviar Recibir Excel
EnBarraHerramientas=S
Carpeta=CDITorneoJornadaD
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Activo=S
Visible=S
EspacioPrevio=S












































[Forma.ListaCarpetas]
(Inicio)=CDITorneoJornada
CDITorneoJornada=CDITorneoJornadaD
CDITorneoJornadaD=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=Afectar
Afectar=Excel
Excel=(Fin)
