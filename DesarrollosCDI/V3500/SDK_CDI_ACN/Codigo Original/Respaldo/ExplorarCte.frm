[Forma]
Clave=ExplorarCte
Nombre=Clientes
Icono=47
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=570
PosicionInicialArriba=344
PosicionInicialAltura=504
PosicionInicialAncho=780
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar<BR>Imprimir<BR>Preliminar<BR>Excel<BR>EditarCliente<BR>CteArt<BR>MovCte<BR>CteInfo<BR>Mensajes<BR>Campos
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
Vista=Cte
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Clave<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Cte.Nombre<BR>Cte.Tipo
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
FiltroListas=S
FiltroListasRama=CXC
FiltroListasAplicaEn=Cte.Cliente
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
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
FiltroListaEstatus=(Todos)<BR>ALTA<BR>BLOQ_AVISO<BR>BLOQUEADO<BR>BAJA
FiltroEstatusDefault=ALTA
OtroOrden=S
ListaOrden=Cte.Numero<TAB>(Acendente)<BR>Cte.Cliente<TAB>(Acendente)
MenuLocal=S
PermiteLocalizar=S
ListaAcciones=LocalCteInfo<BR>LocalEditarCliente<BR>LocalMovCte<BR>LocalImprimir<BR>LocalPreliminar<BR>LocalExcel<BR>LocalMapaTodo<BR>LocalMapaSeleccion<BR>LocalCampos
FiltroArbol=Clientes
FiltroArbolAplica=Cte.Rama
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=CteTipo
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=Espacio
FiltroAplicaEn4=Cte.Tipo
FiltroAplicaEn5=Cte.Espacio

IconosNombre=Cte:Cte.Cliente
[Lista.Cte.Nombre]
Carpeta=Lista
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cte.Tipo]
Carpeta=Lista
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
0=108
1=277
2=84

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
NombreDesplegar=Presentaci�n preliminar
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

[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
NombreDesplegar=Informaci�n
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteInfo
ActivoCondicion=Usuario.CteInfo
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)

[Acciones.LocalCteInfo]
Nombre=LocalCteInfo
Boton=0
UsaTeclaRapida=S
TeclaRapida=Ctrl+I
NombreDesplegar=Informaci�n
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)

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
NombreDesplegar=&Presentaci�n preliminar
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

[Acciones.MovCte]
Nombre=MovCte
Boton=25
NombreDesplegar=Generar &Movimientos...
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovCte
ConCondicion=S
Antes=S
Visible=S
NombreEnBoton=S
ActivoCondicion=Usuario.CteMov
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.LocalMovCte]
Nombre=LocalMovCte
Boton=0
UsaTeclaRapida=S
TeclaRapida=F12
NombreDesplegar=Generar Movimientos...
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovCte
ConCondicion=S
Antes=S
Visible=S
ActivoCondicion=Usuario.CteMov
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.EditarCliente]
Nombre=EditarCliente
Boton=47
NombreDesplegar=&Editar Datos Cliente...
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=VentaCte
Visible=S
ConCondicion=S
Antes=S
EspacioPrevio=S
NombreEnBoton=S
ActivoCondicion=Usuario.ModificarDatosCliente
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)

[Acciones.LocalEditarCliente]
Nombre=LocalEditarCliente
Boton=0
UsaTeclaRapida=S
TeclaRapida=Ctrl+E
NombreDesplegar=&Editar Datos Cliente
EnMenu=S
TipoAccion=Formas
ClaveAccion=VentaCte
ConCondicion=S
Antes=S
Visible=S
EspacioPrevio=S
ActivoCondicion=Usuario.ModificarDatosCliente
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
[Acciones.CteArt]
Nombre=CteArt
Boton=47
NombreEnBoton=S
NombreDesplegar=&Art�culos del Cliente
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CteArt
ConCondicion=S
Antes=S
Visible=S
ActivoCondicion=Usuario.CteArt
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)<BR>Asigna(Info.Articulo, Nulo)
[Acciones.Mensajes]
Nombre=Mensajes
Boton=112
NombreDesplegar=Mensajes
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=OutlookCte
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)



[Acciones.LocalMapaTodo]
Nombre=LocalMapaTodo
Boton=0
NombreDesplegar=Ver Mapa (&Todos)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S

Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>Lista<T>, <T>Cte.Cliente<T>)<BR>Mapa.AgregarListaSt(<T>CXC<T>)<BR>PlugIn(<T>Mapa<T>, <T>CXC<T>, <T>Pintar<T>)
[Acciones.LocalMapaSeleccion]
Nombre=LocalMapaSeleccion
Boton=0
NombreDesplegar=Ver Mapa (&Selecci�n)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>Lista<T>, <T>Cte.Cliente<T>, Verdadero)<BR>Mapa.AgregarListaSt(<T>CTE<T>)<BR>PlugIn(<T>Mapa<T>, <T>CTE<T>, <T>Pintar<T>)