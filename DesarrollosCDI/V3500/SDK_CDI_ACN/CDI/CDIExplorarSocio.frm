[Forma]
Clave=CDIExplorarSocio
Nombre=Socios
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=127
PosicionInicialArriba=126
PosicionInicialAltura=504
PosicionInicialAncho=1112
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
EsConsultaExclusiva=S
PosicionInicialAlturaCliente=477

[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Clientes
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICteExpl
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Clave<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=CteCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=CteFam
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=CteGrupo
FiltroAplicaEn1=Cte.Categoria
FiltroAplicaEn2=Cte.Familia
FiltroAplicaEn3=Cte.Grupo
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroAncho=25
FiltroListasRama=CXC
FiltroListasAplicaEn=Cte.Cliente
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=25
BusquedaEnLinea=S
CarpetaVisible=S
FiltroTodo=S
FiltroTodoFinal=S
FiltroEstatus=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
OtroOrden=S
ListaOrden=Cte.Socio<TAB>(Acendente)
MenuLocal=S
PermiteLocalizar=S
ListaAcciones=(Lista)
FiltroArbol=Clientes
FiltroArbolAplica=Cte.Rama
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=CteTipo
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=Espacio
FiltroAplicaEn4=Cte.Tipo
FiltroAplicaEn5=Cte.Espacio


IconosNombre=CDICteExpl:Cte.Cliente
FiltroGeneral=Cte.CDISocio = 1
BusquedaActualizacionManual=S
[Lista.Cte.Tipo]
Carpeta=Lista
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.Columnas]
0=92
1=100
2=94

3=78
4=148
5=102
6=98
7=100
8=-2
9=80
10=95
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
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

[Acciones.Campos]
Nombre=Campos
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Acciones.LocalImprimir]
Nombre=LocalImprimir
Boton=0
UsaTeclaRapida=S
TeclaRapida=Ctrl+P
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.LocalPreliminar]
Nombre=LocalPreliminar
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Alt+F11

[Acciones.LocalExcel]
Nombre=LocalExcel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.LocalCampos]
Nombre=LocalCampos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S





[Lista.Cte.Membresia]
Carpeta=Lista
Clave=Cte.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Cte.Estatus]
Carpeta=Lista
Clave=Cte.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.Edad]
Carpeta=Lista
Clave=Edad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Cte.PersonalNombres]
Carpeta=Lista
Clave=Cte.PersonalNombres
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Cte.PersonalApellidoPaterno]
Carpeta=Lista
Clave=Cte.PersonalApellidoPaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Cte.PersonalApellidoMaterno]
Carpeta=Lista
Clave=Cte.PersonalApellidoMaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Cte.Titular]
Carpeta=Lista
Clave=Cte.Titular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


















[Acciones.SocioInfo]
Nombre=SocioInfo
Boton=34
NombreDesplegar=Información Socio
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDISocioInfo
Activo=S
Antes=S
Visible=S














ConCondicion=S
EjecucionCondicion=ConDatos(CDICteExpl:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, CDICteExpl:Cte.Cliente)<BR>Asigna(Info.Socio, CDICteExpl:Cte.Socio)
[Lista.ListaOrden]
(Inicio)=Cte.Numero	(Acendente)
Cte.Numero	(Acendente)=Cte.Socio	(Acendente)
Cte.Socio	(Acendente)=(Fin)















[Lista.CDIMovsBaja.FechaEmision]
Carpeta=Lista
Clave=CDIMovsBaja.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIMovsBaja.Concepto]
Carpeta=Lista
Clave=CDIMovsBaja.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




















































[Lista.ListaEnCaptura]
(Inicio)=Cte.Tipo
Cte.Tipo=Cte.Membresia
Cte.Membresia=Cte.Estatus
Cte.Estatus=Edad
Edad=Cte.PersonalNombres
Cte.PersonalNombres=Cte.PersonalApellidoPaterno
Cte.PersonalApellidoPaterno=Cte.PersonalApellidoMaterno
Cte.PersonalApellidoMaterno=Cte.Titular
Cte.Titular=CDIMovsBaja.FechaEmision
CDIMovsBaja.FechaEmision=CDIMovsBaja.Concepto
CDIMovsBaja.Concepto=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQ_AVISO
BLOQ_AVISO=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)

[Lista.ListaAcciones]
(Inicio)=LocalImprimir
LocalImprimir=LocalPreliminar
LocalPreliminar=LocalExcel
LocalExcel=LocalCampos
LocalCampos=(Fin)


[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S





[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Campos
Campos=SocioInfo
SocioInfo=Actualizar
Actualizar=(Fin)
