
[Forma]
Clave=CDISlowH
Icono=0
Modulos=(Todos)
Nombre=Hits Conectados
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISlowH
CarpetaPrincipal=CDISlowH
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=417
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=446
ListaAcciones=(Lista)
[CDISlowH]
Estilo=Hoja
Clave=CDISlowH
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISlowH
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
ValidarCampos=S

ListaCamposAValidar=Cte.Nombre
FiltroPredefinido=S
FiltroGrupo1=CDISlowH.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
FiltroTodo=S
HojaOrdenarColumnas=S
OtroOrden=S
ListaOrden=CDISlowH.HITS<TAB>(Decendente)
[CDISlowH.CDISlowH.clavetorneo]
Carpeta=CDISlowH
Clave=CDISlowH.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH.CDISlowH.Equipo]
Carpeta=CDISlowH
Clave=CDISlowH.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH.CDISlowH.Jugador]
Carpeta=CDISlowH
Clave=CDISlowH.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH.CDISlowH.HITS]
Carpeta=CDISlowH
Clave=CDISlowH.HITS
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDISlowH.Columnas]
clavetorneo=64
Equipo=64
Jugador=64
HITS=64




[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=CDISlowH
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S


[Acciones.Reporte]
Nombre=Reporte
Boton=4
NombreDesplegar=Hits
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDISlowH
ListaParametros1=CDISlowH:CDISlowH.clavetorneo
ListaParametros=S
Activo=S
Visible=S





Antes=S




















NombreEnBoton=S



EspacioPrevio=S
[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=CDISlowH
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S






[CDISlowH.ListaEnCaptura]
(Inicio)=CDISlowH.clavetorneo
CDISlowH.clavetorneo=CDISlowH.Equipo
CDISlowH.Equipo=CDISlowH.Jugador
CDISlowH.Jugador=CDISlowH.HITS
CDISlowH.HITS=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=Reporte
Reporte=(Fin)
