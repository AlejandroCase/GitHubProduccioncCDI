
[Forma]
Clave=CDIVDeporE1_6
Icono=0
Modulos=(Todos)
Nombre=Goleo en Contra por Equipo En Contra
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIVDeporE1
CarpetaPrincipal=CDIVDeporE1
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=396
PosicionInicialArriba=103
PosicionInicialAlturaCliente=523
PosicionInicialAncho=574
Totalizadores=S
PosicionSec1=455
[CDIVDeporE1]
Estilo=Hoja
Clave=CDIVDeporE1
Filtros=S
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVDeporE1_6
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaOrdenarColumnas=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=GolesEnContra<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=ClaveTorneo
FiltroGrupo2=Equipo
FiltroGrupo3=fecha
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
CarpetaVisible=S





FiltroGeneral=GolesEnContra>0
[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[CDIVDeporE1.Columnas]
ClaveTorneo=64
Equipo=64
Jugador=64
Fecha=94
Goles=64

GolesEnContra=81
fecha=94
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
Totalizadores1=Goles en Contra
Totalizadores2=suma(GolesEnContra)
Totalizadores3=(Cantidades)
Totalizadores=S
TotAlCambiar=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Goles en Contra
CarpetaVisible=S

TotCarpetaRenglones=CDIVDeporE1

[CDIVDeporE1.ClaveTorneo]
Carpeta=CDIVDeporE1
Clave=ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVDeporE1.Equipo]
Carpeta=CDIVDeporE1
Clave=Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVDeporE1.fecha]
Carpeta=CDIVDeporE1
Clave=fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVDeporE1.GolesEnContra]
Carpeta=CDIVDeporE1
Clave=GolesEnContra
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[(Carpeta Totalizadores).Goles en Contra]
Carpeta=(Carpeta Totalizadores)
Clave=Goles en Contra
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata






[Acciones.CDIVDeporE1_6]
Nombre=CDIVDeporE1_6
Boton=4
NombreDesplegar=Mejores Defensivas
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIVDeporE1_6
ListaParametros1=CDIVDeporE1_6:ClaveTorneo
ListaParametros=S
Activo=S
Visible=S

NombreEnBoton=S







[CDIVDeporE1.ListaEnCaptura]
(Inicio)=ClaveTorneo
ClaveTorneo=Equipo
Equipo=fecha
fecha=GolesEnContra
GolesEnContra=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=CDIVDeporE1_6
CDIVDeporE1_6=(Fin)
