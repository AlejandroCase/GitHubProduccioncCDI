
[Forma]
Clave=CDISlowSO
Icono=0
Modulos=(Todos)
Nombre=Strikes Out
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISlowSO
CarpetaPrincipal=CDISlowSO
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=459
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=447
[CDISlowSO]
Estilo=Hoja
Clave=CDISlowSO
Filtros=S
OtroOrden=S
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISlowSO
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

ListaCamposAValidar=Cte.Nombre
ListaOrden=CDISlowSO.StrikeOuts<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=CDISlowSO.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
CarpetaVisible=S

[CDISlowSO.CDISlowSO.clavetorneo]
Carpeta=CDISlowSO
Clave=CDISlowSO.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowSO.CDISlowSO.Equipo]
Carpeta=CDISlowSO
Clave=CDISlowSO.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowSO.CDISlowSO.Jugador]
Carpeta=CDISlowSO
Clave=CDISlowSO.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowSO.CDISlowSO.StrikeOuts]
Carpeta=CDISlowSO
Clave=CDISlowSO.StrikeOuts
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

[CDISlowSO.Columnas]
clavetorneo=64
Equipo=64
Jugador=64
StrikeOuts=64

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Strike Outs
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIslowSO
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
Carpeta=CDISlowSO
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S




[CDISlowSO.ListaEnCaptura]
(Inicio)=CDISlowSO.clavetorneo
CDISlowSO.clavetorneo=CDISlowSO.Equipo
CDISlowSO.Equipo=CDISlowSO.Jugador
CDISlowSO.Jugador=CDISlowSO.StrikeOuts
CDISlowSO.StrikeOuts=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=Imprimir
Imprimir=(Fin)
