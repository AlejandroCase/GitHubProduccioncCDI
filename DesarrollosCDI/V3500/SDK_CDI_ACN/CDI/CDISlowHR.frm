
[Forma]
Clave=CDISlowHR
Icono=0
Modulos=(Todos)
Nombre=Home Runs
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISlowHR
CarpetaPrincipal=CDISlowHR
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=418
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=444
[CDISlowHR]
Estilo=Hoja
Clave=CDISlowHR
Filtros=S
OtroOrden=S
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISlowHR
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

ListaCamposAValidar=Cte.Nombre
ListaOrden=CDISlowHR.HomeRuns<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=CDISlowHR.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
CarpetaVisible=S
HojaOrdenarColumnas=S

[CDISlowHR.CDISlowHR.clavetorneo]
Carpeta=CDISlowHR
Clave=CDISlowHR.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISlowHR.CDISlowHR.Equipo]
Carpeta=CDISlowHR
Clave=CDISlowHR.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowHR.CDISlowHR.Jugador]
Carpeta=CDISlowHR
Clave=CDISlowHR.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowHR.CDISlowHR.HomeRuns]
Carpeta=CDISlowHR
Clave=CDISlowHR.HomeRuns
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

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

[CDISlowHR.Columnas]
clavetorneo=64
Equipo=64
Jugador=64
HomeRuns=64

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Home Runs
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIslowHR
ListaParametros1=CDISlowHR:CDISlowHR.clavetorneo
ListaParametros=S
Activo=S
Visible=S





NombreEnBoton=S



[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=CDISlowHR
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S


[CDISlowHR.ListaEnCaptura]
(Inicio)=CDISlowHR.clavetorneo
CDISlowHR.clavetorneo=CDISlowHR.Equipo
CDISlowHR.Equipo=CDISlowHR.Jugador
CDISlowHR.Jugador=CDISlowHR.HomeRuns
CDISlowHR.HomeRuns=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=Imprimir
Imprimir=(Fin)
