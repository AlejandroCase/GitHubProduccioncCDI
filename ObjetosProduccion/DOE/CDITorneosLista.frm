
[Forma]
Clave=CDITorneosLista
Icono=0
Modulos=(Todos)
Nombre=Lista Torneos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=ListaTorneos
CarpetaPrincipal=ListaTorneos
PosicionInicialIzquierda=332
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=771
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar/Aceptar
[ListaTorneos]
Estilo=Hoja
Clave=ListaTorneos
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
HojaVistaOmision=Autom�tica
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
FiltroTipo=M�ltiple (por Grupos)
FiltroTodo=S
[ListaTorneos.Columnas]
Nombre=174
Deporte=184
RamaDepor=60
Fuerza=94




ClaveTorneo=65
[ListaTorneos.CDICatTorneos.Nombre]
Carpeta=ListaTorneos
Clave=CDICatTorneos.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ListaTorneos.CDICatTorneos.Deporte]
Carpeta=ListaTorneos
Clave=CDICatTorneos.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[ListaTorneos.CDICatTorneos.RamaDepor]
Carpeta=ListaTorneos
Clave=CDICatTorneos.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[ListaTorneos.CDICatTorneos.Fuerza]
Carpeta=ListaTorneos
Clave=CDICatTorneos.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco












[Acciones.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[ListaTorneos.ListaEnCaptura]
(Inicio)=CDICatTorneos.ClaveTorneo
CDICatTorneos.ClaveTorneo=CDICatTorneos.Nombre
CDICatTorneos.Nombre=CDICatTorneos.Deporte
CDICatTorneos.Deporte=CDICatTorneos.RamaDepor
CDICatTorneos.RamaDepor=CDICatTorneos.Fuerza
CDICatTorneos.Fuerza=(Fin)

[ListaTorneos.CDICatTorneos.ClaveTorneo]
Carpeta=ListaTorneos
Clave=CDICatTorneos.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
