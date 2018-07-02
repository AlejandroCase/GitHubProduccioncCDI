
[Forma]
Clave=CDIInscritosSI
Icono=0
Modulos=(Todos)
MovModulo=CDIInscritos
Nombre=Explorar Inscripciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIInscritos
PosicionInicialIzquierda=23
PosicionInicialArriba=0
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1319
Totalizadores=S
PosicionSec1=663
PosicionSec2=340
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Menus=S
PosicionCol1=148
ExpresionesAlMostrar=Asigna(Info.Grupo,sql(<T>xpcditragrupotrabajo :tU<T>,usuario))<BR>si(Info.Grupo=<T>Todos<T>,asigna(info.grupo,<T>NULL<T>))
MenuPrincipal=Reportes
[CDIInscritos]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
Clave=CDIInscritos
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIInscritos
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
ValidarCampos=S

ListaCamposAValidar=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)








FiltroGrupo1=CDIInscritos.CDIComite
PestanaNombre=PreRegistros
BusquedaRapidaControles=S
FiltroFechas=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroFechasCampo=CDIInscritos.fechaEmision
FiltroFechasDefault=Este Mes
FiltroFechasNormal=S
FiltroFechasCancelacion=CDIInscritos.FechaCancelacion
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
HojaOrdenarColumnas=S
FiltroAutoCampo=CDIInscritos.Coordinacion
FiltroTodo=S
FiltroEnOrden=S
OtroOrden=S
ListaOrden=CDIInscritos.Mov<TAB>(Decendente)
FiltroGrupo2=CDIInscritos.Coordinacion
FiltroGrupo3=CDIInscritos.CEProgama
FiltroGrupo4=CDIInscritos.CePlan
FiltroGrupo5=CDIInscritos.Grupo
FiltroGeneral=ISNULL(CDIComite,<T><T>)=ISNULL(ISNULL(<T>{Info.Grupo}<T>,<T><T>)
[CDIInscritos.CDIInscritos.Mov]
Carpeta=CDIInscritos
Clave=CDIInscritos.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.MovId]
Carpeta=CDIInscritos
Clave=CDIInscritos.MovId
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.fechaEmision]
Carpeta=CDIInscritos
Clave=CDIInscritos.fechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.FechaCancelacion]
Carpeta=CDIInscritos
Clave=CDIInscritos.FechaCancelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.CDISocio]
Carpeta=CDIInscritos
Clave=CDIInscritos.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.Estatus]
Carpeta=CDIInscritos
Clave=CDIInscritos.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco




[CDIInscritos.CDIInscritos.Grupo]
Carpeta=CDIInscritos
Clave=CDIInscritos.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.Espacio]
Carpeta=CDIInscritos
Clave=CDIInscritos.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.Profesor]
Carpeta=CDIInscritos
Clave=CDIInscritos.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.Horario]
Carpeta=CDIInscritos
Clave=CDIInscritos.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco



[CDIInscritos.CDIInscritos.CDIClavePresupuestalPR]
Carpeta=CDIInscritos
Clave=CDIInscritos.CDIClavePresupuestalPR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.MovSC]
Carpeta=CDIInscritos
Clave=CDIInscritos.MovSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.MovIDSC]
Carpeta=CDIInscritos
Clave=CDIInscritos.MovIDSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.FechaEmisionSC]
Carpeta=CDIInscritos
Clave=CDIInscritos.FechaEmisionSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.FechaCancelacionSC]
Carpeta=CDIInscritos
Clave=CDIInscritos.FechaCancelacionSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.EstatusSC]
Carpeta=CDIInscritos
Clave=CDIInscritos.EstatusSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


































[CDIInscritos.CDICteCat.Tipo]
Carpeta=CDIInscritos
Clave=CDICteCat.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritos.CDICteCat.Categoria]
Carpeta=CDIInscritos
Clave=CDICteCat.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDICteCat.Sede]
Carpeta=CDIInscritos
Clave=CDICteCat.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDICteCat.SubCategoria]
Carpeta=CDIInscritos
Clave=CDICteCat.SubCategoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDICteCat.Aporta]
Carpeta=CDIInscritos
Clave=CDICteCat.Aporta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[CDIInscritos.CDICteCat.Actividad]
Carpeta=CDIInscritos
Clave=CDICteCat.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDICteCat.Clase]
Carpeta=CDIInscritos
Clave=CDICteCat.Clase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritos.Cte.Nombre]
Carpeta=CDIInscritos
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.Direccion]
Carpeta=CDIInscritos
Clave=Cte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.DireccionNumero]
Carpeta=CDIInscritos
Clave=Cte.DireccionNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.Cte.DireccionNumeroInt]
Carpeta=CDIInscritos
Clave=Cte.DireccionNumeroInt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.Cte.EntreCalles]
Carpeta=CDIInscritos
Clave=Cte.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.Plano]
Carpeta=CDIInscritos
Clave=Cte.Plano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritos.Cte.Observaciones]
Carpeta=CDIInscritos
Clave=Cte.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.Delegacion]
Carpeta=CDIInscritos
Clave=Cte.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.Colonia]
Carpeta=CDIInscritos
Clave=Cte.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CodigoPostal]
Carpeta=CDIInscritos
Clave=Cte.CodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritos.Cte.Poblacion]
Carpeta=CDIInscritos
Clave=Cte.Poblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.Estado]
Carpeta=CDIInscritos
Clave=Cte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritos.Cte.Pais]
Carpeta=CDIInscritos
Clave=Cte.Pais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritos.Cte.Zona]
Carpeta=CDIInscritos
Clave=Cte.Zona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritos.Cte.Telefonos]
Carpeta=CDIInscritos
Clave=Cte.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.eMail1]
Carpeta=CDIInscritos
Clave=Cte.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.Cte.Estatus]
Carpeta=CDIInscritos
Clave=Cte.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritos.Cte.Descripcion13]
Carpeta=CDIInscritos
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.Cte.Descripcion15]
Carpeta=CDIInscritos
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransServicio]
Carpeta=CDIInscritos
Clave=Cte.CDITransServicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransHoraAscenso]
Carpeta=CDIInscritos
Clave=Cte.CDITransHoraAscenso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransMismaDir]
Carpeta=CDIInscritos
Clave=Cte.CDITransMismaDir
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransDirOtroSocio]
Carpeta=CDIInscritos
Clave=Cte.CDITransDirOtroSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransDireccion]
Carpeta=CDIInscritos
Clave=Cte.CDITransDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransNumero]
Carpeta=CDIInscritos
Clave=Cte.CDITransNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransNumeroInt]
Carpeta=CDIInscritos
Clave=Cte.CDITransNumeroInt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransEntreCalles]
Carpeta=CDIInscritos
Clave=Cte.CDITransEntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransPlano]
Carpeta=CDIInscritos
Clave=Cte.CDITransPlano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransCodigoPostal]
Carpeta=CDIInscritos
Clave=Cte.CDITransCodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransDelegacion]
Carpeta=CDIInscritos
Clave=Cte.CDITransDelegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransColonia]
Carpeta=CDIInscritos
Clave=Cte.CDITransColonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransPoblacion]
Carpeta=CDIInscritos
Clave=Cte.CDITransPoblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransEstado]
Carpeta=CDIInscritos
Clave=Cte.CDITransEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransNombreResp]
Carpeta=CDIInscritos
Clave=Cte.CDITransNombreResp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransTelefono]
Carpeta=CDIInscritos
Clave=Cte.CDITransTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransLLevarDom]
Carpeta=CDIInscritos
Clave=Cte.CDITransLLevarDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransHoraSalida]
Carpeta=CDIInscritos
Clave=Cte.CDITransHoraSalida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransMismaDir2]
Carpeta=CDIInscritos
Clave=Cte.CDITransMismaDir2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransDirOtroSocio2]
Carpeta=CDIInscritos
Clave=Cte.CDITransDirOtroSocio2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransDireccion2]
Carpeta=CDIInscritos
Clave=Cte.CDITransDireccion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransNumero2]
Carpeta=CDIInscritos
Clave=Cte.CDITransNumero2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransNumeroInt2]
Carpeta=CDIInscritos
Clave=Cte.CDITransNumeroInt2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransEntreCalles2]
Carpeta=CDIInscritos
Clave=Cte.CDITransEntreCalles2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransPlano2]
Carpeta=CDIInscritos
Clave=Cte.CDITransPlano2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransCodigoPostal2]
Carpeta=CDIInscritos
Clave=Cte.CDITransCodigoPostal2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransDelegacion2]
Carpeta=CDIInscritos
Clave=Cte.CDITransDelegacion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransColonia2]
Carpeta=CDIInscritos
Clave=Cte.CDITransColonia2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransPoblacion2]
Carpeta=CDIInscritos
Clave=Cte.CDITransPoblacion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransEstado2]
Carpeta=CDIInscritos
Clave=Cte.CDITransEstado2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransNombreResp2]
Carpeta=CDIInscritos
Clave=Cte.CDITransNombreResp2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.Cte.CDITransTelefono2]
Carpeta=CDIInscritos
Clave=Cte.CDITransTelefono2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.Columnas]
CDIComite=99
Coordinacion=92
CePlan=99
Descripcion=142
Area=64
Precio=157
CDIConcepto=117
CDIClavePresupuestal=69
Mov=68
MovId=42
fechaEmision=72
FechaCancelacion=93
CDISocio=64
Estatus=68
Importe=64
Impuestos=64
DescuentoLineal=82
Grupo=71
Espacio=64
Profesor=46
Horario=102
PrecioPR=64
DescuentoLinealPR=95
CDIClavePresupuestalPR=141
MovSC=75
MovIDSC=47
FechaEmisionSC=79
FechaCancelacionSC=103
EstatusSC=69
ImporteSC=64
ImpuestosSC=67
DescuentoLinealSc=93
MovRE=45
MovIdRE=54
FechaEmisionRE=78
FechaCancelacionRE=103
EstatusRE=69
ImporteRE=64
ImpuestosRE=67
DescuentoLinealRE=95
ArticuloRE=58
PrecioRE=64
DescuentoLineaRE=93
MovCRE=45
MovIDCRE=59
FechaEmisionCRE=94
FechaCancelacionCRE=110
EstatusCRE=66
ImporteCRE=64
ImpuestosCRE=74
AplicaCRE=66
AplicaIDCRE=65
MovCCOB=56
MovIdCCOB=65
FechaEmisionCCOB=96
FechaCancelacionCCOB=118
EstatusCCOB=94
ImporteCCOB=70
ImpuestosCCOB=82
AplicaCCOB=61
AplicaIdCCOB=72
ImporteAplicaCCOB=98
Tipo=33
Categoria=60
Sede=37
SubCategoria=74
Aporta=37
Actividad=57
Clase=53
Nombre=184
Direccion=163
DireccionNumero=84
DireccionNumeroInt=82
EntreCalles=87
Plano=43
Observaciones=77
Delegacion=132
Colonia=184
CodigoPostal=69
Poblacion=68
Estado=104
Pais=50
Zona=39
Telefonos=135
eMail1=184
Estatus_1=45
Descripcion13=54
Descripcion15=97
CDITransServicio=112





CDITransHoraAscenso=85
CDITransMismaDir=79
CDITransDirOtroSocio=100
CDITransDireccion=129
CDITransNumero=69
CDITransNumeroInt=60
CDITransEntreCalles=187
CDITransPlano=35
CDITransCodigoPostal=32
CDITransDelegacion=92
CDITransColonia=125
CDITransPoblacion=107
CDITransEstado=95
CDITransNombreResp=131
CDITransTelefono=93
CDITransLLevarDom=93
CDITransHoraSalida=88
CDITransMismaDir2=73
CDITransDirOtroSocio2=100
CDITransDireccion2=124
CDITransNumero2=56
CDITransNumeroInt2=59
CDITransEntreCalles2=250
CDITransPlano2=59
CDITransCodigoPostal2=49
CDITransDelegacion2=90
CDITransColonia2=129
CDITransPoblacion2=99
CDITransEstado2=103
CDITransNombreResp2=124
CDITransTelefono2=92







CePlanPr=100
CDIBeca=111
MovBaja=52
MovIDBaja=65
FechaEmisionBaja=94
FechaCancelacionBaja=111
EstatusBaja=67
ImporteBaja=64
ImpuestosBaja=75
CEPlanBaja=64
GrupoBaja=64
EspacioBaja=64
PrecioBaja=64
DescuentoLinealBaja=103
CDIBecaBaja=66
Conteo=64
CEProgama=64
Materia=64
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
Totalizadores2=suma(CDIInscritos:CDIInscritos.Conteo)
Totalizadores=S
TotCarpetaRenglones=CDIInscritos
TotExpresionesEnSumas=S
TotAlCambiar=S
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
Carpeta=CDIInscritos
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
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
Vista=CDIInscritos
Fuente={Tahoma, 8, Negro, []}
CarpetaVisible=S










[CDIInscritos.CDIInscritos.CDIComite]
Carpeta=CDIInscritos
Clave=CDIInscritos.CDIComite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.Coordinacion]
Carpeta=CDIInscritos
Clave=CDIInscritos.Coordinacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.CePlan]
Carpeta=CDIInscritos
Clave=CDIInscritos.CePlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.Descripcion]
Carpeta=CDIInscritos
Clave=CDIInscritos.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.Area]
Carpeta=CDIInscritos
Clave=CDIInscritos.Area
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.Precio]
Carpeta=CDIInscritos
Clave=CDIInscritos.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.CDIConcepto]
Carpeta=CDIInscritos
Clave=CDIInscritos.CDIConcepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.CDIClavePresupuestal]
Carpeta=CDIInscritos
Clave=CDIInscritos.CDIClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.CePlanPr]
Carpeta=CDIInscritos
Clave=CDIInscritos.CePlanPr
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.CDIBeca]
Carpeta=CDIInscritos
Clave=CDIInscritos.CDIBeca
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDIInscritos.Grafica.x]
Tipo=Pastel
ConMarcas=S
TipoMarca=Etiqueta y Porcentage
Campo=CDIInscritos.Valor
CampoEtiqueta=CDIInscritos.CePlan
Clave=x
ColorDefinido=Rojo
Color=Automático


[CDIInscritosrrrr.Grafica.sdfsd]
Tipo=Pastel
ConMarcas=S
TipoMarca=Etiqueta y Valor
Campo=CDIInscritos.Importe
CampoEtiqueta=CDIInscritos.Importe
Apilacion=S
Clave=sdfsd
ColorDefinido=Negro
Color=Automático

[CDIInscritosrrrr.Grafica.csdf]
Estilo=Rectangulo
Tipo=Barras
ConMarcas=S
TipoMarca=Etiqueta y Porcentage
Campo=CDIInscritos.Importe
CampoEtiqueta=CDIInscritos.ImporteSC
Apilacion=S
Clave=csdf
ColorDefinido=Rojo
Color=Automático

[CDIInscritosrrrr.ListaSeries]
(Inicio)=sdfsd
sdfsd=csdf
csdf=(Fin)















[CDIInscritos.CDIInscritos.MovBaja]
Carpeta=CDIInscritos
Clave=CDIInscritos.MovBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.MovIDBaja]
Carpeta=CDIInscritos
Clave=CDIInscritos.MovIDBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.FechaEmisionBaja]
Carpeta=CDIInscritos
Clave=CDIInscritos.FechaEmisionBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.FechaCancelacionBaja]
Carpeta=CDIInscritos
Clave=CDIInscritos.FechaCancelacionBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.EstatusBaja]
Carpeta=CDIInscritos
Clave=CDIInscritos.EstatusBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco



[CDIInscritos.CDIInscritos.CEPlanBaja]
Carpeta=CDIInscritos
Clave=CDIInscritos.CEPlanBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.GrupoBaja]
Carpeta=CDIInscritos
Clave=CDIInscritos.GrupoBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.EspacioBaja]
Carpeta=CDIInscritos
Clave=CDIInscritos.EspacioBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco




[CDIInscritos.CDIInscritos.Conteo]
Carpeta=CDIInscritos
Clave=CDIInscritos.Conteo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





























[CDIInscritos.CDIInscritos.CEProgama]
Carpeta=CDIInscritos
Clave=CDIInscritos.CEProgama
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritos.CDIInscritos.Materia]
Carpeta=CDIInscritos
Clave=CDIInscritos.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



















































[Acciones.CDICEAsistenciaV2014]
Nombre=CDICEAsistenciaV2014
Boton=0
Menu=Reportes
EsDefault=S
NombreDesplegar=Lista de Asistencia
EnMenu=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDICEAsistenciaV2014
Activo=S
Visible=S





















[Acciones.CDIInscritosv2]
Nombre=CDIInscritosv2
Boton=0
NombreDesplegar=CDIInscritosv2(test)
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIInscritosv2
Activo=S
Visible=S

Menu=Reportes
























[CDIInscritos.ListaEnCaptura]
(Inicio)=CDIInscritos.Mov
CDIInscritos.Mov=CDIInscritos.MovId
CDIInscritos.MovId=CDIInscritos.fechaEmision
CDIInscritos.fechaEmision=CDIInscritos.FechaCancelacion
CDIInscritos.FechaCancelacion=CDIInscritos.CDISocio
CDIInscritos.CDISocio=CDIInscritos.Estatus
CDIInscritos.Estatus=CDIInscritos.CEProgama
CDIInscritos.CEProgama=CDIInscritos.Grupo
CDIInscritos.Grupo=CDIInscritos.Materia
CDIInscritos.Materia=CDIInscritos.Espacio
CDIInscritos.Espacio=CDIInscritos.Profesor
CDIInscritos.Profesor=CDIInscritos.Horario
CDIInscritos.Horario=CDIInscritos.CDIClavePresupuestalPR
CDIInscritos.CDIClavePresupuestalPR=CDIInscritos.MovBaja
CDIInscritos.MovBaja=CDIInscritos.MovIDBaja
CDIInscritos.MovIDBaja=CDIInscritos.FechaEmisionBaja
CDIInscritos.FechaEmisionBaja=CDIInscritos.FechaCancelacionBaja
CDIInscritos.FechaCancelacionBaja=CDIInscritos.EstatusBaja
CDIInscritos.EstatusBaja=CDIInscritos.CEPlanBaja
CDIInscritos.CEPlanBaja=CDIInscritos.GrupoBaja
CDIInscritos.GrupoBaja=CDIInscritos.EspacioBaja
CDIInscritos.EspacioBaja=CDIInscritos.MovSC
CDIInscritos.MovSC=CDIInscritos.MovIDSC
CDIInscritos.MovIDSC=CDIInscritos.FechaEmisionSC
CDIInscritos.FechaEmisionSC=CDIInscritos.FechaCancelacionSC
CDIInscritos.FechaCancelacionSC=CDIInscritos.EstatusSC
CDIInscritos.EstatusSC=CDICteCat.Tipo
CDICteCat.Tipo=CDICteCat.Categoria
CDICteCat.Categoria=CDICteCat.Sede
CDICteCat.Sede=CDICteCat.SubCategoria
CDICteCat.SubCategoria=CDICteCat.Aporta
CDICteCat.Aporta=CDICteCat.Actividad
CDICteCat.Actividad=CDICteCat.Clase
CDICteCat.Clase=Cte.Nombre
Cte.Nombre=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=Cte.DireccionNumeroInt
Cte.DireccionNumeroInt=Cte.EntreCalles
Cte.EntreCalles=Cte.Plano
Cte.Plano=Cte.Observaciones
Cte.Observaciones=Cte.Delegacion
Cte.Delegacion=Cte.Colonia
Cte.Colonia=Cte.CodigoPostal
Cte.CodigoPostal=Cte.Poblacion
Cte.Poblacion=Cte.Estado
Cte.Estado=Cte.Pais
Cte.Pais=Cte.Zona
Cte.Zona=Cte.Telefonos
Cte.Telefonos=Cte.eMail1
Cte.eMail1=Cte.Estatus
Cte.Estatus=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=Cte.CDITransServicio
Cte.CDITransServicio=Cte.CDITransHoraAscenso
Cte.CDITransHoraAscenso=Cte.CDITransMismaDir
Cte.CDITransMismaDir=Cte.CDITransDirOtroSocio
Cte.CDITransDirOtroSocio=Cte.CDITransDireccion
Cte.CDITransDireccion=Cte.CDITransNumero
Cte.CDITransNumero=Cte.CDITransNumeroInt
Cte.CDITransNumeroInt=Cte.CDITransEntreCalles
Cte.CDITransEntreCalles=Cte.CDITransPlano
Cte.CDITransPlano=Cte.CDITransCodigoPostal
Cte.CDITransCodigoPostal=Cte.CDITransDelegacion
Cte.CDITransDelegacion=Cte.CDITransColonia
Cte.CDITransColonia=Cte.CDITransPoblacion
Cte.CDITransPoblacion=Cte.CDITransEstado
Cte.CDITransEstado=Cte.CDITransNombreResp
Cte.CDITransNombreResp=Cte.CDITransTelefono
Cte.CDITransTelefono=Cte.CDITransLLevarDom
Cte.CDITransLLevarDom=Cte.CDITransHoraSalida
Cte.CDITransHoraSalida=Cte.CDITransMismaDir2
Cte.CDITransMismaDir2=Cte.CDITransDirOtroSocio2
Cte.CDITransDirOtroSocio2=Cte.CDITransDireccion2
Cte.CDITransDireccion2=Cte.CDITransNumero2
Cte.CDITransNumero2=Cte.CDITransNumeroInt2
Cte.CDITransNumeroInt2=Cte.CDITransEntreCalles2
Cte.CDITransEntreCalles2=Cte.CDITransPlano2
Cte.CDITransPlano2=Cte.CDITransCodigoPostal2
Cte.CDITransCodigoPostal2=Cte.CDITransDelegacion2
Cte.CDITransDelegacion2=Cte.CDITransColonia2
Cte.CDITransColonia2=Cte.CDITransPoblacion2
Cte.CDITransPoblacion2=Cte.CDITransEstado2
Cte.CDITransEstado2=Cte.CDITransNombreResp2
Cte.CDITransNombreResp2=Cte.CDITransTelefono2
Cte.CDITransTelefono2=CDIInscritos.CDIComite
CDIInscritos.CDIComite=CDIInscritos.Coordinacion
CDIInscritos.Coordinacion=CDIInscritos.CePlan
CDIInscritos.CePlan=CDIInscritos.Descripcion
CDIInscritos.Descripcion=CDIInscritos.Area
CDIInscritos.Area=CDIInscritos.Precio
CDIInscritos.Precio=CDIInscritos.CDIConcepto
CDIInscritos.CDIConcepto=CDIInscritos.CDIClavePresupuestal
CDIInscritos.CDIClavePresupuestal=CDIInscritos.CePlanPr
CDIInscritos.CePlanPr=CDIInscritos.CDIBeca
CDIInscritos.CDIBeca=CDIInscritos.Conteo
CDIInscritos.Conteo=(Fin)

[CDIInscritos.ListaCamposAValidar]
(Inicio)=CDIInscritos.CDIComite
CDIInscritos.CDIComite=CDIInscritos.Coordinacion
CDIInscritos.Coordinacion=CDIInscritos.CePlan
CDIInscritos.CePlan=CDIInscritos.Descripcion
CDIInscritos.Descripcion=CDIInscritos.CEProgama
CDIInscritos.CEProgama=CDIInscritos.Materia
CDIInscritos.Materia=CDIInscritos.Area
CDIInscritos.Area=CDIInscritos.Precio
CDIInscritos.Precio=CDIInscritos.CDIConcepto
CDIInscritos.CDIConcepto=CDIInscritos.CDIClavePresupuestal
CDIInscritos.CDIClavePresupuestal=(Fin)

[CDIInscritos.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=CANCELADO
CANCELADO=CONCLUIDO
CONCLUIDO=SINAFECTAR
SINAFECTAR=(Fin)

















[Forma.ListaCarpetas]
(Inicio)=CDIInscritos
CDIInscritos=Totales
Totales=(Fin)

[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=Mostrar Campos
Mostrar Campos=CDICEAsistenciaV2014
CDICEAsistenciaV2014=CDIInscritosv2
CDIInscritosv2=(Fin)
