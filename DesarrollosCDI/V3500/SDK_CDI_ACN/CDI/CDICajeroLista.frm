[Forma]
Clave=CDICajeroLista
Nombre=Cajeros
Icono=44
Modulos=(Todos)
ListaCarpetas=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
ExpresionesAlMostrar=
ExpresionesAlCerrar=
CarpetaPrincipal=Lista
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=446
PosicionInicialArriba=127
PosicionInicialAltura=421
PosicionInicialAncho=388
VentanaEscCerrar=S
BarraHerramientas=S
PosicionInicialAlturaCliente=431

[Lista]
Estilo=Iconos
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AgenteA
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
Filtros=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=AgenteCat
FiltroPredefinido=S
FiltroAplicaEn=Agente.Categoria
FiltroTipo=General
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroAncho=20
FiltroFechasNormal=S
FiltroAplicaEn1=Agente.Categoria
PermiteLocalizar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=BAJA
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Cajero<T>
ElementosPorPagina=200
PestanaOtroNombre=S
PestanaNombre=Agentes
ListaEnCaptura=Agente.Nombre
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=AgenteTipo
FiltroAplicaEn2=Agente.Tipo
FiltroSucursales=S

IconosNombre=AgenteA:Agente.Agente
FiltroGeneral=Agente.Tipo = <T>Cajero<T>
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreDesplegar=&Seleccionar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Visible=S
Activo=S
EnBarraHerramientas=S
NombreEnBoton=S

[Lista.Columnas]
Agente=92
Nombre=320
0=105
1=251

[Acciones.Actualizar]
Nombre=Actualizar
Boton=0
UsaTeclaRapida=S
TeclaRapida=F5
NombreDesplegar=Actualizar
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Presentación preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S


[Acciones.ServiciosPendientesAgente]
Nombre=ServiciosPendientesAgente
Boton=0
UsaTeclaRapida=S
TeclaRapida=Ctrl+S
NombreDesplegar=Servicios Pendientes del Agente
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=ServiciosPendientesAgente
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Agente:Agente.Agente)
AntesExpresiones=Asigna(Info.Agente, Agente:Agente.Agente)<BR>Asigna(Info.Nombre, Agente:Agente.Nombre)

[Lista.Agente.Nombre]
Carpeta=Lista
Clave=Agente.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Acciones.Informacion]
Nombre=Informacion
Boton=34
NombreDesplegar=Información
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=AgenteInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Agente:Agente.Agente)
AntesExpresiones=Asigna(Info.Agente, Agente:Agente.Agente)




[Acciones.VentaActividadAgente]
Nombre=VentaActividadAgente
Boton=0
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=Actividades Pendientes del Agente
EnMenu=S
TipoAccion=Formas
ClaveAccion=VentaActividadAgente
Activo=S
Visible=S
Antes=S
ConCondicion=S
EjecucionCondicion=ConDatos(Agente:Agente.Agente)
AntesExpresiones=Asigna(Info.Agente, Agente:Agente.Agente)<BR>Asigna(Info.Nombre, Agente:Agente.Nombre)



[Acciones.LocalAgenda]
Nombre=LocalAgenda
Boton=0
NombreDesplegar=&Agenda
EnMenu=S
TipoAccion=Formas
ClaveAccion=VerAgenteAgenda
Activo=S
Antes=S
ConCondicion=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+D
EjecucionCondicion=ConDatos(Agente:Agente.Agente)
AntesExpresiones=Asigna(Info.Agente, Agente:Agente.Agente)<BR>Asigna(Info.Nombre, Agente:Agente.Nombre)
Visible=S


[Lista.ListaAcciones]
(Inicio)=Actualizar
Actualizar=ServiciosPendientesAgente
ServiciosPendientesAgente=VentaActividadAgente
VentaActividadAgente=LocalAgenda
LocalAgenda=(Fin)







[Lista.FiltroListaEstatus]
(Inicio)=(Todos menos uno)
(Todos menos uno)=NORMAL
NORMAL=BLOQ_AVISO
BLOQ_AVISO=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)

[Forma.ListaAcciones]
(Inicio)=Seleccionar
Seleccionar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Informacion
Informacion=(Fin)
