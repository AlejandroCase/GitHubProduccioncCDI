[Forma]
Clave=CDIEspecificarJornadaArea
Nombre=Especificar Jornada/Area
Icono=0
Modulos=(Todos)
ListaCarpetas=CDIEspecificarJornadaArea
CarpetaPrincipal=CDIEspecificarJornadaArea
PosicionInicialIzquierda=424
PosicionInicialArriba=267
PosicionInicialAlturaCliente=196
PosicionInicialAncho=517
AccionesTamanoBoton=15x5
BarraAcciones=S
ListaAcciones=(Lista)
AccionesCentro=S
AccionesDivision=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S

VentanaEstadoInicial=Normal

AutoGuardar=S
MovModulo=(Todos)
IniciarAgregando=S
[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreDesplegar=&Aceptar
TipoAccion=Formas
ClaveAccion=CDIPersonalJornadaMes
Activo=S
Visible=S
EnBarraAcciones=S

NombreEnBoton=S
Antes=S
GuardarAntes=S
ConCondicion=S
EjecucionConError=S
DespuesGuardar=S
EjecucionCondicion=DiaNombre( CDIEspecificarJornadaArea:CDIEspecificarJornadaArea.FechaD ) = <T>Lunes<T>
EjecucionMensaje=<T>El Dia Inicial del Periodo es Incorrecto<T>
AntesExpresiones=Asigna(Info.PeriodoTipo,CDIEspecificarJornadaArea:CDIEspecificarJornadaArea.PeriodoTipo)<BR>Asigna(Info.FechaD,CDIEspecificarJornadaArea:CDIEspecificarJornadaArea.FechaD)<BR>Asigna(Info.FechaA,CDIEspecificarJornadaArea:CDIEspecificarJornadaArea.FechaA)<BR>Asigna(Temp.Texto,CDIEspecificarJornadaArea:CDIEspecificarJornadaArea.Area)<BR><BR><BR>Si<BR>  SQL(<T>EXEC fnPersonalJornadaMesHistEx :tArea, :tPer, :tFecha, :tEmpre, :nSucu<T>, Temp.Texto, Info.PeriodoTipo, FechaFormatoServidor(Info.FechaD), Empresa, Sucursal ) = 0<BR>Entonces<BR>  Ejecutarsql(<T>exec Sp_UpPersonalJornada :FD,:FA, :tp, :Area, :tUsuario,:Emp,:Suc<T>,Info.FechaD,Info.FechaA,Info.PeriodoTipo,Temp.Texto, Usuario,Empresa,Sucursal)<BR>  Forma(<T>CDIPersonalJornadaMes<T>)<BR>Sino<BR>  Error(<T>Este Periodo ya fue calculado<T>)<BR>  AbortarOperacion       <BR>Fin
[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S



NombreEnBoton=S

[Lista.Columnas]
PeriodoTipo=247








0=91
1=267



Grupo=304



Personal=50
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
[Acciones.Aceptar.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S






[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S







ConCondicion=S
EjecucionConError=S
Expresion=Asigna(Info.PeriodoTipo,EspecificarJornadaArea:EspecificarJornadaArea.PeriodoTipo)<BR>Asigna(Info.FechaD,EspecificarJornadaArea:EspecificarJornadaArea.FechaD)<BR>Asigna(Info.FechaA,EspecificarJornadaArea:EspecificarJornadaArea.FechaA)<BR>Asigna(Temp.Texto,EspecificarJornadaArea:EspecificarJornadaArea.Area)<BR><BR>Si<BR>  SQL(<T>Select dbo.fnPersonalJornadaMesHistEx(:tArea, :tPer, :tFecha)<T>, Temp.Texto, Info.PeriodoTipo, FechaFormatoServidor(Info.FechaD) ) = 0<BR>Entonces<BR>  Ejecutarsql(<T>exec Sp_UpPersonalJornada :FD,:FA, :tp, :Area, :tUsuario,:Emp,:Suc<T>,Info.FechaD,Info.FechaA,Info.PeriodoTipo,Temp.Texto, Usuario,Empresa,Sucursal)<BR>Sino<BR>  Error(<T>Este Periodo ya fue calculado<T>)<BR>  AbortarOperacion       <BR>Fin
EjecucionCondicion=DiaNombre( EspecificarJornadaArea:EspecificarJornadaArea.FechaD ) = <T>Lunes<T>
EjecucionMensaje=<T>El Dia Inicial del Periodo es Incorrecto<T>
[Acciones.Aceptar.Formas]
Nombre=Formas
Boton=0
TipoAccion=Formas
ClaveAccion=PersonalJornadaMes
Activo=S
Visible=S





[(Variables).ListaEnCaptura]
(Inicio)=Info.PeriodoTipo
Info.PeriodoTipo=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Info.Sucursal
Info.Sucursal=(Fin)








[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Formas
Formas=(Fin)






[detalle.Columnas]
Personal=66
D01=170
D02=175
D03=188
D04=175
D05=178
D06=177
D07=185
































[EspecificarJornadaArea.ListaEnCaptura]
(Inicio)=EspecificarJornadaArea.PeriodoTipo
EspecificarJornadaArea.PeriodoTipo=EspecificarJornadaArea.FechaD
EspecificarJornadaArea.FechaD=EspecificarJornadaArea.FechaA
EspecificarJornadaArea.FechaA=EspecificarJornadaArea.Area
EspecificarJornadaArea.Area=(Fin)

[CDIEspecificarJornadaArea]
Estilo=Ficha
Clave=CDIEspecificarJornadaArea
PermiteEditar=S
GuardarPorRegistro=S
GuardarAlSalir=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEspecificarJornadaArea
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







[CDIEspecificarJornadaArea.CDIEspecificarJornadaArea.PeriodoTipo]
Carpeta=CDIEspecificarJornadaArea
Clave=CDIEspecificarJornadaArea.PeriodoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIEspecificarJornadaArea.CDIEspecificarJornadaArea.FechaD]
Carpeta=CDIEspecificarJornadaArea
Clave=CDIEspecificarJornadaArea.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDIEspecificarJornadaArea.CDIEspecificarJornadaArea.FechaA]
Carpeta=CDIEspecificarJornadaArea
Clave=CDIEspecificarJornadaArea.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDIEspecificarJornadaArea.CDIEspecificarJornadaArea.Area]
Carpeta=CDIEspecificarJornadaArea
Clave=CDIEspecificarJornadaArea.Area
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco


































[CDIEspecificarJornadaArea.ListaEnCaptura]
(Inicio)=CDIEspecificarJornadaArea.PeriodoTipo
CDIEspecificarJornadaArea.PeriodoTipo=CDIEspecificarJornadaArea.FechaD
CDIEspecificarJornadaArea.FechaD=CDIEspecificarJornadaArea.FechaA
CDIEspecificarJornadaArea.FechaA=CDIEspecificarJornadaArea.Area
CDIEspecificarJornadaArea.Area=(Fin)















[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
