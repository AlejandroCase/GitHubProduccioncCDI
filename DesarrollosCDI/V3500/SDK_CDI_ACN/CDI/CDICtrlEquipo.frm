
[Forma]
Clave=CDICtrlEquipo
Icono=0
Modulos=(Todos)
Nombre=Control Equipos y Jugadores

ListaCarpetas=(Lista)
CarpetaPrincipal=CDICtrlEquipo
PosicionInicialAlturaCliente=606
PosicionInicialAncho=692
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=337
PosicionInicialArriba=62
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
DialogoAbrir=S
PosicionSec1=261
BarraAyuda=S
BarraAyudaBold=S
PosicionCol2=477
SinTransacciones=S
[CDICtrlEquipo]
Estilo=Ficha
PestanaNombre=Equipos
Clave=CDICtrlEquipo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICtrlEquipo
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

Pestana=S
PestanaOtroNombre=S
ExpAntesRefrescar=asigna(info.cdideporte,nulo)<BR>asigna(info.cdiramadeporte,nulo)<BR>asigna(info.cdifuerzaDeporte,nulo)
ExpAlRefrescar=asigna(info.cdideporte,CDICtrlEquipo:CDICtrlEquipo.Deporte)<BR>asigna(info.cdiramadeporte,CDICtrlEquipo:CDICtrlEquipo.RamaDepor)<BR>asigna(info.cdifuerzaDeporte,CDICtrlEquipo:CDICtrlEquipo.Fuerza)
[CDICtrlEquipo.CDICtrlEquipo.Mov]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[CDICtrlEquipo.CDICtrlEquipo.FechaEmision]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.FechaEmision
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=15
IgnoraFlujo=N
[CDICtrlEquipo.CDICtrlEquipo.Deporte]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDICtrlEquipo.CDICtrlEquipo.RamaDepor]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.RamaDepor
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[CDICtrlEquipo.CDICtrlEquipo.Fuerza]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.Fuerza
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S

[CDICtrlEquipo.CDICtrlEquipo.CapitanSocio]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.CapitanSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICtrlEquipo.CDICtrlEquipo.PreferenciaDias]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.PreferenciaDias
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICtrlEquipo.CDICtrlEquipo.PreferenciaHorario]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.PreferenciaHorario
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Visible=S

ActivoCondicion=CDICtrlEquipo:CDICtrlEquipo.Estatus<><T>CONCLUIDO<T>
[Lista.Columnas]
Cliente=127
Nombre=293
RFC=124


Socio=127
NombreSocio=171
Tipo=76
[CDICtrlEquipo.Cte.Nombre]
Carpeta=CDICtrlEquipo
Clave=Cte.Nombre
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Pegado=S
[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S




[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDICtrlEquipo
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

PestanaOtroNombre=S
PestanaNombre=Equipos

IconosSubTitulo=Movimiento
OtroOrden=S
ListaOrden=CDICtrlEquipo.FechaEmision<TAB>(Decendente)
RefrescarAlEntrar=S
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CDICtrlEquipo.Mov
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
IconosNombre=CDICtrlEquipo:CDICtrlEquipo.Mov
FiltroGrupo2=CDICtrlEquipo.Deporte
FiltroGrupo3=CDICtrlEquipo.RamaDepor
FiltroGrupo4=CDICtrlEquipo.Fuerza
[(Carpeta Abrir).Cte.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[(Carpeta Abrir).Columnas]
0=-2
1=69
2=49


3=80
4=-2
5=-2
6=-2
7=-2
8=-2
[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S

















[CDIEquipoD]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Integrantes
Clave=CDIEquipoD
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIEquipoD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDICtrlEquipo
LlaveLocal=CDIEquipoD.ID
LlaveMaestra=CDICtrlEquipo.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIEquipoD.Socio

ControlRenglon=S
CampoRenglon=CDIEquipoD.RenglonId

ValidarCampos=S

ListaCamposAValidar=(Lista)
CondicionVisible=CDICtrlEquipo:CDICtrlEquipo.Mov noen (<T>Registro Equipo<T>,<T>Asociar Equipo<T>)
[CDIEquipoD.Columnas]
Cliente=130
Nombre=184

Socio=64

Edad=64
[(Carpeta Abrir).CDICtrlEquipo.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDICtrlEquipo.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
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



























[CDIEquipoD.ResumenCampos]
(Inicio)=CDIEquipoD.Cliente
CDIEquipoD.Cliente=Cte.Nombre
Cte.Nombre=(Fin)


[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S



ActivoCondicion=CDICtrlEquipo:CDICtrlEquipo.Estatus<><T>CONCLUIDO<T>
[Acciones.Expresion]
Nombre=Expresion
Boton=7
NombreDesplegar=Afectar
EnBarraHerramientas=S
TipoAccion=Expresion





EspacioPrevio=S













GuardarAntes=S
Visible=S
Expresion=ProcesarSql(<T>xpCDIEquiposYJugadores :nI<T>,CDICtrlEquipo:CDICtrlEquipo.ID)<BR>actualizarForma
ActivoCondicion=CDICtrlEquipo:CDICtrlEquipo.Estatus<><T>CONCLUIDO<T>
[Foto]
Estilo=Ficha
Clave=Foto
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=CDIEquipoD
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
ListaEnCaptura=Imagen


PestanaOtroNombre=S
PestanaNombre=Imagen
CondicionVisible=CDICtrlEquipo:CDICtrlEquipo.Mov noen (<T>Registro Equipo<T>,<T>Asociar Equipo<T>)
[Foto.ListaEnCaptura]
(Inicio)=Imagen
Imagen=Cte.RutaImagen
Cte.RutaImagen=(Fin)






[Foto.Imagen]
Carpeta=Foto
Clave=Imagen
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20x15
ColorFondo=Blanco



ConScroll=S
SinRecapitular=S








































[CDICtrlEquipo.CDICtrlEquipo.Clave]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco









;[CDICtrlEquipoLista.Columnas]
;Nombre=190
;CapitanSocio=64
;Nombre_1=184
;Deporte=70
;RamaDepor=46
;Fuerza=94









Clave=64
[RegJugador.CDICtrlEquipo.ClaveEqJug]
Carpeta=RegJugador
Clave=CDICtrlEquipo.ClaveEqJug
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[RegJugador.NombreEquipo]
Carpeta=RegJugador
Clave=NombreEquipo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco









[RegJugador.ListaEnCaptura]
(Inicio)=CDICtrlEquipo.ClaveEqJug
CDICtrlEquipo.ClaveEqJug=NombreEquipo
NombreEquipo=(Fin)


















































[Jugador.Columnas]
ClaveEqJug=66













Clave=64
Nombre_1=184
Cliente=64

[Jugador.ListaEnCaptura]
(Inicio)=CDICtrlEquipo.Clave
CDICtrlEquipo.Clave=Cte.Nombre
Cte.Nombre=Cte.Cliente
Cte.Cliente=(Fin)

















[CDICtrlEquipo.NombreEquipo]
Carpeta=CDICtrlEquipo
Clave=NombreEquipo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S






[CDICtrlEquipo.CDICtrlEquipo.Nombre]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco













[(Carpeta Abrir).NombreEquipo]
Carpeta=(Carpeta Abrir)
Clave=NombreEquipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco









[(Carpeta Abrir).CDICtrlEquipo.Clave]
Carpeta=(Carpeta Abrir)
Clave=CDICtrlEquipo.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco










[CDICtrlEquipo.CDICtrlEquipo.Filial]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.Filial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICtrlEquipo.CDICtrlEquipo.EquipoFilial]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.EquipoFilial
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



















[CDICtrlEquipo.CDICtrlEquipo.Religioso]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.Religioso
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





LineaNueva=N






[CDICtrlEquipo.CDICtrlEquipo.SubCapitanSocio]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.SubCapitanSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco






[CDICtrlEquipo.NombreSub]
Carpeta=CDICtrlEquipo
Clave=NombreSub
Editar=N
ValidaNombre=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Blanco




[CDIEquipoD.ListaEnCaptura]
(Inicio)=CDIEquipoD.Socio
CDIEquipoD.Socio=Edad
Edad=(Fin)






[(Carpeta Abrir).CDICtrlEquipo.Deporte]
Carpeta=(Carpeta Abrir)
Clave=CDICtrlEquipo.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[(Carpeta Abrir).CDICtrlEquipo.RamaDepor]
Carpeta=(Carpeta Abrir)
Clave=CDICtrlEquipo.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[(Carpeta Abrir).CDICtrlEquipo.Fuerza]
Carpeta=(Carpeta Abrir)
Clave=CDICtrlEquipo.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco















[CDIDeporte.Columnas]
Deporte=184
MaxEquiposTorneo=101
MaxJugadoresEquipo=147

[CDIRamaDepor.Columnas]
Rama=146

[CDIFuerzaDep.Columnas]
Fuerza=171
EdadMinimaJugaddor=105
EdadMaximaJugador=109







[(Carpeta Abrir).ListaOrden]
(Inicio)=CDICtrlEquipo.ID	(Decendente)
CDICtrlEquipo.ID	(Decendente)=CDICtrlEquipo.FechaEmision	(Decendente)
CDICtrlEquipo.FechaEmision	(Decendente)=(Fin)
















[CDICtrlEquipoLista.Columnas]
Clave=64
Nombre=190
CapitanSocio=64
Nombre_1=184
Deporte=70
RamaDepor=46
Fuerza=94






















[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDICtrlEquipo.FechaEmision
CDICtrlEquipo.FechaEmision=CDICtrlEquipo.Clave
CDICtrlEquipo.Clave=NombreEquipo
NombreEquipo=Cte.Nombre
Cte.Nombre=CDICtrlEquipo.Deporte
CDICtrlEquipo.Deporte=CDICtrlEquipo.RamaDepor
CDICtrlEquipo.RamaDepor=CDICtrlEquipo.Fuerza
CDICtrlEquipo.Fuerza=(Fin)















































































[CDICtrlEquipo.CDICtrlEquipo.Externo]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.Externo
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco











[Acciones.Enviar/Recibir Excel]
Nombre=Enviar/Recibir Excel
Boton=115
NombreEnBoton=S
NombreDesplegar=Recibir Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=CDIEquipoD
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Activo=S
Visible=S










[CDICtrlEquipo.ListaEnCaptura]
(Inicio)=CDICtrlEquipo.Mov
CDICtrlEquipo.Mov=CDICtrlEquipo.FechaEmision
CDICtrlEquipo.FechaEmision=CDICtrlEquipo.Deporte
CDICtrlEquipo.Deporte=CDICtrlEquipo.RamaDepor
CDICtrlEquipo.RamaDepor=CDICtrlEquipo.Fuerza
CDICtrlEquipo.Fuerza=CDICtrlEquipo.Clave
CDICtrlEquipo.Clave=NombreEquipo
NombreEquipo=CDICtrlEquipo.Nombre
CDICtrlEquipo.Nombre=CDICtrlEquipo.CapitanSocio
CDICtrlEquipo.CapitanSocio=Cte.Nombre
Cte.Nombre=CDICtrlEquipo.SubCapitanSocio
CDICtrlEquipo.SubCapitanSocio=NombreSub
NombreSub=CDICtrlEquipo.PreferenciaDias
CDICtrlEquipo.PreferenciaDias=CDICtrlEquipo.PreferenciaHorario
CDICtrlEquipo.PreferenciaHorario=CDICtrlEquipo.Religioso
CDICtrlEquipo.Religioso=CDICtrlEquipo.Filial
CDICtrlEquipo.Filial=CDICtrlEquipo.EquipoFilial
CDICtrlEquipo.EquipoFilial=CDICtrlEquipo.Externo
CDICtrlEquipo.Externo=CDICtrlEquipo.Representativo
CDICtrlEquipo.Representativo=(Fin)

[CDICtrlEquipo.CDICtrlEquipo.Representativo]
Carpeta=CDICtrlEquipo
Clave=CDICtrlEquipo.Representativo
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco













[CDIEquipoD.ListaCamposAValidar]
(Inicio)=Cte.Socio
Cte.Socio=Cte.Tipo
Cte.Tipo=Cte.Estatus
Cte.Estatus=Cte.Descripcion13
Cte.Descripcion13=CobMed
CobMed=Edad
Edad=Cte.Nombre
Cte.Nombre=(Fin)











[Forma.ListaCarpetas]
(Inicio)=CDICtrlEquipo
CDICtrlEquipo=CDIEquipoD
CDIEquipoD=Foto
Foto=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=Expresion
Expresion=Enviar/Recibir Excel
Enviar/Recibir Excel=(Fin)
