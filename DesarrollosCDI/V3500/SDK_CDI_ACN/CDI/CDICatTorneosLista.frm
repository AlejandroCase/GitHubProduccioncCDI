
[Forma]
Clave=CDICatTorneosLista
Icono=0
Modulos=(Todos)
Nombre=Catalogo de Torneos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICatTorneosLista
CarpetaPrincipal=CDICatTorneosLista
PosicionInicialIzquierda=301
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=764
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=ASignar
[CDICatTorneosLista]
Estilo=Hoja
Clave=CDICatTorneosLista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICatTorneos
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
FiltroGrupo1=CDICatTorneos.Deporte
FiltroGrupo2=CDICatTorneos.RamaDepor
FiltroGrupo3=CDICatTorneos.Fuerza
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
[CDICatTorneosLista.CDICatTorneos.ClaveTorneo]
Carpeta=CDICatTorneosLista
Clave=CDICatTorneos.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICatTorneosLista.CDICatTorneos.Nombre]
Carpeta=CDICatTorneosLista
Clave=CDICatTorneos.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICatTorneosLista.CDICatTorneos.FechaInicio]
Carpeta=CDICatTorneosLista
Clave=CDICatTorneos.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICatTorneosLista.CDICatTorneos.FechaFin]
Carpeta=CDICatTorneosLista
Clave=CDICatTorneos.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICatTorneosLista.CDICatTorneos.Deporte]
Carpeta=CDICatTorneosLista
Clave=CDICatTorneos.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDICatTorneosLista.CDICatTorneos.RamaDepor]
Carpeta=CDICatTorneosLista
Clave=CDICatTorneos.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDICatTorneosLista.CDICatTorneos.Fuerza]
Carpeta=CDICatTorneosLista
Clave=CDICatTorneos.Fuerza
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

[Acciones.ASignar]
Nombre=ASignar
Boton=23
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S



NombreEnBoton=S
[CDICatTorneosLista.ListaEnCaptura]
(Inicio)=CDICatTorneos.ClaveTorneo
CDICatTorneos.ClaveTorneo=CDICatTorneos.Nombre
CDICatTorneos.Nombre=CDICatTorneos.FechaInicio
CDICatTorneos.FechaInicio=CDICatTorneos.FechaFin
CDICatTorneos.FechaFin=CDICatTorneos.Deporte
CDICatTorneos.Deporte=CDICatTorneos.RamaDepor
CDICatTorneos.RamaDepor=CDICatTorneos.Fuerza
CDICatTorneos.Fuerza=(Fin)
