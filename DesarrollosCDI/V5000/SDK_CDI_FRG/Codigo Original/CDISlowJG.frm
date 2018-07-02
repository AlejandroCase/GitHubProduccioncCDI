
[Forma]
Clave=CDISlowJG
Icono=0
Modulos=(Todos)
Nombre=Juegos Ganados
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISlowJG
CarpetaPrincipal=CDISlowJG
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=408
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=463
[CDISlowJG]
Estilo=Hoja
Clave=CDISlowJG
Filtros=S
OtroOrden=S
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISlowJG
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

ListaCamposAValidar=Cte.Nombre
ListaOrden=CDISlowJG.JuegosGanados<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=CDISlowJG.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
HojaOrdenarColumnas=S

[CDISlowJG.CDISlowJG.clavetorneo]
Carpeta=CDISlowJG
Clave=CDISlowJG.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowJG.CDISlowJG.Equipo]
Carpeta=CDISlowJG
Clave=CDISlowJG.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowJG.CDISlowJG.Jugador]
Carpeta=CDISlowJG
Clave=CDISlowJG.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowJG.CDISlowJG.JuegosGanados]
Carpeta=CDISlowJG
Clave=CDISlowJG.JuegosGanados
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

[CDISlowJG.Columnas]
clavetorneo=64
Equipo=64
Jugador=64
JuegosGanados=80

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Juegos Ganados
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIslowJG
ListaParametros1=CDISlowJG:CDISlowJG.clavetorneo
ListaParametros=S
Activo=S
Visible=S






NombreEnBoton=S
[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=CDISlowJG
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S




[CDISlowJG.ListaEnCaptura]
(Inicio)=CDISlowJG.clavetorneo
CDISlowJG.clavetorneo=CDISlowJG.Equipo
CDISlowJG.Equipo=CDISlowJG.Jugador
CDISlowJG.Jugador=CDISlowJG.JuegosGanados
CDISlowJG.JuegosGanados=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=Imprimir
Imprimir=(Fin)
