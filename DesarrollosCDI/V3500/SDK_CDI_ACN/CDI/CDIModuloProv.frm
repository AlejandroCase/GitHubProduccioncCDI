[Forma]
Clave=CDIModuloProv
Icono=0
BarraHerramientas=S
Modulos=SOC
DialogoAbrir=S
MovModulo=SOC
Nombre=<T>Proveedores<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=209
PosicionInicialArriba=73
PosicionInicialAlturaCliente=583
PosicionInicialAncho=948
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
Vista=CDIProvA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(Situaci�n)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
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
ListaOrden=CDIProv.ID<TAB>(Decendente)
FiltroFechas=S
FiltroSucursales=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=SINAFECTAR
FiltroFechasCampo=CDIProv.FechaEmision
FiltroFechasDefault=(Todo)
FiltroFechasCancelacion=CDIProv.FechaCancelacion
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
BusquedaAncho=20

IconosNombre=CDIProv.Mov + <T> <T> +CDIProv.MovID
[Lista]
Estilo=Ficha
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProv
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
[Lista.CDIProv.Mov]
Carpeta=Lista
Clave=CDIProv.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Lista.CDIProv.MovID]
Carpeta=Lista
Clave=CDIProv.MovID
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=11
ColorFondo=$00C8D0D4
Pegado=S
Efectos=[Negritas]

[Lista.CDIProv.FechaEmision]
Carpeta=Lista
Clave=CDIProv.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=22

[(Carpeta Abrir).CDIProv.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDIProv.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDIProv.Concepto]
Carpeta=(Carpeta Abrir)
Clave=CDIProv.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDIProv.Proyecto]
Carpeta=(Carpeta Abrir)
Clave=CDIProv.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDIProv.Referencia]
Carpeta=(Carpeta Abrir)
Clave=CDIProv.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDIProv.NIPCDI]
Carpeta=(Carpeta Abrir)
Clave=CDIProv.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[(Carpeta Abrir).CDIProv.Membresia]
Carpeta=(Carpeta Abrir)
Clave=CDIProv.Membresia
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
Cliente=127
PersonalNombres=120
PersonalApellidoPaterno=134
PersonalApellidoMaterno=144
Membresia=64
Socio=127
NIPCDI=131
NombreSocio=171
RFC=124
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
Expresion=Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.Mov, CDIProv:CDIProv.Mov)<BR>Asigna(Info.Clave, <T>SOC<T>+CDIProv:CDIProv.ID)<BR>Asigna(Info.Nombre, CDIProv:CDIProv.Mov+<T> <T>+CDIProv:CDIProv.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(CDIProv:CDIProv.Estatus en (EstatusConcluido, EstatusCancelado), <T>EvaluacionCalificacionInfo<T>, <T>EvaluacionCalificacion<T>))

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
Expresion=Asigna(Info.Forma, <T>CDIModuloProveedores<T>)<BR>Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.Mov, CDIProv:CDIProv.Mov)<BR>Asigna(Info.Nombre, <T>Proveedores<T>)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID )<BR>Fin

[Lista.CDIProv.Concepto]
Carpeta=Lista
Clave=CDIProv.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Lista.CDIProv.Proyecto]
Carpeta=Lista
Clave=CDIProv.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
Pegado=S

[Lista.CDIProv.UEN]
Carpeta=Lista
Clave=CDIProv.UEN
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Pegado=S
Tamano=5

[Lista.CDIProv.Referencia]
Carpeta=Lista
Clave=CDIProv.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIProv.Observaciones]
Carpeta=Lista
Clave=CDIProv.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIProv.Causa]
Carpeta=Lista
Clave=CDIProv.Causa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Lista.CDIProv.Moneda]
Carpeta=Lista
Clave=CDIProv.Moneda
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=9
ColorFondo=Blanco

[Lista.CDIProv.TipoCambio]
Carpeta=Lista
Clave=CDIProv.TipoCambio
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Pegado=S
Tamano=6

[Lista.CDIProv.Cliente]
Carpeta=Lista
Clave=CDIProv.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco
EspacioPrevio=N


[Lista.CDIProv.Membresia]
Carpeta=Lista
Clave=CDIProv.Membresia
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
LineaNueva=S
Efectos=[Negritas]

[Lista.CDIProv.NIPCDI]
Carpeta=Lista
Clave=CDIProv.NIPCDI
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
NombreDesplegar=&Situaci�n
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Antes=S
Visible=S
ActivoCondicion=Usuario.ModificarSituacion
AntesExpresiones=Si(Vacio(CDIProv:CDIProv.ID),GuardarCambios)

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
Expresion=Asigna(Afectar.ID, CDIProv:CDIProv.ID)<BR>Asigna(Afectar.Mov, CDIProv:CDIProv.Mov)<BR>Asigna(Afectar.MovID, CDIProv:CDIProv.MovID)<BR>Asigna(Afectar.FormaCaptura, <T>CDIModuloProveedores<T>)<BR>Asigna(Info.MovTipo, MovTipo(<T>SOC<T>,CDIProv:CDIProv.Mov))<BR>Si  (Info.MovTipo = SOC.VERIFICA) y (CDIProv:CDIProv.Estatus = EstatusPendiente) y ( Vacio(fnSubMovTipo(<T>SOC<T>,CDIProv:CDIProv.Origen)))<BR>  Entonces<BR>    Dialogo(<T>CDIGenerarVerificacion<T>)<BR>  Sino<BR>    Si (Info.MovTipo = SOC.VERIFICA) y (CDIProv:CDIProv.Estatus = EstatusPendiente) y (fnSubMovTipo(<T>SOC<T>,CDIProv:CDIProv.Origen)=SOC.TEMP)<BR>      Entonces<BR>        Dialogo(<T>CDIGenerarTemporal<T>)<BR>      Sino<BR>        Si (Info.MovTipo = SOC.VERIFICA) y (CDIProv:CDIProv.Estatus = EstatusPendiente) y (fnSubMovTipo(<T>SOC<T>,CDIProv:CDIProv.Origen)=SOC.REIN)<BR>          Entonces<BR>            Asigna(Afectar.GenerarMov, SQL(<T>SELECT cc.CDIMovReingreso FROM CDIEmpresaCfg cc WHERE cc.Empresa =:tEmpresa<T>, Empresa))<BR>            Dialogo(<T>CDIGenerarReingreso<T>)<BR>          Sino<BR>            Si (Info.MovTipo = SOC.SOLBAJA) y (CDIProv:CDIProv.Estatus = EstatusPendiente)<BR>              Entonces<BR>                Dialogo(<T>CDIGenerarBaja<T>)<BR>              Sino<BR>                Si (Info.MovTipo = SOC.VERIFICA) y (CDIProv:CDIProv.Estatus = EstatusPendiente) y (fnSubMovTipo(<T>SOC<T>,CDIProv:CDIProv.Origen)=SOC.SOLHON)<BR>                  Entonces<BR>                    Dialogo(<T>CDIGenerarHonorario<T>)<BR>                  Sino<BR>                    Si (Info.MovTipo = SOC.VERIFICA) y (CDIProv:CDIProv.Estatus = EstatusPendiente) y (fnSubMovTipo(<T>SOC<T>,CDIProv:CDIProv.Origen)=SOC.SOLCORTE)<BR>                      Entonces<BR>                        Dialogo(<T>CDIGenerarCortesia<T>)<BR>                      Sino<BR>                        Si (Info.MovTipo = SOC.HONOR) y (CDIProv:CDIProv.Estatus = EstatusPendiente)<BR>                          Entonces<BR>                            Dialogo(<T>CDIGenerarHonorJusticia<T>)<BR>                        Sino<BR>                          Si (Info.MovTipo =SOC.SOLSUBSID) y (CDIProv:CDIProv.Estatus = EstatusPendiente)<BR>                            Entonces<BR>                              Dialogo(<T>GenerarSolSubsidio<T>)<BR>                          Sino<BR>                            Si (Info.MovTipo =SOC.SUBSID) y (fnSubMovTipo(<T>SOC<T>,CDIProv:CDIProv.Mov) noen(SOC.ACEPTASUB, SOC.RECHAZASUB)) y (CDIProv:CDIProv.Estatus = EstatusPendiente)<BR>                              Entonces<BR>                                Dialogo(<T>CDIGenerarSubsidio<T>)<BR>                            Sino<BR>                              Afectar(<T>SOC<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, Afectar.FormaCaptura)<BR>                            Fin<BR>                          Fin<BR>                       Fin<BR>                    Fin<BR>                Fin<BR>           Fin<BR>      Fin<BR>    Fin<BR>Fin
ActivoCondicion=CDIProv:CDIProv.Estatus noen (EstatusConcluido, EstatusCancelado)
AntesExpresiones=si(CDIProv:CDIProv.Mov =<T>Registro Aspirante<T>,Ejecutarsql(<T>spInsConsecutivoCte :tc, :ns, :nI, :tCt<T>,<T>Cte<T>,0,CDIProv:CDIProv.ID,nulo))
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
ActivoCondicion=Vacio(CDIProv:CDIProv.MovID) y (CDIProv:CDIProv.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar)) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, CDIProv:CDIProv.Usuario)
EjecucionCondicion=Vacio(SQL(<T>SELECT MovID FROM CDIProv WHERE ID=:nID<T>, CDIProv:CDIProv.ID))
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
Expresion=Asigna(Afectar.FormaCaptura, <T>CDIModuloProveedores<T>)<BR>Cancelar(<T>SOC<T>, CDIProv:CDIProv.ID, CDIProv:CDIProv.Mov, CDIProv:CDIProv.MovID, <T>Todo<T>, <T><T>, Afectar.FormaCaptura)
ActivoCondicion=Si<BR>MovTipoEn(<T>SOC<T>, CDIProv:CDIProv.Mov, (SOC.SOL, SOC.SOLBAJA, SOC.VERIFICA, SOC.SOLCORTE, SOC.SOLHON, SOC.SOLSUBSID, SOC.SUBSID, SOC.TEMP, SOC.HONOR, SOC.CITACON, SOC.CITASIN, SOC.EST ))<BR>  Entonces<BR>    CDIProv:CDIProv.Estatus en (EstatusPendiente)<BR>  Sino<BR>    CDIProv:CDIProv.Estatus en (EstatusPendiente, EstatusConcluido)<BR>  Fin

[Acciones.AgregarAspirante]
Nombre=AgregarAspirante
Boton=81
NombreDesplegar=Agregar Aspirante
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIProvs
Activo=S
Visible=S
EspacioPrevio=S
Menu=&Edici�n
Antes=S
AntesExpresiones=GuardarCambios<BR>Asigna( Info.CDINumero, 2 )<BR>Asigna( Info.ID, CDIProv:CDIProv.ID )<BR>Asigna( Info.Numero, 1)


[Detalle]
Estilo=Hoja
Clave=Detalle
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIProvD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIProv
LlaveLocal=CDIProvD.ID
LlaveMaestra=CDIProv.ID
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
ControlRenglon=S
CampoRenglon=CDIProvD.Renglon
OtroOrden=S
ListaOrden=(Lista)
MenuLocal=S
ListaAcciones=Documentacion
CondicionEdicion=(MovTipo( <T>SOC<T>, CDIProv:CDIProv.Mov ) noen (SOC.EQUIPO)) y (CDIProv:CDIProv.CDIPermiteEditar) y (CDIProv:CDIProv.Estatus en(EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar))
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Membresia

CondicionVisible=(MovTipo( <T>SOC<T>, CDIProv:CDIProv.Mov ) noen (SOC.EQUIPO))
[Detalle.CDIProvD.Cliente]
Carpeta=Detalle
Clave=CDIProvD.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
EditarConBloqueo=N

[Detalle.CDIProvD.Membresia]
Carpeta=Detalle
Clave=CDIProvD.Membresia
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[Detalle.CDIProvD.Socio]
Carpeta=Detalle
Clave=CDIProvD.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
Efectos=[Negritas]
ColorFondo=Blanco

[Detalle.CDIProvD.Estatus]
Carpeta=Detalle
Clave=CDIProvD.Estatus
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
NombreDesplegar=Bit�cora
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovBitacora
Activo=S
ConCondicion=S
EjecucionCondicion=Si(Vacio(CDIProv:CDIProv.ID),  GuardarCambios)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.ID, CDIProv:CDIProv.ID)<BR>Asigna(Info.Mov, CDIProv:CDIProv.Mov)<BR>Asigna(Info.MovID, CDIProv:CDIProv.MovID)<BR>Asigna(Info.PuedeEditar, CDIProv:CDIProv.Estatus<>EstatusCancelado)
Visible=S

[Acciones.Documentacion]
Nombre=Documentacion
Boton=0
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIDocSocioCta
Activo=S
Antes=S
AntesExpresiones=Asigna( Info.Cliente, CDIProvD:Cte.Cliente )
VisibleCondicion=CDIProv:CDIProv.Estatus = EstatusSinAfectar

[CDIProvArticulos.Columnas]
Articulo=142
Cantidad=64
Precio=64

[CDIProvArticulos.ListaEnCaptura]
(Inicio)=CDIProvArticulos.Articulo
CDIProvArticulos.Articulo=CDIProvArticulos.Cantidad
CDIProvArticulos.Cantidad=CDIProvArticulos.Precio
CDIProvArticulos.Precio=(Fin)


[InteresadoEn.CDIProvArticulos.Articulo]
Carpeta=InteresadoEn
Clave=CDIProvArticulos.Articulo
Editar=S
EditarConBloqueo=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[InteresadoEn.CDIProvArticulos.Cantidad]
Carpeta=InteresadoEn
Clave=CDIProvArticulos.Cantidad
Editar=S
EditarConBloqueo=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[InteresadoEn.CDIProvArticulos.Precio]
Carpeta=InteresadoEn
Clave=CDIProvArticulos.Precio
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


[Lista.CDIProv.Justificacion]
Carpeta=Lista
Clave=CDIProv.Justificacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=77
ColorFondo=Blanco


[Acciones.Renovacion]
Nombre=Renovacion
Boton=0
Menu=&Edici�n
NombreDesplegar=Renovaci�n
EnMenu=S
TipoAccion=Expresion
Activo=S
Antes=S
Expresion=Generar(<T>SOC<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.GenerarMov, Afectar.FormaCaptura)
AntesExpresiones=Asigna(Afectar.ID, CDIProv:CDIProv.ID)<BR>Asigna(Afectar.Mov, CDIProv:CDIProv.Mov)<BR>Asigna(Afectar.MovID, CDIProv:CDIProv.MovID)<BR>Asigna(Afectar.FormaCaptura, <T>Proveedores<T>)<BR>Asigna(Afectar.GenerarMov, SQL(<T>SELECT cc.CDIMovRenovacion FROM CDIEmpresaCfg cc WHERE cc.Empresa =:tEmpresa<T>, Empresa))<BR>Asigna(Info.MovTipo, MovTipo(<T>SOC<T>,CDIProv:CDIProv.Mov))
VisibleCondicion=(SQL(<T>SELECT CDIRenovacionMembresia FROM CDIUsuarioCFG WHERE Usuario =:tUsuarios<T>, Usuario) = VERDADERO) y ( MovTipo( <T>SOC<T>, CDIProv:CDIProv.Mov ) = SOC.TEMPORAL)

[Acciones.MovPos]
Nombre=MovPos
Boton=0
Menu=&Ver
NombreDesplegar=&Posici�n del Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPos
ActivoCondicion=ConDatos(CDIProv:CDIProv.MovID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.ID, CDIProv:CDIProv.ID)<BR>Asigna(Info.Mov, CDIProv:CDIProv.Mov)<BR>Asigna(Info.MovID, CDIProv:CDIProv.MovID)
Visible=S

[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edici�n
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
AntesExpresiones=Asigna(Info.Rama, <T>VTAS<T>)<BR>Asigna(Info.Fecha, CDIProv:CDIProv.FechaEmision)<BR>Asigna(Info.ID, CDIProv:CDIProv.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (CDIProv:CDIProv.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, CDIProv:CDIProv.Mov+<T> <T>+CDIProv:CDIProv.MovID)
Visible=S

[Lista.CDIProv.ClienteAnt]
Carpeta=Lista
Clave=CDIProv.ClienteAnt
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
Menu=&Edici�n
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
Expresion=Asigna(CDIProv:CDIProv.ImporteSubsidio,SQL(<T>SELECT dbo.fnCDICalculaSubsidio(:tCte)<T>, CDIProv:CDIProv.Cliente))
ActivoCondicion=MovTipo(<T>SOC<T>, CDIProv:CDIProv.Mov) = <T>SOC.SUBSID<T>
EjecucionCondicion=SQL(<T>SELECT 1 FROM CDIEstudioSocioeconomico WHERE Cliente = :tCte<T>, CDIProv:CDIProv.Cliente) = 1
EjecucionMensaje=<T>Falta Registrar el Estudio Socioecon�mico<T>

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

[Lista.CDIProv.BajaTotal]
Carpeta=Lista
Clave=CDIProv.BajaTotal
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


[HonorJusticia.CDIProv.DemandanteTipo]
Carpeta=HonorJusticia
Clave=CDIProv.DemandanteTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDIProv.ClaveDemandante]
Carpeta=HonorJusticia
Clave=CDIProv.ClaveDemandante
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDIProv.DemandadoTipo]
Carpeta=HonorJusticia
Clave=CDIProv.DemandadoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDIProv.ClaveDemandado]
Carpeta=HonorJusticia
Clave=CDIProv.ClaveDemandado
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDIProv.CitaHonorJusticia]
Carpeta=HonorJusticia
Clave=CDIProv.CitaHonorJusticia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[HonorJusticia.CDIProv.HoraHonorJusticia]
Carpeta=HonorJusticia
Clave=CDIProv.HoraHonorJusticia
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[HonorJusticia.CDIProv.BloquearDemandante]
Carpeta=HonorJusticia
Clave=CDIProv.BloquearDemandante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=10
ColorFondo=Blanco

[HonorJusticia.CDIProv.NoDiasDemandante]
Carpeta=HonorJusticia
Clave=CDIProv.NoDiasDemandante
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[HonorJusticia.CDIProv.BloquearDemandado]
Carpeta=HonorJusticia
Clave=CDIProv.BloquearDemandado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[HonorJusticia.CDIProv.NoDiasDemandado]
Carpeta=HonorJusticia
Clave=CDIProv.NoDiasDemandado
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
Vista=CDIProv
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
ListaEnCaptura=CDIProv.Comentarios
PestanaOtroNombre=S
PestanaNombre=Comentarios
AlinearTodaCarpeta=S
CondicionVisible=MovTipo( <T>SOC<T>, CDIProv:CDIProv.Mov ) en (SOC.DICTAMEN, SOC.SANCION, SOC.DAM)
[Comentarios.CDIProv.Comentarios]
Carpeta=Comentarios
Clave=CDIProv.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Equipo.CDIProvEquipoD.NombreJugador]
Carpeta=Equipo
Clave=CDIProvEquipoD.NombreJugador
Editar=S
EditarConBloqueo=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Equipo.Columnas]
NombreJugador=604


[Lista.CDIProv.NombreEquipo]
Carpeta=Lista
Clave=CDIProv.NombreEquipo
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

[Detalle.CDIProvD.TipoSangre]
Carpeta=Detalle
Clave=CDIProvD.TipoSangre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Detalle.CDIProvD.Edad]
Carpeta=Detalle
Clave=CDIProvD.Edad
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

[Lista.CDIProv.Estado]
Carpeta=Lista
Clave=CDIProv.Estado
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
Menu=&Edici�n
UsaTeclaRapida=S
TeclaRapida=Ctrl+BLOQ MAYUS
NombreDesplegar=Autorizar Flujo
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIMovAutorizar
ActivoCondicion=CDIProv:CDIProv.CDIFlujoAutorizacion
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>SOC<T>)<BR>Asigna(Info.ID, CDIProv:CDIProv.ID)<BR>Asigna(Info.Mov, CDIProv:CDIProv.Mov)
Visible=S

[HonorJusticia.CDIProv.NombreDemandante]
Carpeta=HonorJusticia
Clave=CDIProv.NombreDemandante
3D=S
Pegado=S
Tamano=22
ColorFondo=Plata
Efectos=[Negritas]

[HonorJusticia.CDIProv.NombreDemandado]
Carpeta=HonorJusticia
Clave=CDIProv.NombreDemandado
3D=S
Pegado=S
Tamano=22
ColorFondo=Plata
Efectos=[Negritas]

[HonorJusticia.ListaEnCaptura]
(Inicio)=CDIProv.DemandanteTipo
CDIProv.DemandanteTipo=CDIProv.ClaveDemandante
CDIProv.ClaveDemandante=CDIProv.NombreDemandante
CDIProv.NombreDemandante=CDIProv.DemandadoTipo
CDIProv.DemandadoTipo=CDIProv.ClaveDemandado
CDIProv.ClaveDemandado=CDIProv.NombreDemandado
CDIProv.NombreDemandado=CDIProv.CitaHonorJusticia
CDIProv.CitaHonorJusticia=CDIProv.HoraHonorJusticia
CDIProv.HoraHonorJusticia=CDIProv.BloquearDemandante
CDIProv.BloquearDemandante=CDIProv.NoDiasDemandante
CDIProv.NoDiasDemandante=CDIProv.BloquearDemandado
CDIProv.BloquearDemandado=CDIProv.NoDiasDemandado
CDIProv.NoDiasDemandado=(Fin)

[Acciones.MovCopiar]
Nombre=MovCopiar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
NombreDesplegar=&Copiar
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Expresion=CopiarMovimiento(<T>SOC<T>, CDIProv:CDIProv.ID, <T>CDIModuloProveedores<T>)
Activo=S
Visible=S

[Lista.CDIProv.Edad]
Carpeta=Lista
Clave=CDIProv.Edad
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
NombreDesplegar=&Presentaci�n preliminar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
Expresion=si CDIProv:CDIProv.Mov en (<T>Alta Cargo Bancario<T>)<BR>  entonces<BR>ReportePantalla(ReporteMovPantalla(<T>CDICargoBancario<T>, CDIProv:CDIProv.Mov, CDIProv:CDIProv.Estatus), CDIProv:CDIProv.ID)<BR>  sino<BR>ReportePantalla(ReporteMovPantalla(<T>SOC<T>, CDIProv:CDIProv.Mov, CDIProv:CDIProv.Estatus), CDIProv:CDIProv.ID)<BR>fin
ActivoCondicion=Usuario.PreliminarMovs




[ComentBloqueo.CDIProv.ComentBloqueo]
Carpeta=ComentBloqueo
Clave=CDIProv.ComentBloqueo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Detalle.CDIProvD.SocioNueva]
Carpeta=Detalle
Clave=CDIProvD.SocioNueva
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[CDIProvSubsidioLista.Columnas]
Subsidio=184
Importe=64

[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
NombreDesplegar=Informaci�n del &Cliente
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
EjecucionCondicion=Condatos(CDIProv:CDIProv.Cliente)
AntesExpresiones=Asigna(Info.Origen,<T>VTAS<T>)<BR>Asigna(Info.Cliente,CDIProv:CDIProv.Cliente)


[CDIProvsCargoRecD.CDIProvsCargoRecD.Articulo]
Carpeta=CDIProvsCargoRecD
Clave=CDIProvsCargoRecD.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIProvsCargoRecD.Art.Descripcion1]
Carpeta=CDIProvsCargoRecD
Clave=Art.Descripcion1
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIProvsCargoRecD.CDIProvsCargoRecD.Cantidad]
Carpeta=CDIProvsCargoRecD
Clave=CDIProvsCargoRecD.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProvsCargoRecD.CDIProvsCargoRecD.FechaInicio]
Carpeta=CDIProvsCargoRecD
Clave=CDIProvsCargoRecD.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProvsCargoRecD.CDIProvsCargoRecD.FechaFin]
Carpeta=CDIProvsCargoRecD
Clave=CDIProvsCargoRecD.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProvsCargoRecD.Columnas]
Articulo=114
Descripcion1=280
Cantidad=64
FechaInicio=94
FechaFin=94


Estatus=94
Baja=94
EsCuota=64

[CDIProvsDatosBancarios.CDIProvsDatosBancarios.NoTarjeta]
Carpeta=CDIProvsDatosBancarios
Clave=CDIProvsDatosBancarios.NoTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco

[CDIProvsDatosBancarios.CDIProvsDatosBancarios.Vigencia]
Carpeta=CDIProvsDatosBancarios
Clave=CDIProvsDatosBancarios.Vigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDIProvsDatosBancarios.CDIProvsDatosBancarios.Institucion]
Carpeta=CDIProvsDatosBancarios
Clave=CDIProvsDatosBancarios.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

IgnoraFlujo=N
[CDIProvsDatosBancarios.CDIProvsDatosBancarios.NoSeguridad]
Carpeta=CDIProvsDatosBancarios
Clave=CDIProvsDatosBancarios.NoSeguridad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIProvsDatosBancarios.CDIProvsDatosBancarios.CtaBancariaDom]
Carpeta=CDIProvsDatosBancarios
Clave=CDIProvsDatosBancarios.CtaBancariaDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIProvsDatosBancarios.CDIProvsDatosBancarios.VigenciaDom]
Carpeta=CDIProvsDatosBancarios
Clave=CDIProvsDatosBancarios.VigenciaDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDIProvsDatosBancarios.CDIProvsDatosBancarios.InstitucionDom]
Carpeta=CDIProvsDatosBancarios
Clave=CDIProvsDatosBancarios.InstitucionDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDIProvsDatosBancarios.CDIProvsDatosBancarios.NombreTarjeta]
Carpeta=CDIProvsDatosBancarios
Clave=CDIProvsDatosBancarios.NombreTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


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
Expresion=EjecutarSql(<T>xpCDICambioTitular :nI, :nM<T>,CDIProv:CDIProv.ID,CDIProv:CDIProv.Membresia)

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
Expresion=EjecutarSql(<T>xpCDICambioTitular :nI, :nM<T>,CDIProv:CDIProv.ID,CDIProv:CDIProv.Membresia)

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

ActivoCondicion=(CDIProv:CDIProv.Estatus=<T>SINAFECTAR<T>) y condatos(CDIProv:CDIProv.Cliente) y (CDIProv:CDIProv.Mov en (<T>Cambio T�tular<T>))
AntesExpresiones=ASigna(info.id,CDIProv:CDIProv.ID)<BR>ActualizarForma
[Acciones.Expresion.Expresion1]
Nombre=Expresion1
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Asigna(Info.id,CDIProv:CDIProv.ID)<BR>EjecutarSql(<T>xpCDICambioTitular :nI, :nM<T>,CDIProv:CDIProv.ID,CDIProv:CDIProv.Membresia)

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


[CDIBajaArtTarBanca.CDIProvArticulos.Articulo]
Carpeta=CDIBajaArtTarBanca
Clave=CDIProvArticulos.Articulo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIBajaArtTarBanca.CDIProvArticulos.Baja]
Carpeta=CDIBajaArtTarBanca
Clave=CDIProvArticulos.Baja
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
Expresion=ejecutarsql(<T>xpCDIBajaArticulosTarjetaBancaria :nId<T>,CDIProv:CDIProv.ID)
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




ActivoCondicion=(CDIProv:CDIProv.Estatus=<T>SINAFECTAR<T>) y condatos(CDIProv:CDIProv.Cliente) y (CDIProv:CDIProv.Mov en (<T>Baja Cargo Bancario<T>))
AntesExpresiones=ASigna(info.id,CDIProv:CDIProv.ID)<BR>ActualizarForma
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

Expresion=EjecutarSql(<T>xpCDIBajaCargosRec :nI<T>, CDIProv:CDIProv.ID)
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
ActivoCondicion=(CDIProv:CDIProv.Mov en(<T>Baja Cargo Recurre<T>,<T>Alta Cargo Bancario<T>)) y (CDIProv:CDIProv.Estatus=<T>SINAFECTAR<T>)
[Acciones.CDICargoRec.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S









[CDIProvsCargoRecDBaja.CDIProvsCargoRecD.Articulo]
Carpeta=CDIProvsCargoRecDBaja
Clave=CDIProvsCargoRecD.Articulo
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIProvsCargoRecDBaja.CDIProvsCargoRecD.Baja]
Carpeta=CDIProvsCargoRecDBaja
Clave=CDIProvsCargoRecD.Baja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIProvsCargoRecDBaja.Columnas]
Articulo=104
FechaInicio=81
FechaFin=80
Baja=94







Descripcion1=364
Cantidad=64

EsCuota=48
TarjetaBancaria=124
[CDIProvsCargoRecDBaja.Art.Descripcion1]
Carpeta=CDIProvsCargoRecDBaja
Clave=Art.Descripcion1
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





[CDIProvsCargoRecDBaja.CDIProvsCargoRecD.Cantidad]
Carpeta=CDIProvsCargoRecDBaja
Clave=CDIProvsCargoRecD.Cantidad
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProvsCargoRecDBaja.CDIProvsCargoRecD.FechaInicio]
Carpeta=CDIProvsCargoRecDBaja
Clave=CDIProvsCargoRecD.FechaInicio
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProvsCargoRecDBaja.CDIProvsCargoRecD.FechaFin]
Carpeta=CDIProvsCargoRecDBaja
Clave=CDIProvsCargoRecD.FechaFin
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco








[CDIProvsCargoRecDBaja.CDIProvsCargoRecD.EsCuota]
Carpeta=CDIProvsCargoRecDBaja
Clave=CDIProvsCargoRecD.EsCuota
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



[CDIProvsDatosBancariosBaja.Columnas]
Institucion=146
NoTarjeta=100
Vigencia=67
NombreTarjeta=207
DefCargAuto=180







BAJA=64

AMEX=94
VigenciaAMEX=94
Estatus=94
[CDIProvsDatosBancariosBaja.CDIProvsDatosBancarios.NoTarjeta]
Carpeta=CDIProvsDatosBancariosBaja
Clave=CDIProvsDatosBancarios.NoTarjeta
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco

Editar=N
[CDIProvsDatosBancariosBaja.CDIProvsDatosBancarios.Vigencia]
Carpeta=CDIProvsDatosBancariosBaja
Clave=CDIProvsDatosBancarios.Vigencia
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProvsDatosBancariosBaja.CDIProvsDatosBancarios.Institucion]
Carpeta=CDIProvsDatosBancariosBaja
Clave=CDIProvsDatosBancarios.Institucion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[CDIProvsDatosBancariosBaja.CDIProvsDatosBancarios.NombreTarjeta]
Carpeta=CDIProvsDatosBancariosBaja
Clave=CDIProvsDatosBancarios.NombreTarjeta
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIProvsDatosBancariosBaja.CDIProvsDatosBancarios.Estatus]
Carpeta=CDIProvsDatosBancariosBaja
Clave=CDIProvsDatosBancarios.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIProvsDatosBancariosBaja.CDIProvsDatosBancarios.BAJA]
Carpeta=CDIProvsDatosBancariosBaja
Clave=CDIProvsDatosBancarios.BAJA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Acciones.CDIBajaTarjeta.cdiBajaTar]
Nombre=cdiBajaTar
Boton=0
TipoAccion=Expresion
Expresion=Ejecutarsql(<T>xpCDIBajatarjetas :nI<T>,CDIProv:CDIProv.ID)
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
ActivoCondicion=(CDIProv:CDIProv.Mov en(<T>Baja Tarjeta Banco<T>)) y (CDIProv:CDIProv.Estatus=<T>SINAFECTAR<T>)

[AltaCargoBancario.CDIProvsCargoRecD.Articulo]
Carpeta=AltaCargoBancario
Clave=CDIProvsCargoRecD.Articulo
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

[AltaCargoBancario.CDIProvsCargoRecD.FechaInicio]
Carpeta=AltaCargoBancario
Clave=CDIProvsCargoRecD.FechaInicio
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[AltaCargoBancario.CDIProvsCargoRecD.FechaFin]
Carpeta=AltaCargoBancario
Clave=CDIProvsCargoRecD.FechaFin
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[AltaCargoBancario.CDIProvsCargoRecD.TarjetaBancaria]
Carpeta=AltaCargoBancario
Clave=CDIProvsCargoRecD.TarjetaBancaria
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
















[CDIProvsCargoRecDBaja.ListaEnCaptura]
(Inicio)=CDIProvsCargoRecD.Articulo
CDIProvsCargoRecD.Articulo=Art.Descripcion1
Art.Descripcion1=CDIProvsCargoRecD.EsCuota
CDIProvsCargoRecD.EsCuota=CDIProvsCargoRecD.Cantidad
CDIProvsCargoRecD.Cantidad=CDIProvsCargoRecD.FechaInicio
CDIProvsCargoRecD.FechaInicio=CDIProvsCargoRecD.FechaFin
CDIProvsCargoRecD.FechaFin=CDIProvsCargoRecD.Baja
CDIProvsCargoRecD.Baja=(Fin)





[BajaCargoBancario.CDIProvsCargoRecD.Articulo]
Carpeta=BajaCargoBancario
Clave=CDIProvsCargoRecD.Articulo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[BajaCargoBancario.CDIProvsCargoRecD.FechaInicio]
Carpeta=BajaCargoBancario
Clave=CDIProvsCargoRecD.FechaInicio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[BajaCargoBancario.CDIProvsCargoRecD.FechaFin]
Carpeta=BajaCargoBancario
Clave=CDIProvsCargoRecD.FechaFin
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[BajaCargoBancario.CDIProvsCargoRecD.TarjetaBancaria]
Carpeta=BajaCargoBancario
Clave=CDIProvsCargoRecD.TarjetaBancaria
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[BajaCargoBancario.CDIProvsCargoRecD.Baja]
Carpeta=BajaCargoBancario
Clave=CDIProvsCargoRecD.Baja
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
(Inicio)=CDIProvArticulos.Articulo
CDIProvArticulos.Articulo=CDIProvArticulos.Baja
CDIProvArticulos.Baja=(Fin)












[AltaCargoBancario.ListaEnCaptura]
(Inicio)=CDIProvsCargoRecD.Articulo
CDIProvsCargoRecD.Articulo=Art.Descripcion1
Art.Descripcion1=CDIProvsCargoRecD.FechaInicio
CDIProvsCargoRecD.FechaInicio=CDIProvsCargoRecD.FechaFin
CDIProvsCargoRecD.FechaFin=CDIProvsCargoRecD.TarjetaBancaria
CDIProvsCargoRecD.TarjetaBancaria=(Fin)





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
(Inicio)=CDIProvArticulos.Articulo
CDIProvArticulos.Articulo=DescripcionArt
DescripcionArt=CDIProvArticulos.Cantidad
CDIProvArticulos.Cantidad=CDIProvArticulos.Precio
CDIProvArticulos.Precio=(Fin)





















































[CDIProvsCargoRecD.ListaEnCaptura]
(Inicio)=CDIProvsCargoRecD.Articulo
CDIProvsCargoRecD.Articulo=Art.Descripcion1
Art.Descripcion1=CDIProvsCargoRecD.Cantidad
CDIProvsCargoRecD.Cantidad=CDIProvsCargoRecD.FechaInicio
CDIProvsCargoRecD.FechaInicio=CDIProvsCargoRecD.FechaFin
CDIProvsCargoRecD.FechaFin=(Fin)

















[CDIProvsDatosBancarios.CDIProvsDatosBancarios.NoSeguridadB]
Carpeta=CDIProvsDatosBancarios
Clave=CDIProvsDatosBancarios.NoSeguridadB
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=5
ColorFondo=Blanco

Pegado=S










[CDIProvsDatosBancariosBaja.CDIProvsDatosBancarios.DefCargAuto]
Carpeta=CDIProvsDatosBancariosBaja
Clave=CDIProvsDatosBancarios.DefCargAuto
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



























[CDIProvsDatosBancarios.ListaEnCaptura]
(Inicio)=CDIProvsDatosBancarios.Institucion
CDIProvsDatosBancarios.Institucion=CDIProvsDatosBancarios.NoTarjeta
CDIProvsDatosBancarios.NoTarjeta=CDIProvsDatosBancarios.NoSeguridad
CDIProvsDatosBancarios.NoSeguridad=CDIProvsDatosBancarios.NoSeguridadB
CDIProvsDatosBancarios.NoSeguridadB=CDIProvsDatosBancarios.Vigencia
CDIProvsDatosBancarios.Vigencia=CDIProvsDatosBancarios.CtaBancariaDom
CDIProvsDatosBancarios.CtaBancariaDom=CDIProvsDatosBancarios.VigenciaDom
CDIProvsDatosBancarios.VigenciaDom=CDIProvsDatosBancarios.InstitucionDom
CDIProvsDatosBancarios.InstitucionDom=CDIProvsDatosBancarios.NombreTarjeta
CDIProvsDatosBancarios.NombreTarjeta=(Fin)

[CDIProvsDatosBancarios.ListaOrden]
(Inicio)=CDIProvsDatosBancarios.ID	(Acendente)
CDIProvsDatosBancarios.ID	(Acendente)=CDIProvsDatosBancarios.renglon	(Acendente)
CDIProvsDatosBancarios.renglon	(Acendente)=(Fin)































[Acciones.CDIBajaTarjeta.ListaAccionesMultiples]
(Inicio)=cdiBajaTar
cdiBajaTar=Actualizar Forma
Actualizar Forma=(Fin)












[Detalle.CDIProvD.RFC]
Carpeta=Detalle
Clave=CDIProvD.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





























































[BajaCargoBancario.ListaEnCaptura]
(Inicio)=CDIProvsCargoRecD.Articulo
CDIProvsCargoRecD.Articulo=Art.Descripcion1
Art.Descripcion1=CDIProvsCargoRecD.FechaInicio
CDIProvsCargoRecD.FechaInicio=CDIProvsCargoRecD.FechaFin
CDIProvsCargoRecD.FechaFin=CDIProvsCargoRecD.TarjetaBancaria
CDIProvsCargoRecD.TarjetaBancaria=CDIProvsCargoRecD.Baja
CDIProvsCargoRecD.Baja=(Fin)




































































[CDIProvCte.CDIProvCte.Direccion]
Carpeta=CDIProvCte
Clave=CDIProvCte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=35
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.DireccionNumero]
Carpeta=CDIProvCte
Clave=CDIProvCte.DireccionNumero
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.DireccionNumeroInt]
Carpeta=CDIProvCte
Clave=CDIProvCte.DireccionNumeroInt
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco


Pegado=S
[CDIProvCte.CDIProvCte.Delegacion]
Carpeta=CDIProvCte
Clave=CDIProvCte.Delegacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.Colonia]
Carpeta=CDIProvCte
Clave=CDIProvCte.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

Pegado=N
[CDIProvCte.CDIProvCte.Poblacion]
Carpeta=CDIProvCte
Clave=CDIProvCte.Poblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.Estado]
Carpeta=CDIProvCte
Clave=CDIProvCte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=N
[CDIProvCte.CDIProvCte.Pais]
Carpeta=CDIProvCte
Clave=CDIProvCte.Pais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.CodigoPostal]
Carpeta=CDIProvCte
Clave=CDIProvCte.CodigoPostal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.RFC]
Carpeta=CDIProvCte
Clave=CDIProvCte.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.Telefonos]
Carpeta=CDIProvCte
Clave=CDIProvCte.Telefonos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.TelefonosLada]
Carpeta=CDIProvCte
Clave=CDIProvCte.TelefonosLada
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.eMail1]
Carpeta=CDIProvCte
Clave=CDIProvCte.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco








[CDIProvsDatosBancariosBaja.ListaEnCaptura]
(Inicio)=CDIProvsDatosBancarios.Institucion
CDIProvsDatosBancarios.Institucion=CDIProvsDatosBancarios.Vigencia
CDIProvsDatosBancarios.Vigencia=CDIProvsDatosBancarios.NoTarjeta
CDIProvsDatosBancarios.NoTarjeta=CDIProvsDatosBancarios.NombreTarjeta
CDIProvsDatosBancarios.NombreTarjeta=CDIProvsDatosBancarios.DefCargAuto
CDIProvsDatosBancarios.DefCargAuto=CDIProvsDatosBancarios.Estatus
CDIProvsDatosBancarios.Estatus=CDIProvsDatosBancarios.BAJA
CDIProvsDatosBancarios.BAJA=(Fin)










[CDIProvCte.CDIProvCte.EntreCalles]
Carpeta=CDIProvCte
Clave=CDIProvCte.EntreCalles
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco















Pegado=S
[CDIProvCte.CDIProvCte.PersonalApellidoMaterno]
Carpeta=CDIProvCte
Clave=CDIProvCte.PersonalApellidoMaterno
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.PersonalApellidoPaterno]
Carpeta=CDIProvCte
Clave=CDIProvCte.PersonalApellidoPaterno
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.PersonalNombres]
Carpeta=CDIProvCte
Clave=CDIProvCte.PersonalNombres
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


Pegado=N
[CDIProvCte.CDIProvCte.Sexo]
Carpeta=CDIProvCte
Clave=CDIProvCte.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.Nacionalidad]
Carpeta=CDIProvCte
Clave=CDIProvCte.Nacionalidad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.FechaNacimiento]
Carpeta=CDIProvCte
Clave=CDIProvCte.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=30
[CDIProvCte.CDIProvCte.EstadoCivil]
Carpeta=CDIProvCte
Clave=CDIProvCte.EstadoCivil
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.Ocupacion]
Carpeta=CDIProvCte
Clave=CDIProvCte.Ocupacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.Descripcion19]
Carpeta=CDIProvCte
Clave=CDIProvCte.Descripcion19
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.CDIMedTipoSangre]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedTipoSangre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.CDIMedDonador]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedDonador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.CDIMedEnfermo]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedEnfermo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.CDIMedEnfermedad]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedEnfermedad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.CDIMedAlergia]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedAlergia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.CDIMedAlergias]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedAlergias
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.CDIMedMedicamento]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedMedicamento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.CDIMedMedicamentos]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedMedicamentos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.CDIMedAvisar]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedAvisar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIProvCte.CDIProvCte.CDIMedTelefono]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedTelefono
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[CDIProvCte.CDIProvCte.CDIMedCelular]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIMedCelular
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco











Pegado=S
[CDIProvCte.CDIProvCte.PersonalPais]
Carpeta=CDIProvCte
Clave=CDIProvCte.PersonalPais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco




















Pegado=S




















































































































[CDIProvCte.CDIProvCte.Tipo]
Carpeta=CDIProvCte
Clave=CDIProvCte.Tipo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





[xxx.ListaEnCaptura]
(Inicio)=CDIProv.Tipo
CDIProv.Tipo=CDIProv.Sede
CDIProv.Sede=CDIProv.Actividad
CDIProv.Actividad=CDIProv.Clase
CDIProv.Clase=CDIProv.Aporta
CDIProv.Aporta=CDIProv.SubCategoria
CDIProv.SubCategoria=(Fin)

[xxx.CDIProv.Tipo]
Carpeta=xxx
Clave=CDIProv.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[xxx.CDIProv.Sede]
Carpeta=xxx
Clave=CDIProv.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[xxx.CDIProv.Actividad]
Carpeta=xxx
Clave=CDIProv.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[xxx.CDIProv.Clase]
Carpeta=xxx
Clave=CDIProv.Clase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[xxx.CDIProv.Aporta]
Carpeta=xxx
Clave=CDIProv.Aporta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[xxx.CDIProv.SubCategoria]
Carpeta=xxx
Clave=CDIProv.SubCategoria
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















[CDIClas.CDIProv.Tipo]
Carpeta=CDIClas
Clave=CDIProv.Tipo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDIProv.Sede]
Carpeta=CDIClas
Clave=CDIProv.Sede
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDIProv.Actividad]
Carpeta=CDIClas
Clave=CDIProv.Actividad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDIProv.Clase]
Carpeta=CDIClas
Clave=CDIProv.Clase
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDIProv.Aporta]
Carpeta=CDIClas
Clave=CDIProv.Aporta
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIClas.CDIProv.SubCategoria]
Carpeta=CDIClas
Clave=CDIProv.SubCategoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco






[CDIClas.CDIProv.Categoria]
Carpeta=CDIClas
Clave=CDIProv.Categoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIClas.CDIProv.FormaPago]
Carpeta=CDIClas
Clave=CDIProv.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco












[CDISubcategoriaLista.Columnas]
SubCategoria=304










































[CDIProvCte.CDIProvCte.Parentesco]
Carpeta=CDIProvCte
Clave=CDIProvCte.Parentesco
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco











[Lista.CDIProv.RefMovPrevio]
Carpeta=Lista
Clave=CDIProv.RefMovPrevio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[CDIExpMovProveedores.Columnas]
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















[Lista.CDIProv.FormaPago]
Carpeta=Lista
Clave=CDIProv.FormaPago
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





























































[SubsidioMembresia.CDIProv.Subsidio]
Carpeta=SubsidioMembresia
Clave=CDIProv.Subsidio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S

Tamano=15

[SubsidioMembresia.CDIProv.ImporteAnualidad]
Carpeta=SubsidioMembresia
Clave=CDIProv.ImporteAnualidad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[SubsidioMembresia.CDIProv.ImporteSubsidio]
Carpeta=SubsidioMembresia
Clave=CDIProv.ImporteSubsidio
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











[SubsidioMembresia.CDIProv.Recomendado]
Carpeta=SubsidioMembresia
Clave=CDIProv.Recomendado
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

LineaNueva=S
EspacioPrevio=S



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




































































































[CDIProvCte.CDIProvCte.CDIFacturarA]
Carpeta=CDIProvCte
Clave=CDIProvCte.CDIFacturarA
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
ColorFondo=Blanco

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











[SubsidioMembresia.CDIProv.FechaVigencia]
Carpeta=SubsidioMembresia
Clave=CDIProv.FechaVigencia
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

[CDICambMembr.CDICambMembr.CrearMembresia]
Carpeta=CDICambMembr
Clave=CDICambMembr.CrearMembresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco












[DescuentoMembre.CDIProv.Descuento]
Carpeta=DescuentoMembre
Clave=CDIProv.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
[DescuentoMembre.CDIProv.Formato]
Carpeta=DescuentoMembre
Clave=CDIProv.Formato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.CDIProv.Recomendado]
Carpeta=DescuentoMembre
Clave=CDIProv.Recomendado
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.CDIProv.SituacionM]
Carpeta=DescuentoMembre
Clave=CDIProv.SituacionM
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[DescuentoMembre.CDIProv.Ejecutivo]
Carpeta=DescuentoMembre
Clave=CDIProv.Ejecutivo
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

[DescuentoMembre.CDIProv.FechaIngreso]
Carpeta=DescuentoMembre
Clave=CDIProv.FechaIngreso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco

[DescuentoMembre.CDIProv.FechaVigencia]
Carpeta=DescuentoMembre
Clave=CDIProv.FechaVigencia
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

[DescuentoMembre.CDIProv.TipoSubsidio]
Carpeta=DescuentoMembre
Clave=CDIProv.TipoSubsidio
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

[DescuentoMembre.CDIProv.CuotaOriginal]
Carpeta=DescuentoMembre
Clave=CDIProv.CuotaOriginal
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

[DescuentoMembre.CDIProv.ImporteAnualidad]
Carpeta=DescuentoMembre
Clave=CDIProv.ImporteAnualidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco

[DescuentoMembre.CDIProv.ImporteSubsidio]
Carpeta=DescuentoMembre
Clave=CDIProv.ImporteSubsidio
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

[DescuentoMembre.CDIProv.Subsidio]
Carpeta=DescuentoMembre
Clave=CDIProv.Subsidio
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
FormaDePAgoCal=CDIProv.FechaIngreso
CDIProv.FechaIngreso=CDIProv.FechaVigencia
CDIProv.FechaVigencia=CDIProv.TipoSubsidio
CDIProv.TipoSubsidio=Cte.CDICuotaMembresia
Cte.CDICuotaMembresia=CDIProv.CuotaOriginal
CDIProv.CuotaOriginal=Cte.CDISubsidio
Cte.CDISubsidio=CDIProv.ImporteAnualidad
CDIProv.ImporteAnualidad=CDIProv.ImporteSubsidio
CDIProv.ImporteSubsidio=CDIProv.Subsidio
CDIProv.Subsidio=CDIProv.Descuento
CDIProv.Descuento=CDIProv.Formato
CDIProv.Formato=CDIProv.Recomendado
CDIProv.Recomendado=CDIProv.SituacionM
CDIProv.SituacionM=CDIProv.Ejecutivo
CDIProv.Ejecutivo=(Fin)












[SubsidioMembresia.CDIProv.FechaIngreso]
Carpeta=SubsidioMembresia
Clave=CDIProv.FechaIngreso
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















































[Lista.CDIProv.Socio]
Carpeta=Lista
Clave=CDIProv.Socio
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

[SubsidioMembresia.ListaEnCaptura]
(Inicio)=TipoCal
TipoCal=CategoriaCal
CategoriaCal=SubCategoCal
SubCategoCal=AportaCal
AportaCal=ClaseCal
ClaseCal=SedeCal
SedeCal=ActividadCal
ActividadCal=FormaDePAgoCal
FormaDePAgoCal=CuotaOriginalC
CuotaOriginalC=CDICuotaC
CDICuotaC=SubsidioC
SubsidioC=CDIProv.FechaIngreso
CDIProv.FechaIngreso=CDIProv.FechaVigencia
CDIProv.FechaVigencia=CDIProv.ImporteAnualidad
CDIProv.ImporteAnualidad=CDIProv.ImporteSubsidio
CDIProv.ImporteSubsidio=CDIProv.Subsidio
CDIProv.Subsidio=CDIProv.Recomendado
CDIProv.Recomendado=CDIProv.Ejecutivo
CDIProv.Ejecutivo=(Fin)

[SubsidioMembresia.CDIProv.Ejecutivo]
Carpeta=SubsidioMembresia
Clave=CDIProv.Ejecutivo
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=10
ColorFondo=Blanco


















[CDIProvCte.CDIProvCte.MismaDireccion]
Carpeta=CDIProvCte
Clave=CDIProvCte.MismaDireccion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S



[CDIProvCte.ListaEnCaptura]
(Inicio)=CDIProvCte.Tipo
CDIProvCte.Tipo=CDIProvCte.Parentesco
CDIProvCte.Parentesco=CDIProvCte.MismaDireccion
CDIProvCte.MismaDireccion=CDIProvCte.PersonalNombres
CDIProvCte.PersonalNombres=CDIProvCte.PersonalApellidoPaterno
CDIProvCte.PersonalApellidoPaterno=CDIProvCte.PersonalApellidoMaterno
CDIProvCte.PersonalApellidoMaterno=CDIProvCte.Sexo
CDIProvCte.Sexo=CDIProvCte.Nacionalidad
CDIProvCte.Nacionalidad=CDIProvCte.PersonalPais
CDIProvCte.PersonalPais=CDIProvCte.FechaNacimiento
CDIProvCte.FechaNacimiento=CDIProvCte.EstadoCivil
CDIProvCte.EstadoCivil=CDIProvCte.Ocupacion
CDIProvCte.Ocupacion=CDIProvCte.Direccion
CDIProvCte.Direccion=CDIProvCte.DireccionNumero
CDIProvCte.DireccionNumero=CDIProvCte.DireccionNumeroInt
CDIProvCte.DireccionNumeroInt=CDIProvCte.EntreCalles
CDIProvCte.EntreCalles=CDIProvCte.Colonia
CDIProvCte.Colonia=CDIProvCte.Delegacion
CDIProvCte.Delegacion=CDIProvCte.Poblacion
CDIProvCte.Poblacion=CDIProvCte.Estado
CDIProvCte.Estado=CDIProvCte.Pais
CDIProvCte.Pais=CDIProvCte.CodigoPostal
CDIProvCte.CodigoPostal=CDIProvCte.RFC
CDIProvCte.RFC=CDIProvCte.Telefonos
CDIProvCte.Telefonos=CDIProvCte.TelefonosLada
CDIProvCte.TelefonosLada=CDIProvCte.eMail1
CDIProvCte.eMail1=CDIProvCte.Descripcion19
CDIProvCte.Descripcion19=CDIProvCte.CDIMedTipoSangre
CDIProvCte.CDIMedTipoSangre=CDIProvCte.CDIMedDonador
CDIProvCte.CDIMedDonador=CDIProvCte.CDIMedEnfermo
CDIProvCte.CDIMedEnfermo=CDIProvCte.CDIMedEnfermedad
CDIProvCte.CDIMedEnfermedad=CDIProvCte.CDIMedAlergia
CDIProvCte.CDIMedAlergia=CDIProvCte.CDIMedAlergias
CDIProvCte.CDIMedAlergias=CDIProvCte.CDIMedMedicamento
CDIProvCte.CDIMedMedicamento=CDIProvCte.CDIMedMedicamentos
CDIProvCte.CDIMedMedicamentos=CDIProvCte.CDIMedAvisar
CDIProvCte.CDIMedAvisar=CDIProvCte.CDIMedTelefono
CDIProvCte.CDIMedTelefono=CDIProvCte.CDIMedCelular
CDIProvCte.CDIMedCelular=CDIProvCte.CDIFacturarA
CDIProvCte.CDIFacturarA=(Fin)






























[CambioActivdad.CDIProv.Actividad]
Carpeta=CambioActivdad
Clave=CDIProv.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDIClas.ListaEnCaptura]
(Inicio)=TipoCal
TipoCal=CDIProv.Tipo
CDIProv.Tipo=CategoriaCal
CategoriaCal=CDIProv.Categoria
CDIProv.Categoria=SubCategoCal
SubCategoCal=CDIProv.SubCategoria
CDIProv.SubCategoria=AportaCal
AportaCal=CDIProv.Aporta
CDIProv.Aporta=ClaseCal
ClaseCal=CDIProv.Clase
CDIProv.Clase=SedeCal
SedeCal=CDIProv.Sede
CDIProv.Sede=ActividadCal
ActividadCal=CDIProv.Actividad
CDIProv.Actividad=CDIProv.FormaPago
CDIProv.FormaPago=(Fin)




























































[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIProv.FechaEmision
CDIProv.FechaEmision=CDIProv.Concepto
CDIProv.Concepto=CDIProv.Proyecto
CDIProv.Proyecto=CDIProv.Referencia
CDIProv.Referencia=CDIProv.NIPCDI
CDIProv.NIPCDI=CDIProv.Membresia
CDIProv.Membresia=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=VENCIDO
VENCIDO=(Fin)







[Lista.ListaEnCaptura]
(Inicio)=CDIProv.Mov
CDIProv.Mov=CDIProv.MovID
CDIProv.MovID=CDIProv.Proyecto
CDIProv.Proyecto=CDIProv.UEN
CDIProv.UEN=CDIProv.Moneda
CDIProv.Moneda=CDIProv.TipoCambio
CDIProv.TipoCambio=CDIProv.FechaEmision
CDIProv.FechaEmision=CDIProv.Cliente
CDIProv.Cliente=CDIProv.Socio
CDIProv.Socio=NombreSocio
NombreSocio=Cte.Nombre
Cte.Nombre=CDIProv.Membresia
CDIProv.Membresia=CDIProv.Causa
CDIProv.Causa=CDIProv.Concepto
CDIProv.Concepto=CDIProv.Referencia
CDIProv.Referencia=CDIProv.Observaciones
CDIProv.Observaciones=CDIProv.RefMovPrevio
CDIProv.RefMovPrevio=CDIProv.FormaPago
CDIProv.FormaPago=FormaDePAgoCal
FormaDePAgoCal=CDIProv.BajaTotal
CDIProv.BajaTotal=CDIProv.Estado
CDIProv.Estado=CDIProv.ClienteAnt
CDIProv.ClienteAnt=NombreSocioBaja
NombreSocioBaja=CDIProv.NIPCDI
CDIProv.NIPCDI=CDIProv.Edad
CDIProv.Edad=CDIProv.Justificacion
CDIProv.Justificacion=CDIProv.NombreEquipo
CDIProv.NombreEquipo=(Fin)

[Detalle.ListaEnCaptura]
(Inicio)=CDIProvD.SocioNueva
CDIProvD.SocioNueva=CDIProvD.Socio
CDIProvD.Socio=CDIProvD.Cliente
CDIProvD.Cliente=CDIProvD.TipoSangre
CDIProvD.TipoSangre=NombreSocio
NombreSocio=CDIProvD.Membresia
CDIProvD.Membresia=Cte.Parentesco
Cte.Parentesco=Cte.FechaNacimiento
Cte.FechaNacimiento=EdadActual
EdadActual=CDIProvD.Edad
CDIProvD.Edad=CDIProvD.Estatus
CDIProvD.Estatus=CDIProvD.RFC
CDIProvD.RFC=(Fin)

[Detalle.ListaOrden]
(Inicio)=CDIProvD.ID	(Acendente)
CDIProvD.ID	(Acendente)=CDIProvD.Renglon	(Acendente)
CDIProvD.Renglon	(Acendente)=(Fin)




[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=Comentarios
Comentarios=(Fin)

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
&Archivo=&Edici�n
&Edici�n=&Ver
&Ver=&Otros
&Otros=(Fin)
