
[Forma]
Clave=CDITorneoResSloTGTVista
Icono=0
Modulos=(Todos)
Nombre=Estadisticas por Vuelta
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDITorneoResSloTGTVista
CarpetaPrincipal=CDITorneoResSloTGTVista
PosicionInicialIzquierda=305
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=755
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDITorneoResSloTGTVista]
Estilo=Hoja
Clave=CDITorneoResSloTGTVista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITorneoResSloTGT
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

CarpetaVisible=S
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
HojaOrdenarColumnas=S
FiltroGeneral=ClaveTorneo=<T>{info.CDIClaveTorneo}<T><BR>and Novuelta={info.CDINoVuelta}
[CDITorneoResSloTGTVista.ClaveTorneo]
Carpeta=CDITorneoResSloTGTVista
Clave=ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDITorneoResSloTGTVista.NoVuelta]
Carpeta=CDITorneoResSloTGTVista
Clave=NoVuelta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTGTVista.Equipo]
Carpeta=CDITorneoResSloTGTVista
Clave=Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDITorneoResSloTGTVista.Jugados]
Carpeta=CDITorneoResSloTGTVista
Clave=Jugados
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTGTVista.Ganados]
Carpeta=CDITorneoResSloTGTVista
Clave=Ganados
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTGTVista.Perdidos]
Carpeta=CDITorneoResSloTGTVista
Clave=Perdidos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTGTVista.Empatados]
Carpeta=CDITorneoResSloTGTVista
Clave=Empatados
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTGTVista.EmpatePtos]
Carpeta=CDITorneoResSloTGTVista
Clave=EmpatePtos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTGTVista.PCT]
Carpeta=CDITorneoResSloTGTVista
Clave=PCT
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTGTVista.JV]
Carpeta=CDITorneoResSloTGTVista
Clave=JV
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTGTVista.Puntos]
Carpeta=CDITorneoResSloTGTVista
Clave=Puntos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTGTVista.Columnas]
ClaveTorneo=65
NoVuelta=64
Equipo=64
Jugados=64
Ganados=64
Perdidos=64
Empatados=64
EmpatePtos=64
PCT=64
JV=64
Puntos=64

[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=CDITorneoResSloTGTVista
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.EStaVuelta]
Nombre=EStaVuelta
Boton=4
NombreEnBoton=S
NombreDesplegar=Estadisticas de Torneo por Vuelta
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=xpCDIEstaTorneoVuelta
Activo=S
Visible=S



EspacioPrevio=S




Antes=S
AntesExpresiones=ASigna(info.CDIClaveTorneo,CDITorneoResSloTGT:ClaveTorneo)<BR>Asigna(Info.CDINoVuelta,CDITorneoResSloTGT:NoVuelta)









[CDITorneoResSloTGTVista.ListaEnCaptura]
(Inicio)=ClaveTorneo
ClaveTorneo=NoVuelta
NoVuelta=Equipo
Equipo=Jugados
Jugados=Ganados
Ganados=Perdidos
Perdidos=Empatados
Empatados=EmpatePtos
EmpatePtos=PCT
PCT=JV
JV=Puntos
Puntos=(Fin)

[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=EStaVuelta
EStaVuelta=(Fin)