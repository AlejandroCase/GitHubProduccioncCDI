
[Forma]
Clave=CDIEspecificarCopiaJornada
Icono=0
Modulos=(Todos)
Nombre=Especificar Copia Jornada

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=439
PosicionInicialArriba=272
PosicionInicialAlturaCliente=116
PosicionInicialAncho=273
BarraAyuda=S
BarraAyudaEsp=S
BarraAyuda1=Info.PeriodoTipo &<T>;<T>& Temp.Texto<BR>//,Usuario(<T>&Usuario&<T>),Empresa(<T>&Empresa&<T>),Sucursal(<T>& Sucursal&<T>)<T>
BarraAyuda1Ancho=300
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraHerramientas=S
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.Fecha

CarpetaVisible=S
PermiteEditar=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro



[(Variables).ListaEnCaptura]
(Inicio)=Info.Fecha
Info.Fecha=Info.PeriodoTipo
Info.PeriodoTipo=(Fin)

[(Variables).Info.Fecha]
Carpeta=(Variables)
Clave=Info.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro



[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
EnBarraHerramientas=S

EspacioPrevio=S
[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.SpEjecutor]
Nombre=SpEjecutor
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

ConCondicion=S
EjecucionConError=S
Expresion=ProcesarSQL(<T>Exec Sp_CtrlAccesoCopiaJornada :tFC,:tFP,:tPri,:tAr,:tUs,:tEmp,:nSuc<T>,fechaFormatoServidor(Info.Fecha),fechaFormatoServidor(Info.FechaD),Info.PeriodoTipo,Temp.Texto,Usuario,Empresa,Sucursal)<BR>OtraForma( <T>CDIPersonalJornadaMes<T>, Forma.ActualizarForma )
EjecucionCondicion=DiaNombre( Info.Fecha ) = <T>Lunes<T>
EjecucionMensaje=<T>El Dia Inicial del Periodo es Incorrecto<T>
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=Aceptar
Multiple=S
EnBarraHerramientas=S
TipoAccion=Expresion
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S




GuardarAntes=S
















[Acciones.Aceptar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S









[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=SpEjecutor
SpEjecutor=Cerrar
Cerrar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
