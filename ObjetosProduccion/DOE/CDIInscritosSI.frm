
[Forma]
Clave=CDIInscritosSI
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Inscripciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIInscritosSI
PosicionInicialIzquierda=-19
PosicionInicialArriba=8
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1319
Menus=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Totalizadores=S
PosicionSec1=664
ExpresionesAlMostrar=asigna(info.usuario, sql(<T>select grupotrabajo from usuario where usuario=:tU<T>,usuario))<BR><BR>//Si(info.usuario=<T>Sistemas<T>,asigna(info.usuario,nulo))
MenuPrincipal=Reportes
[CDIInscritosSI]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=PreRegistros
Clave=CDIInscritosSI
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIInscritosSI
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaOrdenarColumnas=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
Filtros=S
OtroOrden=S
ValidarCampos=S
BusquedaRapidaControles=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
ListaEnCaptura=(Lista)


ListaCamposAValidar=(Lista)
ListaOrden=CDIInscritosSI.MovId<TAB>(Decendente)
FiltroGrupo1=CDIInscritosSI.CEProgama
FiltroGrupo2=CDIInscritosSI.CDIComite
FiltroGrupo3=CDIInscritosSI.Coordinacion
FiltroGrupo4=CDIInscritosSI.CePlan
FiltroGrupo5=CDIInscritosSI.Grupo
FiltroTodo=S
FiltroFechas=S
FiltroFechasCampo=CDIInscritosSI.fechaEmision
BusquedaRapida=S
BusquedaEnLinea=S
FiltroFechasDefault=Este Mes
FiltroFechasCancelacion=CDIInscritosSI.FechaCancelacion
HojaIndicador=S
HojaAjustarColumnas=S
HojaMantenerSeleccion=S
FiltroGeneral=EstatusProg=<T>VIGENTE<T>
[CDIInscritosSI.CDIInscritosSI.Mov]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.MovId]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.MovId
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.fechaEmision]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.fechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.FechaCancelacion]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.FechaCancelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CDISocio]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Estatus]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Materia]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CePlanPr]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CePlanPr
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Grupo]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Espacio]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Profesor]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Horario]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.MovSC]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.MovSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.MovIDSC]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.MovIDSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.FechaEmisionSC]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.FechaEmisionSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.FechaCancelacionSC]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.FechaCancelacionSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CDISocioSc]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CDISocioSc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.EstatusSC]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.EstatusSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.ImporteSC]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.ImporteSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.ImpuestosSC]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.ImpuestosSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.DescuentoLinealSc]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.DescuentoLinealSc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.MovBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.MovBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.MovIDBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.MovIDBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.FechaEmisionBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.FechaEmisionBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.FechaCancelacionBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.FechaCancelacionBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.SocioBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.SocioBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.EstatusBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.EstatusBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.ImporteBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.ImporteBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.ImpuestosBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.ImpuestosBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CDIClavePresupuestalBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CDIClavePresupuestalBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CEPlanBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CEPlanBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.GrupoBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.GrupoBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.EspacioBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.EspacioBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.PrecioBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.PrecioBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.DescuentoLinealBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.DescuentoLinealBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CDIBecaBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CDIBecaBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Conteo]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Conteo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.Cte.Nombre]
Carpeta=CDIInscritosSI
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



















































[CDIInscritosSI.Columnas]
Mov=60
MovId=42
fechaEmision=77
FechaCancelacion=94
CDISocio=64
Estatus=68
Materia=64
CePlanPr=64
Grupo=74
Espacio=77
Profesor=49
Horario=99
MovSC=124
MovIDSC=124
FechaEmisionSC=94
FechaCancelacionSC=103
CDISocioSc=604
EstatusSC=94
ImporteSC=64
ImpuestosSC=67
DescuentoLinealSc=93
MovBaja=124
MovIDBaja=124
FechaEmisionBaja=94
FechaCancelacionBaja=111
SocioBaja=64
EstatusBaja=94
ImporteBaja=64
ImpuestosBaja=75
CDIClavePresupuestalBaja=304
CEPlanBaja=64
GrupoBaja=64
EspacioBaja=64
PrecioBaja=64
DescuentoLinealBaja=103
CDIBecaBaja=66
Conteo=64
Nombre=184
Direccion=604
DireccionNumero=124
DireccionNumeroInt=124
EntreCalles=604
Plano=94
Observaciones=604
Delegacion=184
Colonia=184
CodigoPostal=69
Poblacion=184
Estado=184
Pais=184
Zona=304
Telefonos=604
eMail1=184
Estatus_1=94
Descripcion13=304
Descripcion15=304
CDITransServicio=112











CDITransHoraAscenso=85
CDITransMismaDir=79
CDITransDirOtroSocio=100
CDITransDireccion=604
CDITransNumero=124
CDITransNumeroInt=124
CDITransEntreCalles=604
CDITransPlano=94
CDITransCodigoPostal=94
CDITransDelegacion=604
CDITransColonia=604
CDITransPoblacion=604
CDITransEstado=184
CDITransNombreResp=604
CDITransTelefono=304
CDITransLLevarDom=88
CDITransHoraSalida=73
CDITransMismaDir2=79
CDITransDirOtroSocio2=100
CDITransDireccion2=604
CDITransNumero2=124
CDITransNumeroInt2=124
CDITransEntreCalles2=604
CDITransPlano2=94
CDITransCodigoPostal2=94
CDITransDelegacion2=604
CDITransColonia2=604
CDITransPoblacion2=604
CDITransEstado2=184
CDITransNombreResp2=604
CDITransTelefono2=304
CDIComite=304
Coordinacion=304
CePlan=64
Descripcion=604
Area=304
Precio=64
CDIConcepto=304
CDIClavePresupuestal=304
CEProgama=64
Cliente=64
Proyecto=304
Importe=64
Impuestos=64
DescuentoLineal=82
PrecioPR=64
DescuentoLinealPR=95
CDIBeca=64
CDIClavePresupuestalPR=304
ClienteSC=64
ClienteBaja=64
EstatusProg=94
Tipo=94
Categoria=304
Sede=304
SubCategoria=304
Aporta=37
Actividad=304
Clase=94
Edad=64
[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Mostrar Campos]
Nombre=Mostrar Campos
Boton=37
NombreDesplegar=Mostrar Campos
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S






[Acciones.CDICEAsistenciaV2014]
Nombre=CDICEAsistenciaV2014
Boton=0
Menu=Reportes
NombreDesplegar=Lista de Asistencia
EnMenu=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDICEAsistenciaV2014
Activo=S
Visible=S

[Acciones.CDICEAsistenciaV2014Bloq]
Nombre=CDICEAsistenciaV2014Bloq
Boton=0
Menu=Reportes
NombreDesplegar=Lista de Asistencia c/datos
EnMenu=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDICEAsisteTC
Activo=S
Visible=S



[Totales]
Estilo=Cubo
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Totales
Clave=Totales
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIInscritosSI
Fuente={Tahoma, 8, Negro, []}
CarpetaVisible=S







[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Inscritos
Totalizadores2=suma(CDIInscritosSI:CDIInscritosSI.Conteo)
Totalizadores=S
TotCarpetaRenglones=CDIInscritosSI
TotExpresionesEnSumas=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Inscritos
CarpetaVisible=S

[(Carpeta Totalizadores).Inscritos]
Carpeta=(Carpeta Totalizadores)
Clave=Inscritos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata











































[CDIInscritosSI.CDIInscritosSI.CDIComite]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CDIComite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Coordinacion]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Coordinacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CePlan]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CePlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Descripcion]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CEProgama]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CEProgama
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



































































[CDIInscritosSI.ListaEnCaptura]
(Inicio)=CDIInscritosSI.Mov
CDIInscritosSI.Mov=CDIInscritosSI.MovId
CDIInscritosSI.MovId=CDIInscritosSI.fechaEmision
CDIInscritosSI.fechaEmision=CDIInscritosSI.FechaCancelacion
CDIInscritosSI.FechaCancelacion=CDIInscritosSI.CDISocio
CDIInscritosSI.CDISocio=Cte.Nombre
Cte.Nombre=CDIInscritosSI.Edad
CDIInscritosSI.Edad=CDIInscritosSI.Estatus
CDIInscritosSI.Estatus=CDIInscritosSI.Materia
CDIInscritosSI.Materia=CDIInscritosSI.CePlanPr
CDIInscritosSI.CePlanPr=CDIInscritosSI.Grupo
CDIInscritosSI.Grupo=CDIInscritosSI.Espacio
CDIInscritosSI.Espacio=CDIInscritosSI.Profesor
CDIInscritosSI.Profesor=CDIInscritosSI.Horario
CDIInscritosSI.Horario=CDIInscritosSI.MovSC
CDIInscritosSI.MovSC=CDIInscritosSI.MovIDSC
CDIInscritosSI.MovIDSC=CDIInscritosSI.FechaEmisionSC
CDIInscritosSI.FechaEmisionSC=CDIInscritosSI.FechaCancelacionSC
CDIInscritosSI.FechaCancelacionSC=CDIInscritosSI.CDISocioSc
CDIInscritosSI.CDISocioSc=CDIInscritosSI.EstatusSC
CDIInscritosSI.EstatusSC=CDIInscritosSI.ImporteSC
CDIInscritosSI.ImporteSC=CDIInscritosSI.ImpuestosSC
CDIInscritosSI.ImpuestosSC=CDIInscritosSI.DescuentoLinealSc
CDIInscritosSI.DescuentoLinealSc=CDIInscritosSI.MovBaja
CDIInscritosSI.MovBaja=CDIInscritosSI.MovIDBaja
CDIInscritosSI.MovIDBaja=CDIInscritosSI.FechaEmisionBaja
CDIInscritosSI.FechaEmisionBaja=CDIInscritosSI.FechaCancelacionBaja
CDIInscritosSI.FechaCancelacionBaja=CDIInscritosSI.SocioBaja
CDIInscritosSI.SocioBaja=CDIInscritosSI.EstatusBaja
CDIInscritosSI.EstatusBaja=CDIInscritosSI.ImporteBaja
CDIInscritosSI.ImporteBaja=CDIInscritosSI.ImpuestosBaja
CDIInscritosSI.ImpuestosBaja=CDIInscritosSI.CDIClavePresupuestalBaja
CDIInscritosSI.CDIClavePresupuestalBaja=CDIInscritosSI.CEPlanBaja
CDIInscritosSI.CEPlanBaja=CDIInscritosSI.GrupoBaja
CDIInscritosSI.GrupoBaja=CDIInscritosSI.EspacioBaja
CDIInscritosSI.EspacioBaja=CDIInscritosSI.PrecioBaja
CDIInscritosSI.PrecioBaja=CDIInscritosSI.DescuentoLinealBaja
CDIInscritosSI.DescuentoLinealBaja=CDIInscritosSI.CDIBecaBaja
CDIInscritosSI.CDIBecaBaja=CDIInscritosSI.Conteo
CDIInscritosSI.Conteo=CDIInscritosSI.CDIComite
CDIInscritosSI.CDIComite=CDIInscritosSI.Coordinacion
CDIInscritosSI.Coordinacion=CDIInscritosSI.CePlan
CDIInscritosSI.CePlan=CDIInscritosSI.Descripcion
CDIInscritosSI.Descripcion=CDIInscritosSI.CEProgama
CDIInscritosSI.CEProgama=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=(Fin)

[CDIInscritosSI.ListaCamposAValidar]
(Inicio)=CDIInscritosSI.CDIComite
CDIInscritosSI.CDIComite=CDIInscritosSI.Coordinacion
CDIInscritosSI.Coordinacion=CDIInscritosSI.CePlan
CDIInscritosSI.CePlan=CDIInscritosSI.Descripcion
CDIInscritosSI.Descripcion=CDIInscritosSI.CEProgama
CDIInscritosSI.CEProgama=CDIInscritosSI.Materia
CDIInscritosSI.Materia=CDIInscritosSI.Area
CDIInscritosSI.Area=CDIInscritosSI.Precio
CDIInscritosSI.Precio=CDIInscritosSI.CDIConcepto
CDIInscritosSI.CDIConcepto=CDIInscritosSI.CDIClavePresupuestal
CDIInscritosSI.CDIClavePresupuestal=(Fin)

[CDIInscritosSI.CDIInscritosSI.Edad]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Edad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIInscritosSI.Cte.Descripcion13]
Carpeta=CDIInscritosSI
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.Cte.Descripcion15]
Carpeta=CDIInscritosSI
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco





[Forma.ListaCarpetas]
(Inicio)=CDIInscritosSI
CDIInscritosSI=Totales
Totales=(Fin)

[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=Mostrar Campos
Mostrar Campos=CDICEAsistenciaV2014
CDICEAsistenciaV2014=CDICEAsistenciaV2014Bloq
CDICEAsistenciaV2014Bloq=(Fin)
