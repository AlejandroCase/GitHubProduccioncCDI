
[Forma]
Clave=CDIInscritosSI
Icono=0
Modulos=(Todos)
MovModulo=CDIInscritosSI
Nombre=Explorar Inscripciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIInscritosSI
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
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
[CDIInscritosSI]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
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








FiltroGrupo1=CDIInscritosSI.CDIComite
PestanaNombre=PreRegistros
BusquedaRapidaControles=S
FiltroFechas=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroFechasCampo=CDIInscritosSI.fechaEmision
FiltroFechasDefault=Este Mes
FiltroFechasNormal=S
FiltroFechasCancelacion=CDIInscritosSI.FechaCancelacion
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
HojaOrdenarColumnas=S
FiltroAutoCampo=CDIInscritosSI.Coordinacion
FiltroTodo=S
FiltroEnOrden=S
OtroOrden=S
ListaOrden=CDIInscritosSI.Mov<TAB>(Decendente)
FiltroGrupo2=CDIInscritosSI.Coordinacion
FiltroGrupo3=CDIInscritosSI.CEProgama
FiltroGrupo4=CDIInscritosSI.CePlan
FiltroGrupo5=CDIInscritosSI.Grupo
FiltroGeneral=ISNULL(CDIComite,<T><T>)=ISNULL(ISNULL(<T>{Info.Grupo}<T>,<T><T>)
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



[CDIInscritosSI.CDIInscritosSI.CDIClavePresupuestalPR]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CDIClavePresupuestalPR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
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

[CDIInscritosSI.CDIInscritosSI.EstatusSC]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.EstatusSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


































[CDIInscritosSI.CDICteCat.Tipo]
Carpeta=CDIInscritosSI
Clave=CDICteCat.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.CDICteCat.Categoria]
Carpeta=CDIInscritosSI
Clave=CDICteCat.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.CDICteCat.Sede]
Carpeta=CDIInscritosSI
Clave=CDICteCat.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.CDICteCat.SubCategoria]
Carpeta=CDIInscritosSI
Clave=CDICteCat.SubCategoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.CDICteCat.Aporta]
Carpeta=CDIInscritosSI
Clave=CDICteCat.Aporta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[CDIInscritosSI.CDICteCat.Actividad]
Carpeta=CDIInscritosSI
Clave=CDICteCat.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.CDICteCat.Clase]
Carpeta=CDIInscritosSI
Clave=CDICteCat.Clase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
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

[CDIInscritosSI.Cte.Direccion]
Carpeta=CDIInscritosSI
Clave=Cte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.DireccionNumero]
Carpeta=CDIInscritosSI
Clave=Cte.DireccionNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.Cte.DireccionNumeroInt]
Carpeta=CDIInscritosSI
Clave=Cte.DireccionNumeroInt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.Cte.EntreCalles]
Carpeta=CDIInscritosSI
Clave=Cte.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.Plano]
Carpeta=CDIInscritosSI
Clave=Cte.Plano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.Cte.Observaciones]
Carpeta=CDIInscritosSI
Clave=Cte.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.Delegacion]
Carpeta=CDIInscritosSI
Clave=Cte.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.Colonia]
Carpeta=CDIInscritosSI
Clave=Cte.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CodigoPostal]
Carpeta=CDIInscritosSI
Clave=Cte.CodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.Cte.Poblacion]
Carpeta=CDIInscritosSI
Clave=Cte.Poblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.Estado]
Carpeta=CDIInscritosSI
Clave=Cte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritosSI.Cte.Pais]
Carpeta=CDIInscritosSI
Clave=Cte.Pais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritosSI.Cte.Zona]
Carpeta=CDIInscritosSI
Clave=Cte.Zona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritosSI.Cte.Telefonos]
Carpeta=CDIInscritosSI
Clave=Cte.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.eMail1]
Carpeta=CDIInscritosSI
Clave=Cte.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.Cte.Estatus]
Carpeta=CDIInscritosSI
Clave=Cte.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
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

[CDIInscritosSI.Cte.CDITransServicio]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransServicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransHoraAscenso]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransHoraAscenso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransMismaDir]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransMismaDir
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransDirOtroSocio]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransDirOtroSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransDireccion]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransNumero]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransNumeroInt]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransNumeroInt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransEntreCalles]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransEntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransPlano]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransPlano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransCodigoPostal]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransCodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransDelegacion]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransDelegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransColonia]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransColonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransPoblacion]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransPoblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransEstado]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransNombreResp]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransNombreResp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransTelefono]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransLLevarDom]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransLLevarDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransHoraSalida]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransHoraSalida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransMismaDir2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransMismaDir2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransDirOtroSocio2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransDirOtroSocio2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransDireccion2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransDireccion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransNumero2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransNumero2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransNumeroInt2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransNumeroInt2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransEntreCalles2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransEntreCalles2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransPlano2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransPlano2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransCodigoPostal2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransCodigoPostal2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransDelegacion2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransDelegacion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransColonia2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransColonia2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransPoblacion2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransPoblacion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransEstado2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransEstado2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransNombreResp2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransNombreResp2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIInscritosSI.Cte.CDITransTelefono2]
Carpeta=CDIInscritosSI
Clave=Cte.CDITransTelefono2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.Columnas]
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
Totalizadores2=suma(CDIInscritosSI:CDIInscritosSI.Conteo)
Totalizadores=S
TotCarpetaRenglones=CDIInscritosSI
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
Carpeta=CDIInscritosSI
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
Vista=CDIInscritosSI
Fuente={Tahoma, 8, Negro, []}
CarpetaVisible=S










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

[CDIInscritosSI.CDIInscritosSI.Area]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Area
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.Precio]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CDIConcepto]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CDIConcepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIInscritosSI.CDIInscritosSI.CDIClavePresupuestal]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CDIClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
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

[CDIInscritosSI.CDIInscritosSI.CDIBeca]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.CDIBeca
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDIInscritosSI.Grafica.x]
Tipo=Pastel
ConMarcas=S
TipoMarca=Etiqueta y Porcentage
Campo=CDIInscritosSI.Valor
CampoEtiqueta=CDIInscritosSI.CePlan
Clave=x
ColorDefinido=Rojo
Color=Automático


[CDIInscritosSIrrrr.Grafica.sdfsd]
Tipo=Pastel
ConMarcas=S
TipoMarca=Etiqueta y Valor
Campo=CDIInscritosSI.Importe
CampoEtiqueta=CDIInscritosSI.Importe
Apilacion=S
Clave=sdfsd
ColorDefinido=Negro
Color=Automático

[CDIInscritosSIrrrr.Grafica.csdf]
Estilo=Rectangulo
Tipo=Barras
ConMarcas=S
TipoMarca=Etiqueta y Porcentage
Campo=CDIInscritosSI.Importe
CampoEtiqueta=CDIInscritosSI.ImporteSC
Apilacion=S
Clave=csdf
ColorDefinido=Rojo
Color=Automático

[CDIInscritosSIrrrr.ListaSeries]
(Inicio)=sdfsd
sdfsd=csdf
csdf=(Fin)















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

[CDIInscritosSI.CDIInscritosSI.EstatusBaja]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.EstatusBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
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




[CDIInscritosSI.CDIInscritosSI.Conteo]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Conteo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
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

[CDIInscritosSI.CDIInscritosSI.Materia]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Materia
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





















[Acciones.CDIInscritosSIv2]
Nombre=CDIInscritosSIv2
Boton=0
NombreDesplegar=CDIInscritosSIv2(test)
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIInscritosSIv2
Activo=S
Visible=S

Menu=Reportes


































[CDIInscritosSI.ListaEnCaptura]
(Inicio)=CDIInscritosSI.Mov
CDIInscritosSI.Mov=CDIInscritosSI.MovId
CDIInscritosSI.MovId=CDIInscritosSI.fechaEmision
CDIInscritosSI.fechaEmision=CDIInscritosSI.FechaCancelacion
CDIInscritosSI.FechaCancelacion=CDIInscritosSI.CDISocio
CDIInscritosSI.CDISocio=CDIInscritosSI.Estatus
CDIInscritosSI.Estatus=CDIInscritosSI.CEProgama
CDIInscritosSI.CEProgama=CDIInscritosSI.Grupo
CDIInscritosSI.Grupo=CDIInscritosSI.Materia
CDIInscritosSI.Materia=CDIInscritosSI.Espacio
CDIInscritosSI.Espacio=CDIInscritosSI.Profesor
CDIInscritosSI.Profesor=CDIInscritosSI.Horario
CDIInscritosSI.Horario=CDIInscritosSI.CDIClavePresupuestalPR
CDIInscritosSI.CDIClavePresupuestalPR=CDIInscritosSI.MovBaja
CDIInscritosSI.MovBaja=CDIInscritosSI.MovIDBaja
CDIInscritosSI.MovIDBaja=CDIInscritosSI.FechaEmisionBaja
CDIInscritosSI.FechaEmisionBaja=CDIInscritosSI.FechaCancelacionBaja
CDIInscritosSI.FechaCancelacionBaja=CDIInscritosSI.EstatusBaja
CDIInscritosSI.EstatusBaja=CDIInscritosSI.CEPlanBaja
CDIInscritosSI.CEPlanBaja=CDIInscritosSI.GrupoBaja
CDIInscritosSI.GrupoBaja=CDIInscritosSI.EspacioBaja
CDIInscritosSI.EspacioBaja=CDIInscritosSI.MovSC
CDIInscritosSI.MovSC=CDIInscritosSI.MovIDSC
CDIInscritosSI.MovIDSC=CDIInscritosSI.FechaEmisionSC
CDIInscritosSI.FechaEmisionSC=CDIInscritosSI.FechaCancelacionSC
CDIInscritosSI.FechaCancelacionSC=CDIInscritosSI.EstatusSC
CDIInscritosSI.EstatusSC=CDICteCat.Tipo
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
Cte.CDITransTelefono2=CDIInscritosSI.CDIComite
CDIInscritosSI.CDIComite=CDIInscritosSI.Coordinacion
CDIInscritosSI.Coordinacion=CDIInscritosSI.CePlan
CDIInscritosSI.CePlan=CDIInscritosSI.Descripcion
CDIInscritosSI.Descripcion=CDIInscritosSI.Area
CDIInscritosSI.Area=CDIInscritosSI.Precio
CDIInscritosSI.Precio=CDIInscritosSI.CDIConcepto
CDIInscritosSI.CDIConcepto=CDIInscritosSI.CDIClavePresupuestal
CDIInscritosSI.CDIClavePresupuestal=CDIInscritosSI.CePlanPr
CDIInscritosSI.CePlanPr=CDIInscritosSI.CDIBeca
CDIInscritosSI.CDIBeca=CDIInscritosSI.Conteo
CDIInscritosSI.Conteo=(Fin)

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

[CDIInscritosSI.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=CANCELADO
CANCELADO=CONCLUIDO
CONCLUIDO=SINAFECTAR
SINAFECTAR=(Fin)

[Forma.ListaCarpetas]
(Inicio)=CDIInscritosSI
CDIInscritosSI=Totales
Totales=(Fin)

[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=Mostrar Campos
Mostrar Campos=CDICEAsistenciaV2014
CDICEAsistenciaV2014=CDIInscritosSIv2
CDIInscritosSIv2=(Fin)
