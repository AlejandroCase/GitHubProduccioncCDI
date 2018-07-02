
[Forma]
Clave=CDIListadoForfeitsSlo
Icono=0
Modulos=(Todos)
Nombre=Listado ForFeits
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIListadoForfeitsSlo
CarpetaPrincipal=CDIListadoForfeitsSlo
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=363
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=639
[CDIListadoForfeitsSlo]
Estilo=Hoja
Clave=CDIListadoForfeitsSlo
Filtros=S
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIListadoForfeitsSlo
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

ListaOrden=CDIListadoForfeitsSlo.Fecha<TAB>(Decendente)
FiltroPredefinido=S
FiltroGrupo1=CDIListadoForfeitsSlo.ClaveTorneo
FiltroGrupo2=CDIListadoForfeitsSlo.NoVuelta
FiltroGrupo3=CDIListadoForfeitsSlo.NoJornada
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S

FiltroTodo=S
HojaOrdenarColumnas=S
[CDIListadoForfeitsSlo.CDIListadoForfeitsSlo.ClaveTorneo]
Carpeta=CDIListadoForfeitsSlo
Clave=CDIListadoForfeitsSlo.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIListadoForfeitsSlo.CDIListadoForfeitsSlo.NoVuelta]
Carpeta=CDIListadoForfeitsSlo
Clave=CDIListadoForfeitsSlo.NoVuelta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIListadoForfeitsSlo.CDIListadoForfeitsSlo.NoJornada]
Carpeta=CDIListadoForfeitsSlo
Clave=CDIListadoForfeitsSlo.NoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIListadoForfeitsSlo.CDIListadoForfeitsSlo.Fecha]
Carpeta=CDIListadoForfeitsSlo
Clave=CDIListadoForfeitsSlo.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIListadoForfeitsSlo.CDIListadoForfeitsSlo.EquipoGanador]
Carpeta=CDIListadoForfeitsSlo
Clave=CDIListadoForfeitsSlo.EquipoGanador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIListadoForfeitsSlo.CDIListadoForfeitsSlo.EquipoPerdedor]
Carpeta=CDIListadoForfeitsSlo
Clave=CDIListadoForfeitsSlo.EquipoPerdedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
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

[CDIListadoForfeitsSlo.Columnas]
ClaveTorneo=65
NoVuelta=64
NoJornada=64
Fecha=94
EquipoGanador=77
EquipoPerdedor=80


[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreEnBoton=S
NombreDesplegar=Listado de Forfeits
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIListadoForfeitsSlo
ListaParametros=S
Activo=S
Visible=S










[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=CDIListadoForfeitsSlo
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S




[CDIListadoForfeitsSlo.ListaEnCaptura]
(Inicio)=CDIListadoForfeitsSlo.ClaveTorneo
CDIListadoForfeitsSlo.ClaveTorneo=CDIListadoForfeitsSlo.NoVuelta
CDIListadoForfeitsSlo.NoVuelta=CDIListadoForfeitsSlo.NoJornada
CDIListadoForfeitsSlo.NoJornada=CDIListadoForfeitsSlo.Fecha
CDIListadoForfeitsSlo.Fecha=CDIListadoForfeitsSlo.EquipoGanador
CDIListadoForfeitsSlo.EquipoGanador=CDIListadoForfeitsSlo.EquipoPerdedor
CDIListadoForfeitsSlo.EquipoPerdedor=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=Imprimir
Imprimir=(Fin)
