
[Forma]
Clave=CDIInscritosDir
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Inscritos Direccion
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIInscritosSI
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1320
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
HojaVistaOmision=Automática
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
FiltroTipo=Múltiple (por Grupos)
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
Direccion=207
DireccionNumero=82
DireccionNumeroInt=82
EntreCalles=150
Plano=94
Observaciones=604
Delegacion=127
Colonia=184
CodigoPostal=69
Poblacion=106
Estado=100
Pais=184
Zona=65
Telefonos=228
eMail1=184
Estatus_1=94
Descripcion13=304
Descripcion15=304
CDITransServicio=112











CDITransHoraAscenso=85
CDITransMismaDir=79
CDITransDirOtroSocio=100
CDITransDireccion=117
CDITransNumero=61
CDITransNumeroInt=61
CDITransEntreCalles=91
CDITransPlano=94
CDITransCodigoPostal=46
CDITransDelegacion=76
CDITransColonia=92
CDITransPoblacion=90
CDITransEstado=53
CDITransNombreResp=125
CDITransTelefono=74
CDITransLLevarDom=88
CDITransHoraSalida=73
CDITransMismaDir2=79
CDITransDirOtroSocio2=100
CDITransDireccion2=72
CDITransNumero2=58
CDITransNumeroInt2=57
CDITransEntreCalles2=67
CDITransPlano2=94
CDITransCodigoPostal2=40
CDITransDelegacion2=100
CDITransColonia2=85
CDITransPoblacion2=72
CDITransEstado2=53
CDITransNombreResp2=132
CDITransTelefono2=51
CDIComite=90
Coordinacion=104
CePlan=64
Descripcion=156
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





































































[CDIInscritosSI.CDIInscritosSI.Edad]
Carpeta=CDIInscritosSI
Clave=CDIInscritosSI.Edad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
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
CDIInscritosSI.Horario=CDIInscritosSI.Conteo
CDIInscritosSI.Conteo=CDIInscritosSI.CDIComite
CDIInscritosSI.CDIComite=CDIInscritosSI.Coordinacion
CDIInscritosSI.Coordinacion=CDIInscritosSI.CePlan
CDIInscritosSI.CePlan=CDIInscritosSI.Descripcion
CDIInscritosSI.Descripcion=CDIInscritosSI.CEProgama
CDIInscritosSI.CEProgama=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=Cte.DireccionNumeroInt
Cte.DireccionNumeroInt=Cte.EntreCalles
Cte.EntreCalles=Cte.Delegacion
Cte.Delegacion=Cte.Colonia
Cte.Colonia=Cte.CodigoPostal
Cte.CodigoPostal=Cte.Poblacion
Cte.Poblacion=Cte.Estado
Cte.Estado=Cte.Zona
Cte.Zona=Cte.Telefonos
Cte.Telefonos=Cte.CDITransServicio
Cte.CDITransServicio=Cte.CDITransHoraAscenso
Cte.CDITransHoraAscenso=Cte.CDITransMismaDir
Cte.CDITransMismaDir=Cte.CDITransDirOtroSocio
Cte.CDITransDirOtroSocio=Cte.CDITransDireccion
Cte.CDITransDireccion=Cte.CDITransNumero
Cte.CDITransNumero=Cte.CDITransNumeroInt
Cte.CDITransNumeroInt=Cte.CDITransEntreCalles
Cte.CDITransEntreCalles=Cte.CDITransCodigoPostal
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
Cte.CDITransEntreCalles2=Cte.CDITransCodigoPostal2
Cte.CDITransCodigoPostal2=Cte.CDITransDelegacion2
Cte.CDITransDelegacion2=Cte.CDITransColonia2
Cte.CDITransColonia2=Cte.CDITransPoblacion2
Cte.CDITransPoblacion2=Cte.CDITransEstado2
Cte.CDITransEstado2=Cte.CDITransNombreResp2
Cte.CDITransNombreResp2=Cte.CDITransTelefono2
Cte.CDITransTelefono2=(Fin)

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



[Forma.ListaCarpetas]
(Inicio)=CDIInscritosSI
CDIInscritosSI=Totales
Totales=(Fin)

[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=Mostrar Campos
Mostrar Campos=CDICEAsistenciaV2014
CDICEAsistenciaV2014=(Fin)
