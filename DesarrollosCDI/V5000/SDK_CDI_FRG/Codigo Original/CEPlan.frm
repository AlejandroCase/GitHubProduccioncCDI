[Forma]
Clave=CEPlan
Nombre=Plan de Estudios
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=644
PosicionInicialAncho=919
PosicionInicialIzquierda=223
PosicionInicialArriba=43
PosicionSeccion1=46
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionColumna1=56
PosicionCol1=450
PosicionSec1=331
[Detalle.CEPlanD.Materia]
Carpeta=Detalle
Clave=CEPlanD.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[Detalle.CEPlanD.Precio]
Carpeta=Detalle
Clave=CEPlanD.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[Detalle.CEPlanD.Creditos]
Carpeta=Detalle
Clave=CEPlanD.Creditos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[Detalle.Columnas]
Materia=97
Precio=92
Creditos=103
[Acciones.Materias]
Nombre=Materias
Boton=17
NombreEnBoton=S
NombreDesplegar=&Materias
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Visible=S
Antes=S
EspacioPrevio=S
ActivoCondicion=(no CEPlan:CEPlan.CreditoDirecto) y ConDatos(CEPlan:CEPlan.CEPlan)
AntesExpresiones=Asigna(Info.Plan, CEPlan:CEPlan.CEPlan)<BR>Asigna(Info.Descripcion, CEPlan:CEPlan.Descripcion)<BR>Forma(<T>CEPlanD<T>)
[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S
Carpeta=Detalle
NombreEnBoton=S
EspacioPrevio=S
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CEPlan
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Clave<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=NivelAcademico
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=Area
ListaEnCaptura=CEPlan.Descripcion<BR>CEPlan.CreditoDirecto<BR>CEPlan.Creditos
FiltroAplicaEn1=CEPlan.Nivel
FiltroAplicaEn2=CEPlan.Area
FiltroTodo=S
FiltroTodoFinal=S
PestanaOtroNombre=S
PestanaNombre=plan(es)
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroListaEstatus=(Todos)<BR>ALTA<BR>BLOQUEADO<BR>BAJA
FiltroEstatusDefault=ALTA
IconosNombre=CEPlan:CEPlan.CEPlan
[(Carpeta Abrir).Columnas]
0=74
1=386
2=60
3=67
4=65
[(Carpeta Abrir).CEPlan.Descripcion]
Carpeta=(Carpeta Abrir)
Clave=CEPlan.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
[(Carpeta Abrir).CEPlan.CreditoDirecto]
Carpeta=(Carpeta Abrir)
Clave=CEPlan.CreditoDirecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[(Carpeta Abrir).CEPlan.Creditos]
Carpeta=(Carpeta Abrir)
Clave=CEPlan.Creditos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=E&liminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Visible=S
Carpeta=Detalle
NombreEnBoton=S
ConfirmarAntes=S
ActivoCondicion=no CEPlan:CEPlan.TieneMovimientos
[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 2 (Registros)
Activo=S
Visible=S
EspacioPrevio=S
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
UsaTeclaRapida=S
NombreEnBoton=S
[Detalle]
Estilo=Ficha
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CEPlan
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
[Detalle.CEPlan.CEPlan]
Carpeta=Detalle
Clave=CEPlan.CEPlan
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
[Detalle.CEPlan.Estatus]
Carpeta=Detalle
Clave=CEPlan.Estatus
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
[Detalle.CEPlan.Descripcion]
Carpeta=Detalle
Clave=CEPlan.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
[Detalle.CEPlan.Nivel]
Carpeta=Detalle
Clave=CEPlan.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
[Detalle.CEPlan.Area]
Carpeta=Detalle
Clave=CEPlan.Area
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S
[Detalle.CEPlan.CreditoDirecto]
Carpeta=Detalle
Clave=CEPlan.CreditoDirecto
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=15
ColorFondo=Blanco
[Detalle.CEPlan.Creditos]
Carpeta=Detalle
Clave=CEPlan.Creditos
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=15
LineaNueva=S
[Detalle.CEPlan.HorarioVariable]
Carpeta=Detalle
Clave=CEPlan.HorarioVariable
Editar=S
LineaNueva=N
3D=S
Tamano=15
ColorFondo=Blanco
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEPlan
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
CarpetaVisible=S
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CEPlan.Coordinacion
FiltroValida1=CEPlan.Coordinacion
FiltroGrupo2=CEPlan.Nivel
FiltroValida2=CEPlan.Nivel
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroNull=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroGrupo3=CEPlan.Area
FiltroValida3=CEPlan.Area
[Lista.CEPlan.CEPlan]
Carpeta=Lista
Clave=CEPlan.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Lista.CEPlan.Descripcion]
Carpeta=Lista
Clave=CEPlan.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
[Lista.Columnas]
CEPlan=69
Descripcion=199
Materia=89
Tipo=75
Precio=68
Creditos=45
CentroCostos=127
ClavePresupuestal=116
[Detalle.CEPlan.CreditosOpcional]
Carpeta=Detalle
Clave=CEPlan.CreditosOpcional
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
[Detalle.CEPlan.Impuesto1]
Carpeta=Detalle
Clave=CEPlan.Impuesto1
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
[Detalle.CEPlan.Condicion]
Carpeta=Detalle
Clave=CEPlan.Condicion
Editar=S
ValidaNombre=S
3D=S
Tamano=31
ColorFondo=Blanco
LineaNueva=S
[Detalle.CreditosTotales]
Carpeta=Detalle
Clave=CreditosTotales
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Plata
Efectos=[Negritas]
Tamano=15
[Acciones.Precios]
Nombre=Precios
Boton=64
NombreDesplegar=&Lista de Precios
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CEPlanPrecio
Visible=S
Antes=S
NombreEnBoton=S
ActivoCondicion=(CEPlan:CEPlan.CreditoDirecto) y ConDatos(CEPlan:CEPlan.CEPlan)
AntesExpresiones=Asigna(Info.Plan, CEPlan:CEPlan.CEPlan)
[Detalle.CEPlan.Coordinacion]
Carpeta=Detalle
Clave=CEPlan.Coordinacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
[Detalle.CEPlan.MonedaPrecio]
Carpeta=Detalle
Clave=CEPlan.MonedaPrecio
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
[Detalle.CEPlan.Evaluacion]
Carpeta=Detalle
Clave=CEPlan.Evaluacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=31
ColorFondo=Blanco
[Detalle.CEPlan.Aprobacion]
Carpeta=Detalle
Clave=CEPlan.Aprobacion
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco














[CEMateria.Columnas]
0=91
1=333












[Detalle.CEPlan.Inscripcion]
Carpeta=Detalle
Clave=CEPlan.Inscripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco















[Acciones.NivelAcademico]
Nombre=NivelAcademico
Boton=57
NombreEnBoton=S
NombreDesplegar=Niveles
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=NivelAcademico
Activo=S
Visible=S









[Acciones.Area]
Nombre=Area
Boton=95
NombreEnBoton=S
NombreDesplegar=Areas
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=Area
Activo=S
Visible=S

EspacioPrevio=S










[Acciones.Coordinacion]
Nombre=Coordinacion
Boton=93
NombreEnBoton=S
NombreDesplegar=Coordinaciones
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=Coordinacion
Activo=S
Visible=S

EspacioPrevio=S

















































[Lista.ListaEnCaptura]
(Inicio)=CEPlan.CEPlan
CEPlan.CEPlan=CEPlan.Descripcion
CEPlan.Descripcion=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)








[Otros]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Otros Datos
Clave=Otros
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CEPlan
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=$00DFDFDF
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Otros.CEPlan.CDIPermiteBeca]
Carpeta=Otros
Clave=CEPlan.CDIPermiteBeca
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco













[Detalle.CEPlan.Precio]
Carpeta=Detalle
Clave=CEPlan.Precio
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco




















[Detalle.CEPlan.CDIConcepto]
Carpeta=Detalle
Clave=CEPlan.CDIConcepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=48
ColorFondo=Blanco





[Detalle.ListaEnCaptura]
(Inicio)=CEPlan.CEPlan
CEPlan.CEPlan=CEPlan.Estatus
CEPlan.Estatus=CEPlan.Descripcion
CEPlan.Descripcion=CEPlan.Coordinacion
CEPlan.Coordinacion=CEPlan.Nivel
CEPlan.Nivel=CEPlan.Area
CEPlan.Area=CEPlan.CreditoDirecto
CEPlan.CreditoDirecto=CEPlan.HorarioVariable
CEPlan.HorarioVariable=CEPlan.Creditos
CEPlan.Creditos=CEPlan.CreditosOpcional
CEPlan.CreditosOpcional=CreditosTotales
CreditosTotales=CEPlan.Inscripcion
CEPlan.Inscripcion=CEPlan.MonedaPrecio
CEPlan.MonedaPrecio=CEPlan.Precio
CEPlan.Precio=CEPlan.Condicion
CEPlan.Condicion=CEPlan.Impuesto1
CEPlan.Impuesto1=CEPlan.Evaluacion
CEPlan.Evaluacion=CEPlan.Aprobacion
CEPlan.Aprobacion=CEPlan.CDIConcepto
CEPlan.CDIConcepto=(Fin)












[Otros.CEPlan.CDIComite]
Carpeta=Otros
Clave=CEPlan.CDIComite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=51
ColorFondo=Blanco






[Otros.CEPlan.CEPlan]
Carpeta=Otros
Clave=CEPlan.CEPlan
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]

[Otros.CEPlan.Descripcion]
Carpeta=Otros
Clave=CEPlan.Descripcion
ValidaNombre=S
3D=S
Pegado=N
Tamano=35
ColorFondo=Plata
Efectos=[Negritas]












[Otros.CEPlan.CDIEdadMinima]
Carpeta=Otros
Clave=CEPlan.CDIEdadMinima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDIEdadMaxima]
Carpeta=Otros
Clave=CEPlan.CDIEdadMaxima
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDIEstaturaMinima]
Carpeta=Otros
Clave=CEPlan.CDIEstaturaMinima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDIPesoMinimo]
Carpeta=Otros
Clave=CEPlan.CDIPesoMinimo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDISexo]
Carpeta=Otros
Clave=CEPlan.CDISexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDICoberturaMedica]
Carpeta=Otros
Clave=CEPlan.CDICoberturaMedica
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDIEvaluacionProfesor]
Carpeta=Otros
Clave=CEPlan.CDIEvaluacionProfesor
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDIEvaluacionPsicologica]
Carpeta=Otros
Clave=CEPlan.CDIEvaluacionPsicologica
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDICondicionFisica]
Carpeta=Otros
Clave=CEPlan.CDICondicionFisica
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDIDatosMedicos]
Carpeta=Otros
Clave=CEPlan.CDIDatosMedicos
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDIDatosTransporte]
Carpeta=Otros
Clave=CEPlan.CDIDatosTransporte
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDIMostrarInternet]
Carpeta=Otros
Clave=CEPlan.CDIMostrarInternet
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDIDiasVigenciaPreRegistro]
Carpeta=Otros
Clave=CEPlan.CDIDiasVigenciaPreRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDILimiteMesesDatosMedicos]
Carpeta=Otros
Clave=CEPlan.CDILimiteMesesDatosMedicos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CEPlan.CDICentroCostos]
Carpeta=Otros
Clave=CEPlan.CDICentroCostos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CentroCostos.Descripcion]
Carpeta=Otros
Clave=CentroCostos.Descripcion
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Plata
Efectos=[Negritas]














[Acciones.CDICEPlanCondicion]
Nombre=CDICEPlanCondicion
Boton=103
NombreDesplegar=Condiciones de Pago
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICEPlanCondicion
Activo=S
Antes=S
DespuesGuardar=S
Visible=S









ConCondicion=S
EjecucionCondicion=ConDatos(CEPlan:CEPlan.CEPlan)
AntesExpresiones=Asigna(Info.Plan, CEPlan:CEPlan.CEPlan)


















[Acciones.CDICEPlanFormaPagoTipo]
Nombre=CDICEPlanFormaPagoTipo
Boton=64
NombreDesplegar=Tipos de Formas de Pago
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICEPlanFormaPagoTipo
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(CEPlan:CEPlan.CEPlan)
Antes=S
AntesExpresiones=Asigna(Info.Plan, CEPlan:CEPlan.CEPlan)
DespuesGuardar=S
Visible=S

























[Otros.CEPlan.CDIClavePresupuestal]
Carpeta=Otros
Clave=CEPlan.CDIClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Otros.ClavePresupuestal.Descripcion]
Carpeta=Otros
Clave=ClavePresupuestal.Descripcion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=$00DFDFDF









[Otros.ListaEnCaptura]
(Inicio)=CEPlan.CEPlan
CEPlan.CEPlan=CEPlan.Descripcion
CEPlan.Descripcion=CEPlan.CDIPermiteBeca
CEPlan.CDIPermiteBeca=CEPlan.CDIComite
CEPlan.CDIComite=CEPlan.CDIEdadMinima
CEPlan.CDIEdadMinima=CEPlan.CDIEdadMaxima
CEPlan.CDIEdadMaxima=CEPlan.CDIEstaturaMinima
CEPlan.CDIEstaturaMinima=CEPlan.CDIPesoMinimo
CEPlan.CDIPesoMinimo=CEPlan.CDISexo
CEPlan.CDISexo=CEPlan.CDICoberturaMedica
CEPlan.CDICoberturaMedica=CEPlan.CDIEvaluacionProfesor
CEPlan.CDIEvaluacionProfesor=CEPlan.CDIEvaluacionPsicologica
CEPlan.CDIEvaluacionPsicologica=CEPlan.CDICondicionFisica
CEPlan.CDICondicionFisica=CEPlan.CDIDatosMedicos
CEPlan.CDIDatosMedicos=CEPlan.CDIDatosTransporte
CEPlan.CDIDatosTransporte=CEPlan.CDIMostrarInternet
CEPlan.CDIMostrarInternet=CEPlan.CDIDiasVigenciaPreRegistro
CEPlan.CDIDiasVigenciaPreRegistro=CEPlan.CDILimiteMesesDatosMedicos
CEPlan.CDILimiteMesesDatosMedicos=CEPlan.CDICentroCostos
CEPlan.CDICentroCostos=CentroCostos.Descripcion
CentroCostos.Descripcion=CEPlan.CDIClavePresupuestal
CEPlan.CDIClavePresupuestal=ClavePresupuestal.Descripcion
ClavePresupuestal.Descripcion=(Fin)



[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=Otros
Otros=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Nuevo
Nuevo=Eliminar
Eliminar=Materias
Materias=Precios
Precios=NivelAcademico
NivelAcademico=Area
Area=Coordinacion
Coordinacion=CDICEPlanCondicion
CDICEPlanCondicion=CDICEPlanFormaPagoTipo
CDICEPlanFormaPagoTipo=Navegador
Navegador=(Fin)
