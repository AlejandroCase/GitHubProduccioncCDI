[Forma]
Clave=CDIModuloSocios2
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
PosicionInicialIzquierda=218
PosicionInicialArriba=49
PosicionInicialAlturaCliente=631
PosicionInicialAncho=929
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
PosicionCol1=524
ExpresionesAlMostrar=Asigna( Info.CDINumero, 2 )<BR>Asigna(Info.Importe2,0)<BR>Asigna(Info.Id,nulo)

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
FiltroMonedas=S
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
BusquedaRespetarControlesNum=S
MenuLocal=S
ListaAcciones=Campos
FiltroMovs=S
FiltroMovsTodos=S
FiltroMovDefault=(Todos)
IconosNombre=CDISocio.Mov + <T> <T> +CDISocio.MovID
BusquedaAncho=20

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
0=157
1=126
2=96
3=73
4=88
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
0=127
1=211
2=-2
3=-2
4=-2
5=-2
Cliente=127
PersonalNombres=120
PersonalApellidoPaterno=134
PersonalApellidoMaterno=144
Membresia=64
Socio=127
NIPCDI=131
NombreSocio=171
RFC=124
Tipo=76
Categoria=250
Clave=64
Nombre=190
NombreCorto=224
Articulo=131
Descripcion1=244
Institucion=87
Ciudad=63
Estado=48

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
Tamano=22
ColorFondo=Blanco

[Lista.CDISocio.Observaciones]
Carpeta=Lista
Clave=CDISocio.Observaciones
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.CDISocio.Causa]
Carpeta=Lista
Clave=CDISocio.Causa
Editar=S
LineaNueva=N
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

[Lista.CDISocio.Socio]
Carpeta=Lista
Clave=CDISocio.Socio
Editar=S
ValidaNombre=S
3D=S
Tamano=22
Efectos=[Negritas]
ColorFondo=Blanco

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
Expresion=Asigna(Afectar.ID, CDISocio:CDISocio.ID)<BR>Asigna(Afectar.Mov, CDISocio:CDISocio.Mov)<BR>Asigna(Afectar.MovID, CDISocio:CDISocio.MovID)<BR>Asigna(Afectar.FormaCaptura, <T>CDIModuloSocios<T>)<BR>Asigna(Info.MovTipo, MovTipo(<T>SOC<T>,CDISocio:CDISocio.Mov))<BR>Si  (Info.MovTipo = SOC.VERIFICA) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y ( Vacio(fnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)))<BR>  Entonces<BR>    Dialogo(<T>CDIGenerarVerificacion<T>)<BR>  Sino<BR>    Si (Info.MovTipo = SOC.VERIFICA) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y (fnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)=SOC.TEMP)<BR>      Entonces<BR>        Dialogo(<T>CDIGenerarTemporal<T>)<BR>      Sino<BR>        Si (Info.MovTipo = SOC.VERIFICA) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y (fnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)=SOC.REIN)<BR>          Entonces<BR>            Asigna(Afectar.GenerarMov, SQL(<T>SELECT cc.CDIMovReingreso FROM CDIEmpresaCfg cc WHERE cc.Empresa =:tEmpresa<T>, Empresa))<BR>            Dialogo(<T>CDIGenerarReingreso<T>)<BR>          Sino<BR>            Si (Info.MovTipo = SOC.SOLBAJA) y (CDISocio:CDISocio.Estatus = EstatusPendiente)<BR>              Entonces<BR>                Dialogo(<T>CDIGenerarBaja<T>)<BR>              Sino<BR>                Si (Info.MovTipo = SOC.VERIFICA) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y (fnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)=SOC.SOLHON)<BR>                  Entonces<BR>                    Dialogo(<T>CDIGenerarHonorario<T>)<BR>                  Sino<BR>                    Si (Info.MovTipo = SOC.VERIFICA) y (CDISocio:CDISocio.Estatus = EstatusPendiente) y (fnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Origen)=SOC.SOLCORTE)<BR>                      Entonces<BR>                        Dialogo(<T>CDIGenerarCortesia<T>)<BR>                      Sino<BR>                        Si (Info.MovTipo = SOC.HONOR) y (CDISocio:CDISocio.Estatus = EstatusPendiente)<BR>                          Entonces<BR>                            Dialogo(<T>CDIGenerarHonorJusticia<T>)<BR>                        Sino<BR>                          Si (Info.MovTipo =SOC.SOLSUBSID) y (CDISocio:CDISocio.Estatus = EstatusPendiente)<BR>                            Entonces<BR>                              Dialogo(<T>GenerarSolSubsidio<T>)<BR>                          Sino<BR>                            Si (Info.MovTipo =SOC.SUBSID) y (fnSubMovTipo(<T>SOC<T>,CDISocio:CDISocio.Mov) noen(SOC.ACEPTASUB, SOC.RECHAZASUB)) y (CDISocio:CDISocio.Estatus = EstatusPendiente)<BR>                              Entonces<BR>                                Dialogo(<T>CDIGenerarSubsidio<T>)<BR>                            Sino<BR>                              Afectar(<T>SOC<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, Afectar.FormaCaptura)<BR>                            Fin<BR>                          Fin<BR>                       Fin<BR>                    Fin<BR>                Fin<BR>           Fin<BR>      Fin<BR>    Fin<BR>Fin
ActivoCondicion=CDISocio:CDISocio.Estatus noen (EstatusConcluido, EstatusCancelado)

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

[Lista.CDISocio.Categoria]
Carpeta=Lista
Clave=CDISocio.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco
EditarConBloqueo=S

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

[Lista.CDISocio.FechaIngreso]
Carpeta=Lista
Clave=CDISocio.FechaIngreso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Lista.CDISocio.FechaVigencia]
Carpeta=Lista
Clave=CDISocio.FechaVigencia
Editar=S
ValidaNombre=S
3D=S
Tamano=22
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

[Lista.CDISocio.ImporteSubsidio]
Carpeta=Lista
Clave=CDISocio.ImporteSubsidio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=22

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
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=$00C8D0D4
Efectos=[Negritas]
Pegado=S

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

[Lista.CDISocio.FormaPago]
Carpeta=Lista
Clave=CDISocio.FormaPago
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EditarConBloqueo=N
Pegado=S

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

[Lista.CDISocio.ImporteAnualidad]
Carpeta=Lista
Clave=CDISocio.ImporteAnualidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
EditarConBloqueo=S

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

[Lista.CDISocio.CuotaOriginal]
Carpeta=Lista
Clave=CDISocio.CuotaOriginal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDISocio.Subsidio]
Carpeta=Lista
Clave=CDISocio.Subsidio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
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
ActivoCondicion=(CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>) y condatos(CDISocio:CDISocio.Membresia) y (CDISocio:CDISocio.Mov en (<T>Cambio Títular<T>))
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
ActivoCondicion=(CDISocio:CDISocio.Estatus=<T>SINAFECTAR<T>) y condatos(CDISocio:CDISocio.Membresia) y (CDISocio:CDISocio.Mov en (<T>Baja Cargo Bancario<T>))
AntesExpresiones=ASigna(info.id,CDISocio:CDISocio.ID)<BR>ActualizarForma



[Acciones.Expresion.ListaAccionesMultiples]
(Inicio)=Expresion1
Expresion1=Actualizar Forma
Actualizar Forma=(Fin)

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

[Acciones.Expresion1.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Forma
Actualizar Forma=(Fin)













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












[AltaCargoBancario.ListaEnCaptura]
(Inicio)=CDISociosCargoRecD.Articulo
CDISociosCargoRecD.Articulo=Art.Descripcion1
Art.Descripcion1=CDISociosCargoRecD.FechaInicio
CDISociosCargoRecD.FechaInicio=CDISociosCargoRecD.FechaFin
CDISociosCargoRecD.FechaFin=CDISociosCargoRecD.TarjetaBancaria
CDISociosCargoRecD.TarjetaBancaria=(Fin)





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


























[CDISociosDatosBancariosBaja.ListaEnCaptura]
(Inicio)=CDISociosDatosBancarios.Institucion
CDISociosDatosBancarios.Institucion=CDISociosDatosBancarios.Vigencia
CDISociosDatosBancarios.Vigencia=CDISociosDatosBancarios.NoTarjeta
CDISociosDatosBancarios.NoTarjeta=CDISociosDatosBancarios.NombreTarjeta
CDISociosDatosBancarios.NombreTarjeta=CDISociosDatosBancarios.DefCargAuto
CDISociosDatosBancarios.DefCargAuto=CDISociosDatosBancarios.Estatus
CDISociosDatosBancarios.Estatus=CDISociosDatosBancarios.BAJA
CDISociosDatosBancarios.BAJA=(Fin)



















































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
CDISocio.Socio=CDISocio.Membresia
CDISocio.Membresia=NombreSocio
NombreSocio=CDISocio.Concepto
CDISocio.Concepto=CDISocio.FormaPago
CDISocio.FormaPago=CDISocio.Referencia
CDISocio.Referencia=CDISocio.Observaciones
CDISocio.Observaciones=CDISocio.Estado
CDISocio.Estado=CDISocio.Categoria
CDISocio.Categoria=CDISocio.Causa
CDISocio.Causa=CDISocio.ClienteAnt
CDISocio.ClienteAnt=CDISocio.BajaTotal
CDISocio.BajaTotal=NombreSocioBaja
NombreSocioBaja=CDISocio.NIPCDI
CDISocio.NIPCDI=CDISocio.Edad
CDISocio.Edad=CDISocio.FechaIngreso
CDISocio.FechaIngreso=CDISocio.FechaVigencia
CDISocio.FechaVigencia=CDISocio.Justificacion
CDISocio.Justificacion=CDISocio.ImporteAnualidad
CDISocio.ImporteAnualidad=CDISocio.CuotaOriginal
CDISocio.CuotaOriginal=CDISocio.Subsidio
CDISocio.Subsidio=CDISocio.ImporteSubsidio
CDISocio.ImporteSubsidio=CDISocio.NombreEquipo
CDISocio.NombreEquipo=(Fin)



















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
BajaCargoBancario=(Fin)

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
CDIBajaTarjeta=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Otros
&Otros=(Fin)
