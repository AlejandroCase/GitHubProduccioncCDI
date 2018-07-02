[Forma]
Clave=AsistenteCursoCCPM
Nombre=Asistente Cursos
Icono=0
Modulos=(Todos)
BarraHerramientas=S
MovModulo=(Todos)
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialIzquierda=55
PosicionInicialArriba=165
PosicionInicialAlturaCliente=399
PosicionInicialAncho=1256
ListaAcciones=(Lista)
PosicionCol1=793
Comentarios=Lista( Empresa, <T>Sucursal: <T> + Sucursal)+<T> estacion<T>+estaciontrabajo
Totalizadores=S
PosicionSec1=458
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Grupo, <T><T>)
PosicionCol2=815
SinTransacciones=S
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
ValidarCampos=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AsistenteCursoCCPM
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
ListaCamposAValidar=Nombre2
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
Pestana=S
PestanaOtroNombre=S
PestanaNombre=PreRegistros
FiltroGeneral=AsistenteCursoCCPM.Estacion = {EstacionTrabajo} AND<BR>AsistenteCursoCCPM.Empresa = <T>{Empresa}<T> AND<BR>AsistenteCursoCCPM.Sucursal = {Sucursal}
[Lista.AsistenteCursoCCPM.Cliente]
Carpeta=Lista
Clave=AsistenteCursoCCPM.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.AsistenteCursoCCPM.CEPrograma]
Carpeta=Lista
Clave=AsistenteCursoCCPM.CEPrograma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Lista.AsistenteCursoCCPM.CEPlan]
Carpeta=Lista
Clave=AsistenteCursoCCPM.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Lista.AsistenteCursoCCPM.Grupo]
Carpeta=Lista
Clave=AsistenteCursoCCPM.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Lista.Columnas]
Cliente=85
Personal=85
CEPrograma=78
CEPlan=83
Grupo=80
Materia=83
Nombre=293
RFC=124
CDIPrecio=74
CDIBeca=74
0=172
1=223
2=384
3=83
4=152
5=-2
CDISocio=80
Socio=127
NombreSocio=171
Tipo=76
6=-2
CDIDescuento2=64
CobMed=64
CDIPaqIns=47
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
[Otros]
Estilo=Ficha
Clave=Otros
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=AsistenteCursoCCPM
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
CarpetaVisible=S
PermiteEditar=S
ListaEnCaptura=(Lista)
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Otros
[Otros.CEPrograma.Ciclo]
Carpeta=Otros
Clave=CEPrograma.Ciclo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=37
ColorFondo=Plata
[Otros.CEPrograma.FechaInicio]
Carpeta=Otros
Clave=CEPrograma.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Plata
[Otros.CEPrograma.FechaFin]
Carpeta=Otros
Clave=CEPrograma.FechaFin
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Plata
[Otros.CEPlan.Descripcion]
Carpeta=Otros
Clave=CEPlan.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=37
ColorFondo=Plata
[Otros.CEProgramaD.Profesor]
Carpeta=Otros
Clave=CEProgramaD.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=37
ColorFondo=Plata
[Otros.CEProgramaD.Horario]
Carpeta=Otros
Clave=CEProgramaD.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=37
ColorFondo=Plata
[Otros.CEProgramaD.Cupo]
Carpeta=Otros
Clave=CEProgramaD.Cupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Plata
[Otros.CEProgramaD.Disponible]
Carpeta=Otros
Clave=CEProgramaD.Disponible
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Plata

[Lista.ListaCamposAValidar]
(Inicio)=Cte.Nombre
Cte.Nombre=NombrePersonal
NombrePersonal=(Fin)

[Lista.AsistenteCursoCCPM.Materia]
Carpeta=Lista
Clave=AsistenteCursoCCPM.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco














[CEPrograma.Columnas]
0=92
1=210
2=74
3=70

[CEPlan.Columnas]
0=102
1=490

[CEMateria.Columnas]
0=91
1=333

[CEProgramaD.Columnas]
0=75
1=77
2=79
3=191
4=151
5=41
6=62











[Lista.AsistenteCursoCCPM.CDIPrecio]
Carpeta=Lista
Clave=AsistenteCursoCCPM.CDIPrecio
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata
Efectos=[Negritas]

Editar=N
[Lista.AsistenteCursoCCPM.CDIBeca]
Carpeta=Lista
Clave=AsistenteCursoCCPM.CDIBeca
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00D8E9EC
Efectos=[Negritas]













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
Totalizadores1=SubTotal<BR>Becas<BR>Total<BR>Descuentos
Totalizadores2=Suma(AsistenteCursoCCPM:AsistenteCursoCCPM.CDIPrecio)<BR>Suma(AsistenteCursoCCPM:AsistenteCursoCCPM.CDIBeca)<BR>Suma(AsistenteCursoCCPM:AsistenteCursoCCPM.CDIPrecio-AsistenteCursoCCPM:AsistenteCursoCCPM.CDIBeca-AsistenteCursoCCPM:AsistenteCursoCCPM.CDIDescuento2)<BR>Suma(AsistenteCursoCCPM:AsistenteCursoCCPM.CDIDescuento2)
Totalizadores=S
TotCarpetaRenglones=Lista
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S





ListaEnCaptura=(Lista)

TotAlCambiar=S
Totalizadores3=(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)
[Otros.Total]
Carpeta=Otros
Clave=Total
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Plata
Efectos=[Negritas]








[(Carpeta Totalizadores).SubTotal]
Carpeta=(Carpeta Totalizadores)
Clave=SubTotal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

[(Carpeta Totalizadores).Becas]
Carpeta=(Carpeta Totalizadores)
Clave=Becas
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

[(Carpeta Totalizadores).Total]
Carpeta=(Carpeta Totalizadores)
Clave=Total
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata










[CEPlanD.Columnas]
0=74
1=403





[Acciones.Becas]
Nombre=Becas
Boton=64
NombreEnBoton=S
NombreDesplegar=Actualizar &Becas
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S





GuardarAntes=S
Antes=S
AntesExpresiones=EjecutarSQL(<T>spCDICEGetBeca :nEstacion<T>, EstacionTrabajo)
DespuesGuardar=S




















[Acciones.Generar]
Nombre=Generar
Boton=7
NombreEnBoton=S
NombreDesplegar=Generar PreRegistro
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Antes=S
Visible=S
















GuardarAntes=S
AntesExpresiones=Asigna(Temp.Reg,sql(<T>xpAsistenteCursoCCPMValCobMed :tE, :nS, :tU, :nE<T>,empresa, Sucursal, usuario, estaciontrabajo))<BR>caso Temp.Reg[1]<BR>  es 10060<BR>   entonces<BR>    Si(Confirmacion( <T>¿El socio No tiene Cobertura Medica, desea generar el preregistro incluyendo la cobertura?<T>,  BotonSi ,  BotonNo ) =  BotonSi , ProcesarSQL(<T>xpAsistenteCursoCCPM :tEmpresa, :nSucursal, :tUsuario, :nEstacion, :tI<T>, Empresa, Sucursal, Usuario, EstacionTrabaj, nulo) Forma(<T>ListaIDOK<T>))<BR>  es 2<BR>  entonces<BR>    Si(Confirmacion( <T>¿Esta seguro de generar los PreRegistros?<T>,  BotonSi ,  BotonNo ) =  BotonSi , ProcesarSQL(<T>xpAsistenteCursoCCPM :tEmpresa, :nSucursal, :tUsuario, :nEstacionn, :tI<T>, Empresa, Sucursal, Usuario, EstacionTrabajo, nulo) Forma(<T>ListaIDOK<T>))<BR>  es 3<BR>  entonces informacion(Temp.Reg[2])<BR>fin
[Otros.AsistenteCursoCCPM.CDIEvaluacionProfesor]
Carpeta=Otros
Clave=AsistenteCursoCCPM.CDIEvaluacionProfesor
Editar=S
LineaNueva=S
3D=S
Tamano=15
ColorFondo=Blanco

[Otros.AsistenteCursoCCPM.CDIEvaluacionPsicologica]
Carpeta=Otros
Clave=AsistenteCursoCCPM.CDIEvaluacionPsicologica
Editar=S
LineaNueva=N
3D=S
Tamano=15
ColorFondo=Blanco

[Otros.AsistenteCursoCCPM.CDICondicionFisica]
Carpeta=Otros
Clave=AsistenteCursoCCPM.CDICondicionFisica
Editar=S
LineaNueva=N
3D=S
Tamano=15
ColorFondo=Blanco



























[Acciones.Verificar]
Nombre=Verificar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Verificar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S





EspacioPrevio=S
































GuardarAntes=S
Expresion=Informacion(SQL(<T>spAsistenteCursoCCPMVerificar :tEmpresa, :nSuc, :nEstacion<T>, Empresa, Sucursal, EstacionTrabajo))


















































[Acciones.Sugerir]
Nombre=Sugerir
Boton=116
NombreEnBoton=S
NombreDesplegar=&Sugerir
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S





GuardarAntes=S
Antes=S
DespuesGuardar=S














AntesExpresiones=Asigna(Temp.Texto, (SQL(<T>spAsistenteCursoCCPMVerificar :tEmpresa, :nSuc, :nEstacion<T>, Empresa, Sucursal, EstacionTrabajo)))<BR>Si(Temp.Texto=<T>Verificación Correcta<T>, Forma(<T>CDICEMateriaGrupoSugerido<T>), Informacion(Temp.Texto))
[Acciones.Info]
Nombre=Info
Boton=34
NombreDesplegar=Información del Cliente
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CteInfo
Activo=S
Antes=S
Visible=S







EspacioPrevio=S










































































ConCondicion=S
EjecucionCondicion=ConDatos(AsistenteCursoCCPM:AsistenteCursoCCPM.Cliente)
AntesExpresiones=Asigna(Info.Cliente, AsistenteCursoCCPM:AsistenteCursoCCPM.Cliente)
[Acciones.Registro]
Nombre=Registro
Boton=109
NombreEnBoton=S
NombreDesplegar=Registro
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=ListaIDOK
Activo=S
Visible=S


















[Lista.AsistenteCursoCCPM.CDISocio]
Carpeta=Lista
Clave=AsistenteCursoCCPM.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco























[Lista.AsistenteCursoCCPM.CDIDescuento2]
Carpeta=Lista
Clave=AsistenteCursoCCPM.CDIDescuento2
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00D8E9EC

























Efectos=[Negritas]
[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=SubTotal
SubTotal=Becas
Becas=Descuentos
Descuentos=Total
Total=(Fin)

[(Carpeta Totalizadores).Descuentos]
Carpeta=(Carpeta Totalizadores)
Clave=Descuentos
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata


















[Lista.AsistenteCursoCCPM.CDIPaqIns]
Carpeta=Lista
Clave=AsistenteCursoCCPM.CDIPaqIns
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






























[Acciones.CDIPaqInsc]
Nombre=CDIPaqInsc
Boton=47
NombreEnBoton=S
NombreDesplegar=Subir Paquetes
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIPaqInsc
Activo=S







VisibleCondicion=asigna(Info.Observaciones,<T>Sistemas<T>)<BR>sql(<T>select GrupoTrabajo from usuario where usuario=:tU<T>,Usuario)=Info.Observaciones






















[Acciones.Descuentos]
Nombre=Descuentos
Boton=18
NombreEnBoton=S
NombreDesplegar=Descuentos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIInscDesc
Activo=S
Visible=S

















[Acciones.Planes]
Nombre=Planes
Boton=47
NombreEnBoton=S
NombreDesplegar=Bajar Planes
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIPlanesBAjar
Activo=S





VisibleCondicion=asigna(Info.Observaciones,<T>Sistemas<T>)<BR>sql(<T>select GrupoTrabajo from usuario where usuario=:tU<T>,Usuario)=Info.Observaciones






















[AsistenteCursoCCPM2]
Estilo=Ficha
Clave=AsistenteCursoCCPM2
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=AsistenteCursoCCPM
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
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Personales

[AsistenteCursoCCPM2.Cte.RutaImagen]
Carpeta=AsistenteCursoCCPM2
Clave=Cte.RutaImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[AsistenteCursoCCPM2.Cte.FechaNacimiento]
Carpeta=AsistenteCursoCCPM2
Clave=Cte.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










[AsistenteCursoCCPM2.Foto]
Carpeta=AsistenteCursoCCPM2
Clave=Foto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ConScroll=S
SinRecapitular=N
Tamano=25x20
ColorFondo=Blanco












[AsistenteCursoCCPM2.Edad]
Carpeta=AsistenteCursoCCPM2
Clave=Edad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco














[AsistenteCursoCCPM2.Meses]
Carpeta=AsistenteCursoCCPM2
Clave=Meses
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco














[Otros.CEPlan.CDIEdadMaxima]
Carpeta=Otros
Clave=CEPlan.CDIEdadMaxima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Otros.CEPlan.CDIEdadMinima]
Carpeta=Otros
Clave=CEPlan.CDIEdadMinima
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Otros.CEPlan.CDISexo]
Carpeta=Otros
Clave=CEPlan.CDISexo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Otros.CEPlan.CDIPeriodo]
Carpeta=Otros
Clave=CEPlan.CDIPeriodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Otros.CEPlan.CDICobertura]
Carpeta=Otros
Clave=CEPlan.CDICobertura
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco












[Otros.ListaEnCaptura]
(Inicio)=CEPrograma.Ciclo
CEPrograma.Ciclo=CEPrograma.FechaInicio
CEPrograma.FechaInicio=CEPrograma.FechaFin
CEPrograma.FechaFin=CEPlan.Descripcion
CEPlan.Descripcion=CEProgramaD.Profesor
CEProgramaD.Profesor=CEProgramaD.Horario
CEProgramaD.Horario=CEProgramaD.Cupo
CEProgramaD.Cupo=CEProgramaD.Disponible
CEProgramaD.Disponible=AsistenteCursoCCPM.CDIEvaluacionProfesor
AsistenteCursoCCPM.CDIEvaluacionProfesor=AsistenteCursoCCPM.CDIEvaluacionPsicologica
AsistenteCursoCCPM.CDIEvaluacionPsicologica=AsistenteCursoCCPM.CDICondicionFisica
AsistenteCursoCCPM.CDICondicionFisica=CEPlan.CDIEdadMaxima
CEPlan.CDIEdadMaxima=CEPlan.CDIEdadMinima
CEPlan.CDIEdadMinima=CEPlan.CDISexo
CEPlan.CDISexo=CEPlan.CDIPeriodo
CEPlan.CDIPeriodo=CEPlan.CDICobertura
CEPlan.CDICobertura=Total
Total=(Fin)







[aBC.CDISocInsc.Mov]
Carpeta=aBC
Clave=CDISocInsc.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[aBC.CDISocInsc.MovId]
Carpeta=aBC
Clave=CDISocInsc.MovId
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[aBC.CDISocInsc.FechaEmision]
Carpeta=aBC
Clave=CDISocInsc.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[aBC.CDISocInsc.programa]
Carpeta=aBC
Clave=CDISocInsc.programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[aBC.CDISocInsc.Ceplan]
Carpeta=aBC
Clave=CDISocInsc.Ceplan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[aBC.Columnas]
Mov=66
MovId=44
FechaEmision=76
programa_2=64
Ceplan_2=64




programa=64
Ceplan=79



[aBC.ListaEnCaptura]
(Inicio)=CDISocInsc.Mov
CDISocInsc.Mov=CDISocInsc.MovId
CDISocInsc.MovId=CDISocInsc.FechaEmision
CDISocInsc.FechaEmision=CDISocInsc.programa
CDISocInsc.programa=CDISocInsc.Ceplan
CDISocInsc.Ceplan=(Fin)











[inscrip]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Inscripcciones
Clave=inscrip
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDISocInsc
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

ExpAntesRefrescar=asigna(Info.ClienteA,AsistenteCursoCCPM:AsistenteCursoCCPM.CDISocio)
RefrescarAlEntrar=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
OtroOrden=S
ListaOrden=CDISocInsc.FechaEmision<TAB>(Decendente)
FiltroGeneral=CDIsocio=<T>{Info.ClienteA}<T>
[inscrip.CDISocInsc.Mov]
Carpeta=inscrip
Clave=CDISocInsc.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[inscrip.CDISocInsc.MovId]
Carpeta=inscrip
Clave=CDISocInsc.MovId
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[inscrip.CDISocInsc.FechaEmision]
Carpeta=inscrip
Clave=CDISocInsc.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[inscrip.CDISocInsc.programa]
Carpeta=inscrip
Clave=CDISocInsc.programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[inscrip.CDISocInsc.Ceplan]
Carpeta=inscrip
Clave=CDISocInsc.Ceplan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[inscrip.Columnas]
Mov=59
MovId=38
FechaEmision=64
programa_2=64
Ceplan_2=64













programa=64
Ceplan=64







Estatus=67
[Cobertura.Cobertura]
Carpeta=Cobertura
Clave=Cobertura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







Tamano=30






[CDISocioFinan]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cobertura Deportiva
Clave=CDISocioFinan
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDISocioFinan
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

OtroOrden=S
ListaOrden=CDISocioFinan.FechaEmision<TAB>(Decendente)
ExpAntesRefrescar=asigna(Info.ClienteA,AsistenteCursoCCPM:AsistenteCursoCCPM.CDISocio)
RefrescarAlEntrar=S
FiltroGeneral=CDISocioFinan.CdiSocio=<T>{Info.clienteA}<T> and<BR>CDISocioFinan.Articulo In(<T>COBMED<T>,<T>COBMEDP1<T>,<T>COBMEDP2<T>) and<BR>CDISocioFinan.mov=<T>Recibo<T> and CDISocioFinan.EstatusDoc=<T>CONCLUIDO<T>
[CDISocioFinan.CDISocioFinan.mov]
Carpeta=CDISocioFinan
Clave=CDISocioFinan.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDISocioFinan.CDISocioFinan.movid]
Carpeta=CDISocioFinan
Clave=CDISocioFinan.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDISocioFinan.CDISocioFinan.FechaEmision]
Carpeta=CDISocioFinan
Clave=CDISocioFinan.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[CDISocioFinan.CDISocioFinan.Articulo]
Carpeta=CDISocioFinan
Clave=CDISocioFinan.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[CDISocioFinan.Columnas]
mov=40
movid=61
FechaEmision=72
CdiSocio=604
importe=58
Impuestos=64
Articulo=47













precio=64

[CDISocioFinan.CDISocioFinan.precio]
Carpeta=CDISocioFinan
Clave=CDISocioFinan.precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










[AsistenteCursoCCPM2.ListaEnCaptura]
(Inicio)=Cte.RutaImagen
Cte.RutaImagen=Cte.FechaNacimiento
Cte.FechaNacimiento=Edad
Edad=Meses
Meses=Foto
Foto=(Fin)


[Lista.ListaEnCaptura]
(Inicio)=AsistenteCursoCCPM.CDISocio
AsistenteCursoCCPM.CDISocio=AsistenteCursoCCPM.Cliente
AsistenteCursoCCPM.Cliente=AsistenteCursoCCPM.CDIPaqIns
AsistenteCursoCCPM.CDIPaqIns=AsistenteCursoCCPM.CEPrograma
AsistenteCursoCCPM.CEPrograma=AsistenteCursoCCPM.CEPlan
AsistenteCursoCCPM.CEPlan=AsistenteCursoCCPM.Materia
AsistenteCursoCCPM.Materia=AsistenteCursoCCPM.Grupo
AsistenteCursoCCPM.Grupo=AsistenteCursoCCPM.CDIPrecio
AsistenteCursoCCPM.CDIPrecio=AsistenteCursoCCPM.CDIBeca
AsistenteCursoCCPM.CDIBeca=AsistenteCursoCCPM.CDIDescuento2
AsistenteCursoCCPM.CDIDescuento2=(Fin)









































[inscrip.ListaEnCaptura]
(Inicio)=CDISocInsc.Mov
CDISocInsc.Mov=CDISocInsc.MovId
CDISocInsc.MovId=CDISocInsc.FechaEmision
CDISocInsc.FechaEmision=CDISocInsc.programa
CDISocInsc.programa=CDISocInsc.Ceplan
CDISocInsc.Ceplan=CDISocInsc.Estatus
CDISocInsc.Estatus=(Fin)

[inscrip.CDISocInsc.Estatus]
Carpeta=inscrip
Clave=CDISocInsc.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco











































































































































[Acciones.Grupo]
Nombre=Grupo
Boton=80
NombreEnBoton=S
NombreDesplegar=Insc.Grupo
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIi0
Activo=S
Visible=S




























































[CDISocioFinan.ListaEnCaptura]
(Inicio)=CDISocioFinan.mov
CDISocioFinan.mov=CDISocioFinan.movid
CDISocioFinan.movid=CDISocioFinan.FechaEmision
CDISocioFinan.FechaEmision=CDISocioFinan.Articulo
CDISocioFinan.Articulo=CDISocioFinan.precio
CDISocioFinan.precio=(Fin)















[Acciones.InscRepre]
Nombre=InscRepre
Boton=38
NombreEnBoton=S
NombreDesplegar=Insc. Representativo
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIInscSocioRepre
Activo=S
Visible=S











EspacioPrevio=S
























[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=AsistenteCursoCCPM2
AsistenteCursoCCPM2=inscrip
inscrip=CDISocioFinan
CDISocioFinan=Otros
Otros=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=Verificar
Verificar=Generar
Generar=Becas
Becas=Sugerir
Sugerir=Registro
Registro=Info
Info=CDIPaqInsc
CDIPaqInsc=Descuentos
Descuentos=Planes
Planes=Grupo
Grupo=InscRepre
InscRepre=(Fin)
