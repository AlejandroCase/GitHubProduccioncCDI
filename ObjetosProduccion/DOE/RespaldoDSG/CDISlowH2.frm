
[Forma]
Clave=CDISlowH2
Icono=0
Modulos=(Todos)
Nombre=Hits Dobles
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISlowH2
CarpetaPrincipal=CDISlowH2
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=417
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=445
[CDISlowH2]
Estilo=Hoja
Clave=CDISlowH2
Filtros=S
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISlowH2
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
FiltroPredefinido=S
FiltroGrupo1=CDISlowH2.clavetorneo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
CarpetaVisible=S
HojaOrdenarColumnas=S

OtroOrden=S
ListaOrden=CDISlowH2.HITS2<TAB>(Decendente)
[CDISlowH2.CDISlowH2.clavetorneo]
Carpeta=CDISlowH2
Clave=CDISlowH2.clavetorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISlowH2.CDISlowH2.Equipo]
Carpeta=CDISlowH2
Clave=CDISlowH2.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH2.CDISlowH2.Jugador]
Carpeta=CDISlowH2
Clave=CDISlowH2.Jugador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISlowH2.CDISlowH2.HITS2]
Carpeta=CDISlowH2
Clave=CDISlowH2.HITS2
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

[CDISlowH2.Columnas]
clavetorneo=64
Equipo=64
Jugador=64
HITS2=64




[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIslowh2
ListaParametros1=CDISlowH2:CDISlowH2.clavetorneo
ListaParametros=S
Activo=S
Visible=S



NombreDesplegar=Hits Dobles
EspacioPrevio=S






NombreEnBoton=S



[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=CDISlowH2
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S


[CDISlowH2.ListaEnCaptura]
(Inicio)=CDISlowH2.clavetorneo
CDISlowH2.clavetorneo=CDISlowH2.Equipo
CDISlowH2.Equipo=CDISlowH2.Jugador
CDISlowH2.Jugador=CDISlowH2.HITS2
CDISlowH2.HITS2=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=Imprimir
Imprimir=(Fin)
