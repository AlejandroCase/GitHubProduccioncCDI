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
PosicionInicialIzquierda=124
PosicionInicialArriba=174
PosicionInicialAlturaCliente=577
PosicionInicialAncho=1032
ListaAcciones=(Lista)
PosicionCol1=741
Comentarios=Lista( Empresa, <T>Sucursal: <T> + Sucursal)
Totalizadores=S
PosicionSec1=507
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Grupo, <T><T>)
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
CampoColorFondo=$00D8E9EC
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

Editar=S
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



AntesExpresiones=GuardarCambios<BR>Si(Confirmacion( <T>¿Esta seguro de generar los PreRegistros?<T>,  BotonSi ,  BotonNo ) =  BotonSi , ProcesarSQL(<T>xpAsistenteCursoCCPM :tEmpresa, :nSucursal, :tUsuario, :nEstacion<T>, Empresa, Sucursal, Usuario, EstacionTrabajo) Forma(<T>ListaIDOK<T>))













[Otros.AsistenteCursoCCPM.CDIEvaluacionProfesor]
Carpeta=Otros
Clave=AsistenteCursoCCPM.CDIEvaluacionProfesor
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.AsistenteCursoCCPM.CDIEvaluacionPsicologica]
Carpeta=Otros
Clave=AsistenteCursoCCPM.CDIEvaluacionPsicologica
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.AsistenteCursoCCPM.CDICondicionFisica]
Carpeta=Otros
Clave=AsistenteCursoCCPM.CDICondicionFisica
Editar=S
LineaNueva=S
3D=S
Tamano=20
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
AsistenteCursoCCPM.CDICondicionFisica=Total
Total=(Fin)






















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







[Lista.ListaEnCaptura]
(Inicio)=AsistenteCursoCCPM.CDISocio
AsistenteCursoCCPM.CDISocio=AsistenteCursoCCPM.Cliente
AsistenteCursoCCPM.Cliente=AsistenteCursoCCPM.CEPrograma
AsistenteCursoCCPM.CEPrograma=AsistenteCursoCCPM.CEPlan
AsistenteCursoCCPM.CEPlan=AsistenteCursoCCPM.Materia
AsistenteCursoCCPM.Materia=AsistenteCursoCCPM.Grupo
AsistenteCursoCCPM.Grupo=AsistenteCursoCCPM.CDIPrecio
AsistenteCursoCCPM.CDIPrecio=AsistenteCursoCCPM.CDIBeca
AsistenteCursoCCPM.CDIBeca=AsistenteCursoCCPM.CDIDescuento2
AsistenteCursoCCPM.CDIDescuento2=(Fin)































































[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Otros
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
Info=(Fin)
