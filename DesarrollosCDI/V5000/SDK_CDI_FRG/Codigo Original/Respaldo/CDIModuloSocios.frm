[Forma]
Clave=CDIModuloSocios
Icono=0
BarraHerramientas=S
Modulos=SOC
DialogoAbrir=S
MovModulo=SOC
Nombre=<T>Socios<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=2003
PosicionInicialArriba=78
PosicionInicialAlturaCliente=294
PosicionInicialAncho=290
Menus=S
BarraAyuda=S
BarraAyudaBold=S
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
TituloAutoNombre=S
ListaAcciones=(Lista)
PosicionSec1=409
VentanaEscCerrar=S
AutoGuardarEncabezado=S
PosicionCol1=716
ExpresionesAlMostrar=Asigna( Info.CDINumero, 2 )<BR>Asigna(Info.Importe2,0)<BR>Asigna(Info.Id,nulo)

PosicionSec2=270
PosicionCol2=472
SinTransacciones=S
MenuPrincipal=(Lista)
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDISocioA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(Situación)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroUsuarios=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroUsuarioDefault=(Todos)
FiltroFechasNormal=S
FiltroMonedasCampo=Mon.Moneda
FiltroFechasNombre=&Fecha
PestanaOtroNombre=S
PestanaNombre=movimientos
OtroOrden=S
IconosSubTitulo=<T>Movimiento<T>
IconosCambiarOrden=S
IconosConPaginas=S
ListaEnCaptura=(Lista)
ListaOrden=CDISocio.ID<TAB>(Decendente)
FiltroFechas=S
FiltroSucursales=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=SINAFECTAR
FiltroFechasCampo=CDISocio.FechaEmision
FiltroFechasDefault=(Todo)
FiltroFechasCancelacion=CDISocio.FechaCancelacion
BusquedaRapida=S
BusquedaRespetarFiltros=S
BusquedaInicializar=S
BusquedaRespetarUsuario=S
BusquedaEnLinea=S
MenuLocal=S
ListaAcciones=Campos
FiltroMovDefault=(Todos)
BusquedaAncho=20

BusquedaBloquearAsteriscoPrevio=S
IconosNombre=CDISocio.Mov + <T> <T> +CDISocio.MovID
FiltroMovs=S
FiltroMovsTodos=S
[Lista]
Estilo=Ficha
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
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
GuardarAlSalir=S
Pestana=S
PestanaOtroNombre=S
PestanaNombre=General
AlinearTodaCarpeta=S
[Lista.CDISocio.Mov]
Carpeta=Lista
Clave=CDISocio.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Lista.CDISocio.MovID]
Carpeta=Lista
Clave=CDISocio.MovID
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=11
ColorFondo=$00C8D0D4
Pegado=S
Efectos=[Negritas]

[Lista.CDISocio.FechaEmision]
Carpeta=Lista
Clave=CDISocio.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=22

[(Carpeta Abrir).CDISocio.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Concepto]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Proyecto]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Referencia]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.NIPCDI]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[(Carpeta Abrir).CDISocio.Membresia]
Carpeta=(Carpeta Abrir)
Clave=CDISocio.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).Columnas]
0=220
1=126
2=96
3=73
4=218
5=117
6=153
7=103
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

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+N
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S


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



[Acciones.Localizar]
Nombre=Localizar
Boton=0
Menu=&Archivo
NombreDesplegar=L&ocalizar...
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Localizar
Activo=S
Visible=S



[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S



[Lista.Columnas]
0=145
1=79
2=143
3=85
4=93
5=117
Cliente=117
PersonalNombres=120
PersonalApellidoPaterno=134
PersonalApellidoMaterno=144
Membresia=64
Socio=127
NIPCDI=131
NombreSocio=171
RFC=107
Tipo=207
Categoria=250
Clave=64
Nombre=293
NombreCorto=224
Articulo=131
Descripcion1=244
Institucion=87
Ciudad=63
Estado=150

UEN=44
Delegacion=129
Colonia=189
CodigoPostal=71
Ruta=67
Nacionalidad=184
Medicamento=212
Descripcion=368
Alergia=308
Enfermedad=239
6=155
7=102
8=89
[Acciones.Evaluacion]
Nombre=Evaluacion
Boton=0
Menu=&Archivo
NombreDesplegar=E&valuaciones
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.Mov, CDISocio:CDISocio.Mov)<BR>Asigna(Info.Clave, <T>SOC<T>+CDISocio:CDISocio.ID)<BR>Asigna(Info.Nombre, CDISocio:CDISocio.Mov+<T> <T>+CDISocio:CDISocio.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(CDISocio:CDISocio.Estatus en (EstatusConcluido, EstatusCancelado), <T>EvaluacionCalificacionInfo<T>, <T>EvaluacionCalificacion<T>))

[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
NombreDesplegar=Plantillas &Office
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+F11
Expresion=Asigna(Info.Forma, <T>CDIModuloSocios<T>)<BR>Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.Mov, CDISocio:CDISocio.Mov)<BR>Asigna(Info.Nombre, <T>Socios<T>)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID )<BR>Fin

[Lista.CDISocio.Concepto]
Carpeta=Lista
Clave=CDISocio.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Lista.CDISocio.Proyecto]
Carpeta=Lista
Clave=CDISocio.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
Pegado=S

[Lista.CDISocio.UEN]
Carpeta=Lista
Clave=CDISocio.UEN
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Pegado=S
Tamano=5

[Lista.CDISocio.Referencia]
Carpeta=Lista
Clave=CDISocio.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDISocio.Observaciones]
Carpeta=Lista
Clave=CDISocio.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDISocio.Causa]
Carpeta=Lista
Clave=CDISocio.Causa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Lista.CDISocio.Moneda]
Carpeta=Lista
Clave=CDISocio.Moneda
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=9
ColorFondo=Blanco

[Lista.CDISocio.TipoCambio]
Carpeta=Lista
Clave=CDISocio.TipoCambio
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Pegado=S
Tamano=6

[Lista.CDISocio.Cliente]
Carpeta=Lista
Clave=CDISocio.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco
EspacioPrevio=N


[Lista.CDISocio.Membresia]
Carpeta=Lista
Clave=CDISocio.Membresia
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
LineaNueva=S
Efectos=[Negritas]

[Lista.CDISocio.NIPCDI]
Carpeta=Lista
Clave=CDISocio.NIPCDI
Editar=N
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=$00C8D0D4
Efectos=[Negritas]
LineaNueva=S

[Acciones.Verificar]
Nombre=Verificar
Boton=41
NombreDesplegar=<T>&Verificar<T>
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S
Menu=&Archivo
EnMenu=S
EspacioPrevio=S

[Acciones.Situacion]
Nombre=Situacion
Boton=71
Menu=&Archivo
NombreDesplegar=&Situación
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Antes=S
Visible=S
ActivoCondicion=Usuario.ModificarSituacion
AntesExpresiones=Si(Vacio(CDISocio:CDISocio.ID),GuardarCambios)

[Acciones.Afectar]
Nombre=Afectar
Boton=7
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=F12
NombreDesplegar=<T>A&fectar<T>
GuardarAntes=S
RefrescarDespues=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S

Antes=S



Expresion=Asigna(Afectar.ID, CDISocio:CDISocio.ID)<BR>Asigna(Afectar.Mov, CDISocio:CDISocio.Mov)<BR>Asigna(Afectar.MovID, CDISocio:CDISocio.MovID)<BR>Asigna(Afectar.FormaCaptura, <T>CDIModuloSocios<T>)<BR>Asigna(Info.MovTipo, MovTipo(<T>SOC<T>,CDISocio:CDISocio.Mov))<BR>Si  (Info.MovTipo = SOC.VERIFICA) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y ( Vacio(CDIfnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)))<BR>  Entonces<BR>    Dialogo(<T>CDIGenerarVerificacion<T>)<BR>  Sino<BR>    Si (Info.MovTipo = <T>SOC.VERIFICA<T>) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y (CDIfnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)=<T>SOC.TEMP<T>)<BR>      Entonces<BR>        Dialogo(<T>CDIGenerarTemporal<T>)<BR>      Sino<BR>        Si (Info.MovTipo = <T>SOC.VERIFICA<T>) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y (CDIfnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)=<T>SOC.REIN<T>)<BR>          Entonces<BR>            Asigna(Afectar.GenerarMov, SQL(<T>SELECT cc.CDIMovReingreso FROM CDIEmpresaCfg cc WHERE cc.Empresa =:tEmpresa<T>, Empresa))<BR>            Dialogo(<T>CDIGenerarReingreso<T>)<BR>          Sino<BR>            Si (Info.MovTipo = <T>SOC.SOLBAJA<T>) y (CDISocio:CDISocio.Estatus = EstatusPendiente)<BR>              Entonces<BR>                Dialogo(<T>CDIGenerarBaja<T>)<BR>              Sino<BR>                Si (Info.MovTipo = <T>SOC.VERIFICA<T>) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y (CDIfnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)=<T>SOC.SOLHON<T>)<BR>                  Entonces<BR>                    Dialogo(<T>CDIGenerarHonorario<T>)<BR>                  Sino<BR>                    Si (Info.MovTipo = <T>SOC.VERIFICA<T>) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y (CDIfnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)=<T>SOC.SOLCORTE<T>)<BR>                      Entonces<BR>                        Dialogo(<T>CDIGenerarCortesia<T>)<BR>                      Sino<BR>                        Si (Info.MovTipo = SOC.HONOR) y (CDISocio:CDISocio.Estatus = EstatusPendiente)<BR>                          Entonces<BR>                            Dialogo(<T>CDIGenerarHonorJusticia<T>)<BR>                        Sino<BR>                          Si (Info.MovTipo =SOC.SOLSUBSID) y (CDISocio:CDISocio.Estatus = EstatusPendiente)<BR>                            Entonces<BR>                              Dialogo(<T>GenerarSolSubsidio<T>)<BR>                          Sino<BR>                            Si (Info.MovTipo =SOC.SUBSID) y (CDIfnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Mov) noen(SOC.ACEPTASUB, SOC.RECHAZASUB)) y (CDISocio:CDISocio.Estatus = EstatusPendiente)<BR>                              Entonces<BR>                                Dialogo(<T>CDIGenerarSubsidio<T>)<BR>                           Sino<BR>                               Si (Info.MovTipo =SOC.ABCR) y (CDISocio:CDISocio.Estatus= EstatusSinAfectar) y (CDISocio:CDISocio.Mov = <T>Registro Aspirante<T>)<BR>                                Entonces<BR>                                 Afectar(<T>SOC<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, Afectar.FormaCaptura)<BR>                                 Dialogo(<T>GenerarAltaSocio<T>)<BR>                                                  <BR>                            Sino<BR>                              Afectar(<T>SOC<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, Afectar.FormaCaptura)<BR>                             Fin<BR>                            Fin<BR>                          Fin<BR>                       Fin<BR>                    Fin<BR>                Fin<BR>           Fin<BR>      Fin<BR>    Fin<BR>Fin
ActivoCondicion=CDISocio:CDISocio.Estatus noen (EstatusConcluido, EstatusCancelado)
AntesExpresiones=si(CDISocio:CDISocio.Mov =<T>Registro Aspirante<T>,Ejecutarsql(<T>spInsConsecutivoCte :tc, :ns, :nI, :tCt<T>,<T>Cte<T>,0,CDISocio:CDISocio.ID,nulo))
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=E&liminar
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S
ConCondicion=S
EjecucionConError=S
ActivoCondicion=Vacio(CDISocio:CDISocio.MovID) y (CDISocio:CDISocio.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar)) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, CDISocio:CDISocio.Usuario)
EjecucionCondicion=Vacio(SQL(<T>SELECT MovID FROM CDISocio WHERE ID=:nID<T>, CDISocio:CDISocio.ID))
EjecucionMensaje=Forma.ActualizarForma

[Acciones.Cancelar]
Nombre=Cancelar
Boton=33
Menu=&Archivo
NombreDesplegar=<T>Cancela&r<T>
GuardarAntes=S
RefrescarDespues=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
Expresion=Asigna(Afectar.FormaCaptura, <T>CDIModuloSocios<T>)<BR>Cancelar(<T>SOC<T>, CDISocio:CDISocio.ID, CDISocio:CDISocio.Mov, CDISocio:CDISocio.MovID, <T>Todo<T>, <T><T>, Afectar.FormaCaptura)
ActivoCondicion=Si<BR>MovTipoEn(<T>SOC<T>, CDISocio:CDISocio.Mov, (SOC.SOL, SOC.SOLBAJA, SOC.VERIFICA, SOC.SOLCORTE, SOC.SOLHON, SOC.SOLSUBSID, SOC.SUBSID, SOC.TEMP, SOC.HONOR, SOC.CITACON, SOC.CITASIN, SOC.EST ))<BR>  Entonces<BR>    CDISocio:CDISocio.Estatus en (EstatusPendiente)<BR>  Sino<BR>    CDISocio:CDISocio.Estatus en (EstatusPendiente, EstatusConcluido)<BR>  Fin

[Acciones.AgregarAspirante]
Nombre=AgregarAspirante
Boton=81
NombreDesplegar=Agregar Aspirante
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDISocios
Activo=S
Visible=S
EspacioPrevio=S
Menu=&Edición
Antes=S
AntesExpresiones=GuardarCambios<BR>Asigna( Info.CDINumero, 2 )<BR>Asigna( Info.ID, CDISocio:CDISocio.ID )<BR>Asigna( Info.Numero, 1)


[Detalle]
Estilo=Hoja
Clave=Detalle
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDISocioD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDISocio
LlaveLocal=CDISocioD.ID
LlaveMaestra=CDISocio.ID
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
ControlRenglon=S
CampoRenglon=CDISocioD.Renglon
OtroOrden=S
ListaOrden=(Lista)
MenuLocal=S
ListaAcciones=Documentacion
CondicionEdicion=(MovTipo( <T>SOC<T>, CDISocio:CDISocio.Mov ) noen (SOC.EQUIPO)) y (CDISocio:CDISocio.CDIPermiteEditar) y (CDISocio:CDISocio.Estatus en(EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar))
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Membresia

CondicionVisible=(MovTipo( <T>SOC<T>, CDISocio:CDISocio.Mov ) noen (SOC.EQUIPO))
[Detalle.CDISocioD.Cliente]
Carpeta=Detalle
Clave=CDISocioD.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
EditarConBloqueo=N

[Detalle.CDISocioD.Membresia]
Carpeta=Detalle
Clave=CDISocioD.Membresia
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[Detalle.CDISocioD.Socio]
Carpeta=Detalle
Clave=CDISocioD.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
Efectos=[Negritas]
ColorFondo=Blanco

[Detalle.CDISocioD.Estatus]
Carpeta=Detalle
Clave=CDISocioD.Estatus
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[Detalle.Columnas]
Cliente=64
NIPCDI=133
Membresia=65
Socio=96
Estatus=46
NombreSocio=173
FechaNacimiento=94
Edad=75
Parentesco=108
TipoSangre=76
EdadActual=36
SocioNueva=113
RFC=106
[Acciones.TerminarCaptura]
Nombre=TerminarCaptura
Boton=75
NombreDesplegar=Terminar Captura
RefrescarDespues=S
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=EjecutarSQL(<T>EXEC spCDICopiaDetalleSocio :nIDs, :tCliente, :nAccion<T>, Info.ID, Nulo, 2)

[Detalle.NombreSocio]
Carpeta=Detalle
Clave=NombreSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[Detalle.Cte.FechaNacimiento]
Carpeta=Detalle
Clave=Cte.FechaNacimiento
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[Detalle.Cte.Parentesco]
Carpeta=Detalle
Clave=Cte.Parentesco
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[Acciones.MovBitacora]
Nombre=MovBitacora
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+B
NombreDesplegar=Bitácora
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovBitacora
Activo=S
ConCondicion=S
EjecucionCondicion=Si(Vacio(CDISocio:CDISocio.ID),  GuardarCambios)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.ID, CDISocio:CDISocio.ID)<BR>Asigna(Info.Mov, CDISocio:CDISocio.Mov)<BR>Asigna(Info.MovID, CDISocio:CDISocio.MovID)<BR>Asigna(Info.PuedeEditar, CDISocio:CDISocio.Estatus<>EstatusCancelado)
Visible=S

[Acciones.Documentacion]
Nombre=Documentacion
Boton=0
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIDocSocioCta
Activo=S
Antes=S
AntesExpresiones=Asigna( Info.Cliente, CDISocioD:Cte.Cliente )
VisibleCondicion=CDISocio:CDISocio.Estatus = EstatusSinAfectar

[CDISocioArticulos.Columnas]
Articulo=142
Cantidad=64
Precio=64

[CDISocioArticulos.ListaEnCaptura]
(Inicio)=CDISocioArticulos.Articulo
CDISocioArticulos.Articulo=CDISocioArticulos.Cantidad
CDISocioArticulos.Cantidad=CDISocioArticulos.Precio
CDISocioArticulos.Precio=(Fin)

[InteresadoEn]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Interesado en / Articulo cargo bancario
Clave=InteresadoEn
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocioArticulos
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDISocio
LlaveLocal=CDISocioArticulos.ID
LlaveMaestra=CDISocio.ID
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

CondicionVisible=(MovTipo( <T>SOC<T>, CDISocio:CDISocio.Mov ) en (SOC.ACEPTA, SOC.TEMPORAL) )<BR>//o<BR>//(CDISocio:CDISocio.Mov en (<T>Alta Cargo Bancario<T>))
[InteresadoEn.CDISocioArticulos.Articulo]
Carpeta=InteresadoEn
Clave=CDISocioArticulos.Articulo
Editar=S
EditarConBloqueo=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[InteresadoEn.CDISocioArticulos.Cantidad]
Carpeta=InteresadoEn
Clave=CDISocioArticulos.Cantidad
Editar=S
EditarConBloqueo=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[InteresadoEn.CDISocioArticulos.Precio]
Carpeta=InteresadoEn
Clave=CDISocioArticulos.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Efectos=[Negritas]
ColorFondo=Blanco

[InteresadoEn.Columnas]
Articulo=124
Cantidad=64
Precio=64
DescripcionArt=357
ID=64

[InteresadoEn.DescripcionArt]
Carpeta=InteresadoEn
Clave=DescripcionArt
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=$00C8D0D4
Efectos=[Negritas]


[Lista.CDISocio.Justificacion]
Carpeta=Lista
Clave=CDISocio.Justificacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=77
ColorFondo=Blanco


[Acciones.Renovacion]
Nombre=Renovacion
Boton=0
Menu=&Edición
NombreDesplegar=Renovación
EnMenu=S
TipoAccion=Expresion
Activo=S
Antes=S
Expresion=Generar(<T>SOC<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.GenerarMov, Afectar.FormaCaptura)
AntesExpresiones=Asigna(Afectar.ID, CDISocio:CDISocio.ID)<BR>Asigna(Afectar.Mov, CDISocio:CDISocio.Mov)<BR>Asigna(Afectar.MovID, CDISocio:CDISocio.MovID)<BR>Asigna(Afectar.FormaCaptura, <T>Socios<T>)<BR>Asigna(Afectar.GenerarMov, SQL(<T>SELECT cc.CDIMovRenovacion FROM CDIEmpresaCfg cc WHERE cc.Empresa =:tEmpresa<T>, Empresa))<BR>Asigna(Info.MovTipo, MovTipo(<T>SOC<T>,CDISocio:CDISocio.Mov))
VisibleCondicion=(SQL(<T>SELECT CDIRenovacionMembresia FROM CDIUsuarioCFG WHERE Usuario =:tUsuarios<T>, Usuario) = VERDADERO) y ( MovTipo( <T>SOC<T>, CDISocio:CDISocio.Mov ) = SOC.TEMPORAL)

[Acciones.MovPos]
Nombre=MovPos
Boton=0
Menu=&Ver
NombreDesplegar=&Posición del Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPos
ActivoCondicion=ConDatos(CDISocio:CDISocio.MovID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.ID, CDISocio:CDISocio.ID)<BR>Asigna(Info.Mov, CDISocio:CDISocio.Mov)<BR>Asigna(Info.MovID, CDISocio:CDISocio.MovID)
Visible=S

[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F4
NombreDesplegar=Anexos
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=AnexoMov
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Rama, <T>VTAS<T>)<BR>Asigna(Info.Fecha, CDISocio:CDISocio.FechaEmision)<BR>Asigna(Info.ID, CDISocio:CDISocio.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (CDISocio:CDISocio.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, CDISocio:CDISocio.Mov+<T> <T>+CDISocio:CDISocio.MovID)
Visible=S

[Lista.CDISocio.ClienteAnt]
Carpeta=Lista
Clave=CDISocio.ClienteAnt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco


[Acciones.CalcSubsidio]
Nombre=CalcSubsidio
Boton=96
NombreEnBoton=S
Menu=&Edición
EsDefault=S
NombreDesplegar=Calcula &Subsidio
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S
ConCondicion=S
EjecucionConError=S
Antes=S
DespuesGuardar=S
Expresion=Asigna(CDISocio:CDISocio.ImporteSubsidio,SQL(<T>SELECT dbo.fnCDICalculaSubsidio(:tCte)<T>, CDISocio:CDISocio.Cliente))
ActivoCondicion=MovTipo(<T>SOC<T>, CDISocio:CDISocio.Mov) = <T>SOC.SUBSID<T>
EjecucionCondicion=SQL(<T>SELECT 1 FROM CDIEstudioSocioeconomico WHERE Cliente = :tCte<T>, CDISocio:CDISocio.Cliente) = 1
EjecucionMensaje=<T>Falta Registrar el Estudio Socioeconómico<T>

[Lista.NombreSocio]
Carpeta=Lista
Clave=NombreSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=$00C8D0D4
Efectos=[Negritas]
Pegado=N

[Lista.NombreSocioBaja]
Carpeta=Lista
Clave=NombreSocioBaja
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[Lista.CDISocio.BajaTotal]
Carpeta=Lista
Clave=CDISocio.BajaTotal
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Pegado=N
Tamano=25

[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S

[HonorJusticia]
Estilo=Ficha
Pestana=S
Clave=HonorJusticia
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
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
PestanaOtroNombre=S
PestanaNombre=Honor y Justicia
ListaEnCaptura=(Lista)
CondicionVisible=MovTipo( <T>SOC<T>, CDISocio:CDISocio.Mov ) en (SOC.HONOR, SOC.DICTAMEN, SOC.SANCION)

[HonorJusticia.CDISocio.DemandanteTipo]
Carpeta=HonorJusticia
Clave=CDISocio.DemandanteTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDISocio.ClaveDemandante]
Carpeta=HonorJusticia
Clave=CDISocio.ClaveDemandante
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDISocio.DemandadoTipo]
Carpeta=HonorJusticia
Clave=CDISocio.DemandadoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDISocio.ClaveDemandado]
Carpeta=HonorJusticia
Clave=CDISocio.ClaveDemandado
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDISocio.CitaHonorJusticia]
Carpeta=HonorJusticia
Clave=CDISocio.CitaHonorJusticia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDISocio.HoraHonorJusticia]
Carpeta=HonorJusticia
Clave=CDISocio.HoraHonorJusticia
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[HonorJusticia.CDISocio.BloquearDemandante]
Carpeta=HonorJusticia
Clave=CDISocio.BloquearDemandante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=10
ColorFondo=Blanco

[HonorJusticia.CDISocio.NoDiasDemandante]
Carpeta=HonorJusticia
Clave=CDISocio.NoDiasDemandante
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[HonorJusticia.CDISocio.BloquearDemandado]
Carpeta=HonorJusticia
Clave=CDISocio.BloquearDemandado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[HonorJusticia.CDISocio.NoDiasDemandado]
Carpeta=HonorJusticia
Clave=CDISocio.NoDiasDemandado
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Comentarios]
Estilo=Ficha
Pestana=S
Clave=Comentarios
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
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
ListaEnCaptura=CDISocio.Comentarios
PestanaOtroNombre=S
PestanaNombre=Comentarios
AlinearTodaCarpeta=S
CondicionVisible=MovTipo( <T>SOC<T>, CDISocio:CDISocio.Mov ) en (SOC.DICTAMEN, SOC.SANCION, SOC.DAM)
[Comentarios.CDISocio.Comentarios]
Carpeta=Comentarios
Clave=CDISocio.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Equipo]
Estilo=Hoja
Pestana=S
Clave=Equipo
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocioEquipoD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDISocio
LlaveLocal=CDISocioEquipoD.ID
LlaveMaestra=CDISocio.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDISocioEquipoD.NombreJugador
PestanaOtroNombre=S
PestanaNombre=Equipo
IgnorarControlesEdicion=S
CondicionVisible=MovTipo( <T>SOC<T>, CDISocio:CDISocio.Mov )=SOC.EQUIPO

[Equipo.CDISocioEquipoD.NombreJugador]
Carpeta=Equipo
Clave=CDISocioEquipoD.NombreJugador
Editar=S
EditarConBloqueo=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Equipo.Columnas]
NombreJugador=604


[Lista.CDISocio.NombreEquipo]
Carpeta=Lista
Clave=CDISocio.NombreEquipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=77
ColorFondo=Blanco

[Acciones.Campos]
Nombre=Campos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Detalle.CDISocioD.TipoSangre]
Carpeta=Detalle
Clave=CDISocioD.TipoSangre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Detalle.CDISocioD.Edad]
Carpeta=Detalle
Clave=CDISocioD.Edad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[Detalle.EdadActual]
Carpeta=Detalle
Clave=EdadActual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[Lista.CDISocio.Estado]
Carpeta=Lista
Clave=CDISocio.Estado
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=18
ColorFondo=Blanco
EditarConBloqueo=S


[Acciones.CDIAutorizar]
Nombre=CDIAutorizar
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+BLOQ MAYUS
NombreDesplegar=Autorizar Flujo
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIMovAutorizar
ActivoCondicion=CDISocio:CDISocio.CDIFlujoAutorizacion
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.ID, CDISocio:CDISocio.ID)<BR>Asigna(Info.Mov, CDISocio:CDISocio.Mov)
Visible=S

[HonorJusticia.CDISocio.NombreDemandante]
Carpeta=HonorJusticia
Clave=CDISocio.NombreDemandante
3D=S
Pegado=S
Tamano=22
ColorFondo=Plata
Efectos=[Negritas]

[HonorJusticia.CDISocio.NombreDemandado]
Carpeta=HonorJusticia
Clave=CDISocio.NombreDemandado
3D=S
Pegado=S
Tamano=22
ColorFondo=Plata
Efectos=[Negritas]

[HonorJusticia.ListaEnCaptura]
(Inicio)=CDISocio.DemandanteTipo
CDISocio.DemandanteTipo=CDISocio.ClaveDemandante
CDISocio.ClaveDemandante=CDISocio.NombreDemandante
CDISocio.NombreDemandante=CDISocio.DemandadoTipo
CDISocio.DemandadoTipo=CDISocio.ClaveDemandado
CDISocio.ClaveDemandado=CDISocio.NombreDemandado
CDISocio.NombreDemandado=CDISocio.CitaHonorJusticia
CDISocio.CitaHonorJusticia=CDISocio.HoraHonorJusticia
CDISocio.HoraHonorJusticia=CDISocio.BloquearDemandante
CDISocio.BloquearDemandante=CDISocio.NoDiasDemandante
CDISocio.NoDiasDemandante=CDISocio.BloquearDemandado
CDISocio.BloquearDemandado=CDISocio.NoDiasDemandado
CDISocio.NoDiasDemandado=(Fin)

[Acciones.MovCopiar]
Nombre=MovCopiar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
NombreDesplegar=&Copiar
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Expresion=CopiarMovimiento(<T>SOC<T>, CDISocio:CDISocio.ID, <T>CDIModuloSocios<T>)
Activo=S
Visible=S

[Lista.CDISocio.Edad]
Carpeta=Lista
Clave=CDISocio.Edad
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00C8D0D4
Pegado=S
Efectos=[Negritas]

[Acciones.RepPantalla]
Nombre=RepPantalla
Boton=6
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F11
NombreDesplegar=&Presentación preliminar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
Expresion=si CDISocio:CDISocio.Mov en (<T>Alta Cargo Bancario<T>)<BR>  entonces<BR>ReportePantalla(ReporteMovPantalla(<T>CDICargoBancario<T>, CDISocio:CDISocio.Mov, CDISocio:CDISocio.Estatus), CDISocio:CDISocio.ID)<BR>  sino<BR>ReportePantalla(ReporteMovPantalla(<T>SOC<T>, CDISocio:CDISocio.Mov, CDISocio:CDISocio.Estatus), CDISocio:CDISocio.ID)<BR>fin
ActivoCondicion=Usuario.PreliminarMovs



[ComentBloqueo]
Estilo=Ficha
Pestana=S
Clave=ComentBloqueo
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
PestanaOtroNombre=S
PestanaNombre=Comentarios Bloqueo
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ListaEnCaptura=CDISocio.ComentBloqueo
AlinearTodaCarpeta=S
CondicionVisible=MovTipo(<T>SOC<T>, CDISocio:CDISocio.Mov) = <T>SOC.BAJA<T>

[ComentBloqueo.CDISocio.ComentBloqueo]
Carpeta=ComentBloqueo
Clave=CDISocio.ComentBloqueo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Detalle.CDISocioD.SocioNueva]
Carpeta=Detalle
Clave=CDISocioD.SocioNueva
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[CDISocioSubsidioLista.Columnas]
Subsidio=184
Importe=64

[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
NombreDesplegar=Información del &Cliente
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteInfo
ConCondicion=S
Antes=S
Visible=S
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+I
EspacioPrevio=S
ActivoCondicion=Usuario.CteInfo
EjecucionCondicion=Condatos(CDISocio:CDISocio.Cliente)
AntesExpresiones=Asigna(Info.Origen,<T>VTAS<T>)<BR>Asigna(Info.Cliente,CDISocio:CDISocio.Cliente)

[CDISociosCargoRecD]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Articulos Cargos Recurrentes
Clave=CDISociosCargoRecD
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISociosCargoRecD
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
PermiteEditar=S

ExpAntesRefrescar=Asigna(Info.cliente, CDISocio:CDISocio.Cliente)<BR>Asigna(Info.CDISocio,CDISocio:CDISocio.Socio)<BR>Asigna(info.id,CDISocio:CDISocio.ID)
Detalle=S
VistaMaestra=CDISocio
LlaveLocal=CDISociosCargoRecD.Id
LlaveMaestra=CDISocio.ID
CondicionEdicion=CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>
CondicionVisible=CDISocio:CDISocio.Mov en (<T>Alta Cargo Recurre<T>)
[CDISociosCargoRecD.CDISociosCargoRecD.Articulo]
Carpeta=CDISociosCargoRecD
Clave=CDISociosCargoRecD.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISociosCargoRecD.Art.Descripcion1]
Carpeta=CDISociosCargoRecD
Clave=Art.Descripcion1
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDISociosCargoRecD.CDISociosCargoRecD.Cantidad]
Carpeta=CDISociosCargoRecD
Clave=CDISociosCargoRecD.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISociosCargoRecD.CDISociosCargoRecD.FechaInicio]
Carpeta=CDISociosCargoRecD
Clave=CDISociosCargoRecD.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISociosCargoRecD.CDISociosCargoRecD.FechaFin]
Carpeta=CDISociosCargoRecD
Clave=CDISociosCargoRecD.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISociosCargoRecD.Columnas]
Articulo=114
Descripcion1=280
Cantidad=64
FechaInicio=94
FechaFin=94


Estatus=94
Baja=94
EsCuota=64
[CDISociosDatosBancarios]
Estilo=Ficha
Pestana=S
Clave=CDISociosDatosBancarios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISociosDatosBancarios
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
PestanaOtroNombre=S
PestanaNombre=Datos Bancarios
PermiteEditar=S
ExpAntesRefrescar=Asigna(Info.cliente, CDISocio:CDISocio.Cliente)<BR>Asigna(info.id,CDISocio:CDISocio.ID)

CondicionEdicion=CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>
Detalle=S
VistaMaestra=CDISocio
LlaveLocal=CDISociosDatosBancarios.ID
LlaveMaestra=CDISocio.ID
ControlRenglon=S
CampoRenglon=CDISociosDatosBancarios.renglon
IgnorarControlesEdicion=S
OtroOrden=S
ListaOrden=(Lista)
RefrescarAlEntrar=S
CondicionVisible=(CDISocio:CDISocio.Mov en (<T>Alta Tarjeta Banco<T>))
[CDISociosDatosBancarios.CDISociosDatosBancarios.NoTarjeta]
Carpeta=CDISociosDatosBancarios
Clave=CDISociosDatosBancarios.NoTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco

[CDISociosDatosBancarios.CDISociosDatosBancarios.Vigencia]
Carpeta=CDISociosDatosBancarios
Clave=CDISociosDatosBancarios.Vigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDISociosDatosBancarios.CDISociosDatosBancarios.Institucion]
Carpeta=CDISociosDatosBancarios
Clave=CDISociosDatosBancarios.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

IgnoraFlujo=N
[CDISociosDatosBancarios.CDISociosDatosBancarios.NoSeguridad]
Carpeta=CDISociosDatosBancarios
Clave=CDISociosDatosBancarios.NoSeguridad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDISociosDatosBancarios.CDISociosDatosBancarios.CtaBancariaDom]
Carpeta=CDISociosDatosBancarios
Clave=CDISociosDatosBancarios.CtaBancariaDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDISociosDatosBancarios.CDISociosDatosBancarios.VigenciaDom]
Carpeta=CDISociosDatosBancarios
Clave=CDISociosDatosBancarios.VigenciaDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDISociosDatosBancarios.CDISociosDatosBancarios.InstitucionDom]
Carpeta=CDISociosDatosBancarios
Clave=CDISociosDatosBancarios.InstitucionDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDISociosDatosBancarios.CDISociosDatosBancarios.NombreTarjeta]
Carpeta=CDISociosDatosBancarios
Clave=CDISociosDatosBancarios.NombreTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICambioTitular]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cambio Títular
Clave=CDICambioTitular
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICambioTitular
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
PermiteEditar=S
CondicionEdicion=CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>
Detalle=S
VistaMaestra=CDISocio
LlaveLocal=CDICambioTitular.Id
LlaveMaestra=CDISocio.ID
CondicionVisible=(CDISocio:CDISocio.Mov=<T>Cambio Títular<T>) y (condatos(CDISocio:CDISocio.Cliente))

[CDICambioTitular.CDICambioTitular.Membresia]
Carpeta=CDICambioTitular
Clave=CDICambioTitular.Membresia
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=10

[CDICambioTitular.CDICambioTitular.Cliente]
Carpeta=CDICambioTitular
Clave=CDICambioTitular.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICambioTitular.CDICambioTitular.Socio]
Carpeta=CDICambioTitular
Clave=CDICambioTitular.Socio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICambioTitular.CDICambioTitular.TitularAct]
Carpeta=CDICambioTitular
Clave=CDICambioTitular.TitularAct
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICambioTitular.Cte.Nombre]
Carpeta=CDICambioTitular
Clave=Cte.Nombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICambioTitular.Columnas]
Membresia=64
Cliente=64
Socio=64
Nombre=184
TitularAct=70
Estatus=64
EstatusSoc=74
TitularNvo=68

[Acciones.Expresion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=EjecutarSql(<T>xpCDICambioTitular :nI, :nM<T>,CDISocio:CDISocio.ID,CDISocio:CDISocio.Membresia)

[Acciones.Expresion.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Membresia.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista

[Acciones.Membresia.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=EjecutarSql(<T>xpCDICambioTitular :nI, :nM<T>,CDISocio:CDISocio.ID,CDISocio:CDISocio.Membresia)

[Acciones.Membresia.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=ActualizarForma<BR>ActualizarVista

[CDICambioTitular.CDICambioTitular.EstatusSoc]
Carpeta=CDICambioTitular
Clave=CDICambioTitular.EstatusSoc
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco




[Acciones.Membresia.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)

[CDICambioTitular.CDICambioTitular.TitularNvo]
Carpeta=CDICambioTitular
Clave=CDICambioTitular.TitularNvo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
IgnoraFlujo=N

[Acciones.Expresion]
Nombre=Expresion
Boton=18
NombreEnBoton=S
NombreDesplegar=Membresia
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S
GuardarAntes=S
Antes=S
DespuesGuardar=S
Multiple=S
ListaAccionesMultiples=(Lista)
EspacioPrevio=S

ActivoCondicion=(CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>) y condatos(CDISocio:CDISocio.Cliente) y (CDISocio:CDISocio.Mov en (<T>Cambio Títular<T>))
AntesExpresiones=ASigna(info.id,CDISocio:CDISocio.ID)<BR>ActualizarForma
[Acciones.Expresion.Expresion1]
Nombre=Expresion1
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Asigna(Info.id,CDISocio:CDISocio.ID)<BR>EjecutarSql(<T>xpCDICambioTitular :nI, :nM<T>,CDISocio:CDISocio.ID,CDISocio:CDISocio.Membresia)

[Acciones.Expresion.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S


[CDIBajaCargoBancario.CDIArticulosCargos.Articulo]
Carpeta=CDIBajaCargoBancario
Clave=CDIArticulosCargos.Articulo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIBajaCargoBancario.Art.Descripcion1]
Carpeta=CDIBajaCargoBancario
Clave=Art.Descripcion1
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIBajaCargoBancario.Columnas]
Articulo=124
Descripcion1=313

[CDIBajaCargoBancario.ListaEnCaptura]
(Inicio)=CDIArticulosCargos.Articulo
CDIArticulosCargos.Articulo=Art.Descripcion1
Art.Descripcion1=(Fin)


[CDIBajaArtTarBanca.CDISocioArticulos.Articulo]
Carpeta=CDIBajaArtTarBanca
Clave=CDISocioArticulos.Articulo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIBajaArtTarBanca.CDISocioArticulos.Baja]
Carpeta=CDIBajaArtTarBanca
Clave=CDISocioArticulos.Baja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIBajaArtTarBanca.Columnas]
Articulo=124
Baja=64

[Acciones.Expresion1.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=ejecutarsql(<T>xpCDIBajaArticulosTarjetaBancaria :nId<T>,CDISocio:CDISocio.ID)
Activo=S
Visible=S

[Acciones.Expresion1.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.Expresion1]
Nombre=Expresion1
Boton=61
NombreDesplegar=Cargos Bancarios
Multiple=S
EnBarraHerramientas=S
TipoAccion=Expresion
ListaAccionesMultiples=(Lista)
Visible=S
NombreEnBoton=S
GuardarAntes=S
Antes=S
DespuesGuardar=S
RefrescarDespues=S
EspacioPrevio=S




ActivoCondicion=(CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>) y condatos(CDISocio:CDISocio.Cliente) y (CDISocio:CDISocio.Mov en (<T>Baja Cargo Bancario<T>))
AntesExpresiones=ASigna(info.id,CDISocio:CDISocio.ID)<BR>ActualizarForma
[CDICambioTitular.ListaOrden]
(Inicio)=CDICambioTitular.Id	(Acendente)
CDICambioTitular.Id	(Acendente)=CDICambioTitular.Renglon	(Acendente)
CDICambioTitular.Renglon	(Acendente)=(Fin)

[CDICambioTitular.ListaEnCaptura]
(Inicio)=CDICambioTitular.Membresia
CDICambioTitular.Membresia=CDICambioTitular.Cliente
CDICambioTitular.Cliente=CDICambioTitular.Socio
CDICambioTitular.Socio=Cte.Nombre
Cte.Nombre=CDICambioTitular.EstatusSoc
CDICambioTitular.EstatusSoc=CDICambioTitular.TitularAct
CDICambioTitular.TitularAct=CDICambioTitular.TitularNvo
CDICambioTitular.TitularNvo=(Fin)


[Acciones.CDICargoRec.CDisp]
Nombre=CDisp
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSql(<T>xpCDIBajaCargosRec :nI<T>, CDISocio:CDISocio.ID)
[Acciones.CDICargoRec]
Nombre=CDICargoRec
Boton=38
NombreDesplegar=Recurrentes
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

GuardarAntes=S



NombreEnBoton=S
Visible=S
ActivoCondicion=(CDISocio:CDISocio.Mov en(<T>Baja Cargo Recurre<T>,<T>Alta Cargo Bancario<T>)) y (CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>)
[Acciones.CDICargoRec.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S








[CDISociosCargoRecDBaja]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Articulos Cargos Recurrentes
Clave=CDISociosCargoRecDBaja
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISociosCargoRecD
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

Detalle=S
VistaMaestra=CDISocio
LlaveLocal=CDISociosCargoRecD.Id
LlaveMaestra=CDISocio.ID

ExpAntesRefrescar=Asigna(Info.cliente, CDISocio:CDISocio.Cliente)<BR>Asigna(Info.CDISocio,CDISocio:CDISocio.Socio)<BR>Asigna(info.id,CDISocio:CDISocio.ID)
CondicionEdicion=CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>
CondicionVisible=CDISocio:CDISocio.Mov=<T>Baja Cargo Recurre<T>
[CDISociosCargoRecDBaja.CDISociosCargoRecD.Articulo]
Carpeta=CDISociosCargoRecDBaja
Clave=CDISociosCargoRecD.Articulo
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDISociosCargoRecDBaja.CDISociosCargoRecD.Baja]
Carpeta=CDISociosCargoRecDBaja
Clave=CDISociosCargoRecD.Baja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDISociosCargoRecDBaja.Columnas]
Articulo=104
FechaInicio=81
FechaFin=80
Baja=94







Descripcion1=364
Cantidad=64

EsCuota=48
TarjetaBancaria=124
[CDISociosCargoRecDBaja.Art.Descripcion1]
Carpeta=CDISociosCargoRecDBaja
Clave=Art.Descripcion1
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





[CDISociosCargoRecDBaja.CDISociosCargoRecD.Cantidad]
Carpeta=CDISociosCargoRecDBaja
Clave=CDISociosCargoRecD.Cantidad
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISociosCargoRecDBaja.CDISociosCargoRecD.FechaInicio]
Carpeta=CDISociosCargoRecDBaja
Clave=CDISociosCargoRecD.FechaInicio
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISociosCargoRecDBaja.CDISociosCargoRecD.FechaFin]
Carpeta=CDISociosCargoRecDBaja
Clave=CDISociosCargoRecD.FechaFin
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco








[CDISociosCargoRecDBaja.CDISociosCargoRecD.EsCuota]
Carpeta=CDISociosCargoRecDBaja
Clave=CDISociosCargoRecD.EsCuota
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco








[CDIDatosBancarios.Columnas]
Institucion=172
NoTarjeta=104
AMEX=100





Vigencia=67
VigenciaAMEX=94



















NombreTarjeta=312


[CDISociosDatosBancariosBaja]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Tarjetas Bancarias Baja
Clave=CDISociosDatosBancariosBaja
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISociosDatosBancarios
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








Pestana=S

ListaEnCaptura=(Lista)
IgnorarControlesEdicion=S
CondicionEdicion=CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>
Detalle=S
VistaMaestra=CDISocio
LlaveLocal=CDISociosDatosBancarios.ID
LlaveMaestra=CDISocio.ID
ControlRenglon=S
CampoRenglon=CDISociosDatosBancarios.renglon
CondicionVisible=CDISocio:CDISocio.Mov en(<T>Baja Tarjeta Banco<T>)
[CDISociosDatosBancariosBaja.Columnas]
Institucion=146
NoTarjeta=100
Vigencia=67
NombreTarjeta=207
DefCargAuto=180







BAJA=64

AMEX=94
VigenciaAMEX=94
Estatus=94
[CDISociosDatosBancariosBaja.CDISociosDatosBancarios.NoTarjeta]
Carpeta=CDISociosDatosBancariosBaja
Clave=CDISociosDatosBancarios.NoTarjeta
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco

Editar=N
[CDISociosDatosBancariosBaja.CDISociosDatosBancarios.Vigencia]
Carpeta=CDISociosDatosBancariosBaja
Clave=CDISociosDatosBancarios.Vigencia
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISociosDatosBancariosBaja.CDISociosDatosBancarios.Institucion]
Carpeta=CDISociosDatosBancariosBaja
Clave=CDISociosDatosBancarios.Institucion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[CDISociosDatosBancariosBaja.CDISociosDatosBancarios.NombreTarjeta]
Carpeta=CDISociosDatosBancariosBaja
Clave=CDISociosDatosBancarios.NombreTarjeta
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDISociosDatosBancariosBaja.CDISociosDatosBancarios.Estatus]
Carpeta=CDISociosDatosBancariosBaja
Clave=CDISociosDatosBancarios.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDISociosDatosBancariosBaja.CDISociosDatosBancarios.BAJA]
Carpeta=CDISociosDatosBancariosBaja
Clave=CDISociosDatosBancarios.BAJA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Acciones.CDIBajaTarjeta.cdiBajaTar]
Nombre=cdiBajaTar
Boton=0
TipoAccion=Expresion
Expresion=Ejecutarsql(<T>xpCDIBajatarjetas :nI<T>,CDISocio:CDISocio.ID)
Activo=S
Visible=S

[Acciones.CDIBajaTarjeta.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.CDIBajaTarjeta]
Nombre=CDIBajaTarjeta
Boton=54
NombreDesplegar=Tarjetas
Multiple=S
EnBarraHerramientas=S
TipoAccion=Expresion
ListaAccionesMultiples=(Lista)

Visible=S
NombreEnBoton=S




EspacioPrevio=S


GuardarAntes=S

Menu=&Archivo
EnMenu=S
ActivoCondicion=(CDISocio:CDISocio.Mov en(<T>Baja Tarjeta Banco<T>)) y (CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>)
[AltaCargoBancario]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Alta Cargo Bancario
Clave=AltaCargoBancario
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISociosCargoRecD
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


CondicionEdicion=CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>
Detalle=S
VistaMaestra=CDISocio
LlaveLocal=CDISociosCargoRecD.Id
LlaveMaestra=CDISocio.ID
ControlRenglon=S
CampoRenglon=CDISociosCargoRecD.RID
CondicionVisible=CDISocio:CDISocio.Mov en (<T>Alta Cargo Bancario<T>)
[AltaCargoBancario.CDISociosCargoRecD.Articulo]
Carpeta=AltaCargoBancario
Clave=CDISociosCargoRecD.Articulo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[AltaCargoBancario.Art.Descripcion1]
Carpeta=AltaCargoBancario
Clave=Art.Descripcion1
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[AltaCargoBancario.CDISociosCargoRecD.FechaInicio]
Carpeta=AltaCargoBancario
Clave=CDISociosCargoRecD.FechaInicio
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[AltaCargoBancario.CDISociosCargoRecD.FechaFin]
Carpeta=AltaCargoBancario
Clave=CDISociosCargoRecD.FechaFin
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[AltaCargoBancario.CDISociosCargoRecD.TarjetaBancaria]
Carpeta=AltaCargoBancario
Clave=CDISociosCargoRecD.TarjetaBancaria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[AltaCargoBancario.Columnas]
Articulo=121
Descripcion1=354
FechaInicio=94
FechaFin=94
TarjetaBancaria=124






















[Acciones.CDICargoRec.ListaAccionesMultiples]
(Inicio)=CDisp
CDisp=Actualizar Forma
Actualizar Forma=(Fin)
















[CDISociosCargoRecDBaja.ListaEnCaptura]
(Inicio)=CDISociosCargoRecD.Articulo
CDISociosCargoRecD.Articulo=Art.Descripcion1
Art.Descripcion1=CDISociosCargoRecD.EsCuota
CDISociosCargoRecD.EsCuota=CDISociosCargoRecD.Cantidad
CDISociosCargoRecD.Cantidad=CDISociosCargoRecD.FechaInicio
CDISociosCargoRecD.FechaInicio=CDISociosCargoRecD.FechaFin
CDISociosCargoRecD.FechaFin=CDISociosCargoRecD.Baja
CDISociosCargoRecD.Baja=(Fin)




[BajaCargoBancario]
Estilo=Hoja
Pestana=S
Clave=BajaCargoBancario
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISociosCargoRecD
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

PermiteEditar=S

CondicionEdicion=CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>
PestanaOtroNombre=S
PestanaNombre=Baja Cargos Bancarios
Detalle=S
VistaMaestra=CDISocio
LlaveLocal=CDISociosCargoRecD.Id
LlaveMaestra=CDISocio.ID
CondicionVisible=CDISocio:CDISocio.Mov en (<T>Baja Cargo Bancario<T>)
[BajaCargoBancario.CDISociosCargoRecD.Articulo]
Carpeta=BajaCargoBancario
Clave=CDISociosCargoRecD.Articulo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[BajaCargoBancario.CDISociosCargoRecD.FechaInicio]
Carpeta=BajaCargoBancario
Clave=CDISociosCargoRecD.FechaInicio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[BajaCargoBancario.CDISociosCargoRecD.FechaFin]
Carpeta=BajaCargoBancario
Clave=CDISociosCargoRecD.FechaFin
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[BajaCargoBancario.CDISociosCargoRecD.TarjetaBancaria]
Carpeta=BajaCargoBancario
Clave=CDISociosCargoRecD.TarjetaBancaria
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[BajaCargoBancario.CDISociosCargoRecD.Baja]
Carpeta=BajaCargoBancario
Clave=CDISociosCargoRecD.Baja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





EditarConBloqueo=S
IgnoraFlujo=S
[BajaCargoBancario.Columnas]
Articulo=100
FechaInicio=94
FechaFin=94
TarjetaBancaria=124
Baja=94



Descripcion1=349
[CDIBajaArtTarBanca.ListaEnCaptura]
(Inicio)=CDISocioArticulos.Articulo
CDISocioArticulos.Articulo=CDISocioArticulos.Baja
CDISocioArticulos.Baja=(Fin)













[BajaCargoBancario.Art.Descripcion1]
Carpeta=BajaCargoBancario
Clave=Art.Descripcion1
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco











[VistaPuntos.CDIVPuntosMembresia.Mov]
Carpeta=VistaPuntos
Clave=CDIVPuntosMembresia.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[VistaPuntos.CDIVPuntosMembresia.movid]
Carpeta=VistaPuntos
Clave=CDIVPuntosMembresia.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[VistaPuntos.CDIVPuntosMembresia.FechaEmision]
Carpeta=VistaPuntos
Clave=CDIVPuntosMembresia.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[VistaPuntos.CDIVPuntosMembresia.Articulo]
Carpeta=VistaPuntos
Clave=CDIVPuntosMembresia.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[VistaPuntos.CDIVPuntosMembresia.Cantidad]
Carpeta=VistaPuntos
Clave=CDIVPuntosMembresia.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[VistaPuntos.ListaEnCaptura]
(Inicio)=CDIVPuntosMembresia.Mov
CDIVPuntosMembresia.Mov=CDIVPuntosMembresia.movid
CDIVPuntosMembresia.movid=CDIVPuntosMembresia.FechaEmision
CDIVPuntosMembresia.FechaEmision=CDIVPuntosMembresia.Articulo
CDIVPuntosMembresia.Articulo=CDIVPuntosMembresia.Cantidad
CDIVPuntosMembresia.Cantidad=(Fin)




[VistaPuntos.Columnas]
Mov=124
movid=124
FechaEmision=94
Articulo=124
Cantidad=64






















[InteresadoEn.ListaEnCaptura]
(Inicio)=CDISocioArticulos.Articulo
CDISocioArticulos.Articulo=DescripcionArt
DescripcionArt=CDISocioArticulos.Cantidad
CDISocioArticulos.Cantidad=CDISocioArticulos.Precio
CDISocioArticulos.Precio=(Fin)





















































[CDISociosCargoRecD.ListaEnCaptura]
(Inicio)=CDISociosCargoRecD.Articulo
CDISociosCargoRecD.Articulo=Art.Descripcion1
Art.Descripcion1=CDISociosCargoRecD.Cantidad
CDISociosCargoRecD.Cantidad=CDISociosCargoRecD.FechaInicio
CDISociosCargoRecD.FechaInicio=CDISociosCargoRecD.FechaFin
CDISociosCargoRecD.FechaFin=(Fin)

















[CDISociosDatosBancarios.CDISociosDatosBancarios.NoSeguridadB]
Carpeta=CDISociosDatosBancarios
Clave=CDISociosDatosBancarios.NoSeguridadB
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=5
ColorFondo=Blanco

Pegado=S










[CDISociosDatosBancariosBaja.CDISociosDatosBancarios.DefCargAuto]
Carpeta=CDISociosDatosBancariosBaja
Clave=CDISociosDatosBancarios.DefCargAuto
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



























[CDISociosDatosBancarios.ListaEnCaptura]
(Inicio)=CDISociosDatosBancarios.Institucion
CDISociosDatosBancarios.Institucion=CDISociosDatosBancarios.NoTarjeta
CDISociosDatosBancarios.NoTarjeta=CDISociosDatosBancarios.NoSeguridad
CDISociosDatosBancarios.NoSeguridad=CDISociosDatosBancarios.NoSeguridadB
CDISociosDatosBancarios.NoSeguridadB=CDISociosDatosBancarios.Vigencia
CDISociosDatosBancarios.Vigencia=CDISociosDatosBancarios.CtaBancariaDom
CDISociosDatosBancarios.CtaBancariaDom=CDISociosDatosBancarios.VigenciaDom
CDISociosDatosBancarios.VigenciaDom=CDISociosDatosBancarios.InstitucionDom
CDISociosDatosBancarios.InstitucionDom=CDISociosDatosBancarios.NombreTarjeta
CDISociosDatosBancarios.NombreTarjeta=(Fin)

[CDISociosDatosBancarios.ListaOrden]
(Inicio)=CDISociosDatosBancarios.ID	(Acendente)
CDISociosDatosBancarios.ID	(Acendente)=CDISociosDatosBancarios.renglon	(Acendente)
CDISociosDatosBancarios.renglon	(Acendente)=(Fin)































[Acciones.CDIBajaTarjeta.ListaAccionesMultiples]
(Inicio)=cdiBajaTar
cdiBajaTar=Actualizar Forma
Actualizar Forma=(Fin)












[Detalle.CDISocioD.RFC]
Carpeta=Detalle
Clave=CDISocioD.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





























































[BajaCargoBancario.ListaEnCaptura]
(Inicio)=CDISociosCargoRecD.Articulo
CDISociosCargoRecD.Articulo=Art.Descripcion1
Art.Descripcion1=CDISociosCargoRecD.FechaInicio
CDISociosCargoRecD.FechaInicio=CDISociosCargoRecD.FechaFin
CDISociosCargoRecD.FechaFin=CDISociosCargoRecD.TarjetaBancaria
CDISociosCargoRecD.TarjetaBancaria=CDISociosCargoRecD.Baja
CDISociosCargoRecD.Baja=(Fin)



































































[CDISocioCte]
Estilo=Ficha
Clave=CDISocioCte
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocioCte
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


Pestana=S
PestanaOtroNombre=S
PestanaNombre=Registro Aspirante-Actualiza Datos
ControlRenglon=S
CampoRenglon=CDISocioCte.RenglonId
Detalle=S
VistaMaestra=CDISocio
LlaveLocal=CDISocioCte.Id
LlaveMaestra=CDISocio.ID


AlinearTodaCarpeta=S
ExpAntesRefrescar=caso CDISocio:CDISocio.Mov es <T>Actualiza Datos<T><BR><BR>   entonces<BR>    guardarcambios<BR>    EjecutarSQl(<T>xpCDIActDatosSoc :nI, :tS<T>, CDISocio:CDISocio.ID,CDISocio:CDISocio.Cliente)<BR>   // actualizarforma<BR>fin
CondicionVisible=CDISocio:CDISocio.Mov en (<T>Registro Aspirante<T>,<T>Actualiza Datos<T>,<T>Actualiza Gestion<T>)
[CDISocioCte.CDISocioCte.Direccion]
Carpeta=CDISocioCte
Clave=CDISocioCte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=35
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.DireccionNumero]
Carpeta=CDISocioCte
Clave=CDISocioCte.DireccionNumero
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.DireccionNumeroInt]
Carpeta=CDISocioCte
Clave=CDISocioCte.DireccionNumeroInt
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco


Pegado=S
[CDISocioCte.CDISocioCte.Delegacion]
Carpeta=CDISocioCte
Clave=CDISocioCte.Delegacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.Colonia]
Carpeta=CDISocioCte
Clave=CDISocioCte.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

Pegado=N
[CDISocioCte.CDISocioCte.Poblacion]
Carpeta=CDISocioCte
Clave=CDISocioCte.Poblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.Estado]
Carpeta=CDISocioCte
Clave=CDISocioCte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=N
[CDISocioCte.CDISocioCte.Pais]
Carpeta=CDISocioCte
Clave=CDISocioCte.Pais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.CodigoPostal]
Carpeta=CDISocioCte
Clave=CDISocioCte.CodigoPostal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.RFC]
Carpeta=CDISocioCte
Clave=CDISocioCte.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.Telefonos]
Carpeta=CDISocioCte
Clave=CDISocioCte.Telefonos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.TelefonosLada]
Carpeta=CDISocioCte
Clave=CDISocioCte.TelefonosLada
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.eMail1]
Carpeta=CDISocioCte
Clave=CDISocioCte.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco








[CDISociosDatosBancariosBaja.ListaEnCaptura]
(Inicio)=CDISociosDatosBancarios.Institucion
CDISociosDatosBancarios.Institucion=CDISociosDatosBancarios.Vigencia
CDISociosDatosBancarios.Vigencia=CDISociosDatosBancarios.NoTarjeta
CDISociosDatosBancarios.NoTarjeta=CDISociosDatosBancarios.NombreTarjeta
CDISociosDatosBancarios.NombreTarjeta=CDISociosDatosBancarios.DefCargAuto
CDISociosDatosBancarios.DefCargAuto=CDISociosDatosBancarios.Estatus
CDISociosDatosBancarios.Estatus=CDISociosDatosBancarios.BAJA
CDISociosDatosBancarios.BAJA=(Fin)










[CDISocioCte.CDISocioCte.EntreCalles]
Carpeta=CDISocioCte
Clave=CDISocioCte.EntreCalles
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco















Pegado=S
[CDISocioCte.CDISocioCte.PersonalApellidoMaterno]
Carpeta=CDISocioCte
Clave=CDISocioCte.PersonalApellidoMaterno
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.PersonalApellidoPaterno]
Carpeta=CDISocioCte
Clave=CDISocioCte.PersonalApellidoPaterno
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.PersonalNombres]
Carpeta=CDISocioCte
Clave=CDISocioCte.PersonalNombres
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


Pegado=N
[CDISocioCte.CDISocioCte.Sexo]
Carpeta=CDISocioCte
Clave=CDISocioCte.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.Nacionalidad]
Carpeta=CDISocioCte
Clave=CDISocioCte.Nacionalidad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.FechaNacimiento]
Carpeta=CDISocioCte
Clave=CDISocioCte.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=30
[CDISocioCte.CDISocioCte.EstadoCivil]
Carpeta=CDISocioCte
Clave=CDISocioCte.EstadoCivil
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.Ocupacion]
Carpeta=CDISocioCte
Clave=CDISocioCte.Ocupacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.Descripcion19]
Carpeta=CDISocioCte
Clave=CDISocioCte.Descripcion19
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.CDIMedTipoSangre]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedTipoSangre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.CDIMedDonador]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedDonador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.CDIMedEnfermo]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedEnfermo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.CDIMedEnfermedad]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedEnfermedad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.CDIMedAlergia]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedAlergia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.CDIMedAlergias]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedAlergias
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.CDIMedMedicamento]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedMedicamento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.CDIMedMedicamentos]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedMedicamentos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.CDIMedAvisar]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedAvisar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDISocioCte.CDISocioCte.CDIMedTelefono]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedTelefono
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[CDISocioCte.CDISocioCte.CDIMedCelular]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIMedCelular
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco











Pegado=S
[CDISocioCte.CDISocioCte.PersonalPais]
Carpeta=CDISocioCte
Clave=CDISocioCte.PersonalPais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco




















Pegado=S




















































































































[CDISocioCte.CDISocioCte.Tipo]
Carpeta=CDISocioCte
Clave=CDISocioCte.Tipo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





[xxx.ListaEnCaptura]
(Inicio)=CDISocio.Tipo
CDISocio.Tipo=CDISocio.Sede
CDISocio.Sede=CDISocio.Actividad
CDISocio.Actividad=CDISocio.Clase
CDISocio.Clase=CDISocio.Aporta
CDISocio.Aporta=CDISocio.SubCategoria
CDISocio.SubCategoria=(Fin)

[xxx.CDISocio.Tipo]
Carpeta=xxx
Clave=CDISocio.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[xxx.CDISocio.Sede]
Carpeta=xxx
Clave=CDISocio.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[xxx.CDISocio.Actividad]
Carpeta=xxx
Clave=CDISocio.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[xxx.CDISocio.Clase]
Carpeta=xxx
Clave=CDISocio.Clase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[xxx.CDISocio.Aporta]
Carpeta=xxx
Clave=CDISocio.Aporta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[xxx.CDISocio.SubCategoria]
Carpeta=xxx
Clave=CDISocio.SubCategoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDISedesLista.Columnas]
Sede=156

[CDIActividad.Columnas]
Actividad=304

[CDIClaseLista.Columnas]
Clase=304














[CDIClas]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Clasificacion
Clave=CDIClas
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
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


CondicionVisible=CDISocio:CDISocio.Mov en (<T>Alta Membresia<T>,<T>Cambio de Categoría<T>,<T>PCDI Alta Membresia<T>) y condatos(CDISocio:CDISocio.Cliente)
[CDIClas.CDISocio.Tipo]
Carpeta=CDIClas
Clave=CDISocio.Tipo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDISocio.Sede]
Carpeta=CDIClas
Clave=CDISocio.Sede
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDISocio.Actividad]
Carpeta=CDIClas
Clave=CDISocio.Actividad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDISocio.Clase]
Carpeta=CDIClas
Clave=CDISocio.Clase
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDISocio.Aporta]
Carpeta=CDIClas
Clave=CDISocio.Aporta
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIClas.CDISocio.SubCategoria]
Carpeta=CDIClas
Clave=CDISocio.SubCategoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco






[CDIClas.CDISocio.Categoria]
Carpeta=CDIClas
Clave=CDISocio.Categoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDISocio.FormaPago]
Carpeta=CDIClas
Clave=CDISocio.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco












[CDISubcategoriaLista.Columnas]
SubCategoria=304










































[CDISocioCte.CDISocioCte.Parentesco]
Carpeta=CDISocioCte
Clave=CDISocioCte.Parentesco
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco











[Lista.CDISocio.RefMovPrevio]
Carpeta=Lista
Clave=CDISocio.RefMovPrevio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[CDIExpMovSocios.Columnas]
Mov=124
MovID=124
FechaEmision=94
Cliente=64
Socio=59
Referencia=144
Estatus=94
Observaciones=137






























[Lista.FormaDePAgoCal]
Carpeta=Lista
Clave=FormaDePAgoCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco








[Detalle.ListaEnCaptura]
(Inicio)=CDISocioD.SocioNueva
CDISocioD.SocioNueva=CDISocioD.Socio
CDISocioD.Socio=CDISocioD.Cliente
CDISocioD.Cliente=CDISocioD.TipoSangre
CDISocioD.TipoSangre=NombreSocio
NombreSocio=CDISocioD.Membresia
CDISocioD.Membresia=Cte.Parentesco
Cte.Parentesco=Cte.FechaNacimiento
Cte.FechaNacimiento=EdadActual
EdadActual=CDISocioD.Edad
CDISocioD.Edad=CDISocioD.Estatus
CDISocioD.Estatus=CDISocioD.RFC
CDISocioD.RFC=(Fin)

[Detalle.ListaOrden]
(Inicio)=CDISocioD.ID	(Acendente)
CDISocioD.ID	(Acendente)=CDISocioD.Renglon	(Acendente)
CDISocioD.Renglon	(Acendente)=(Fin)


[ListaDet.CategoriaCal]
Carpeta=ListaDet
Clave=CategoriaCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[ListaDet.FormaDePAgoCal]
Carpeta=ListaDet
Clave=FormaDePAgoCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




















[ListaDet.ListaEnCaptura]
(Inicio)=CategoriaCal
CategoriaCal=FormaDePAgoCal
FormaDePAgoCal=(Fin)















[Lista.CDISocio.FormaPago]
Carpeta=Lista
Clave=CDISocio.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco





























[CDIFormaPagoParcial.Columnas]
FormaPago=94
Parcialidades=66
Estatus=94




























































[SubsidioMembresia]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Subsidio Membresia
Clave=SubsidioMembresia
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
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


CondicionVisible=CDISocio:CDISocio.Mov=<T>Subsidio Membresia<T>
[SubsidioMembresia.CDISocio.Subsidio]
Carpeta=SubsidioMembresia
Clave=CDISocio.Subsidio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S

Tamano=15

[SubsidioMembresia.CDISocio.ImporteAnualidad]
Carpeta=SubsidioMembresia
Clave=CDISocio.ImporteAnualidad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[SubsidioMembresia.CDISocio.ImporteSubsidio]
Carpeta=SubsidioMembresia
Clave=CDISocio.ImporteSubsidio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco




Tamano=15
[CDIClas.TipoCal]
Carpeta=CDIClas
Clave=TipoCal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIClas.CategoriaCal]
Carpeta=CDIClas
Clave=CategoriaCal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIClas.SubCategoCal]
Carpeta=CDIClas
Clave=SubCategoCal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.AportaCal]
Carpeta=CDIClas
Clave=AportaCal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIClas.ClaseCal]
Carpeta=CDIClas
Clave=ClaseCal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIClas.SedeCal]
Carpeta=CDIClas
Clave=SedeCal
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIClas.ActividadCal]
Carpeta=CDIClas
Clave=ActividadCal
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[SubsidioMembresia.CDISocio.Recomendado]
Carpeta=SubsidioMembresia
Clave=CDISocio.Recomendado
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

LineaNueva=S
EspacioPrevio=S


[CDICambMembr]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cambios Membresia
Clave=CDICambMembr
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICambMembr
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDISocio
LlaveLocal=CDICambMembr.Id
LlaveMaestra=CDISocio.ID
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)


HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
ExpAntesRefrescar=si(CDISocio:CDISocio.Mov=<T>Cambios Membresia<T>,EjecutarSql(<T>xpCDICambMembresia :nI, :tS<T>,CDISocio:CDISocio.ID,CDISocio:CDISocio.Cliente))
CondicionVisible=CDISocio:CDISocio.Mov en (<T>Cambios Membresia<T>,<T>Baja de Memebresia<T>,<T>PCDI Cambio Membresi<T>) y condatos(CDISocio:CDISocio.Cliente)
[CDICambMembr.CDICambMembr.Membresia]
Carpeta=CDICambMembr
Clave=CDICambMembr.Membresia
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10
[CDICambMembr.CDICambMembr.Cliente]
Carpeta=CDICambMembr
Clave=CDICambMembr.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICambMembr.CDICambMembr.Socio]
Carpeta=CDICambMembr
Clave=CDICambMembr.Socio
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICambMembr.CDICambMembr.Estatus]
Carpeta=CDICambMembr
Clave=CDICambMembr.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICambMembr.CDICambMembr.Titular]
Carpeta=CDICambMembr
Clave=CDICambMembr.Titular
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICambMembr.CDICambMembr.MembresiaNva]
Carpeta=CDICambMembr
Clave=CDICambMembr.MembresiaNva
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICambMembr.CDICambMembr.LlevarCargos]
Carpeta=CDICambMembr
Clave=CDICambMembr.LlevarCargos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco









[CDICambMembr.Columnas]
Membresia=64
Cliente=64
Socio=64
Estatus=43
Titular=36
MembresiaNva=108
LlevarCargos=67


















Nombre=184
Descripcion13=57
Descripcion15=79
CrearMembresia=116
[CDICteMembLst.Columnas]
Membresia=64
Socio=62
Nombre=255





[CDICambMembr.Cte.Nombre]
Carpeta=CDICambMembr
Clave=Cte.Nombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco









[CDICambMembr.CDICambMembr.Descripcion13]
Carpeta=CDICambMembr
Clave=CDICambMembr.Descripcion13
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICambMembr.CDICambMembr.Descripcion15]
Carpeta=CDICambMembr
Clave=CDICambMembr.Descripcion15
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco




































































































[CDISocioCte.CDISocioCte.CDIFacturarA]
Carpeta=CDISocioCte
Clave=CDISocioCte.CDIFacturarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco











[SubsidioMembresia.TipoCal]
Carpeta=SubsidioMembresia
Clave=TipoCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[SubsidioMembresia.CategoriaCal]
Carpeta=SubsidioMembresia
Clave=CategoriaCal
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[SubsidioMembresia.SubCategoCal]
Carpeta=SubsidioMembresia
Clave=SubCategoCal
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[SubsidioMembresia.AportaCal]
Carpeta=SubsidioMembresia
Clave=AportaCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[SubsidioMembresia.ClaseCal]
Carpeta=SubsidioMembresia
Clave=ClaseCal
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Amarillo

Efectos=[Negritas]
[SubsidioMembresia.SedeCal]
Carpeta=SubsidioMembresia
Clave=SedeCal
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[SubsidioMembresia.ActividadCal]
Carpeta=SubsidioMembresia
Clave=ActividadCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[SubsidioMembresia.FormaDePAgoCal]
Carpeta=SubsidioMembresia
Clave=FormaDePAgoCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco











[SubsidioMembresia.CDISocio.FechaVigencia]
Carpeta=SubsidioMembresia
Clave=CDISocio.FechaVigencia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco













EspacioPrevio=N












Tamano=15




[Acciones.Expresion.ListaAccionesMultiples]
(Inicio)=Expresion1
Expresion1=Actualizar Forma
Actualizar Forma=(Fin)










[Acciones.Expresion1.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Forma
Actualizar Forma=(Fin)









[CDICambMembr.CDICambMembr.CrearMembresia]
Carpeta=CDICambMembr
Clave=CDICambMembr.CrearMembresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[DescuentoMembre]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Descuentos
Clave=DescuentoMembre
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
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


CondicionVisible=CDISocio:CDISocio.Mov=<T>Descuento<T>
[DescuentoMembre.CDISocio.Descuento]
Carpeta=DescuentoMembre
Clave=CDISocio.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
[DescuentoMembre.CDISocio.Formato]
Carpeta=DescuentoMembre
Clave=CDISocio.Formato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.CDISocio.Recomendado]
Carpeta=DescuentoMembre
Clave=CDISocio.Recomendado
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.CDISocio.SituacionM]
Carpeta=DescuentoMembre
Clave=CDISocio.SituacionM
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.CDISocio.Ejecutivo]
Carpeta=DescuentoMembre
Clave=CDISocio.Ejecutivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=10
ColorFondo=Blanco




































[DescuentoMembre.TipoCal]
Carpeta=DescuentoMembre
Clave=TipoCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.CategoriaCal]
Carpeta=DescuentoMembre
Clave=CategoriaCal
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=10
ColorFondo=Blanco

[DescuentoMembre.SubCategoCal]
Carpeta=DescuentoMembre
Clave=SubCategoCal
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.AportaCal]
Carpeta=DescuentoMembre
Clave=AportaCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[DescuentoMembre.ClaseCal]
Carpeta=DescuentoMembre
Clave=ClaseCal
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.SedeCal]
Carpeta=DescuentoMembre
Clave=SedeCal
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.ActividadCal]
Carpeta=DescuentoMembre
Clave=ActividadCal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.CDISocio.FechaIngreso]
Carpeta=DescuentoMembre
Clave=CDISocio.FechaIngreso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco

[DescuentoMembre.CDISocio.FechaVigencia]
Carpeta=DescuentoMembre
Clave=CDISocio.FechaVigencia
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[DescuentoMembre.FormaDePAgoCal]
Carpeta=DescuentoMembre
Clave=FormaDePAgoCal
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=20
ColorFondo=Blanco

[DescuentoMembre.CDISocio.TipoSubsidio]
Carpeta=DescuentoMembre
Clave=CDISocio.TipoSubsidio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[DescuentoMembre.Cte.CDICuotaMembresia]
Carpeta=DescuentoMembre
Clave=Cte.CDICuotaMembresia
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

[DescuentoMembre.CDISocio.CuotaOriginal]
Carpeta=DescuentoMembre
Clave=CDISocio.CuotaOriginal
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

[DescuentoMembre.Cte.CDISubsidio]
Carpeta=DescuentoMembre
Clave=Cte.CDISubsidio
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

[DescuentoMembre.CDISocio.ImporteAnualidad]
Carpeta=DescuentoMembre
Clave=CDISocio.ImporteAnualidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco

[DescuentoMembre.CDISocio.ImporteSubsidio]
Carpeta=DescuentoMembre
Clave=CDISocio.ImporteSubsidio
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

[DescuentoMembre.CDISocio.Subsidio]
Carpeta=DescuentoMembre
Clave=CDISocio.Subsidio
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco















[DescuentoMembre.ListaEnCaptura]
(Inicio)=TipoCal
TipoCal=CategoriaCal
CategoriaCal=SubCategoCal
SubCategoCal=AportaCal
AportaCal=ClaseCal
ClaseCal=SedeCal
SedeCal=ActividadCal
ActividadCal=FormaDePAgoCal
FormaDePAgoCal=CDISocio.FechaIngreso
CDISocio.FechaIngreso=CDISocio.FechaVigencia
CDISocio.FechaVigencia=CDISocio.TipoSubsidio
CDISocio.TipoSubsidio=Cte.CDICuotaMembresia
Cte.CDICuotaMembresia=CDISocio.CuotaOriginal
CDISocio.CuotaOriginal=Cte.CDISubsidio
Cte.CDISubsidio=CDISocio.ImporteAnualidad
CDISocio.ImporteAnualidad=CDISocio.ImporteSubsidio
CDISocio.ImporteSubsidio=CDISocio.Subsidio
CDISocio.Subsidio=CDISocio.Descuento
CDISocio.Descuento=CDISocio.Formato
CDISocio.Formato=CDISocio.Recomendado
CDISocio.Recomendado=CDISocio.SituacionM
CDISocio.SituacionM=CDISocio.Ejecutivo
CDISocio.Ejecutivo=(Fin)












[SubsidioMembresia.CDISocio.FechaIngreso]
Carpeta=SubsidioMembresia
Clave=CDISocio.FechaIngreso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco












Tamano=15

[SubsidioMembresia.CDICuotaC]
Carpeta=SubsidioMembresia
Clave=CDICuotaC
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=N
Tamano=10
[SubsidioMembresia.SubsidioC]
Carpeta=SubsidioMembresia
Clave=SubsidioC
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10
































[SubsidioMembresia.CuotaOriginalC]
Carpeta=SubsidioMembresia
Clave=CuotaOriginalC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco















































[Lista.CDISocio.Socio]
Carpeta=Lista
Clave=CDISocio.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Cte.Nombre]
Carpeta=Lista
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco













[CDICausasBloq.Columnas]
Causa=150










Mov=124
[CDIEjecAutolst.Columnas]
Socio=261


[SubsidioMembresia.CDISocio.Ejecutivo]
Carpeta=SubsidioMembresia
Clave=CDISocio.Ejecutivo
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=10
ColorFondo=Blanco


















[CDISocioCte.CDISocioCte.MismaDireccion]
Carpeta=CDISocioCte
Clave=CDISocioCte.MismaDireccion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S




[CambioActivdad]
Estilo=Ficha
Pestana=S
Clave=CambioActivdad
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
PestanaOtroNombre=S
PestanaNombre=Cambio Actividad
PermiteEditar=S
Vista=CDISocio
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ListaEnCaptura=CDISocio.Actividad
CondicionVisible=CDISocio:CDISocio.Mov=<T>Cambio Actividad<T>

[CambioActivdad.CDISocio.Actividad]
Carpeta=CambioActivdad
Clave=CDISocio.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco





[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDISocio.FechaEmision
CDISocio.FechaEmision=CDISocio.Concepto
CDISocio.Concepto=CDISocio.Proyecto
CDISocio.Proyecto=CDISocio.Referencia
CDISocio.Referencia=CDISocio.NIPCDI
CDISocio.NIPCDI=CDISocio.Membresia
CDISocio.Membresia=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=VENCIDO
VENCIDO=(Fin)








[SubsidioMembresia.CDISocio.Clase]
Carpeta=SubsidioMembresia
Clave=CDISocio.Clase
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco








[AltaCargoBancario.ListaEnCaptura]
(Inicio)=CDISociosCargoRecD.Articulo
CDISociosCargoRecD.Articulo=Art.Descripcion1
Art.Descripcion1=CDISociosCargoRecD.FechaInicio
CDISociosCargoRecD.FechaInicio=CDISociosCargoRecD.FechaFin
CDISociosCargoRecD.FechaFin=CDISociosCargoRecD.TarjetaBancaria
CDISociosCargoRecD.TarjetaBancaria=(Fin)











[CDISocioCte.ListaEnCaptura]
(Inicio)=CDISocioCte.Tipo
CDISocioCte.Tipo=CDISocioCte.Parentesco
CDISocioCte.Parentesco=CDISocioCte.MismaDireccion
CDISocioCte.MismaDireccion=CDISocioCte.PersonalNombres
CDISocioCte.PersonalNombres=CDISocioCte.PersonalApellidoPaterno
CDISocioCte.PersonalApellidoPaterno=CDISocioCte.PersonalApellidoMaterno
CDISocioCte.PersonalApellidoMaterno=CDISocioCte.Sexo
CDISocioCte.Sexo=CDISocioCte.Nacionalidad
CDISocioCte.Nacionalidad=CDISocioCte.PersonalPais
CDISocioCte.PersonalPais=CDISocioCte.FechaNacimiento
CDISocioCte.FechaNacimiento=CDISocioCte.EstadoCivil
CDISocioCte.EstadoCivil=CDISocioCte.Ocupacion
CDISocioCte.Ocupacion=CDISocioCte.Direccion
CDISocioCte.Direccion=CDISocioCte.DireccionNumero
CDISocioCte.DireccionNumero=CDISocioCte.DireccionNumeroInt
CDISocioCte.DireccionNumeroInt=CDISocioCte.EntreCalles
CDISocioCte.EntreCalles=CDISocioCte.Colonia
CDISocioCte.Colonia=CDISocioCte.Delegacion
CDISocioCte.Delegacion=CDISocioCte.Poblacion
CDISocioCte.Poblacion=CDISocioCte.Estado
CDISocioCte.Estado=CDISocioCte.Pais
CDISocioCte.Pais=CDISocioCte.CodigoPostal
CDISocioCte.CodigoPostal=CDISocioCte.RFC
CDISocioCte.RFC=CDISocioCte.Telefonos
CDISocioCte.Telefonos=CDISocioCte.TelefonosLada
CDISocioCte.TelefonosLada=CDISocioCte.eMail1
CDISocioCte.eMail1=CDISocioCte.Descripcion19
CDISocioCte.Descripcion19=CDISocioCte.CDIMedTipoSangre
CDISocioCte.CDIMedTipoSangre=CDISocioCte.CDIMedDonador
CDISocioCte.CDIMedDonador=CDISocioCte.CDIMedEnfermo
CDISocioCte.CDIMedEnfermo=CDISocioCte.CDIMedEnfermedad
CDISocioCte.CDIMedEnfermedad=CDISocioCte.CDIMedAlergia
CDISocioCte.CDIMedAlergia=CDISocioCte.CDIMedAlergias
CDISocioCte.CDIMedAlergias=CDISocioCte.CDIMedMedicamento
CDISocioCte.CDIMedMedicamento=CDISocioCte.CDIMedMedicamentos
CDISocioCte.CDIMedMedicamentos=CDISocioCte.CDIMedAvisar
CDISocioCte.CDIMedAvisar=CDISocioCte.CDIMedTelefono
CDISocioCte.CDIMedTelefono=CDISocioCte.CDIMedCelular
CDISocioCte.CDIMedCelular=CDISocioCte.CDIFacturarA
CDISocioCte.CDIFacturarA=(Fin)













[CDIClas.ListaEnCaptura]
(Inicio)=TipoCal
TipoCal=CDISocio.Tipo
CDISocio.Tipo=CategoriaCal
CategoriaCal=CDISocio.Categoria
CDISocio.Categoria=SubCategoCal
SubCategoCal=CDISocio.SubCategoria
CDISocio.SubCategoria=AportaCal
AportaCal=CDISocio.Aporta
CDISocio.Aporta=ClaseCal
ClaseCal=CDISocio.Clase
CDISocio.Clase=SedeCal
SedeCal=CDISocio.Sede
CDISocio.Sede=ActividadCal
ActividadCal=CDISocio.Actividad
CDISocio.Actividad=CDISocio.FormaPago
CDISocio.FormaPago=(Fin)

[CDICambMembr.ListaEnCaptura]
(Inicio)=CDICambMembr.Membresia
CDICambMembr.Membresia=CDICambMembr.Cliente
CDICambMembr.Cliente=CDICambMembr.Socio
CDICambMembr.Socio=Cte.Nombre
Cte.Nombre=CDICambMembr.Estatus
CDICambMembr.Estatus=CDICambMembr.Descripcion13
CDICambMembr.Descripcion13=CDICambMembr.Descripcion15
CDICambMembr.Descripcion15=CDICambMembr.Titular
CDICambMembr.Titular=CDICambMembr.MembresiaNva
CDICambMembr.MembresiaNva=CDICambMembr.LlevarCargos
CDICambMembr.LlevarCargos=CDICambMembr.CrearMembresia
CDICambMembr.CrearMembresia=(Fin)













[Acciones.ActualDatos]
Nombre=ActualDatos
Boton=11
NombreEnBoton=S
NombreDesplegar=Direcc.Titular
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S










ClaveAccion=Actualizar Forma
Antes=S
EspacioPrevio=S
ConCondicion=S
EjecucionCondicion=CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>
AntesExpresiones=EjecutarSql(<T>spActualizaDireccionCte :nI, :tS<T>,CDISocio:CDISocio.ID,CDISocio:CDISocio.Cliente)
VisibleCondicion=CDISocio:CDISocio.Mov=<T>Actualiza Datos<T>
[Acciones.ActualDatos.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=EjecutarSql(<T>spActualizaDireccionCte :nI, :tS<T>,CDISocio:CDISocio.ID,CDISocio:CDISocio.Cliente)
Activo=S
Visible=S














































































[Lista.ListaEnCaptura]
(Inicio)=CDISocio.Mov
CDISocio.Mov=CDISocio.MovID
CDISocio.MovID=CDISocio.Proyecto
CDISocio.Proyecto=CDISocio.UEN
CDISocio.UEN=CDISocio.Moneda
CDISocio.Moneda=CDISocio.TipoCambio
CDISocio.TipoCambio=CDISocio.FechaEmision
CDISocio.FechaEmision=CDISocio.Cliente
CDISocio.Cliente=CDISocio.Socio
CDISocio.Socio=NombreSocio
NombreSocio=Cte.Nombre
Cte.Nombre=CDISocio.Membresia
CDISocio.Membresia=CDISocio.Causa
CDISocio.Causa=CDISocio.Concepto
CDISocio.Concepto=CDISocio.Referencia
CDISocio.Referencia=CDISocio.Observaciones
CDISocio.Observaciones=CDISocio.RefMovPrevio
CDISocio.RefMovPrevio=CDISocio.FormaPago
CDISocio.FormaPago=FormaDePAgoCal
FormaDePAgoCal=CDISocio.BajaTotal
CDISocio.BajaTotal=CDISocio.Estado
CDISocio.Estado=CDISocio.ClienteAnt
CDISocio.ClienteAnt=NombreSocioBaja
NombreSocioBaja=CDISocio.NIPCDI
CDISocio.NIPCDI=CDISocio.Edad
CDISocio.Edad=CDISocio.Justificacion
CDISocio.Justificacion=CDISocio.NombreEquipo
CDISocio.NombreEquipo=(Fin)





















































































































































































































































[SubsidioMembresia.CDISocio.TipoSubsidio]
Carpeta=SubsidioMembresia
Clave=CDISocio.TipoSubsidio
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco















































[SubsidioMembresia.CDISocio.Categoria]
Carpeta=SubsidioMembresia
Clave=CDISocio.Categoria
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

















[SubsidioMembresia.ListaEnCaptura]
(Inicio)=TipoCal
TipoCal=CategoriaCal
CategoriaCal=SubCategoCal
SubCategoCal=AportaCal
AportaCal=ClaseCal
ClaseCal=CDISocio.Clase
CDISocio.Clase=SedeCal
SedeCal=ActividadCal
ActividadCal=FormaDePAgoCal
FormaDePAgoCal=CuotaOriginalC
CuotaOriginalC=CDICuotaC
CDICuotaC=SubsidioC
SubsidioC=CDISocio.FechaIngreso
CDISocio.FechaIngreso=CDISocio.FechaVigencia
CDISocio.FechaVigencia=CDISocio.ImporteAnualidad
CDISocio.ImporteAnualidad=CDISocio.ImporteSubsidio
CDISocio.ImporteSubsidio=CDISocio.Subsidio
CDISocio.Subsidio=CDISocio.TipoSubsidio
CDISocio.TipoSubsidio=CDISocio.Recomendado
CDISocio.Recomendado=CDISocio.Ejecutivo
CDISocio.Ejecutivo=CDISocio.Categoria
CDISocio.Categoria=(Fin)



















[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=InteresadoEn
InteresadoEn=Detalle
Detalle=HonorJusticia
HonorJusticia=Comentarios
Comentarios=Equipo
Equipo=ComentBloqueo
ComentBloqueo=CDISociosDatosBancarios
CDISociosDatosBancarios=CDICambioTitular
CDICambioTitular=CDISociosCargoRecD
CDISociosCargoRecD=CDISociosCargoRecDBaja
CDISociosCargoRecDBaja=CDISociosDatosBancariosBaja
CDISociosDatosBancariosBaja=AltaCargoBancario
AltaCargoBancario=BajaCargoBancario
BajaCargoBancario=CDISocioCte
CDISocioCte=CDIClas
CDIClas=SubsidioMembresia
SubsidioMembresia=CDICambMembr
CDICambMembr=DescuentoMembre
DescuentoMembre=CambioActivdad
CambioActivdad=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=MovCopiar
MovCopiar=Abrir
Abrir=Localizar
Localizar=Guardar
Guardar=RepPantalla
RepPantalla=Evaluacion
Evaluacion=Verificar
Verificar=Situacion
Situacion=Afectar
Afectar=Eliminar
Eliminar=Cancelar
Cancelar=AgregarAspirante
AgregarAspirante=TerminarCaptura
TerminarCaptura=MovBitacora
MovBitacora=Anexos
Anexos=Renovacion
Renovacion=PlantillasOffice
PlantillasOffice=MovPos
MovPos=CalcSubsidio
CalcSubsidio=CteInfo
CteInfo=Navegador
Navegador=CDIAutorizar
CDIAutorizar=Expresion
Expresion=Expresion1
Expresion1=CDICargoRec
CDICargoRec=CDIBajaTarjeta
CDIBajaTarjeta=ActualDatos
ActualDatos=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Otros
&Otros=(Fin)
