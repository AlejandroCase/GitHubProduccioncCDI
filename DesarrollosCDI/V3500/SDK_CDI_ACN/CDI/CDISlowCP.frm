
[Forma]
Clave=CDISlowCP
Icono=0
Modulos=(Todos)
Nombre=Carreras Producidas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISlowCP
CarpetaPrincipal=CDISlowCP
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=400
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=480
[CDISlowCP]
Estilo=Hoja
Clave=CDISlowCP
Filtros=S
OtroOrden=S
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISlowCP
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
ListaEnCaptura=(Lista)

ListaCamposAValidar=Cte.Nombre
ListaOrden=CDISlowCP.CarrerasProducidas<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=CDISlowCP.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S

[CDISlowCP.CDISlowCP.clavetorneo]
Carpeta=CDISlowCP
Clave=CDISlowCP.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowCP.CDISlowCP.Equipo]
Carpeta=CDISlowCP
Clave=CDISlowCP.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowCP.CDISlowCP.Jugador]
Carpeta=CDISlowCP
Clave=CDISlowCP.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowCP.CDISlowCP.CarrerasProducidas]
Carpeta=CDISlowCP
Clave=CDISlowCP.CarrerasProducidas
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

[CDISlowCP.Columnas]
clavetorneo=64
Equipo=64
Jugador=64
CarrerasProducidas=98

[Acciones.imprimir]
Nombre=imprimir
Boton=4
NombreDesplegar=Carreras Producidas
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIslowCP
ListaParametros1=CDISlowCP:CDISlowCP.clavetorneo
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
Carpeta=CDISlowCP
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S




[CDISlowCP.ListaEnCaptura]
(Inicio)=CDISlowCP.clavetorneo
CDISlowCP.clavetorneo=CDISlowCP.Equipo
CDISlowCP.Equipo=CDISlowCP.Jugador
CDISlowCP.Jugador=CDISlowCP.CarrerasProducidas
CDISlowCP.CarrerasProducidas=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=imprimir
imprimir=(Fin)
