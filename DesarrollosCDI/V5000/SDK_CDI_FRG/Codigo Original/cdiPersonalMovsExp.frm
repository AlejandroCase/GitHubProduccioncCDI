[Forma]
Clave=cdiPersonalMovsExp
Nombre=Personal
Icono=4
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
PosicionInicialIzquierda=136
PosicionInicialArriba=42
PosicionInicialAltura=578
PosicionInicialAncho=1093
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Menus=S
BarraAyuda=S
DialogoAbrir=S
Plantillas=S
PermiteCopiarDoc=S
PlantillasExcepciones=(Lista)
MovModulo=RH
PosicionInicialAlturaCliente=645
PosicionSec1=53
VentanaEstadoInicial=Normal



PosicionCol1=752
PosicionCol2=786
ExpresionesAlMostrar=Asigna(Info.Tipo,<T>Externo<T>)<BR>//asigna(Info.Proyecto,sql(<T>Select GrupoTrabajo FROM Usuario where usuario=:tU<T>,usuario))
MenuPrincipal=(Lista)
[Lista.Personal.Personal]
Carpeta=Lista
Clave=Personal.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.NombreCompleto]
Carpeta=Lista
Clave=NombreCompleto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Personal=115
NombreCompleto=287
Fecha=148
Usuario=82
Nombre=304
Sucursal=64
Nombre_1=154
Empresa=69
Estado=150
Delegacion=129
Colonia=189
CodigoPostal=71
Ruta=67


[Acciones.Cerrar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cerrar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Cerrar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cerrar
Cerrar=(Fin)


[Detalle]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Clave=Detalle
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Personal
Fuente={MS Sans Serif, 8, Negro, []}
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

CarpetaDesActivada=S
CondicionVisible=Usuario.PeDatosGenerales
[Detalle.Personal.Personal]
Carpeta=Detalle
Clave=Personal.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.Personal.ApellidoPaterno]
Carpeta=Detalle
Clave=Personal.ApellidoPaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.Personal.ApellidoMaterno]
Carpeta=Detalle
Clave=Personal.ApellidoMaterno
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.Personal.Nombre]
Carpeta=Detalle
Clave=Personal.Nombre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.Personal.Direccion]
Carpeta=Detalle
Clave=Personal.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=41
ColorFondo=Blanco

[Detalle.Personal.Colonia]
Carpeta=Detalle
Clave=Personal.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.Poblacion]
Carpeta=Detalle
Clave=Personal.Poblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.Estado]
Carpeta=Detalle
Clave=Personal.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.Pais]
Carpeta=Detalle
Clave=Personal.Pais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.CodigoPostal]
Carpeta=Detalle
Clave=Personal.CodigoPostal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.Telefono]
Carpeta=Detalle
Clave=Personal.Telefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
EspacioPrevio=N

[Detalle.Personal.NIPCDI]
Carpeta=Detalle
Clave=Personal.NIPCDI
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00C8D0D4
Efectos=[Negritas]


[Detalle.Personal.Jornada]
Carpeta=Detalle
Clave=Personal.Jornada
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

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
ClaveAccion=
Multiple=S
ListaAccionesMultiples=(Lista)
Activo=S
Visible=S

[Detalle.Personal.TipoContrato]
Carpeta=Detalle
Clave=Personal.TipoContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Detalle.Personal.PeriodoTipo]
Carpeta=Detalle
Clave=Personal.PeriodoTipo
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S

[Detalle.Personal.eMail]
Carpeta=Detalle
Clave=Personal.eMail
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

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


[Detalle.Personal.TipoSalario]
Carpeta=Detalle
Clave=Personal.TipoSalario
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Personal.SalarioFijo]
Carpeta=Detalle
Clave=Personal.SalarioFijo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
EspacioPrevio=S

[Detalle.Personal.SalarioVariable]
Carpeta=Detalle
Clave=Personal.SalarioVariable
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
Pegado=N

[Detalle.Personal.Moneda]
Carpeta=Detalle
Clave=Personal.Moneda
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro
Pegado=N

[Detalle.]
Carpeta=Detalle
ColorFondo=Negro

[RH]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Recursos Humanos
Clave=RH
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Personal
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=Usuario.PeRecursosHumanos
CarpetaDesActivada=S
[RH.Personal.Personal]
Carpeta=RH
Clave=Personal.Personal
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[RH.NombreCompleto]
Carpeta=RH
Clave=NombreCompleto
Editar=S
3D=S
Tamano=62
ColorFondo=Plata
Efectos=[Negritas]

[RH.Personal.FechaAlta]
Carpeta=RH
Clave=Personal.FechaAlta
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
Editar=S
ColorFondo=Blanco

[RH.Personal.UltimaModificacion]
Carpeta=RH
Clave=Personal.UltimaModificacion
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
Editar=S
ColorFondo=Blanco

[RH.Personal.FechaBaja]
Carpeta=RH
Clave=Personal.FechaBaja
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
Editar=S
ColorFondo=Blanco

[RH.Personal.ChecadaLibre]
Carpeta=RH
Clave=Personal.ChecadaLibre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.Personal.ChecarConTeclado]
Carpeta=RH
Clave=Personal.ChecarConTeclado
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[RH.Personal.ChecadaLibreFechaD]
Carpeta=RH
Clave=Personal.ChecadaLibreFechaD
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.Personal.ChecadaLibreFechaA]
Carpeta=RH
Clave=Personal.ChecadaLibreFechaA
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Nomina]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Regla Negocio
Clave=Nomina
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Personal
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=110
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=Usuario.PeReglaNegocio
CarpetaDesActivada=S
[Nomina.Personal.FormaPago]
Carpeta=Nomina
Clave=Personal.FormaPago
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.Personal.CtaDinero]
Carpeta=Nomina
Clave=Personal.CtaDinero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.Personal.Afore]
Carpeta=Nomina
Clave=Personal.Afore
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=N

[Nomina.Personal.PersonalCuenta]
Carpeta=Nomina
Clave=Personal.PersonalCuenta
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=N

[Nomina.Personal.PersonalSucursal]
Carpeta=Nomina
Clave=Personal.PersonalSucursal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.Prov.Nombre]
Carpeta=Nomina
Clave=Prov.Nombre
Editar=S
3D=S
Tamano=41
ColorFondo=Plata
ValidaNombre=S

[Nomina.Personal.Personal]
Carpeta=Nomina
Clave=Personal.Personal
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Nomina.NombreCompleto]
Carpeta=Nomina
Clave=NombreCompleto
3D=S
Tamano=62
ColorFondo=Plata
Efectos=[Negritas]
Editar=S

[RH.Personal.Categoria]
Carpeta=RH
Clave=Personal.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
EspacioPrevio=N
ColorFondo=Blanco

[RH.Personal.Departamento]
Carpeta=RH
Clave=Personal.Departamento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=N
ColorFondo=Blanco

[RH.Personal.Grupo]
Carpeta=RH
Clave=Personal.Grupo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[RH.Personal.Puesto]
Carpeta=RH
Clave=Personal.Puesto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
EspacioPrevio=N
ColorFondo=Blanco

[RH.Personal.Valuacion]
Carpeta=RH
Clave=Personal.Valuacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.Personal.NivelAcademico]
Carpeta=RH
Clave=Personal.NivelAcademico
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=N

[RH.Personal.ReportaA]
Carpeta=RH
Clave=Personal.ReportaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=N

[RH.NombreReporta]
Carpeta=RH
Clave=NombreReporta
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Editar=S
OcultaNombre=S

[Detalle.Personal.Tipo]
Carpeta=Detalle
Clave=Personal.Tipo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[RH.Personal.UltimoPago]
Carpeta=RH
Clave=Personal.UltimoPago
ValidaNombre=S
3D=S
Tamano=20
Editar=S
ColorFondo=Blanco

[Evaluacion.RHD.Calificacion]
Carpeta=Evaluacion
Clave=RHD.Calificacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Evaluacion.RHD.Observaciones]
Carpeta=Evaluacion
Clave=RHD.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Evaluacion.RH.FechaEmision]
Carpeta=Evaluacion
Clave=RH.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Evaluacion.Evaluacion.Tipo]
Carpeta=Evaluacion
Clave=Evaluacion.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.EstatusNombre]
Carpeta=Detalle
Clave=EstatusNombre
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Nomina.CtaDineroDestino.Descripcion]
Carpeta=Nomina
Clave=CtaDineroDestino.Descripcion
Editar=S
3D=S
Tamano=62
ColorFondo=Plata
ValidaNombre=S

[Detalle.Personal.Registro]
Carpeta=Detalle
Clave=Personal.Registro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=41
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.Personal.Nacionalidad]
Carpeta=Detalle
Clave=Personal.Nacionalidad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.FechaNacimiento]
Carpeta=Detalle
Clave=Personal.FechaNacimiento
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.Sexo]
Carpeta=Detalle
Clave=Personal.Sexo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[Detalle.Personal.EstadoCivil]
Carpeta=Detalle
Clave=Personal.EstadoCivil
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S

[Detalle.Personal.Pasaporte]
Carpeta=Detalle
Clave=Personal.Pasaporte
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.Personal.FechaAntiguedad]
Carpeta=RH
Clave=Personal.FechaAntiguedad
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=S
Editar=S
ColorFondo=Blanco

[RH.Antiguedad]
Carpeta=RH
Clave=Antiguedad
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Editar=S


[Detalle.Personal.Registro2]
Carpeta=Detalle
Clave=Personal.Registro2
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.Registro3]
Carpeta=Detalle
Clave=Personal.Registro3
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[(Carpeta Abrir)]
Estilo=Iconos
PestanaNombre=Personal
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=PersonalA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
Filtros=S
OtroOrden=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
IconosSubTitulo=<T>Clave<T>
ListaEnCaptura=NombreCompleto2
ListaOrden=PersonalA.NombreCompleto<TAB>(Acendente)
;
FiltroGrupo1=PersonalA.Departamento
FiltroGrupo2=PersonalA.Puesto
;
;FiltroPredefinido=S
;FiltroGrupo1=(Validaciones Memoria)
;FiltroValida1=Departamento
;FiltroGrupo2=(Validaciones Memoria)
;FiltroValida2=Puesto
;FiltroGrupo3=(Validaciones Memoria)
;FiltroValida3=PersonalCat
;FiltroGrupo4=(Validaciones Memoria)
;FiltroValida4=PersonalGrupo
;FiltroAplicaEn1=PersonalA.Departamento
;FiltroAplicaEn2=PersonalA.Puesto
;FiltroAplicaEn3=PersonalA.Categoria
;FiltroAplicaEn4=PersonalA.Grupo
;FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroTodoFinal=S
FiltroAncho=20
;FiltroListas=S
;FiltroListasRama=RH
;FiltroListasAplicaEn=PersonalA.Personal
;FiltroRespetar=S
;FiltroTipo=M�ltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasNombre=&Vencimiento
FiltroEstatus=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=BAJA
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
ListaAcciones=LogChecadasGralv
FiltroFechasCampo=PersonalA.VencimientoContrato
FiltroFechasDefault=(Todo)
FiltroFechasVencimiento=S

FiltroIgnorarEmpresas=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTipo=M�ltiple (por Grupos)


Pestana=S
PestanaOtroNombre=S
ExpAlRefrescar=asigna(info.personal,Personal:Personal.Personal)ejecutarsql(<T>CDITempVaca :tP<T>,info.personal)
ExpAntesRefrescar=asigna(info.personal,Personal:Personal.Personal)
IconosNombre=PersonalA:PersonalA.Personal
[(Carpeta Abrir).Columnas]
0=99
1=358

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
Activo=S
Visible=S


[Nomina.Personal.Registro4]
Carpeta=Nomina
Clave=Personal.Registro4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Acciones.Otros1]
Nombre=Otros1
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros2]
Nombre=Otros2
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros3]
Nombre=Otros3
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros4]
Nombre=Otros4
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros5]
Nombre=Otros5
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros6]
Nombre=Otros6
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros7]
Nombre=Otros7
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros8]
Nombre=Otros8
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros9]
Nombre=Otros9
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[RH.Personal.SucursalTrabajo]
Carpeta=RH
Clave=Personal.SucursalTrabajo
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
Editar=S
ColorFondo=Blanco

[Detalle.Personal.LugarNacimiento]
Carpeta=Detalle
Clave=Personal.LugarNacimiento
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.Delegacion]
Carpeta=Detalle
Clave=Personal.Delegacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.Personal.ConceptoBaja]
Carpeta=RH
Clave=Personal.ConceptoBaja
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.Personal.Personal]
Carpeta=Otros
Clave=Personal.Personal
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Otros.NombreCompleto]
Carpeta=Otros
Clave=NombreCompleto
ValidaNombre=N
3D=S
Tamano=66
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Otros.Personal.NivelAcceso]
Carpeta=Otros
Clave=Personal.NivelAcceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Personal.Padre]
Carpeta=Detalle
Clave=Personal.Padre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Detalle.Personal.Madre]
Carpeta=Detalle
Clave=Personal.Madre
Editar=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Detalle.Personal.UnidadMedica]
Carpeta=Detalle
Clave=Personal.UnidadMedica
Editar=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[RH.Personal.CentroCostos]
Carpeta=RH
Clave=Personal.CentroCostos
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=N
EspacioPrevio=N


[Soporte.Soporte.FechaEmision]
Carpeta=Soporte
Clave=Soporte.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Soporte.Vencimiento]
Carpeta=Soporte
Clave=Soporte.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Soporte.Titulo]
Carpeta=Soporte
Clave=Soporte.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Nomina.Personal.ZonaEconomica]
Carpeta=Nomina
Clave=Personal.ZonaEconomica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Nomina.Personal.MinimoProfesional]
Carpeta=Nomina
Clave=Personal.MinimoProfesional
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=N

[Nomina.MinimosProfesionales.Descripcion]
Carpeta=Nomina
Clave=MinimosProfesionales.Descripcion
Editar=S
3D=S
Tamano=20
ColorFondo=Plata
ValidaNombre=S

[Nomina.Personal.TipoContrato]
Carpeta=Nomina
Clave=Personal.TipoContrato
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=N

[Nomina.Personal.PeriodoTipo]
Carpeta=Nomina
Clave=Personal.PeriodoTipo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[Nomina.Personal.SueldoDiario]
Carpeta=Nomina
Clave=Personal.SueldoDiario
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.Personal.SDI]
Carpeta=Nomina
Clave=Personal.SDI
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.Personal.Moneda]
Carpeta=Nomina
Clave=Personal.Moneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.Personal.VencimientoContrato]
Carpeta=Nomina
Clave=Personal.VencimientoContrato
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.Personal.Jornada]
Carpeta=Nomina
Clave=Personal.Jornada
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.Personal.TipoSueldo]
Carpeta=Nomina
Clave=Personal.TipoSueldo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.SueldoMinimoProfesional]
Carpeta=Nomina
Clave=SueldoMinimoProfesional
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[Nomina.Personal.Sindicato]
Carpeta=Nomina
Clave=Personal.Sindicato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Nomina.Personal.Vehiculo]
Carpeta=Nomina
Clave=Personal.Vehiculo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco

[Nomina.Vehiculo.Descripcion]
Carpeta=Nomina
Clave=Vehiculo.Descripcion
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Plata

[Nomina.Vehiculo.Placas]
Carpeta=Nomina
Clave=Vehiculo.Placas
ValidaNombre=S
3D=S
Pegado=N
Tamano=20
ColorFondo=Plata

[ComisionesEsp]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Comisiones Especiales
Clave=ComisionesEsp
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Personal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=Config.ComisionEspecial y Usuario.PeComisionesEspeciales
CarpetaDesActivada=S
[ComisionesEsp.Personal.Personal]
Carpeta=ComisionesEsp
Clave=Personal.Personal
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Plata
Efectos=[Negritas]

[ComisionesEsp.NombreCompleto]
Carpeta=ComisionesEsp
Clave=NombreCompleto
Editar=S
3D=S
Tamano=56
ColorFondo=Plata
Efectos=[Negritas]

[ComisionesEsp.Personal.TablaCobranza]
Carpeta=ComisionesEsp
Clave=Personal.TablaCobranza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[ComisionesEsp.Personal.TablaCobranzaBono]
Carpeta=ComisionesEsp
Clave=Personal.TablaCobranzaBono
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[ComisionesEsp.Personal.TablaCobranzaCascada]
Carpeta=ComisionesEsp
Clave=Personal.TablaCobranzaCascada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[ComisionesEsp.Personal.TablaCobranzaBonoCascada]
Carpeta=ComisionesEsp
Clave=Personal.TablaCobranzaBonoCascada
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[ComisionesEsp.Personal.TablaVentaCascada]
Carpeta=ComisionesEsp
Clave=Personal.TablaVentaCascada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Beneficiarios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Beneficiarios
Clave=Beneficiarios
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Personal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=Usuario.PeBeneficiarios
CarpetaDesActivada=S
[Beneficiarios.Personal.Personal]
Carpeta=Beneficiarios
Clave=Personal.Personal
Editar=N
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Beneficiarios.NombreCompleto]
Carpeta=Beneficiarios
Clave=NombreCompleto
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=62
ColorFondo=Plata
Efectos=[Negritas]

[Beneficiarios.Personal.Beneficiario]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.Personal.Parentesco]
Carpeta=Beneficiarios
Clave=Personal.Parentesco
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.Personal.Porcentaje]
Carpeta=Beneficiarios
Clave=Personal.Porcentaje
Editar=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.Personal.Beneficiario2]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario2
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.Personal.Parentesco2]
Carpeta=Beneficiarios
Clave=Personal.Parentesco2
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.Personal.Porcentaje2]
Carpeta=Beneficiarios
Clave=Personal.Porcentaje2
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.Personal.Beneficiario3]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario3
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.Personal.Parentesco3]
Carpeta=Beneficiarios
Clave=Personal.Parentesco3
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.Personal.Porcentaje3]
Carpeta=Beneficiarios
Clave=Personal.Porcentaje3
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Detalle.Personal.Hijos]
Carpeta=Detalle
Clave=Personal.Hijos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Detalle.Personal.Dependientes]
Carpeta=Detalle
Clave=Personal.Dependientes
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[RH.Departamento.Descripcion]
Carpeta=RH
Clave=Departamento.Descripcion
Editar=S
LineaNueva=N
Tamano=20
ColorFondo=Plata

[RH.Puesto.Descripcion]
Carpeta=RH
Clave=Puesto.Descripcion
Editar=S
Tamano=41
ColorFondo=Plata

[RH.PersonalCat.Descripcion]
Carpeta=RH
Clave=PersonalCat.Descripcion
Editar=S
Tamano=41
ColorFondo=Plata
LineaNueva=S

[RH.PersonalGrupo.Descripcion]
Carpeta=RH
Clave=PersonalGrupo.Descripcion
Editar=S
Tamano=41
ColorFondo=Plata

[RH.Personal.UEN]
Carpeta=RH
Clave=Personal.UEN
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Beneficiarios.Personal.Beneficiario4]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario4
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.Personal.Parentesco4]
Carpeta=Beneficiarios
Clave=Personal.Parentesco4
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.Personal.Porcentaje4]
Carpeta=Beneficiarios
Clave=Personal.Porcentaje4
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.Personal.Beneficiario5]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario5
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.Personal.Parentesco5]
Carpeta=Beneficiarios
Clave=Personal.Parentesco5
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.Personal.Porcentaje5]
Carpeta=Beneficiarios
Clave=Personal.Porcentaje5
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.Personal.Beneficiario6]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario6
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.Personal.Parentesco6]
Carpeta=Beneficiarios
Clave=Personal.Parentesco6
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.Personal.Porcentaje6]
Carpeta=Beneficiarios
Clave=Personal.Porcentaje6
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.Personal.Beneficiario7]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario7
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.Personal.Parentesco7]
Carpeta=Beneficiarios
Clave=Personal.Parentesco7
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.Personal.Porcentaje7]
Carpeta=Beneficiarios
Clave=Personal.Porcentaje7
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Beneficiarios.Personal.Beneficiario8]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario8
Editar=S
LineaNueva=S
3D=S
Tamano=46
ColorFondo=Blanco

[Beneficiarios.Personal.Parentesco8]
Carpeta=Beneficiarios
Clave=Personal.Parentesco8
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.Personal.Porcentaje8]
Carpeta=Beneficiarios
Clave=Personal.Porcentaje8
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco


[RH.Personal.Area]
Carpeta=RH
Clave=Personal.Area
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[RH.Personal.Fuente]
Carpeta=RH
Clave=Personal.Fuente
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.Personal.Reclutador]
Carpeta=RH
Clave=Personal.Reclutador
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S

[RH.NombreReclutador]
Carpeta=RH
Clave=NombreReclutador
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
OcultaNombre=S


[RH.Personal.RecomendadoPor]
Carpeta=RH
Clave=Personal.RecomendadoPor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.NombreRecomendadoPor]
Carpeta=RH
Clave=NombreRecomendadoPor
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
OcultaNombre=S

[Acciones.PersonalAcceso]
Nombre=PersonalAcceso
Boton=0
Menu=&Edici�n
NombreDesplegar=Acceso Especifico...
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalAcceso
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(Personal:Personal.Personal)
AntesExpresiones=Asigna(Info.Personal, Personal:Personal.Personal)<BR>Asigna(Info.Nombre, Personal:NombreCompleto)
VisibleCondicion=General.NivelAccesoEsp y (Personal:Personal.NivelAcceso=<T>(Especifico)<T>)

[Nomina.Personal.MovNomina]
Carpeta=Nomina
Clave=Personal.MovNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.UEN.Nombre]
Carpeta=RH
Clave=UEN.Nombre
Editar=S
LineaNueva=N
3D=S
Tamano=20
ColorFondo=Plata
ValidaNombre=S
OcultaNombre=S

[RH.Sucursal.Nombre]
Carpeta=RH
Clave=Sucursal.Nombre
Editar=S
ValidaNombre=S
OcultaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[RH.CentroCostos.Descripcion]
Carpeta=RH
Clave=CentroCostos.Descripcion
Editar=S
ValidaNombre=S
OcultaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[OtrosDatos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Otros Datos
Clave=OtrosDatos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Personal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=Usuario.PeOtrosDatos
CarpetaDesActivada=S
[OtrosDatos.Personal.Personal]
Carpeta=OtrosDatos
Clave=Personal.Personal
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[OtrosDatos.NombreCompleto]
Carpeta=OtrosDatos
Clave=NombreCompleto
Editar=S
ValidaNombre=N
3D=S
Tamano=62
ColorFondo=Plata
Efectos=[Negritas]

[OtrosDatos.Personal.Cuenta]
Carpeta=OtrosDatos
Clave=Personal.Cuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[OtrosDatos.Cta.Descripcion]
Carpeta=OtrosDatos
Clave=Cta.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Plata

[OtrosDatos.Personal.CuentaRetencion]
Carpeta=OtrosDatos
Clave=Personal.CuentaRetencion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.CtaRetencion.Descripcion]
Carpeta=OtrosDatos
Clave=CtaRetencion.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Plata


[Beneficiarios.Personal.BeneficiarioNacimiento]
Carpeta=Beneficiarios
Clave=Personal.BeneficiarioNacimiento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Beneficiarios.Personal.Beneficiario2Nacimiento]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario2Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.Personal.Beneficiario3Nacimiento]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario3Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.Personal.Beneficiario4Nacimiento]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario4Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.Personal.Beneficiario5Nacimiento]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario5Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.Personal.Beneficiario6Nacimiento]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario6Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.Personal.Beneficiario7Nacimiento]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario7Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[Beneficiarios.Personal.Beneficiario8Nacimiento]
Carpeta=Beneficiarios
Clave=Personal.Beneficiario8Nacimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=15

[OtrosDatos.Personal.Referencia]
Carpeta=OtrosDatos
Clave=Personal.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.Personal.ReferenciaDireccion]
Carpeta=OtrosDatos
Clave=Personal.ReferenciaDireccion
Editar=S
ValidaNombre=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.Personal.ReferenciaTelefono]
Carpeta=OtrosDatos
Clave=Personal.ReferenciaTelefono
Editar=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[OtrosDatos.Personal.Referencia2]
Carpeta=OtrosDatos
Clave=Personal.Referencia2
Editar=S
LineaNueva=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.Personal.Referencia2Direccion]
Carpeta=OtrosDatos
Clave=Personal.Referencia2Direccion
Editar=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.Personal.Referencia2Telefono]
Carpeta=OtrosDatos
Clave=Personal.Referencia2Telefono
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco

[OtrosDatos.Personal.Referencia3]
Carpeta=OtrosDatos
Clave=Personal.Referencia3
Editar=S
LineaNueva=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.Personal.Referencia3Direccion]
Carpeta=OtrosDatos
Clave=Personal.Referencia3Direccion
Editar=S
3D=S
Tamano=35
ColorFondo=Blanco

[OtrosDatos.Personal.Referencia3Telefono]
Carpeta=OtrosDatos
Clave=Personal.Referencia3Telefono
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco

[Detalle.Personal.Licencia]
Carpeta=Detalle
Clave=Personal.Licencia
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.LicenciaVencimiento]
Carpeta=Detalle
Clave=Personal.LicenciaVencimiento
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.Personal.Cartilla]
Carpeta=OtrosDatos
Clave=Personal.Cartilla
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.Personal.Permiso]
Carpeta=OtrosDatos
Clave=Personal.Permiso
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.Personal.Cliente]
Carpeta=OtrosDatos
Clave=Personal.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.Cte.Nombre]
Carpeta=OtrosDatos
Clave=Cte.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Plata

[Detalle.Personal.eMailAuto]
Carpeta=Detalle
Clave=Personal.eMailAuto
Editar=S
3D=S
Tamano=22
ColorFondo=Blanco


[Aspiraciones]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Aspiraciones
Clave=Aspiraciones
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Personal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=Usuario.PeAspiraciones
CarpetaDesActivada=S
[Aspiraciones.Personal.AspiraSueldo]
Carpeta=Aspiraciones
Clave=Personal.AspiraSueldo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.Personal.AspiraDepartamento]
Carpeta=Aspiraciones
Clave=Personal.AspiraDepartamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.Personal.AspiraGrupo]
Carpeta=Aspiraciones
Clave=Personal.AspiraGrupo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.Personal.AspiraPuesto]
Carpeta=Aspiraciones
Clave=Personal.AspiraPuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.Personal.AspiraCategoria]
Carpeta=Aspiraciones
Clave=Personal.AspiraCategoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.Personal.AspiraFecha]
Carpeta=Aspiraciones
Clave=Personal.AspiraFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Aspiraciones.Personal.Personal]
Carpeta=Aspiraciones
Clave=Personal.Personal
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Aspiraciones.NombreCompleto]
Carpeta=Aspiraciones
Clave=NombreCompleto
3D=S
Tamano=62
ColorFondo=Plata
Efectos=[Negritas]
Editar=S



[RH.Personal.Incremento]
Carpeta=RH
Clave=Personal.Incremento
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata


[OtrosDatos.Personal.EsSocio]
Carpeta=OtrosDatos
Clave=Personal.EsSocio
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=10
ColorFondo=Blanco

[Nomina.Personal.DiasPeriodo]
Carpeta=Nomina
Clave=Personal.DiasPeriodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco

[RH.Personal.IndemnizacionPct]
Carpeta=RH
Clave=Personal.IndemnizacionPct
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[RH.Personal.Proyecto]
Carpeta=RH
Clave=Personal.Proyecto
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[RH.Personal.Plaza]
Carpeta=RH
Clave=Personal.Plaza
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[RH.Plaza.Descripcion]
Carpeta=RH
Clave=Plaza.Descripcion
Editar=S
Tamano=20
ColorFondo=Plata
LineaNueva=S

[FormaExtraValor]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Caracter�sticas
Clave=FormaExtraValor
Filtros=S
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaExtraValor
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaSinBorde=S
HojaFondoGris=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
ListaOrden=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
RefrescarAlEntrar=S
PermiteEditar=S

FiltroGeneral=FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaExtraVisiblePersonal(<T>{Personal:Personal.Categoria}<T>, <T>{Personal:Personal.Grupo}<T>, <T>{Personal:Personal.Departamento}<T>, <T>{Personal:Personal.Puesto}<T>)) AND FormaExtraValor.Aplica=<T>Personal<T> AND FormaExtraValor.AplicaClave=<T>{Personal:Personal.Personal}<T>
CondicionVisible=General.CamposExtras<><T>Campos Extras<T>  y Usuario.PeCaracteristicas
CarpetaDesActivada=S
[FormaExtraValor.VerCampo]
Carpeta=FormaExtraValor
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Plata

[FormaExtraValor.VerValor]
Carpeta=FormaExtraValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
Efectos=[Negritas]

[FormaExtraValor.Columnas]
VerCampo=293
VerValor=296

[Nomina.Personal.SueldoDiarioComplemento]
Carpeta=Nomina
Clave=Personal.SueldoDiarioComplemento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nomina.SueldoDiarioBruto]
Carpeta=Nomina
Clave=SueldoDiarioBruto
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Editar=S

[Detalle.Personal.Empresa]
Carpeta=Detalle
Clave=Personal.Empresa
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[OtrosDatos.Personal.NivelAcceso]
Carpeta=OtrosDatos
Clave=Personal.NivelAcceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.DireccionNumero]
Carpeta=Detalle
Clave=Personal.DireccionNumero
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ValidaNombre=S
OcultaNombre=N

[Detalle.Personal.DireccionNumeroInt]
Carpeta=Detalle
Clave=Personal.DireccionNumeroInt
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ValidaNombre=S
OcultaNombre=N
Pegado=N

[Perfiles]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Perfiles
Clave=Perfiles
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Personal
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

CondicionVisible=Usuario.PePerfiles
CarpetaDesActivada=S
[Perfiles.Personal.EsRecurso]
Carpeta=Perfiles
Clave=Personal.EsRecurso
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Personal.EsAgente]
Carpeta=Perfiles
Clave=Personal.EsAgente
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Personal.EsUsuarioWeb]
Carpeta=Perfiles
Clave=Personal.EsUsuarioWeb
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco


[Detalle.Columnas]
CampoNombre=311
Valor=303
ValorAnterior=285

[OtrosDatos.Personal.Confidencial]
Carpeta=OtrosDatos
Clave=Personal.Confidencial
Editar=S
LineaNueva=S
3D=S
Tamano=12
ColorFondo=Blanco

[(Carpeta Abrir).NombreCompleto2]
Carpeta=(Carpeta Abrir)
Clave=NombreCompleto2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[PersonalCDI.ListaEnCaptura]
(Inicio)=Personal.Personal
Personal.Personal=Personal.Nombre
Personal.Nombre=Personal.ApellidoPaterno
Personal.ApellidoPaterno=Personal.ApellidoMaterno
Personal.ApellidoMaterno=(Fin)







[Detalle.Personal.EntreCalles]
Carpeta=Detalle
Clave=Personal.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.Plano]
Carpeta=Detalle
Clave=Personal.Plano
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Personal.Observaciones]
Carpeta=Detalle
Clave=Personal.Observaciones
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco









[SituacionCta]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Situaciones por Area
Clave=SituacionCta
Filtros=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
Zona=A1
Vista=SituacionCta
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosSubTitulo=<T>Area<T>
ListaEnCaptura=(Lista)

IconosNombre=SituacionCta:SituacionCta.Area
FiltroGeneral=SituacionCta.Rama=<T>RH<T> AND SituacionCta.Cuenta=<T>{Personal:Personal.Personal}<T>
CondicionVisible=General.SituacionesPorArea y Usuario.PeSituacionesArea
CarpetaDesActivada=S
[SituacionCta.SituacionCta.Situacion]
Carpeta=SituacionCta
Clave=SituacionCta.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionFecha]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionUsuario]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionNota]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionNota
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[SituacionCta.Columnas]
0=188
1=148
2=-2
3=-2
4=-2



[RH.Personal.ActividadMedicion]
Carpeta=RH
Clave=Personal.ActividadMedicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
EspacioPrevio=S










































































[PersonalCDI]
Estilo=Ficha
Pestana=S
Clave=PersonalCDI
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Personal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Personal


[PersonalCDI.Personal.Personal]
Carpeta=PersonalCDI
Clave=Personal.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Plata
Efectos=[Negritas]

[PersonalCDI.Personal.Nombre]
Carpeta=PersonalCDI
Clave=Personal.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
Efectos=[Negritas]

[PersonalCDI.Personal.ApellidoPaterno]
Carpeta=PersonalCDI
Clave=Personal.ApellidoPaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
Efectos=[Negritas]

[PersonalCDI.Personal.ApellidoMaterno]
Carpeta=PersonalCDI
Clave=Personal.ApellidoMaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
Efectos=[Negritas]

[RolesCDI]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Roles Asignados
Clave=RolesCDI
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAsignacionRoles
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Personal
LlaveLocal=CDIAsignacionRoles.NIPCDI
LlaveMaestra=Personal.NIPCDI
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaOrdenarColumnas=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)


CondicionVisible=Usuario.PeRolesAsignados
CarpetaDesActivada=S
[RolesCDI.CDIAsignacionRoles.NIPCDI]
Carpeta=RolesCDI
Clave=CDIAsignacionRoles.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata

[RolesCDI.CDIAsignacionRoles.Catalogo]
Carpeta=RolesCDI
Clave=CDIAsignacionRoles.Catalogo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata

[RolesCDI.CDIAsignacionRoles.Rol]
Carpeta=RolesCDI
Clave=CDIAsignacionRoles.Rol
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata

[RolesCDI.Columnas]
NIPCDI=144
Catalogo=123
Rol=143
Personal=110

[Acciones.CDIRoles.Formas]
Nombre=Formas
Boton=0
TipoAccion=Formas
ClaveAccion=CDIAsignacionRoles
Activo=S
Visible=S

[Acciones.CDIRoles.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.CDIRoles.ListaAccionesMultiples]
(Inicio)=Formas
Formas=Actualizar Forma
Actualizar Forma=(Fin)

[RolesCDI.CDIAsignacionRoles.Personal]
Carpeta=RolesCDI
Clave=CDIAsignacionRoles.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Plata


[CDIImagen]
Estilo=Ficha
PestanaNombre=Imagen
Clave=CDIImagen
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=Personal
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

[CDIImagen.Personal.CDIPerImagen]
Carpeta=CDIImagen
Clave=Personal.CDIPerImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIImagen.Imagen]
Carpeta=CDIImagen
Clave=Imagen
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30X15
ColorFondo=Blanco
ConScroll=S

[CDIImagen.ListaEnCaptura]
(Inicio)=Personal.CDIPerImagen
Personal.CDIPerImagen=Imagen
Imagen=(Fin)


[JornadasDetalle.Columnas]
Personal=64
FechaD=94
Jornada=124
Referencia=124




[Beneficiarios.ListaEnCaptura]
(Inicio)=Personal.Personal
Personal.Personal=NombreCompleto
NombreCompleto=Personal.Beneficiario
Personal.Beneficiario=Personal.Parentesco
Personal.Parentesco=Personal.BeneficiarioNacimiento
Personal.BeneficiarioNacimiento=Personal.Porcentaje
Personal.Porcentaje=Personal.Beneficiario2
Personal.Beneficiario2=Personal.Parentesco2
Personal.Parentesco2=Personal.Beneficiario2Nacimiento
Personal.Beneficiario2Nacimiento=Personal.Porcentaje2
Personal.Porcentaje2=Personal.Beneficiario3
Personal.Beneficiario3=Personal.Parentesco3
Personal.Parentesco3=Personal.Beneficiario3Nacimiento
Personal.Beneficiario3Nacimiento=Personal.Porcentaje3
Personal.Porcentaje3=Personal.Beneficiario4
Personal.Beneficiario4=Personal.Parentesco4
Personal.Parentesco4=Personal.Beneficiario4Nacimiento
Personal.Beneficiario4Nacimiento=Personal.Porcentaje4
Personal.Porcentaje4=Personal.Beneficiario5
Personal.Beneficiario5=Personal.Parentesco5
Personal.Parentesco5=Personal.Beneficiario5Nacimiento
Personal.Beneficiario5Nacimiento=Personal.Porcentaje5
Personal.Porcentaje5=Personal.Beneficiario6
Personal.Beneficiario6=Personal.Parentesco6
Personal.Parentesco6=Personal.Beneficiario6Nacimiento
Personal.Beneficiario6Nacimiento=Personal.Porcentaje6
Personal.Porcentaje6=Personal.Beneficiario7
Personal.Beneficiario7=Personal.Parentesco7
Personal.Parentesco7=Personal.Beneficiario7Nacimiento
Personal.Beneficiario7Nacimiento=Personal.Porcentaje7
Personal.Porcentaje7=Personal.Beneficiario8
Personal.Beneficiario8=Personal.Parentesco8
Personal.Parentesco8=Personal.Beneficiario8Nacimiento
Personal.Beneficiario8Nacimiento=Personal.Porcentaje8
Personal.Porcentaje8=(Fin)

[RH.ListaEnCaptura]
(Inicio)=Personal.Personal
Personal.Personal=NombreCompleto
NombreCompleto=Personal.ReportaA
Personal.ReportaA=NombreReporta
NombreReporta=Personal.CentroCostos
Personal.CentroCostos=CentroCostos.Descripcion
CentroCostos.Descripcion=Personal.Reclutador
Personal.Reclutador=NombreReclutador
NombreReclutador=Personal.SucursalTrabajo
Personal.SucursalTrabajo=Sucursal.Nombre
Sucursal.Nombre=Personal.RecomendadoPor
Personal.RecomendadoPor=NombreRecomendadoPor
NombreRecomendadoPor=Personal.UEN
Personal.UEN=UEN.Nombre
UEN.Nombre=Personal.Area
Personal.Area=Personal.Fuente
Personal.Fuente=Personal.Proyecto
Personal.Proyecto=Personal.NivelAcademico
Personal.NivelAcademico=Personal.Valuacion
Personal.Valuacion=Personal.Incremento
Personal.Incremento=Personal.FechaAntiguedad
Personal.FechaAntiguedad=Antiguedad
Antiguedad=Personal.UltimoPago
Personal.UltimoPago=Personal.IndemnizacionPct
Personal.IndemnizacionPct=Personal.FechaAlta
Personal.FechaAlta=Personal.UltimaModificacion
Personal.UltimaModificacion=Personal.FechaBaja
Personal.FechaBaja=Personal.ConceptoBaja
Personal.ConceptoBaja=Personal.Plaza
Personal.Plaza=Personal.Departamento
Personal.Departamento=Personal.Puesto
Personal.Puesto=Plaza.Descripcion
Plaza.Descripcion=Departamento.Descripcion
Departamento.Descripcion=Puesto.Descripcion
Puesto.Descripcion=Personal.Categoria
Personal.Categoria=Personal.Grupo
Personal.Grupo=PersonalCat.Descripcion
PersonalCat.Descripcion=PersonalGrupo.Descripcion
PersonalGrupo.Descripcion=Personal.ActividadMedicion
Personal.ActividadMedicion=Personal.ChecadaLibre
Personal.ChecadaLibre=Personal.ChecarConTeclado
Personal.ChecarConTeclado=Personal.ChecadaLibreFechaD
Personal.ChecadaLibreFechaD=Personal.ChecadaLibreFechaA
Personal.ChecadaLibreFechaA=(Fin)

[Aspiraciones.ListaEnCaptura]
(Inicio)=Personal.Personal
Personal.Personal=NombreCompleto
NombreCompleto=Personal.AspiraFecha
Personal.AspiraFecha=Personal.AspiraSueldo
Personal.AspiraSueldo=Personal.AspiraDepartamento
Personal.AspiraDepartamento=Personal.AspiraGrupo
Personal.AspiraGrupo=Personal.AspiraPuesto
Personal.AspiraPuesto=Personal.AspiraCategoria
Personal.AspiraCategoria=(Fin)

[Nomina.ListaEnCaptura]
(Inicio)=Personal.Personal
Personal.Personal=NombreCompleto
NombreCompleto=Personal.MovNomina
Personal.MovNomina=Personal.FormaPago
Personal.FormaPago=Personal.PersonalSucursal
Personal.PersonalSucursal=Personal.PersonalCuenta
Personal.PersonalCuenta=Personal.CtaDinero
Personal.CtaDinero=CtaDineroDestino.Descripcion
CtaDineroDestino.Descripcion=Personal.Vehiculo
Personal.Vehiculo=Vehiculo.Descripcion
Vehiculo.Descripcion=Vehiculo.Placas
Vehiculo.Placas=Personal.Registro4
Personal.Registro4=Personal.Afore
Personal.Afore=Prov.Nombre
Prov.Nombre=Personal.Sindicato
Personal.Sindicato=Personal.ZonaEconomica
Personal.ZonaEconomica=Personal.MinimoProfesional
Personal.MinimoProfesional=MinimosProfesionales.Descripcion
MinimosProfesionales.Descripcion=SueldoMinimoProfesional
SueldoMinimoProfesional=Personal.DiasPeriodo
Personal.DiasPeriodo=Personal.PeriodoTipo
Personal.PeriodoTipo=Personal.Jornada
Personal.Jornada=Personal.TipoContrato
Personal.TipoContrato=Personal.VencimientoContrato
Personal.VencimientoContrato=Personal.TipoSueldo
Personal.TipoSueldo=Personal.SueldoDiario
Personal.SueldoDiario=Personal.SDI
Personal.SDI=Personal.Moneda
Personal.Moneda=Personal.SueldoDiarioComplemento
Personal.SueldoDiarioComplemento=SueldoDiarioBruto
SueldoDiarioBruto=(Fin)

[ComisionesEsp.ListaEnCaptura]
(Inicio)=Personal.Personal
Personal.Personal=NombreCompleto
NombreCompleto=Personal.TablaCobranza
Personal.TablaCobranza=Personal.TablaCobranzaBono
Personal.TablaCobranzaBono=Personal.TablaCobranzaCascada
Personal.TablaCobranzaCascada=Personal.TablaCobranzaBonoCascada
Personal.TablaCobranzaBonoCascada=Personal.TablaVentaCascada
Personal.TablaVentaCascada=(Fin)

[OtrosDatos.ListaEnCaptura]
(Inicio)=Personal.Personal
Personal.Personal=NombreCompleto
NombreCompleto=Personal.NivelAcceso
Personal.NivelAcceso=Personal.Cliente
Personal.Cliente=Cte.Nombre
Cte.Nombre=Personal.Cuenta
Personal.Cuenta=Cta.Descripcion
Cta.Descripcion=Personal.CuentaRetencion
Personal.CuentaRetencion=CtaRetencion.Descripcion
CtaRetencion.Descripcion=Personal.Cartilla
Personal.Cartilla=Personal.Permiso
Personal.Permiso=Personal.Referencia
Personal.Referencia=Personal.ReferenciaDireccion
Personal.ReferenciaDireccion=Personal.ReferenciaTelefono
Personal.ReferenciaTelefono=Personal.Referencia2
Personal.Referencia2=Personal.Referencia2Direccion
Personal.Referencia2Direccion=Personal.Referencia2Telefono
Personal.Referencia2Telefono=Personal.Referencia3
Personal.Referencia3=Personal.Referencia3Direccion
Personal.Referencia3Direccion=Personal.Referencia3Telefono
Personal.Referencia3Telefono=Personal.EsSocio
Personal.EsSocio=Personal.Confidencial
Personal.Confidencial=(Fin)

[Perfiles.ListaEnCaptura]
(Inicio)=Personal.EsRecurso
Personal.EsRecurso=Personal.EsAgente
Personal.EsAgente=Personal.EsUsuarioWeb
Personal.EsUsuarioWeb=(Fin)

[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden	(Acendente)
GrupoOrden	(Acendente)=FormaExtraCampo.Orden	(Acendente)
FormaExtraCampo.Orden	(Acendente)=(Fin)

[SituacionCta.ListaEnCaptura]
(Inicio)=SituacionCta.Situacion
SituacionCta.Situacion=SituacionCta.SituacionFecha
SituacionCta.SituacionFecha=SituacionCta.SituacionUsuario
SituacionCta.SituacionUsuario=SituacionCta.SituacionNota
SituacionCta.SituacionNota=(Fin)

[RolesCDI.ListaEnCaptura]
(Inicio)=CDIAsignacionRoles.NIPCDI
CDIAsignacionRoles.NIPCDI=CDIAsignacionRoles.Catalogo
CDIAsignacionRoles.Catalogo=CDIAsignacionRoles.Personal
CDIAsignacionRoles.Personal=CDIAsignacionRoles.Rol
CDIAsignacionRoles.Rol=(Fin)





[Detalle.ListaEnCaptura]
(Inicio)=Personal.Personal
Personal.Personal=Personal.Tipo
Personal.Tipo=EstatusNombre
EstatusNombre=Personal.Empresa
Personal.Empresa=Personal.ApellidoPaterno
Personal.ApellidoPaterno=Personal.ApellidoMaterno
Personal.ApellidoMaterno=Personal.Nombre
Personal.Nombre=Personal.Direccion
Personal.Direccion=Personal.DireccionNumero
Personal.DireccionNumero=Personal.DireccionNumeroInt
Personal.DireccionNumeroInt=Personal.EntreCalles
Personal.EntreCalles=Personal.Plano
Personal.Plano=Personal.Observaciones
Personal.Observaciones=Personal.Delegacion
Personal.Delegacion=Personal.Colonia
Personal.Colonia=Personal.CodigoPostal
Personal.CodigoPostal=Personal.Poblacion
Personal.Poblacion=Personal.Estado
Personal.Estado=Personal.Pais
Personal.Pais=Personal.Telefono
Personal.Telefono=Personal.eMail
Personal.eMail=Personal.eMailAuto
Personal.eMailAuto=Personal.Sexo
Personal.Sexo=Personal.Nacionalidad
Personal.Nacionalidad=Personal.FechaNacimiento
Personal.FechaNacimiento=Personal.LugarNacimiento
Personal.LugarNacimiento=Personal.EstadoCivil
Personal.EstadoCivil=Personal.Pasaporte
Personal.Pasaporte=Personal.Licencia
Personal.Licencia=Personal.LicenciaVencimiento
Personal.LicenciaVencimiento=Personal.Hijos
Personal.Hijos=Personal.Dependientes
Personal.Dependientes=Personal.UnidadMedica
Personal.UnidadMedica=Personal.Padre
Personal.Padre=Personal.Madre
Personal.Madre=Personal.Registro
Personal.Registro=Personal.Registro2
Personal.Registro2=Personal.Registro3
Personal.Registro3=(Fin)








































































































































































































































































[Acciones.Logv]
Nombre=Logv
Boton=9
NombreEnBoton=S
Menu=&Ver
NombreDesplegar=Log Checadas General
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIVAsisteLogV2
Activo=S
Visible=S













[Acciones.ChecadasPers]
Nombre=ChecadasPers
Boton=0
NombreDesplegar=Checadas Personal
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIExpAsistePersMOD
Activo=S
Visible=S










[Acciones.LogChecadasGralv]
Nombre=LogChecadasGralv
Boton=0
NombreDesplegar=Log Checadas General
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIVAsisteLogV2
Activo=S
Visible=S



[Acciones.Vacaciones]
Nombre=Vacaciones
Boton=58
NombreDesplegar=Vacaciones
EnBarraHerramientas=S
TipoAccion=Formas
Activo=S
Visible=S





















NombreEnBoton=S








ClaveAccion=CDISolVac












Antes=S

















EspacioPrevio=S
ConCondicion=S
EjecucionCondicion=sql(<T>xpcdisaldovaca :tp<T>,Personal:Personal.Personal)>0
EjecucionMensaje=<T>El saldo de dias debe ser mayor a 0 (Cero)<T>
EjecucionConError=S
AntesExpresiones=Asigna(info.personal,Personal:Personal.Personal)
[CDIVPersonalVac.CDIVPersonalVac.Ejercicio]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPersonalVac.CDIVPersonalVac.Periodo]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIVPersonalVac.CDIVPersonalVac.CargosU]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.CargosU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPersonalVac.CDIVPersonalVac.AbonosU]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.AbonosU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPersonalVac.CDIVPersonalVac.Diferencia]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.Diferencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDIVPersonalVac.Columnas]
Ejercicio=44
Periodo=42
Moneda=64
CargosU=50
AbonosU=51
Diferencia=51























[cdiexp]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Checadas
Clave=cdiexp
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIExpAsistePers
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
ExpAntesRefrescar=asigna(info.personal,Personal:Personal.Personal)
Filtros=S

FiltroPredefinido=S
FiltroGrupo1=CDIExpAsistePers.Ejercicio
FiltroGrupo2=CDIExpAsistePers.Periodo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
FiltroTodo=S
OtroOrden=S
ListaOrden=CDIExpAsistePers.FechaEntrada<TAB>(Decendente)
RefrescarAlEntrar=S
FiltroGeneral=PersonalEntrada=<T>{info.personal}<T>
[cdiexp.CDIExpAsistePers.Ejercicio]
Carpeta=cdiexp
Clave=CDIExpAsistePers.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[cdiexp.CDIExpAsistePers.Periodo]
Carpeta=cdiexp
Clave=CDIExpAsistePers.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiexp.CDIExpAsistePers.HoraEntrada]
Carpeta=cdiexp
Clave=CDIExpAsistePers.HoraEntrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[cdiexp.CDIExpAsistePers.FechaEntrada]
Carpeta=cdiexp
Clave=CDIExpAsistePers.FechaEntrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiexp.CDIExpAsistePers.HoraSalida]
Carpeta=cdiexp
Clave=CDIExpAsistePers.HoraSalida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco






[cdiexp.Columnas]
Ejercicio=46
Periodo=43
HoraEntrada=68
FechaEntrada=76
HoraSalida=58
FechaSalida=94

DiaLaboral=58
Jornada=46

[cdiexp.CDIExpAsistePers.DiaLaboral]
Carpeta=cdiexp
Clave=CDIExpAsistePers.DiaLaboral
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco

[cdiexp.CDIExpAsistePers.Jornada]
Carpeta=cdiexp
Clave=CDIExpAsistePers.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

































[Acciones.DetVac]
Nombre=DetVac
Boton=0
NombreDesplegar=Detalle Acumulado Vacaciones
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIDetalleVaca
Activo=S
Visible=S

Antes=S
AntesExpresiones=asigna(info.personal,CDIVPersonalVac:CDIVPersonalVac.Personal)






[CDIVPersonalVac.ListaEnCaptura]
(Inicio)=CDIVPersonalVac.Ejercicio
CDIVPersonalVac.Ejercicio=CDIVPersonalVac.Periodo
CDIVPersonalVac.Periodo=CDIVPersonalVac.CargosU
CDIVPersonalVac.CargosU=CDIVPersonalVac.AbonosU
CDIVPersonalVac.AbonosU=CDIVPersonalVac.Diferencia
CDIVPersonalVac.Diferencia=(Fin)

[CDIVPersonalVac.ListaCamposAValidar]
(Inicio)=CDIVPersonalVac.FechaAlta
CDIVPersonalVac.FechaAlta=CDIVPersonalVac.FechaAntiguedad
CDIVPersonalVac.FechaAntiguedad=CDIVPersonalVac.Estatus
CDIVPersonalVac.Estatus=CDIVPersonalVac.TipoContrato
CDIVPersonalVac.TipoContrato=(Fin)

























































[Vac2]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Vacaciones
Clave=Vac2
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVacACumuladas
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco

CarpetaVisible=S






ListaEnCaptura=(Lista)
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
ExpAlRefrescar=ejecutarsql(<T>CDITempVaca :tP<T>,info.personal)
MenuLocal=S
ListaAcciones=Detalle
OtroOrden=S
ListaOrden=(Lista)
RefrescarAlEntrar=S
Detalle=S
VistaMaestra=Personal
LlaveLocal=CDIVacACumuladas.Personal
LlaveMaestra=Personal.Personal
[Vac2.Columnas]
Ejercicio=64
Periodo=64
CargosU=64
AbonosU=64
Subtotal=64











Personal=64


[Vac2.CDIVacACumuladas.CargosU]
Carpeta=Vac2
Clave=CDIVacACumuladas.CargosU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Vac2.CDIVacACumuladas.AbonosU]
Carpeta=Vac2
Clave=CDIVacACumuladas.AbonosU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[Vac2.CDIVacACumuladas.Ejercicio]
Carpeta=Vac2
Clave=CDIVacACumuladas.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Vac2.CDIVacACumuladas.Periodo]
Carpeta=Vac2
Clave=CDIVacACumuladas.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
















[Vac2.CDIVacACumuladas.Personal]
Carpeta=Vac2
Clave=CDIVacACumuladas.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco











[Vac2.CDIVacACumuladas.Subtotal]
Carpeta=Vac2
Clave=CDIVacACumuladas.Subtotal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=LogChecadasGralv
LogChecadasGralv=(Fin)























[Acciones.Detalle]
Nombre=Detalle
Boton=0
NombreDesplegar=&Detalle
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIDetalleVaca
Activo=S
Antes=S
Visible=S

AntesExpresiones=asigna(info.personal,Personal:Personal.Personal)





























[cdiexp.ListaEnCaptura]
(Inicio)=CDIExpAsistePers.Ejercicio
CDIExpAsistePers.Ejercicio=CDIExpAsistePers.Periodo
CDIExpAsistePers.Periodo=CDIExpAsistePers.DiaLaboral
CDIExpAsistePers.DiaLaboral=CDIExpAsistePers.FechaEntrada
CDIExpAsistePers.FechaEntrada=CDIExpAsistePers.HoraEntrada
CDIExpAsistePers.HoraEntrada=CDIExpAsistePers.HoraSalida
CDIExpAsistePers.HoraSalida=CDIExpAsistePers.Jornada
CDIExpAsistePers.Jornada=(Fin)




[Vac2.ListaEnCaptura]
(Inicio)=CDIVacACumuladas.Personal
CDIVacACumuladas.Personal=CDIVacACumuladas.Ejercicio
CDIVacACumuladas.Ejercicio=CDIVacACumuladas.Periodo
CDIVacACumuladas.Periodo=CDIVacACumuladas.CargosU
CDIVacACumuladas.CargosU=CDIVacACumuladas.AbonosU
CDIVacACumuladas.AbonosU=CDIVacACumuladas.Subtotal
CDIVacACumuladas.Subtotal=(Fin)

[Vac2.ListaOrden]
(Inicio)=CDIVacACumuladas.Ejercicio	(Acendente)
CDIVacACumuladas.Ejercicio	(Acendente)=CDIVacACumuladas.Periodo	(Acendente)
CDIVacACumuladas.Periodo	(Acendente)=(Fin)


























































































[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos menos uno)
(Todos menos uno)=ASPIRANTE
ASPIRANTE=CANDIDATO
CANDIDATO=ALTA
ALTA=FINIQUITADO
FINIQUITADO=BAJA
BAJA=(Fin)

































[Forma.ListaCarpetas]
(Inicio)=PersonalCDI
PersonalCDI=Detalle
Detalle=Beneficiarios
Beneficiarios=RH
RH=Aspiraciones
Aspiraciones=Nomina
Nomina=ComisionesEsp
ComisionesEsp=OtrosDatos
OtrosDatos=Perfiles
Perfiles=FormaExtraValor
FormaExtraValor=SituacionCta
SituacionCta=RolesCDI
RolesCDI=CDIImagen
CDIImagen=cdiexp
cdiexp=Vac2
Vac2=(Fin)

[Forma.ListaAcciones]
(Inicio)=Abrir
Abrir=PersonalAcceso
PersonalAcceso=Navegador
Navegador=Cerrar
Cerrar=Otros1
Otros1=Otros2
Otros2=Otros3
Otros3=Otros4
Otros4=Otros5
Otros5=Otros6
Otros6=Otros7
Otros7=Otros8
Otros8=Otros9
Otros9=Logv
Logv=Vacaciones
Vacaciones=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edici�n
&Edici�n=&Ver
&Ver=&Maestros
&Maestros=(Fin)

[Forma.PlantillasExcepciones]
(Inicio)=Personal:Personal.SueldoDiario
Personal:Personal.SueldoDiario=Personal:Personal.SDI
Personal:Personal.SDI=Personal:Personal.FechaAlta
Personal:Personal.FechaAlta=Personal:Personal.FechaAntiguedad
Personal:Personal.FechaAntiguedad=Personal:Personal.FechaBaja
Personal:Personal.FechaBaja=Personal:Personal.UltimaModificacion
Personal:Personal.UltimaModificacion=Personal:Personal.VencimientoContrato
Personal:Personal.VencimientoContrato=Personal:Personal.Estatus
Personal:Personal.Estatus=Personal:Personal.UltimoPago
Personal:Personal.UltimoPago=Personal:Personal.TipoSueldo
Personal:Personal.TipoSueldo=Personal:Personal.Departamento
Personal:Personal.Departamento=Personal:Personal.TipoContrato
Personal:Personal.TipoContrato=Personal:Personal.ZonaEconomica
Personal:Personal.ZonaEconomica=Personal:Personal.Grupo
Personal:Personal.Grupo=Personal:Personal.Puesto
Personal:Personal.Puesto=Personal:Personal.PeriodoTipo
Personal:Personal.PeriodoTipo=Personal:Personal.Jornada
Personal:Personal.Jornada=Personal:Personal.Moneda
Personal:Personal.Moneda=Personal:Personal.Categoria
Personal:Personal.Categoria=(Fin)
