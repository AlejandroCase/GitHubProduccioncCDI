
[Forma]
Clave=CDISlowCA
Icono=0
Modulos=(Todos)
Nombre=Carreras Anotadas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISlowCA
CarpetaPrincipal=CDISlowCA
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=445
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=475
[CDISlowCA]
Estilo=Hoja
Clave=CDISlowCA
Filtros=S
OtroOrden=S
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISlowCA
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
ListaOrden=CDISlowCA.CarrerasAnotadas<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=CDISlowCA.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
HojaOrdenarColumnas=S

[CDISlowCA.CDISlowCA.clavetorneo]
Carpeta=CDISlowCA
Clave=CDISlowCA.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISlowCA.CDISlowCA.Equipo]
Carpeta=CDISlowCA
Clave=CDISlowCA.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowCA.CDISlowCA.Jugador]
Carpeta=CDISlowCA
Clave=CDISlowCA.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowCA.CDISlowCA.CarrerasAnotadas]
Carpeta=CDISlowCA
Clave=CDISlowCA.CarrerasAnotadas
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

[CDISlowCA.Columnas]
clavetorneo=64
Equipo=64
Jugador=64
CarrerasAnotadas=92

[Acciones.imprimir]
Nombre=imprimir
Boton=4
NombreDesplegar=Carreras Anotadas
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIslowCA
ListaParametros1=CDISlowCA:CDISlowCA.clavetorneo
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
Carpeta=CDISlowCA
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S




[CDISlowCA.ListaEnCaptura]
(Inicio)=CDISlowCA.clavetorneo
CDISlowCA.clavetorneo=CDISlowCA.Equipo
CDISlowCA.Equipo=CDISlowCA.Jugador
CDISlowCA.Jugador=CDISlowCA.CarrerasAnotadas
CDISlowCA.CarrerasAnotadas=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=imprimir
imprimir=(Fin)
