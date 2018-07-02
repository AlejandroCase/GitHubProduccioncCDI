
[Forma]
Clave=CDIVDeporE1_14
Icono=0
Modulos=(Todos)
Nombre=Expulsiones por Equipo (Pag. Internet Expulsiones por Equipo)
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
PosicionInicialIzquierda=443
PosicionInicialArriba=103
PosicionInicialAlturaCliente=523
PosicionInicialAncho=479
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
Vista=CDIVDeporE1_14
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaOrdenarColumnas=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco

ListaOrden=Expulsion<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=ClaveTorneo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S





ListaEnCaptura=(Lista)
FiltroGeneral=Expulsion>0
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
NoVuelta=64
NoJornada=64
jugador=64
Tarjetas=64
AM1=64
AM2=64
Expulsion=64
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
Totalizadores1=Expulsiones
Totalizadores2=suma(CDIVDeporE1_14:Expulsion)
Totalizadores3=(Cantidades)
Totalizadores=S
TotAlCambiar=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S

TotCarpetaRenglones=CDIVDeporE1














ListaEnCaptura=Expulsiones
[CDIVDeporE1.ListaOrden]
(Inicio)=CDIVDeporE1.AM2	(Acendente)
CDIVDeporE1.AM2	(Acendente)=CDIVDeporE1.AM1	(Acendente)
CDIVDeporE1.AM1	(Acendente)=(Fin)


[CDIVDeporE1.ClaveTorneo]
Carpeta=CDIVDeporE1
Clave=ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
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



[CDIVDeporE1.ListaCamposAValidar]
(Inicio)=ClaveTorneo
ClaveTorneo=Equipo
Equipo=fecha
fecha=Tarjetas
Tarjetas=(Fin)








[CDIVDeporE1.Expulsion]
Carpeta=CDIVDeporE1
Clave=Expulsion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco














[(Carpeta Totalizadores).Expulsiones]
Carpeta=(Carpeta Totalizadores)
Clave=Expulsiones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata






[Acciones.ExpulsionesEQ]
Nombre=ExpulsionesEQ
Boton=4
NombreEnBoton=S
NombreDesplegar=Expulsiones por Equipo
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIVDeporE1_14
ListaParametros=S
Activo=S
Visible=S



EspacioPrevio=S





[CDIVDeporE1.ListaEnCaptura]
(Inicio)=ClaveTorneo
ClaveTorneo=Equipo
Equipo=Expulsion
Expulsion=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=ExpulsionesEQ
ExpulsionesEQ=(Fin)
