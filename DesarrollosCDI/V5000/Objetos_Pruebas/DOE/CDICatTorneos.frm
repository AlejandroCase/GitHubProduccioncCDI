
[Forma]
Clave=CDICatTorneos
Icono=0
Modulos=(Todos)
Nombre=Torneos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICatTorneos
CarpetaPrincipal=CDICatTorneos
PosicionInicialIzquierda=360
PosicionInicialArriba=192
PosicionInicialAlturaCliente=346
PosicionInicialAncho=646
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraAyuda=S
BarraAyudaBold=S
DialogoAbrir=S
[CDICatTorneos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
Clave=CDICatTorneos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICatTorneos
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

PestanaNombre=Torneos


[CDICatTorneos.CDICatTorneos.FechaEmision]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.FechaEmision
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15

[CDICatTorneos.CDICatTorneos.FechaInicio]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDICatTorneos.CDICatTorneos.FechaFin]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.FechaFin
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

Tamano=15
[CDICatTorneos.CDICatTorneos.Deporte]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDICatTorneos.CDICatTorneos.RamaDepor]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.RamaDepor
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[CDICatTorneos.CDICatTorneos.Fuerza]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.Fuerza
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[CDICatTorneos.CDICatTorneos.NoJornadas]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.NoJornadas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco








[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S

[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S


[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S





[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDICatTorneos
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=Clave
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
OtroOrden=S

ListaOrden=CDICatTorneos.FechaEmision<TAB>(Decendente)
PestanaOtroNombre=S
PestanaNombre=Torneos
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CDICatTorneos.Deporte
FiltroGrupo2=CDICatTorneos.RamaDepor
FiltroGrupo3=CDICatTorneos.Fuerza
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
RefrescarAlEntrar=S
IconosNombre=CDICatTorneos:CDICatTorneos.ClaveTorneo
[(Carpeta Abrir).CDICatTorneos.Deporte]
Carpeta=(Carpeta Abrir)
Clave=CDICatTorneos.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[(Carpeta Abrir).CDICatTorneos.Fuerza]
Carpeta=(Carpeta Abrir)
Clave=CDICatTorneos.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).CDICatTorneos.RamaDepor]
Carpeta=(Carpeta Abrir)
Clave=CDICatTorneos.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[(Carpeta Abrir).CDICatTorneos.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDICatTorneos.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[(Carpeta Abrir).Columnas]
0=139
1=182
2=100
3=84
4=92
5=69





6=-2
7=69
8=53
[CDICatTorneos.CDICatTorneos.Nombre]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICatTorneos.CDICatTorneos.Estatus]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco












[(Carpeta Abrir).CDICatTorneos.FechaInicio]
Carpeta=(Carpeta Abrir)
Clave=CDICatTorneos.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDICatTorneos.FechaFin]
Carpeta=(Carpeta Abrir)
Clave=CDICatTorneos.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDICatTorneos.Estatus]
Carpeta=(Carpeta Abrir)
Clave=CDICatTorneos.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco



























































[CDICatTorneos.CDICatTorneos.NoVueltas]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.NoVueltas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco















[CDICatTorneos.CDICatTorneos.ClaveTorneo]
Carpeta=CDICatTorneos
Clave=CDICatTorneos.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco








[(Carpeta Abrir).CDICatTorneos.Nombre]
Carpeta=(Carpeta Abrir)
Clave=CDICatTorneos.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco















[CDICatTorneos.ListaEnCaptura]
(Inicio)=CDICatTorneos.FechaEmision
CDICatTorneos.FechaEmision=CDICatTorneos.ClaveTorneo
CDICatTorneos.ClaveTorneo=CDICatTorneos.Nombre
CDICatTorneos.Nombre=CDICatTorneos.FechaInicio
CDICatTorneos.FechaInicio=CDICatTorneos.FechaFin
CDICatTorneos.FechaFin=CDICatTorneos.Deporte
CDICatTorneos.Deporte=CDICatTorneos.RamaDepor
CDICatTorneos.RamaDepor=CDICatTorneos.Fuerza
CDICatTorneos.Fuerza=CDICatTorneos.NoVueltas
CDICatTorneos.NoVueltas=CDICatTorneos.NoJornadas
CDICatTorneos.NoJornadas=CDICatTorneos.Estatus
CDICatTorneos.Estatus=(Fin)






[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDICatTorneos.Nombre
CDICatTorneos.Nombre=CDICatTorneos.Deporte
CDICatTorneos.Deporte=CDICatTorneos.Fuerza
CDICatTorneos.Fuerza=CDICatTorneos.RamaDepor
CDICatTorneos.RamaDepor=CDICatTorneos.FechaEmision
CDICatTorneos.FechaEmision=CDICatTorneos.FechaInicio
CDICatTorneos.FechaInicio=CDICatTorneos.FechaFin
CDICatTorneos.FechaFin=CDICatTorneos.Estatus
CDICatTorneos.Estatus=(Fin)
















[Acciones.PUntos]
Nombre=PUntos
Boton=58
NombreEnBoton=S
NombreDesplegar=Puntos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIPuntosFuerza
Activo=S
Antes=S
Visible=S





























EspacioPrevio=S




AntesExpresiones=ASigna(info.cdideporte,CDICatTorneos:CDICatTorneos.ClaveTorneo)<BR>ASigna(Info.cdiramadeporte,CDICatTorneos:CDICatTorneos.RamaDepor)<BR>Asigna(info.cdifuerzadeporte,CDICatTorneos:CDICatTorneos.Fuerza)





















[Acciones.Minimos]
Nombre=Minimos
Boton=35
NombreEnBoton=S
NombreDesplegar=Minimos para Estadisticas
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIMinimosEstadisitcas
Activo=S
Antes=S
AntesExpresiones=ASigna(info.cdideporte,CDICatTorneos:CDICatTorneos.ClaveTorneo)<BR>ASigna(Info.cdiramadeporte,CDICatTorneos:CDICatTorneos.RamaDepor)<BR>Asigna(info.cdifuerzadeporte,CDICatTorneos:CDICatTorneos.Fuerza)
Visible=S








[Acciones.CDITorneosWeb]
Nombre=CDITorneosWeb
Boton=89
NombreEnBoton=S
NombreDesplegar=Torneos a Publicar
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDiTorneosWeb
Activo=S
Visible=S



EspacioPrevio=S




[Forma.ListaAcciones]
(Inicio)=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=PUntos
PUntos=Minimos
Minimos=CDITorneosWeb
CDITorneosWeb=(Fin)
