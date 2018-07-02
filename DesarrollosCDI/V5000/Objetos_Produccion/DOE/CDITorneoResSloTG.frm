
[Forma]
Clave=CDITorneoResSloTG
Icono=0
Modulos=(Todos)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDITorneoResSloTG
CarpetaPrincipal=CDITorneoResSloTG
PosicionInicialIzquierda=164
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=1037
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Nombre=Estadisticas de Torneo POr Vuelta
ListaAcciones=vuelta
[CDITorneoResSloTG]
Estilo=Hoja
Clave=CDITorneoResSloTG
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITorneoResSloTGV
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

Filtros=S

FiltroPredefinido=S
FiltroGrupo1=CDITorneoResSloTGV.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S








HojaOrdenarColumnas=S
[CDITorneoResSloTG.Columnas]
ClaveTorneo=65
NoVuelta=64
Equipo=64
Jugo=64
Gano=64
Perdio=64
Empate=64
Forfeit=64






clavetorneo=65
Nombre=124
FechaInicio=94
FechaFin=94
Deporte=184
RamaDepor=46
Fuerza=94
NoJornadas=68
NoVueltas=64


[CDITorneoResSloTG.CDITorneoResSloTGV.clavetorneo]
Carpeta=CDITorneoResSloTG
Clave=CDITorneoResSloTGV.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDITorneoResSloTG.CDICatTorneos.Nombre]
Carpeta=CDITorneoResSloTG
Clave=CDICatTorneos.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDITorneoResSloTG.CDICatTorneos.FechaInicio]
Carpeta=CDITorneoResSloTG
Clave=CDICatTorneos.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTG.CDICatTorneos.FechaFin]
Carpeta=CDITorneoResSloTG
Clave=CDICatTorneos.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTG.CDICatTorneos.Deporte]
Carpeta=CDITorneoResSloTG
Clave=CDICatTorneos.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDITorneoResSloTG.CDICatTorneos.RamaDepor]
Carpeta=CDITorneoResSloTG
Clave=CDICatTorneos.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDITorneoResSloTG.CDICatTorneos.Fuerza]
Carpeta=CDITorneoResSloTG
Clave=CDICatTorneos.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDITorneoResSloTG.CDICatTorneos.NoJornadas]
Carpeta=CDITorneoResSloTG
Clave=CDICatTorneos.NoJornadas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTG.CDICatTorneos.NoVueltas]
Carpeta=CDITorneoResSloTG
Clave=CDICatTorneos.NoVueltas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=(Fin)

[Acciones.vuelta]
Nombre=vuelta
Boton=59
NombreEnBoton=S
NombreDesplegar=Estadistica por Vuelta de Torneo
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDITorneoResSloTGTVista
Activo=S
Antes=S
Visible=S

AntesExpresiones=asigna(Info.CDIClaveTorneo,CDITorneoResSloTGV:CDITorneoResSloTGV.clavetorneo)<BR>ASigna(Info.CDINoVuelta,CDITorneoResSloTGV:CDITorneoResSloTGV.novuelta)




[CDITorneoResSloTG.ListaEnCaptura]
(Inicio)=CDITorneoResSloTGV.clavetorneo
CDITorneoResSloTGV.clavetorneo=CDICatTorneos.Nombre
CDICatTorneos.Nombre=CDICatTorneos.FechaInicio
CDICatTorneos.FechaInicio=CDICatTorneos.FechaFin
CDICatTorneos.FechaFin=CDICatTorneos.Deporte
CDICatTorneos.Deporte=CDICatTorneos.RamaDepor
CDICatTorneos.RamaDepor=CDICatTorneos.Fuerza
CDICatTorneos.Fuerza=CDICatTorneos.NoJornadas
CDICatTorneos.NoJornadas=CDICatTorneos.NoVueltas
CDICatTorneos.NoVueltas=(Fin)
