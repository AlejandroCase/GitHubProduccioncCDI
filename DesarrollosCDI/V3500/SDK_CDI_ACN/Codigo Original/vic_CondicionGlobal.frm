
[Forma]
Clave=vic_CondicionGlobal
Icono=0
Menus=S
BarraHerramientas=S
BarraAyuda=S
Plantillas=S
BarraAyudaBold=S
Modulos=(Todos)
DialogoAbrir=S
MovModulo=(Todos)
Nombre=Control Venta

AccionesTamanoBoton=15x5
AccionesDerecha=S
PermiteCopiarDoc=S
ListaAcciones=(Lista)

ListaCarpetas=(Lista)
CarpetaPrincipal=CondicionesGlobales
PosicionInicialIzquierda=234
PosicionInicialArriba=175
PosicionInicialAlturaCliente=639
PosicionInicialAncho=812

VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaExclusiva=S
MenuPrincipal=(Lista)
[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Antes=S
Visible=S









AntesExpresiones=CampoAsignaVariable(vic_Condicion:vic_Condicion.FechaProxMov,vic_Condicion:vic_Condicion.FechaIni)
[Acciones.Actualizar]
Nombre=Actualizar
Boton=0
NombreDesplegar=&Actualizar
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Actualizar Arbol
Activo=S
Visible=S

UsaTeclaRapida=S
TeclaRapida=F5
[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=0
NombreDesplegar=&Presentacion preliminar
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Campos]
Nombre=Campos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[(Carpeta Abrir)]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Condiciones Globales
Clave=(Carpeta Abrir)
Filtros=S
OtroOrden=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=Vic_CondicionGlobalA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Condición Global<T>
IconosConPaginas=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=vic_CondicionGlobal.ID<TAB>(Acendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroEstatus=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ACTIVA
FiltroFechasCampo=vic_CondicionGlobal.FechaIni
FiltroFechasDefault=Este Mes
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
ListaAcciones=(Lista)
CarpetaVisible=S



IconosNombre=Vic_CondicionGlobalA:vic_CondicionGlobal.ID
[(Carpeta Abrir).vic_CondicionGlobal.Articulo]
Carpeta=(Carpeta Abrir)
Clave=vic_CondicionGlobal.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir).vic_CondicionGlobal.Concepto]
Carpeta=(Carpeta Abrir)
Clave=vic_CondicionGlobal.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco






[CondicionesGlobales]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Control Venta
Clave=CondicionesGlobales
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_CondicionGlobal
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

[CondicionesGlobales.vic_CondicionGlobal.Estatus]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[CondicionesGlobales.vic_CondicionGlobal.TipoCondicion]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.TipoCondicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[CondicionesGlobales.vic_CondicionGlobal.Frecuencia]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.Frecuencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.NumPagos]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.NumPagos
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.FechaIni]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.FechaIni
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.FechaFin]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.FechaFin
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.ContinuaFact]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.ContinuaFact
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[CondicionesGlobales.vic_CondicionGlobal.Articulo]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.Art.Descripcion1]
Carpeta=CondicionesGlobales
Clave=Art.Descripcion1
Editar=S
3D=S
Pegado=S
Tamano=65
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.AF]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.AF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.AFArticulo]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.AFArticulo
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.AFSerie]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.AFSerie
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.Concepto]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=67
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.AgregaMesAno]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.AgregaMesAno
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
Efectos=[Negritas]


[CondicionesGlobales.vic_CondicionGlobal.DependeCond]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.DependeCond
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[CondicionesGlobales.vic_CondicionGlobal.IDCondicion_depend]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.IDCondicion_depend
Editar=S
3D=S
Pegado=S
Tamano=20
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.Porcentaje]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.Porcentaje
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=20
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.MonCot]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.MonCot
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.MonFact]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.MonFact
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.CargooAbono]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.CargooAbono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.FormaFact]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.FormaFact
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.AgrupadoFact]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.AgrupadoFact
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.Agrupador]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.Agrupador
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.ConsideraM2]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.ConsideraM2
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.SerieFactura]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.SerieFactura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.ConceptoVenta]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.ConceptoVenta
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.Empresa]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.Empresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco




[CondicionesGlobales.Empresa.Nombre]
Carpeta=CondicionesGlobales
Clave=Empresa.Nombre
Editar=S
3D=S
Pegado=S
Tamano=65
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.ConLocal]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.ConLocal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[CondicionesGlobales.vic_CondicionGlobal.ConIncremento]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.ConIncremento
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]

[CondicionesGlobales.vic_CondicionGlobal.BasadoenVentas]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.BasadoenVentas
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.LeyendaPre]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.LeyendaPre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=67
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.LeyendaPost]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.LeyendaPost
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=67
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.OpcionInversion]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.OpcionInversion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco



[Local]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Local
Clave=Local
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_CondicionGlobal
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


CondicionVisible=vic_CondicionGlobal:vic_CondicionGlobal.ConLocal
[Local.vic_CondicionGlobal.Local]
Carpeta=Local
Clave=vic_CondicionGlobal.Local
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Local.vic_Local.Nombre]
Carpeta=Local
Clave=vic_Local.Nombre
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Blanco

[Local.ListaEnCaptura]
(Inicio)=vic_CondicionGlobal.Local
vic_CondicionGlobal.Local=vic_Local.Nombre
vic_Local.Nombre=(Fin)







[Comentarios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Comentarios
Clave=Comentarios
PermiteEditar=S
GuardarPorRegistro=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_CondicionGlobal
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
ListaEnCaptura=vic_CondicionGlobal.Comentarios
CarpetaVisible=S
AlinearTodaCarpeta=S

[Comentarios.vic_CondicionGlobal.Comentarios]
Carpeta=Comentarios
Clave=vic_CondicionGlobal.Comentarios
Editar=S
LineaNueva=S
3D=S
Tamano=100x35
ColorFondo=Blanco







[(Carpeta Abrir).Columnas]
0=-2
1=-2
2=-2







3=-2
4=-2
5=-2
6=-2
[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Visible=S




[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S













[Acciones.Situacion]
Nombre=Situacion
Boton=71
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=F2
NombreDesplegar=&Situacion
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Activo=S
Visible=S




[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=F11
NombreDesplegar=Plantillas &Office
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Expresion=Asigna(Info.Forma, <T>vic_Condicion<T>Global)<BR>Asigna(Info.Nombre, <T>Condición Global<T>)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Si                                       <BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin
Activo=S
Visible=S




[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Cerrar
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
















[(Carpeta Abrir).vic_CondicionGlobal.Estatus]
Carpeta=(Carpeta Abrir)
Clave=vic_CondicionGlobal.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).vic_CondicionGlobal.ID]
Carpeta=(Carpeta Abrir)
Clave=vic_CondicionGlobal.ID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).vic_CondicionGlobal.FechaIni]
Carpeta=(Carpeta Abrir)
Clave=vic_CondicionGlobal.FechaIni
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).vic_CondicionGlobal.FechaFin]
Carpeta=(Carpeta Abrir)
Clave=vic_CondicionGlobal.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CondicionesGlobales.vic_CondicionGlobal.ImporteVenta]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.ImporteVenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[CondicionesGlobales.vic_CondicionGlobal.MetrosVendidos]
Carpeta=CondicionesGlobales
Clave=vic_CondicionGlobal.MetrosVendidos
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco



[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=vic_CondicionGlobal.Estatus
vic_CondicionGlobal.Estatus=vic_CondicionGlobal.ID
vic_CondicionGlobal.ID=vic_CondicionGlobal.Articulo
vic_CondicionGlobal.Articulo=vic_CondicionGlobal.Concepto
vic_CondicionGlobal.Concepto=vic_CondicionGlobal.FechaIni
vic_CondicionGlobal.FechaIni=vic_CondicionGlobal.FechaFin
vic_CondicionGlobal.FechaFin=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ACTIVA
ACTIVA=ALTA
ALTA=BLOQ_AVISO
BLOQ_AVISO=BLOQUEADO
BLOQUEADO=INACTIVA
INACTIVA=BAJA
BAJA=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Campos
Campos=(Fin)








[CondicionesGlobales.ListaEnCaptura]
(Inicio)=vic_CondicionGlobal.Estatus
vic_CondicionGlobal.Estatus=vic_CondicionGlobal.TipoCondicion
vic_CondicionGlobal.TipoCondicion=vic_CondicionGlobal.Frecuencia
vic_CondicionGlobal.Frecuencia=vic_CondicionGlobal.NumPagos
vic_CondicionGlobal.NumPagos=vic_CondicionGlobal.FechaIni
vic_CondicionGlobal.FechaIni=vic_CondicionGlobal.FechaFin
vic_CondicionGlobal.FechaFin=vic_CondicionGlobal.ContinuaFact
vic_CondicionGlobal.ContinuaFact=vic_CondicionGlobal.Articulo
vic_CondicionGlobal.Articulo=Art.Descripcion1
Art.Descripcion1=vic_CondicionGlobal.AF
vic_CondicionGlobal.AF=vic_CondicionGlobal.AFArticulo
vic_CondicionGlobal.AFArticulo=vic_CondicionGlobal.AFSerie
vic_CondicionGlobal.AFSerie=vic_CondicionGlobal.Concepto
vic_CondicionGlobal.Concepto=vic_CondicionGlobal.AgregaMesAno
vic_CondicionGlobal.AgregaMesAno=vic_CondicionGlobal.ImporteVenta
vic_CondicionGlobal.ImporteVenta=vic_CondicionGlobal.MetrosVendidos
vic_CondicionGlobal.MetrosVendidos=vic_CondicionGlobal.DependeCond
vic_CondicionGlobal.DependeCond=vic_CondicionGlobal.IDCondicion_depend
vic_CondicionGlobal.IDCondicion_depend=vic_CondicionGlobal.Porcentaje
vic_CondicionGlobal.Porcentaje=vic_CondicionGlobal.MonCot
vic_CondicionGlobal.MonCot=vic_CondicionGlobal.MonFact
vic_CondicionGlobal.MonFact=vic_CondicionGlobal.CargooAbono
vic_CondicionGlobal.CargooAbono=vic_CondicionGlobal.FormaFact
vic_CondicionGlobal.FormaFact=vic_CondicionGlobal.AgrupadoFact
vic_CondicionGlobal.AgrupadoFact=vic_CondicionGlobal.Agrupador
vic_CondicionGlobal.Agrupador=vic_CondicionGlobal.ConsideraM2
vic_CondicionGlobal.ConsideraM2=vic_CondicionGlobal.SerieFactura
vic_CondicionGlobal.SerieFactura=vic_CondicionGlobal.ConceptoVenta
vic_CondicionGlobal.ConceptoVenta=vic_CondicionGlobal.Empresa
vic_CondicionGlobal.Empresa=Empresa.Nombre
Empresa.Nombre=vic_CondicionGlobal.ConLocal
vic_CondicionGlobal.ConLocal=vic_CondicionGlobal.ConIncremento
vic_CondicionGlobal.ConIncremento=vic_CondicionGlobal.BasadoenVentas
vic_CondicionGlobal.BasadoenVentas=vic_CondicionGlobal.LeyendaPre
vic_CondicionGlobal.LeyendaPre=vic_CondicionGlobal.LeyendaPost
vic_CondicionGlobal.LeyendaPost=vic_CondicionGlobal.OpcionInversion
vic_CondicionGlobal.OpcionInversion=(Fin)

[Forma.ListaCarpetas]
(Inicio)=CondicionesGlobales
CondicionesGlobales=Local
Local=Comentarios
Comentarios=(Fin)

[Forma.ListaAcciones]
(Inicio)=Abrir
Abrir=Guardar
Guardar=Situacion
Situacion=Navegador
Navegador=PlantillasOffice
PlantillasOffice=Cerrar
Cerrar=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=&Otros
&Otros=(Fin)
