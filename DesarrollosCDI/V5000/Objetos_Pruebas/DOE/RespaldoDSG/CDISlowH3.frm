
[Forma]
Clave=CDISlowH3
Icono=0
Modulos=(Todos)
Nombre=Hits Triples
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISlowH3
CarpetaPrincipal=CDISlowH3
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=413
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=454
[CDISlowH3]
Estilo=Hoja
Clave=CDISlowH3
Filtros=S
OtroOrden=S
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISlowH3
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
ListaOrden=CDISlowH3.HITS3<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=CDISlowH3.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S

FiltroTodo=S
HojaOrdenarColumnas=S
[CDISlowH3.CDISlowH3.clavetorneo]
Carpeta=CDISlowH3
Clave=CDISlowH3.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISlowH3.CDISlowH3.Equipo]
Carpeta=CDISlowH3
Clave=CDISlowH3.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH3.CDISlowH3.Jugador]
Carpeta=CDISlowH3
Clave=CDISlowH3.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH3.CDISlowH3.HITS3]
Carpeta=CDISlowH3
Clave=CDISlowH3.HITS3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=1
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=CDISlowH3
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[CDISlowH3.Columnas]
clavetorneo=64
Equipo=64
Jugador=64
HITS3=64


[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreEnBoton=S
NombreDesplegar=Hits Triples
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIslowH3
ListaParametros1=CDISlowH3:CDISlowH3.clavetorneo
ListaParametros=S
Activo=S
Visible=S








[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=CDISlowH3
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S


[CDISlowH3.ListaEnCaptura]
(Inicio)=CDISlowH3.clavetorneo
CDISlowH3.clavetorneo=CDISlowH3.Equipo
CDISlowH3.Equipo=CDISlowH3.Jugador
CDISlowH3.Jugador=CDISlowH3.HITS3
CDISlowH3.HITS3=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=Imprimir
Imprimir=(Fin)
