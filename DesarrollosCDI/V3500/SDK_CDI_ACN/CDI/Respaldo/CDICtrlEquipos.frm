
[Forma]
Clave=CDICtrlEquipos
Icono=0
Modulos=(Todos)
Nombre=Control Equipos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIEquipo
PosicionInicialIzquierda=329
PosicionInicialArriba=120
PosicionInicialAlturaCliente=490
PosicionInicialAncho=708
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionSec1=214
DialogoAbrir=S
[CDIEquipo]
Estilo=Ficha
Pestana=S
Clave=CDIEquipo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEquipo
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Equipo

[CDIEquipo.CDIEquipo.Deporte]
Carpeta=CDIEquipo
Clave=CDIEquipo.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIEquipo.CDIEquipo.RamaDepor]
Carpeta=CDIEquipo
Clave=CDIEquipo.RamaDepor
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[CDIEquipo.CDIEquipo.Fuerza]
Carpeta=CDIEquipo
Clave=CDIEquipo.Fuerza
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S

[CDIEquipo.CDIEquipo.Nombre]
Carpeta=CDIEquipo
Clave=CDIEquipo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIEquipo.CDIEquipo.CapitanSocio]
Carpeta=CDIEquipo
Clave=CDIEquipo.CapitanSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIEquipo.CDIEquipo.PreferenciaDias]
Carpeta=CDIEquipo
Clave=CDIEquipo.PreferenciaDias
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIEquipo.CDIEquipo.PreferenciaHorario]
Carpeta=CDIEquipo
Clave=CDIEquipo.PreferenciaHorario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIDeporte.Columnas]
Deporte=184

[CDIRamaDepor.Columnas]
Rama=146

[CDIFuerzaDep.Columnas]
Fuerza=171


[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S




[CDITorneos.Columnas]
Nombre=124
FechaInicio=94
FechaFin=94

[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76

[CDIEquipoD]
Estilo=Hoja
Clave=CDIEquipoD
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIEquipoD
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
CarpetaVisible=S

Detalle=S
VistaMaestra=CDIEquipo
LlaveLocal=CDIEquipoD.ID
LlaveMaestra=CDIEquipo.ID

ListaEnCaptura=(Lista)
ControlRenglon=S
CampoRenglon=CDIEquipoD.RenglonId
ValidarCampos=S
ListaCamposAValidar=(Lista)
[CDIEquipoD.Columnas]
Socio=101







Nombre=184
Cliente=64
[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S











[(Carpeta Abrir)]
Estilo=Iconos
Pestana=S
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDIEquipo
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CDIEquipo.Deporte
FiltroGrupo2=CDIEquipo.RamaDepor
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
PestanaOtroNombre=S
PestanaNombre=Equipos
FiltroGrupo3=CDIEquipo.Fuerza
FiltroGrupo4=CDIEquipo.TorneoID
IconosSubTitulo=<T>Movimiento<T>
IconosNombre=CDIEquipo:CDIEquipo.Mov+<T> <T>+CDIEquipo:CDIEquipo.Movid
[(Carpeta Abrir).CDIEquipo.Deporte]
Carpeta=(Carpeta Abrir)
Clave=CDIEquipo.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[(Carpeta Abrir).CDIEquipo.RamaDepor]
Carpeta=(Carpeta Abrir)
Clave=CDIEquipo.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[(Carpeta Abrir).CDIEquipo.Fuerza]
Carpeta=(Carpeta Abrir)
Clave=CDIEquipo.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[(Carpeta Abrir).CDIEquipo.Nombre]
Carpeta=(Carpeta Abrir)
Clave=CDIEquipo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDIEquipo.CapitanSocio]
Carpeta=(Carpeta Abrir)
Clave=CDIEquipo.CapitanSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[(Carpeta Abrir).Columnas]
0=92
1=67
2=76
3=84
4=96
5=90
6=-2
7=-2
8=-2









[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S



















[CDITorneosD.Columnas]
NoJornada=64
TipoJornada=94
FechaJornada=94
EquipoLocal=235
EquipoVisitante=238







[CDITorneoLista.Columnas]
Nombre=124
FechaInicio=94
FechaFin=94











[Acciones.Navegador 1 (Registros)]
Nombre=Navegador 1 (Registros)
Boton=0
NombreDesplegar=Navegador 1 (Registros)
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 2 (Registros)
Activo=S
Visible=S

















[CDITorneosCat.Columnas]
Nombre=124
FechaInicio=94
FechaFin=94























[CDIEquipo.CDIEquipo.Mov]
Carpeta=CDIEquipo
Clave=CDIEquipo.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIEquipo.CDIEquipo.Movid]
Carpeta=CDIEquipo
Clave=CDIEquipo.Movid
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco





[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIEquipo.Deporte
CDIEquipo.Deporte=CDIEquipo.RamaDepor
CDIEquipo.RamaDepor=CDIEquipo.Fuerza
CDIEquipo.Fuerza=CDIEquipo.Nombre
CDIEquipo.Nombre=CDIEquipo.CapitanSocio
CDIEquipo.CapitanSocio=(Fin)


[CDIEquipoD.CDIEquipoD.Cliente]
Carpeta=CDIEquipoD
Clave=CDIEquipoD.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIEquipoD.CDIEquipoD.Socio]
Carpeta=CDIEquipoD
Clave=CDIEquipoD.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco




[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S









[CDIEquipoD.ListaEnCaptura]
(Inicio)=CDIEquipoD.Cliente
CDIEquipoD.Cliente=CDIEquipoD.Socio
CDIEquipoD.Socio=(Fin)

[CDIEquipoD.ListaCamposAValidar]
(Inicio)=Cte.Nombre
Cte.Nombre=Cte.Estatus
Cte.Estatus=(Fin)















[CDIEquipo.ListaEnCaptura]
(Inicio)=CDIEquipo.Mov
CDIEquipo.Mov=CDIEquipo.Movid
CDIEquipo.Movid=CDIEquipo.Deporte
CDIEquipo.Deporte=CDIEquipo.RamaDepor
CDIEquipo.RamaDepor=CDIEquipo.Fuerza
CDIEquipo.Fuerza=CDIEquipo.Nombre
CDIEquipo.Nombre=CDIEquipo.CapitanSocio
CDIEquipo.CapitanSocio=Cte.Nombre
Cte.Nombre=CDIEquipo.PreferenciaDias
CDIEquipo.PreferenciaDias=CDIEquipo.PreferenciaHorario
CDIEquipo.PreferenciaHorario=(Fin)

[CDIEquipo.Cte.Nombre]
Carpeta=CDIEquipo
Clave=Cte.Nombre
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=30
ColorFondo=Blanco















[Forma.ListaCarpetas]
(Inicio)=CDIEquipo
CDIEquipo=CDIEquipoD
CDIEquipoD=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=Navegador 1 (Registros)
Navegador 1 (Registros)=(Fin)
