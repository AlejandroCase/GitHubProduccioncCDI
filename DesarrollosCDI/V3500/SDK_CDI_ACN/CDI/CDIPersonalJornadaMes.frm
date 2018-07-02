[Forma]
Clave=CDIPersonalJornadaMes
Nombre=Personal Jornada Mes
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
ListaCarpetas=detalle
CarpetaPrincipal=detalle
PosicionInicialAlturaCliente=518
PosicionInicialAncho=1036
PosicionColumna1=14
PosicionInicialIzquierda=165
PosicionInicialArriba=106
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionSeccion1=33
PosicionSeccion2=93
Comentarios=Lista(Temp.Texto, info.PeriodoTipo, FechaEnTexto(info.FechaD, <T>dd/mmm/aaaa<T>)+<T> - <T>+FechaEnTexto(info.FEchaA, <T>dd/mmm/aaaa<T>))
BarraAyuda=S
BarraAyudaBold=S
BarraAyudaEsp=S
BarraAyuda1=<T>(<T>+SQL(<T>select count(*)  from personal a JOIN Jornada j ON a.Jornada = j.Jornada where a.estatus=:tEstatus and a.area =:tArea and a.empresa=:tEmp and a.Sucursaltrabajo=:nsuc AND isnull(j.EsRotativa, 0) =:nrota AND a.PeriodoTipo =:tpertip<T>,<T>Alta<T>,Temp.Texto,Empresa,Sucursal,1, Info.PeriodoTipo)+<T>) Registros<T><BR>//join PersonalJornadaMes b on a.Personal=b.personal

BarraAyuda1Ancho=100
VentanaEstadoInicial=Normal
[detalle]
Estilo=Hoja
Clave=detalle
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPersonalJornadaMes
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
ListaEnCaptura002=<CONTINUA>s.d22<BR>PersonalJornadaMes.d23<BR>PersonalJornadaMes.d24<BR>PersonalJornadaMes.d25<BR>PersonalJornadaMes.d26<BR>PersonalJornadaMes.d27<BR>PersonalJornadaMes.d28<BR>PersonalJornadaMes.d29<BR>PersonalJornadaMes.d30<BR>PersonalJornadaMes.d31<BR>PersonalJornadaMes.Estatus
CarpetaVisible=S
PermiteEditar=S
ValidarCampos=S
HojaTitulosEnBold=S
HojaConfirmarEliminar=S
ListaCamposAValidar=(Lista)
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroTipo=Ninguno
HojaAjustarColumnas=S
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FiltroEditarFueraPeriodo=S
BusquedaRapida=S
BusquedaEnLinea=S
MenuLocal=S
ListaAcciones=(Lista)
OtroOrden=S
ListaOrden=CDIPersonalJornadaMes.ID<TAB>(Acendente)
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=Departamento
FiltroAplicaEn1=Personal.Departamento
FiltroTodo=S
IgnorarControlesEdicion=S
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=PersonalGrupo
FiltroAplicaEn2=Personal.Grupo
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=PeriodoTipo
FiltroAplicaEn3=PersonalJornadaMes.PeriodoTipo
FiltroRespetar=S
HojaPermiteEliminar=S







FiltroGeneral=CDIPersonalJornadaMes.PeriodoTipo=<T>{Info.PeriodoTipo}<T> AND<BR>CDIPersonalJornadaMes.FechaD=<T>{FechaFormatoServidor(Info.FechaD)}<T> AND<BR>CDIPersonalJornadaMes.FEchaA=<T>{FechaFormatoServidor(Info.FechaA)}<T> AND<BR>CDIPersonalJornadaMes.Area=<T>{Temp.Texto}<T> and<BR>Personal.SucursalTrabajo=<T>{Sucursal}<T> and<BR>Personal.Empresa=<T>{Empresa}<T>
[lista.Columnas]
0=106
1=301
2=-2
Personal=50
Periodo=64
Ejercicio=64
NombreCompleto=193
D1=205
D2=144
D3=144
D4=144
D5=144
D6=144
D7=144
D8=144
D9=144
D10=144
D11=144
D12=144
D13=144
D14=144
D15=144
D16=144
D17=144
D18=144
D19=144
D20=144
D21=144
D22=144
D23=144
D24=144
D25=144
D26=144
D27=144
D28=144
D29=144
D30=144
D31=144
[detalle.Columnas]
D01=170
D02=175
D03=188
D04=175
D05=178
D06=177
D07=185
D08=64
D09=58
d10=27
d11=27
d12=27
d13=27
d14=27
d15=27
d16=27
d17=27
d18=27
d19=27
d20=27
d21=27
d22=27
d23=27
d24=27
d25=27
d26=27
d27=27
d28=27
d29=27
d30=27
d31=27
Ejercicio=62
Periodo=69
Personal=66
Estatus=108
D10=27
D11=27
D12=27
D13=27
D14=27
D15=27
D16=27
D17=27
D18=27
D19=27
D20=27
D21=27
D22=27
D23=27
D24=27
D25=27
D26=27
D27=27
D28=27
D29=27
D30=27
D31=27
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S



Expresion=Asigna(info.id,CDIPersonalJornadaMes:CDIPersonalJornadaMes.ID)<BR><BR>GuardarCambios<BR>ActualizarForma<BR>ActualizarVista<BR><BR>Asigna(Info.Id,SQL(<T>Exec SPVerificaPermisosJornada :Periodo,:fechad,:fechaa,:area,:usuario<T>,Info.PeriodoTipo,Info.FechaD,Info.FechaA,Temp.Texto,Usuario))<BR><BR>Si<BR>  Info.Id > 0   <BR>Entonces<BR> informacion(<T>La persona excede el ausentismo por semana:<T>& Info.Id )<BR>Sino<BR> Informacion(<T>Guardado<T>)<BR>Fin
[Acciones.Expresion.ejrcicioperiodo]
Nombre=ejrcicioperiodo
Boton=0
TipoAccion=Formas
ClaveAccion=EspecificarEjercicioPeriodo
Activo=S
Visible=S

[Acciones.DETALLE.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=ASIGNA(INFO.PERSONAL,PersonalJornadaMes:PersonalJornadaMes.Personal)
[Acciones.DETALLE.PaginaEjercicioPeriodo]
Nombre=PaginaEjercicioPeriodo
Boton=0
TipoAccion=Formas
ClaveAccion=PersonalJornadaTiempos
Activo=S
Visible=S

[Acciones.Generar]
Nombre=Generar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Afectar
EnBarraHerramientas=S
TipoAccion=Expresion
GuardarAntes=S
RefrescarDespues=S
EspacioPrevio=S
Expresion=Asigna(info.id,CDIPersonalJornadaMes:CDIPersonalJornadaMes.ID)<BR>GuardarCambios<BR>ActualizarForma<BR>ActualizarVista<BR>ProcesarSQL(<T>exec spGeneraTodaJornada :tx, :tt, :Fd, :Fa, :tU, :tEmp, :iSuc<T>,Temp.Texto,Info.PeriodoTipo,Info.FechaD,Info.FechaA,Usuario,Empresa,Sucursal)<BR>ActualizarVista
ActivoCondicion=//SQL(<T>exec Sp_AfectarJornadasRotativas :usu,:Ares<T>,Usuario,Temp.Texto)=<T>SI<T>
[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreDesplegar=Actualizar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S
EspacioPrevio=S
[dias.JornadaMes.D01]
Carpeta=dias
Clave=JornadaMes.D01
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D02]
Carpeta=dias
Clave=JornadaMes.D02
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D03]
Carpeta=dias
Clave=JornadaMes.D03
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D04]
Carpeta=dias
Clave=JornadaMes.D04
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D05]
Carpeta=dias
Clave=JornadaMes.D05
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D06]
Carpeta=dias
Clave=JornadaMes.D06
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D07]
Carpeta=dias
Clave=JornadaMes.D07
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D08]
Carpeta=dias
Clave=JornadaMes.D08
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D09]
Carpeta=dias
Clave=JornadaMes.D09
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D10]
Carpeta=dias
Clave=JornadaMes.D10
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D11]
Carpeta=dias
Clave=JornadaMes.D11
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D12]
Carpeta=dias
Clave=JornadaMes.D12
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D13]
Carpeta=dias
Clave=JornadaMes.D13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D14]
Carpeta=dias
Clave=JornadaMes.D14
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D15]
Carpeta=dias
Clave=JornadaMes.D15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D16]
Carpeta=dias
Clave=JornadaMes.D16
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D17]
Carpeta=dias
Clave=JornadaMes.D17
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D18]
Carpeta=dias
Clave=JornadaMes.D18
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D19]
Carpeta=dias
Clave=JornadaMes.D19
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D20]
Carpeta=dias
Clave=JornadaMes.D20
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D21]
Carpeta=dias
Clave=JornadaMes.D21
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D22]
Carpeta=dias
Clave=JornadaMes.D22
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D23]
Carpeta=dias
Clave=JornadaMes.D23
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D24]
Carpeta=dias
Clave=JornadaMes.D24
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D25]
Carpeta=dias
Clave=JornadaMes.D25
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D26]
Carpeta=dias
Clave=JornadaMes.D26
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D27]
Carpeta=dias
Clave=JornadaMes.D27
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D28]
Carpeta=dias
Clave=JornadaMes.D28
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D29]
Carpeta=dias
Clave=JornadaMes.D29
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D30]
Carpeta=dias
Clave=JornadaMes.D30
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.D31]
Carpeta=dias
Clave=JornadaMes.D31
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco
ColorFuente=Negro
[dias.Columnas]
D01=31
D02=27
D03=23
D04=23
D05=23
D06=23
D07=23
D08=23
D09=23
D10=23
D11=23
D12=23
D13=23
D14=23
D15=23
D16=23
D17=23
D18=23
D19=23
D20=23
D21=23
D22=23
D23=23
D24=23
D25=23
D26=23
D27=23
D28=23
D29=23
D30=23
D31=23
Ejercicio=66
Periodo=104
0=-2
1=114
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2
11=-2
12=-2
13=-2
14=-2
15=-2
16=-2
17=-2
18=-2
19=-2
20=-2
21=-2
22=-2
23=-2
24=-2
25=-2
26=-2
27=-2
28=-2
29=-2
30=-2
31=-2
32=20
[dias.JornadaMes.Ejercicio]
Carpeta=dias
Clave=JornadaMes.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[dias.JornadaMes.Periodo]
Carpeta=dias
Clave=JornadaMes.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[Acciones.Expresion]
Nombre=Expresion
Boton=0
NombreDesplegar=Copiar Dias
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Asigna(info.id,CDIPersonalJornadaMes:CDIPersonalJornadaMes.ID)<BR>EjecutarSQL(<T>SPCopiarDiasJornadaMes :ni ,:nes<T>,Info.ID,EstacionTrabajo)<BR>Actualizarvista<BR>Forma.LocalizarValor(<T>detalle<T>,<T>id<T>,info.id)
[Acciones.pegarE]
Nombre=pegarE
Boton=0
NombreDesplegar=Pegar Dias
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
GuardarAntes=S
Expresion=asigna(info.id,CDIPersonalJornadaMes:CDIPersonalJornadaMes.ID)<BR>EjecutarSQL(<T>SPPegarDiasJornadaMes :ni ,:nes<T>,CDIPersonalJornadaMes:CDIPersonalJornadaMes.ID,EstacionTrabajo)<BR>Actualizarvista<BR> Forma.ActualizarForma<BR> Forma.LocalizarValor(<T>detalle<T>,<T>id<T>,info.id)
[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S

Expresion=ReportePantalla(<T>CDIJornadaRotativa<T>)
[Acciones.Detalle.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=PaginaEjercicioPeriodo
PaginaEjercicioPeriodo=(Fin)
















[Acciones.Detalles.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=ASIGNA(INFO.PERSONAL,CDIPersonalJornadaMes:CDIPersonalJornadaMes.Personal)
[Acciones.Detalles.PersonalJornadaTiempos]
Nombre=PersonalJornadaTiempos
Boton=0
TipoAccion=Formas
ClaveAccion=CDIPersonalJornadaTiempos
Activo=S
Visible=S

[Acciones.Detalles]
Nombre=Detalles
Boton=68
Multiple=S
ListaAccionesMultiples=(Lista)

NombreEnBoton=S
NombreDesplegar=Ver Detalles
EnBarraHerramientas=S


EspacioPrevio=S




BtnResaltado=S





[Acciones.Historico]
Nombre=Historico
Boton=9
NombreEnBoton=S
NombreDesplegar=Ver Historico
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIVarPersonalJornadaMesHist
Activo=S
Visible=S

















































































































































[Acciones.Copiar]
Nombre=Copiar
Boton=55
NombreEnBoton=S
NombreDesplegar=Copiar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIEspecificarCopiaJornada
Activo=S
Visible=S





































EspacioPrevio=S



































[Acciones.Generar.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


[Acciones.Generar.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=GENERAR
GENERAR=(Fin)



























[detalle.CDIPersonalJornadaMes.Personal]
Carpeta=detalle
Clave=CDIPersonalJornadaMes.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[detalle.CDIPersonalJornadaMes.D01]
Carpeta=detalle
Clave=CDIPersonalJornadaMes.D01
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[detalle.CDIPersonalJornadaMes.D02]
Carpeta=detalle
Clave=CDIPersonalJornadaMes.D02
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[detalle.CDIPersonalJornadaMes.D03]
Carpeta=detalle
Clave=CDIPersonalJornadaMes.D03
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[detalle.CDIPersonalJornadaMes.D04]
Carpeta=detalle
Clave=CDIPersonalJornadaMes.D04
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[detalle.CDIPersonalJornadaMes.D05]
Carpeta=detalle
Clave=CDIPersonalJornadaMes.D05
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[detalle.CDIPersonalJornadaMes.D06]
Carpeta=detalle
Clave=CDIPersonalJornadaMes.D06
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[detalle.CDIPersonalJornadaMes.D07]
Carpeta=detalle
Clave=CDIPersonalJornadaMes.D07
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
















[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=67
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S





























[Acciones.Afectar2]
Nombre=Afectar2
Boton=7
NombreEnBoton=S
NombreDesplegar=&Afectar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S






















Expresion=Asigna(info.id,CDIPersonalJornadaMes:CDIPersonalJornadaMes.ID)<BR>GuardarCambios<BR>ActualizarVista<BR>ProcesarSQL(<T>exec spGeneraTodaJornada :tx, :tt, :Fd, :Fa, :tU, :tEmp, :iSuc<T>,Temp.Texto,Info.PeriodoTipo,Info.FechaD,Info.FechaA,Usuario,Empresa,Sucursal)<BR>ActualizarVista
[Acciones.Detalles.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=PersonalJornadaTiempos
PersonalJornadaTiempos=(Fin)
























[detalle.ListaEnCaptura]
(Inicio)=CDIPersonalJornadaMes.Personal
CDIPersonalJornadaMes.Personal=CDIPersonalJornadaMes.D01
CDIPersonalJornadaMes.D01=CDIPersonalJornadaMes.D02
CDIPersonalJornadaMes.D02=CDIPersonalJornadaMes.D03
CDIPersonalJornadaMes.D03=CDIPersonalJornadaMes.D04
CDIPersonalJornadaMes.D04=CDIPersonalJornadaMes.D05
CDIPersonalJornadaMes.D05=CDIPersonalJornadaMes.D06
CDIPersonalJornadaMes.D06=CDIPersonalJornadaMes.D07
CDIPersonalJornadaMes.D07=(Fin)

[detalle.ListaCamposAValidar]
(Inicio)=Personal.ApellidoPaterno
Personal.ApellidoPaterno=Personal.ApellidoMaterno
Personal.ApellidoMaterno=Personal.Nombre
Personal.Nombre=Personal.Departamento
Personal.Departamento=Personal.Puesto
Personal.Puesto=(Fin)

[detalle.ListaAcciones]
(Inicio)=Expresion
Expresion=pegarE
pegarE=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Enviar a Excel
Enviar a Excel=Actualizar
Actualizar=Imprimir
Imprimir=Afectar2
Afectar2=Historico
Historico=Copiar
Copiar=Generar
Generar=Detalles
Detalles=(Fin)
