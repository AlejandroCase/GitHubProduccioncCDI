
[Forma]
Clave=CDIVDeporE1_7
Icono=0
Modulos=(Todos)
Nombre=Tarjetas Acumuladas por encuentro
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIVDeporE1
CarpetaPrincipal=CDIVDeporE1
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Presentacion preliminar
PosicionInicialIzquierda=386
PosicionInicialArriba=103
PosicionInicialAlturaCliente=523
PosicionInicialAncho=522
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
Vista=CDIVDeporE1
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

ListaOrden=(Lista)
FiltroPredefinido=S
FiltroGrupo1=CDIVDeporE1.ClaveTorneo
FiltroGrupo2=CDIVDeporE1.Equipo
FiltroGrupo3=CDIVDeporE1.Fecha
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
CarpetaVisible=S





ListaEnCaptura=(Lista)
FiltroGrupo4=CDIVDeporE1.Jugador
FiltroGeneral=AM1>0 or AM2>0
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
Totalizadores1=Tarjetas
Totalizadores2=suma(CDIVDeporE1:CDIVDeporE1.AM1) +suma(CDIVDeporE1:CDIVDeporE1.AM2)
Totalizadores3=(Cantidades)
Totalizadores=S
TotAlCambiar=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Tarjetas
CarpetaVisible=S

TotCarpetaRenglones=CDIVDeporE1













[(Carpeta Totalizadores).Tarjetas]
Carpeta=(Carpeta Totalizadores)
Clave=Tarjetas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata





[CDIVDeporE1.CDIVDeporE1.ClaveTorneo]
Carpeta=CDIVDeporE1
Clave=CDIVDeporE1.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVDeporE1.CDIVDeporE1.Equipo]
Carpeta=CDIVDeporE1
Clave=CDIVDeporE1.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVDeporE1.CDIVDeporE1.Jugador]
Carpeta=CDIVDeporE1
Clave=CDIVDeporE1.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVDeporE1.CDIVDeporE1.AM1]
Carpeta=CDIVDeporE1
Clave=CDIVDeporE1.AM1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVDeporE1.CDIVDeporE1.AM2]
Carpeta=CDIVDeporE1
Clave=CDIVDeporE1.AM2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







[CDIVDeporE1.Cte.Nombre]
Carpeta=CDIVDeporE1
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





[CDIVDeporE1.ListaEnCaptura]
(Inicio)=CDIVDeporE1.ClaveTorneo
CDIVDeporE1.ClaveTorneo=CDIVDeporE1.Equipo
CDIVDeporE1.Equipo=CDIVDeporE1.Jugador
CDIVDeporE1.Jugador=Cte.Nombre
Cte.Nombre=CDIVDeporE1.AM1
CDIVDeporE1.AM1=CDIVDeporE1.AM2
CDIVDeporE1.AM2=(Fin)

[CDIVDeporE1.ListaOrden]
(Inicio)=CDIVDeporE1.AM2	(Decendente)
CDIVDeporE1.AM2	(Decendente)=CDIVDeporE1.AM1	(Decendente)
CDIVDeporE1.AM1	(Decendente)=(Fin)
