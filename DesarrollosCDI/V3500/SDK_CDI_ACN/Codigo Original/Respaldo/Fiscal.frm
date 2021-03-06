[Forma]
Clave=Fiscal
Nombre=Fiscal
Icono=0
Modulos=FIS
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=600
PosicionInicialArriba=305
PosicionInicialAltura=531
PosicionInicialAncho=720
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
Menus=S
BarraHerramientas=S
EsMovimiento=S
TituloAuto=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
DialogoAbrir=S
ListaAcciones=(Lista)
PosicionSeccion1=48
Totalizadores=S
PosicionSeccion2=92
BarraAyuda=S
MovModulo=FIS
PosicionColumna3=50
BarraAyudaBold=S
MovEspecificos=Todos
VentanaBloquearAjuste=N
ExpresionesAlMostrar=Asigna(Info.MovID, Nulo)<BR>Asigna(Info.Importe, 0.0)
PosicionInicialAlturaCliente=554
PosicionSec1=180
PosicionSec2=448
MenuPrincipal=(Lista)

[Ficha]
Estilo=Ficha
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Fiscal
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=5
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
PermiteEditar=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Pestana=S

[Ficha.Fiscal.Mov]
Carpeta=Ficha
Clave=Fiscal.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Fiscal.MovID]
Carpeta=Ficha
Clave=Fiscal.MovID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=8
ColorFondo=Plata
Pegado=S
IgnoraFlujo=S
ColorFuente=Negro

[Ficha.Fiscal.FechaEmision]
Carpeta=Ficha
Clave=Fiscal.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=28
EspacioPrevio=N
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Fiscal.Concepto]
Carpeta=Ficha
Clave=Fiscal.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=28
EspacioPrevio=S
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=N

[Ficha.Fiscal.Proyecto]
Carpeta=Ficha
Clave=Fiscal.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Fiscal.Moneda]
Carpeta=Ficha
Clave=Fiscal.Moneda
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=9
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Fiscal.Referencia]
Carpeta=Ficha
Clave=Fiscal.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=28
EspacioPrevio=N
EditarConBloqueo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Fiscal.Observaciones]
Carpeta=Ficha
Clave=Fiscal.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=28
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=FiscalA
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(Situaci�n)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
IconosConPaginas=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
ListaOrden=Fiscal.ID<TAB>(Decendente)
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=Fiscal.FechaEmision
FiltroFechasDefault=(Todo)
FiltroMovDefault=(Todos)
BusquedaRapida=S
BusquedaInicializar=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PENDIENTE
PestanaOtroNombre=S
PestanaNombre=movimientos
FiltroUsuarios=S
FiltroUsuarioDefault=(Todos)
FiltroFechasNormal=S
BusquedaRespetarUsuario=S
BusquedaRespetarControlesNum=S
Filtros=S
FiltroPredefinido=S
FiltroAncho=30
FiltroAutoCampo=(Validaciones Memoria)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=General
FiltroAutoValidar=Mon
FiltroAplicaEn=Fiscal.Moneda
FiltroSituacion=S
FiltroSituacionTodo=S
BusquedaRespetarFiltros=S
MenuLocal=S
ListaAcciones=(Lista)
FiltroFechasCancelacion=Fiscal.FechaCancelacion
FiltroSucursales=S
FiltroMonedas=S
FiltroMonedasCampo=Fiscal.Moneda
IconosNombre=FiscalA:Fiscal.Mov+<T> <T>+FiscalA:Fiscal.MovID

[(Carpeta Abrir).Columnas]
0=186
1=92

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=Si
EnMenu=Si
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Visible=Si
Activo=Si
Menu=&Archivo
UsaTeclaRapida=Si
TeclaRapida=Ctrl+N

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
Visible=S
Activo=S

[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Visible=S
Activo=S
ConCondicion=S
EjecucionCondicion=Si(General.MovConcurrente y ConDatos(Fiscal:Fiscal.ID) y (Fiscal:Fiscal.UltimoCambio<>SQL(<T>spMovInfoVerUltimoCambio :nID, :tModulo<T>, Fiscal:Fiscal.ID, <T>FIS<T>)), Dialogo(<T>MovConcurrente<T>) AbortarOperacion)<BR>Verdadero

[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=Cerrar
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Visible=S
Activo=S

[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=Si
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Visible=Si
Activo=Si
EspacioPrevio=Si

[Detalle]
Estilo=Hoja
Clave=Detalle
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=FiscalD
Fuente={MS Sans Serif, 8, Negro, []}
VistaMaestra=Fiscal
LlaveLocal=FiscalD.ID
LlaveMaestra=Fiscal.ID
ControlRenglon=S
CampoRenglon=FiscalD.Renglon
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
OtroOrden=S
ListaOrden=FiscalD.Renglon<TAB>(Acendente)
HojaFondoGrisAuto=S
PermiteLocalizar=S
CarpetaVisible=S
ListaEnCaptura=(Lista)

[Detalle.Columnas]
Importe=78
Aplica=106
AplicaID=66
AplicaProntoPago=96
Referencia=113
Observaciones=202
ObligacionFiscal=148
Tasa=37
Factor=64
Contacto=64
ContactoTipo=79
DebeFiscal=82
HaberFiscal=87
OtrosImpuestos=89
Excento=43
Deducible=64
MovNombre=96
Base=69
Neto=95
CalcBase=74
CalcNeto=90

[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C1
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=4
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Neto
Totalizadores2=Suma(FiscalD:CalcNeto)
Totalizadores3=(Monetario)
Totalizadores=S
TotCarpetaRenglones=Detalle
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S
ListaEnCaptura=Neto

[Acciones.Afectar]
Nombre=Afectar
Boton=7
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=F12
NombreDesplegar=<T>A&fectar<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
RefrescarDespues=S
GuardarAntes=S
ConCondicion=S
EspacioPrevio=S
Antes=S
DespuesGuardar=S
Expresion=Asigna(Afectar.Modulo, <T>FIS<T>)<BR>Asigna(Afectar.ID, Fiscal:Fiscal.ID)<BR>Asigna(Afectar.Mov, Fiscal:Fiscal.Mov)<BR>Asigna(Afectar.MovID, Fiscal:Fiscal.MovID)<BR>Asigna(Afectar.FormaCaptura, <T>FIS<T>)<BR>Asigna(Info.ID, Fiscal:Fiscal.ID)<BR>Asigna(Info.Mov, Fiscal:Fiscal.Mov)<BR>Asigna(Info.MovID, Fiscal:Fiscal.MovID)<BR>Asigna(Info.TituloDialogo, Afectar.Mov+<T> <T>+Afectar.MovID)<BR>Asigna(Info.MovTipo, MovTipo(<T>FIS<T>, Fiscal:Fiscal.Mov))<BR>Si<BR>  Fiscal:Fiscal.Estatus=EstatusPendiente<BR>Entonces<BR>  Si<BR>    ConfigModulo(Info.Modulo, <T>FlujoAbierto<T>) = <T>Si<T><BR>  Entonces<BR>    Si<BR>      Forma(<T>GenerarMovFlujo<T>)<BR>    Entonces<BR>      Asigna(Afectar.GenerarMov, Info.MovGenerar)<BR>      Generar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>    Fin<BR>  Sino<BR>    Si(Info.MovTipo=Fiscal.C, Dialogo(<T>GenerarAgentPago<T>), Dialogo(<T>GenerarAgentCobro<T>))<BR>  Fin<BR>Sino<BR>  Afectar(<T>FIS<T>, Fiscal:Fiscal.ID, Fiscal:Fiscal.Mov, Fiscal:Fiscal.MovID, <T>Todo<T>, <T><T>, <T>Fiscal<T>)<BR>Fin
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, Fiscal:Fiscal.Usuario) y<BR>((Fiscal:Fiscal.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) o<BR>((Fiscal:Fiscal.Estatus=EstatusPendiente) y <BR>PuedeAvanzarEstatus(<T>FIS<T>, Fiscal:Fiscal.Mov, Fiscal:Fiscal.Estatus, FormaSituacion)))
EjecucionCondicion=ConDatos(Fiscal:Fiscal.Mov)
AntesExpresiones=Si<BR>  General.CamposExtras=<T>Campos Extras<T> y (Fiscal:Fiscal.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)) y SQL(<T>SELECT CEAntesAfectar FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMov AND CE=1<T>, <T>FIS<T>, Fiscal:Fiscal.Mov)<BR>Entonces<BR>  Si(no CamposExtrasMovimiento(<T>FIS<T>, Fiscal:Fiscal.Mov, Fiscal:Fiscal.ID, Verdadero, Fiscal:Fiscal.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)), AbortarOperacion)<BR>FIn

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
ActivoCondicion=Vacio(Fiscal:Fiscal.MovID) y (Fiscal:Fiscal.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, Fiscal:Fiscal.Usuario)
EjecucionCondicion=Vacio(SQL(<T>SELECT MovID FROM Fiscal WHERE ID=:nID<T>, Fiscal:Fiscal.ID))
EjecucionMensaje=Forma.ActualizarForma<BR><T>El movimiento ya fue afectado por otro usuario<T>

[Acciones.RepPantalla]
Nombre=RepPantalla
Boton=6
Menu=&Archivo
UsaTeclaRapida=S
NombreDesplegar=&Presentacion preliminar
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
ListaParametros1=Fiscal:Fiscal.ID
Visible=S
TeclaRapida=Alt+F11
Expresion=ReportePantalla(ReporteMovPantalla(<T>FIS<T>, Fiscal:Fiscal.Mov, Fiscal:Fiscal.Estatus), Fiscal:Fiscal.ID)
ActivoCondicion=Usuario.PreliminarMovs

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+P
NombreDesplegar=&Imprimir...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
ListaParametros1=Fiscal:Fiscal.ID
Visible=S
Activo=
EspacioPrevio=S
GuardarAntes=S
Expresion=ReporteImpresora(ReporteMovImpresora(<T>FIS<T>, Fiscal:Fiscal.Mov, Fiscal:Fiscal.Estatus), Fiscal:Fiscal.ID)
ActivoCondicion=Usuario.ImprimirMovs

[Acciones.Totalizar]
Nombre=Totalizar
Boton=0
Menu=&Edici�n
UsaTeclaRapida=S
TeclaRapida=F8
NombreDesplegar=&Totalizar
EnMenu=S
Carpeta=Detalle
TipoAccion=Controles Captura
ClaveAccion=Registro Ultimo
Visible=S
Activo=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=33
Menu=&Archivo
NombreDesplegar=<T>Cancela&r<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
ConfirmarAntes=S
DialogoMensaje=MovCancelar
Antes=S
RefrescarDespues=S
GuardarAntes=S
Expresion=Cancelar(<T>FIS<T>, Fiscal:Fiscal.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>FIS<T>)
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs, Fiscal:Fiscal.Usuario) y ConDatos(Fiscal:Fiscal.ID) y ConDatos(Fiscal:Fiscal.MovID) y<BR>(Fiscal:Fiscal.Estatus en (EstatusSinAfectar, EstatusSincro, EstatusPorConfirmar, EstatusConcluido,EstatusPendiente))
AntesExpresiones=Asigna( Afectar.Mov, Fiscal:Fiscal.Mov ) <BR> Asigna( Afectar.MovID, Fiscal:Fiscal.MovID )

[Acciones.Verificar]
Nombre=Verificar
Boton=41
Menu=&Archivo
NombreDesplegar=<T>&Verificar<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
GuardarAntes=S
EspacioPrevio=S
ConCondicion=S
Expresion=Verificar(<T>FIS<T>, Fiscal:Fiscal.ID,Fiscal:Fiscal.Mov,Fiscal:Fiscal.MovID)
ActivoCondicion=Fiscal:Fiscal.Estatus en (EstatusSinAfectar,EstatusPorConfirmar,EstatusBorrador)
EjecucionCondicion=ConDatos(Fiscal:Fiscal.Mov)

[Ficha.Fiscal.TipoCambio]
Carpeta=Ficha
Clave=Fiscal.TipoCambio
Editar=S
3D=S
Tamano=6
Pegado=S
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.Fiscal.MovAplica]
Carpeta=Aplica
Clave=Fiscal.MovAplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.Fiscal.MovAplicaID]
Carpeta=Aplica
Clave=Fiscal.MovAplicaID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).Fiscal.Referencia]
Carpeta=(Carpeta Abrir)
Clave=Fiscal.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Localizar]
Nombre=Localizar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=May�s+F3
NombreDesplegar=L&ocalizar...
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Localizar
Activo=S
Visible=S

[(Carpeta Abrir).Fiscal.Concepto]
Carpeta=(Carpeta Abrir)
Clave=Fiscal.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.MovPos]
Nombre=MovPos
Boton=0
Menu=&Ver
NombreDesplegar=&Posici�n del Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPos
Antes=S
Visible=S
ActivoCondicion=ConDatos(Fiscal:Fiscal.MovID)
AntesExpresiones=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.ID, Fiscal:Fiscal.ID)<BR>Asigna(Info.Mov, Fiscal:Fiscal.Mov)<BR>Asigna(Info.MovID, Fiscal:Fiscal.MovID)

[Aplica.Fiscal.Agente]
Carpeta=Aplica
Clave=Fiscal.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.Agente.Nombre]
Carpeta=Aplica
Clave=Agente.Nombre
Editar=S
3D=S
Tamano=58
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

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
UsaTeclaRapida=S
TeclaRapida=Ctrl+F12
ActivoCondicion=(ConfigModulo(<T>FIS<T>,<T>Situaciones<T>)=<T>Si<T>) y Usuario.ModificarSituacion y<BR>PuedeAvanzarSituacion(<T>FIS<T>, Fiscal:Fiscal.Mov, Fiscal:Fiscal.Estatus, FormaSituacion)
AntesExpresiones=Si(Vacio(Fiscal:Fiscal.ID),GuardarCambios)

[Acciones.Tiempo]
Nombre=Tiempo
Boton=0
Menu=&Ver
NombreDesplegar=&Tiempos
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=VerMovTiempo
ActivoCondicion=ConfigModulo(<T>FIS<T>,<T>Tiempos<T>)=<T>Si<T>
ConCondicion=S
EjecucionCondicion=ConDatos(Fiscal:Fiscal.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.ID, Fiscal:Fiscal.ID)<BR>Asigna(Info.Mov, Fiscal:Fiscal.Mov)<BR>Asigna(Info.MovID, Fiscal:Fiscal.MovID)
Visible=S

[(Carpeta Abrir).Fiscal.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=Fiscal.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=50

[Acciones.AbrirPropiedades]
Nombre=AbrirPropiedades
Boton=0
NombreDesplegar=P&ropiedades
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
ActivoCondicion=ConDatos(FiscalA:Fiscal.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.ID, FiscalA:Fiscal.ID)
Visible=S

[Acciones.AbrirImprimir]
Nombre=AbrirImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Visible=S
ActivoCondicion=Usuario.ImprimirMovs

[Acciones.AbrirPreliminar]
Nombre=AbrirPreliminar
Boton=0
NombreDesplegar=&Presentaci�n preliminar
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Visible=S
ActivoCondicion=Usuario.PreliminarMovs

[Acciones.AbrirExcel]
Nombre=AbrirExcel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Visible=S
ActivoCondicion=Usuario.EnviarExcel

[Acciones.AbrirCampos]
Nombre=AbrirCampos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.ReasignarUsuario]
Nombre=ReasignarUsuario
Boton=0
Menu=&Archivo
NombreDesplegar=Reasignar &Usuario...
EnMenu=S
TipoAccion=Formas
ClaveAccion=ReasignarUsuario
ActivoCondicion=no FormaBloqueada
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.ID, Fiscal:Fiscal.ID)<BR>Asigna(Info.Usuario, Fiscal:Fiscal.Usuario)
VisibleCondicion=Usuario.ModificarUsuario y ConDatos(Fiscal:Fiscal.ID)

[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edici�n
UsaTeclaRapida=S
TeclaRapida=F4
NombreDesplegar=Ane&xos
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
Activo=S
Visible=S
ClaveAccion=AnexoMov
Antes=S
EnBarraHerramientas=S
EspacioPrevio=S
DespuesGuardar=S
AntesExpresiones=Asigna(Info.Rama, <T>FIS<T>)<BR>Asigna(Info.Fecha, Fiscal:Fiscal.FechaEmision)<BR>Asigna(Info.ID, Fiscal:Fiscal.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (Fiscal:Fiscal.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, Fiscal:Fiscal.Mov+<T> <T>+Fiscal:Fiscal.MovID)

[Acciones.Propiedades]
Nombre=Propiedades
Boton=0
Menu=&Archivo
NombreDesplegar=Propie&dades
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Antes=S
Visible=S
ActivoCondicion=ConDatos(Fiscal:Fiscal.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.ID, Fiscal:Fiscal.ID)

[Acciones.Anterior]
Nombre=Anterior
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+,
NombreDesplegar=Anterior
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Anterior
Activo=S
Visible=S

[Acciones.Siguiente]
Nombre=Siguiente
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+.
NombreDesplegar=Siguiente
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Siguiente
Activo=S
Visible=S

[Acciones.MovCopiar]
Nombre=MovCopiar
Boton=0
Menu=&Archivo
NombreDesplegar=&Copiar
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Shift+F11
Expresion=CopiarMovimiento(<T>FIS<T>, Fiscal:Fiscal.ID, <T>Fiscal<T>)

[Acciones.AbrirLocalizar]
Nombre=AbrirLocalizar
Boton=0
UsaTeclaRapida=S
TeclaRapida=Alt+F3
NombreDesplegar=&Localizar
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.AbrirLocalizarSiguiente]
Nombre=AbrirLocalizarSiguiente
Boton=0
UsaTeclaRapida=S
TeclaRapida=F3
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.Campos]
Nombre=Campos
Boton=0
Menu=&Edici�n
NombreDesplegar=&Campos...
EnMenu=S
TipoAccion=Formas
ClaveAccion=AgentCampos
ActivoCondicion=no FormaBloqueada
Antes=S
RefrescarDespues=S
AntesExpresiones=Asigna(Info.ID, Fiscal:Fiscal.ID)<BR>Asigna(Info.Mov, Fiscal:Fiscal.Mov)<BR>Asigna(Info.MovID, Fiscal:Fiscal.MovID)
VisibleCondicion=Fiscal:Fiscal.Estatus<>EstatusSinAfectar

[Acciones.Sucursal]
Nombre=Sucursal
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+U
NombreDesplegar=<T>Sucursal<T>
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Sucursal Destino
ActivoCondicion=Usuario.ModificarSucursalDestino y (Fiscal:Fiscal.Estatus=EstatusSinAfectar) y (no FormaBloqueada)
Antes=S
AntesExpresiones=Si(Vacio(Fiscal:Fiscal.ID),GuardarCambios)
VisibleCondicion=Usuario.ModificarSucursalDestino

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

[Ficha.Fiscal.UEN]
Carpeta=Ficha
Clave=Fiscal.UEN
Editar=S
3D=S
Pegado=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.ProyInfo]
Nombre=ProyInfo
Boton=0
Menu=&Ver
NombreDesplegar=Informaci�n del Proyecto
EnMenu=S
TipoAccion=Formas
ClaveAccion=ProyInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Fiscal:Fiscal.Proyecto)
AntesExpresiones=Asigna(Info.Proyecto, Fiscal:Fiscal.Proyecto)

[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=0
Menu=&Archivo
NombreDesplegar=E&valuaciones
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Expresion=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.Mov, Fiscal:Fiscal.Mov)<BR>Asigna(Info.Clave, <T>FIS<T>+Fiscal:Fiscal.ID)<BR>Asigna(Info.Nombre, Fiscal:Fiscal.Mov+<T> <T>+Fiscal:Fiscal.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(Fiscal:Fiscal.Estatus en (EstatusConcluido, EstatusCancelado), <T>EvaluacionCalificacionInfo<T>, <T>EvaluacionCalificacion<T>))
Activo=S
Visible=S

[Acciones.MovPersonal]
Nombre=MovPersonal
Boton=0
Menu=&Archivo
NombreDesplegar=P&ersonal Involucrado
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPersonal
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
EspacioPrevio=S
AntesExpresiones=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.ID, Fiscal:Fiscal.ID)<BR>Asigna(Info.Mov, Fiscal:Fiscal.Mov)<BR>Asigna(Info.MovID, Fiscal:Fiscal.MovID)<BR>Asigna(Info.Fecha, Fiscal:Fiscal.FechaEmision)<BR>Asigna(Info.Estatus, Fiscal:Fiscal.Estatus)

[Acciones.ComisionBorrador]
Nombre=ComisionBorrador
Boton=0
Menu=&Ver
NombreDesplegar=Origen de la Comisi�n...
EnMenu=S
Activo=S
TipoAccion=Formas
Antes=S
AntesExpresiones=Asigna(Info.ID, Fiscal:Fiscal.ID)
VisibleCondicion=Fiscal:Fiscal.Estatus=EstatusBorrador

[Acciones.Politica]
Nombre=Politica
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=May�s+Ctrl+O
NombreDesplegar=P&ol�tica Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=PoliticaInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Fiscal:Fiscal.Mov)
AntesExpresiones=Asigna(Info.Rama, <T>FIS<T>)<BR>Asigna(Info.Clave, Fiscal:Fiscal.Mov)

[Acciones.PoliticaConcepto]
Nombre=PoliticaConcepto
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=May�s+Ctrl+N
NombreDesplegar=Pol�tica Co&ncepto
EnMenu=S
TipoAccion=Formas
ClaveAccion=ConceptoPoliticaInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Fiscal:Fiscal.Concepto)
AntesExpresiones=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.Concepto, Fiscal:Fiscal.Concepto)

[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F11
NombreDesplegar=Plantillas &Office
EnMenu=S
TipoAccion=Expresion
Expresion=Asigna(Info.Forma, <T>FIS<T>)<BR>Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.Mov, Fiscal:Fiscal.Mov)<BR>Asigna(Info.Nombre, Fiscal:Fiscal.Mov)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin
Activo=S
Visible=S

[Acciones.CamposExtras]
Nombre=CamposExtras
Boton=0
Menu=&Edici�n
NombreDesplegar=General.CamposExtras+<T>...<T>
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+1
RefrescarDespues=S
Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasMovimiento(<T>FIS<T>, Fiscal:Fiscal.Mov, Fiscal:Fiscal.ID, Falso, Fiscal:Fiscal.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))<BR>Sino<BR>  Asigna(Info.Aplica, <T>Movimiento<T>)<BR>  Asigna(Info.Clave, <T>FIS<T>+Fiscal:Fiscal.ID)<BR>  Asigna(Info.Nombre, Fiscal:Fiscal.Mov+<T> <T>+Fiscal:Fiscal.MovID)<BR>  Asigna(Info.Modulo, <T>FIS<T>)<BR>  Asigna(Info.Mov, Fiscal:Fiscal.Mov)<BR>  Asigna(Info.Categoria, Nulo)<BR>  Asigna(Info.Grupo, Nulo)<BR>  Asigna(Info.Familia, Nulo)<BR>  Asigna(Info.Departamento, Nulo)<BR>  Asigna(Info.Puesto, Nulo)<BR>  Asigna(Info.SIC, Nulo)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si<BR>    ConDatos(Info.FormaTipo)<BR>  Entonces<BR>    Si <BR>      Fiscal:Fiscal.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)<BR>    Entonces<BR>      iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Sino<BR>      iConsulta(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Fin<BR>  Sino<BR>    Informacion(<T>No Tiene Definida Ninguna Forma<T>)<BR>  Fin<BR>Fin

[Acciones.FormasAnexas]
Nombre=FormasAnexas
Boton=113
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F10
NombreDesplegar=Formas Anexas
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovFormaAnexo
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
AntesExpresiones=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.ID, Fiscal:Fiscal.ID)<BR>Asigna(Info.Mov, Fiscal:Fiscal.Mov)<BR>Asigna(Info.MovID, Fiscal:Fiscal.MovID)

[Acciones.Excel]
Nombre=Excel
Boton=67
Menu=&Archivo
NombreDesplegar=E&xcel...
EnMenu=S
Carpeta=Detalle
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
ActivoCondicion=Usuario.EnviarExcel y (Fiscal:Fiscal.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))
Visible=S

[FormaValor]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Caracter�sticas
Clave=FormaValor
Filtros=S
OtroOrden=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaValor
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
ListaOrden=(Lista)
FiltroAplicaEn=FormaCampo.Grupo
FiltroPredefinido=S
FiltroAutoCampo=FormaCampo.Grupo
FiltroAutoValidar=FormaCampo.Grupo
FiltroAutoOrden=FormaCampo.Orden
FiltroGrupo1=FormaCampo.Grupo
FiltroValida1=FormaCampo.Grupo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CondicionVisible=General.CamposExtras<><T>Campos Extras<T>
HojaFondoGris=S
HojaSinBorde=S
PermiteEditar=S
FiltroGeneral=FormaValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaVisibleMovimiento(<T>FIS<T>, <T>{Fiscal:Fiscal.Mov}<T>)) AND FormaValor.Aplica=<T>Movimiento<T> AND FormaValor.AplicaClave=<T>FIS{Fiscal:Fiscal.ID}<T>

[FormaValor.VerCampo]
Carpeta=FormaValor
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFuente=Negro
ColorFondo=Plata
IgnoraFlujo=N

[FormaValor.VerValor]
Carpeta=FormaValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFuente=Negro
ColorFondo=Blanco
Efectos=[Negritas]

[FormaValor.Columnas]
VerCampo=296
VerValor=310

[Detalle.]
Carpeta=Detalle
ColorFondo=Negro

[(Carpeta Totalizadores).]
Carpeta=(Carpeta Totalizadores)
ColorFondo=Negro

[Detalle.FiscalD.ObligacionFiscal]
Carpeta=Detalle
Clave=FiscalD.ObligacionFiscal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.FiscalD.Importe]
Carpeta=Detalle
Clave=FiscalD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.FiscalD.Tasa]
Carpeta=Detalle
Clave=FiscalD.Tasa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.FiscalD.OtrosImpuestos]
Carpeta=Detalle
Clave=FiscalD.OtrosImpuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.FiscalD.Excento]
Carpeta=Detalle
Clave=FiscalD.Excento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.FiscalD.Deducible]
Carpeta=Detalle
Clave=FiscalD.Deducible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.MovNombre]
Carpeta=Detalle
Clave=MovNombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Gris

[Ficha.Fiscal.Acreedor]
Carpeta=Ficha
Clave=Fiscal.Acreedor
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Acreedor.Nombre]
Carpeta=Ficha
Clave=Acreedor.Nombre
Editar=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Ficha.Fiscal.Condicion]
Carpeta=Ficha
Clave=Fiscal.Condicion
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=S

[Ficha.Fiscal.Vencimiento]
Carpeta=Ficha
Clave=Fiscal.Vencimiento
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CalcNeto]
Carpeta=Detalle
Clave=CalcNeto
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Totalizadores).Neto]
Carpeta=(Carpeta Totalizadores)
Clave=Neto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=FormaValor
FormaValor=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=MovCopiar
MovCopiar=Abrir
Abrir=Localizar
Localizar=Guardar
Guardar=MovPersonal
MovPersonal=Evaluaciones
Evaluaciones=Propiedades
Propiedades=Imprimir
Imprimir=RepPantalla
RepPantalla=PlantillasOffice
PlantillasOffice=FormasAnexas
FormasAnexas=Excel
Excel=Verificar
Verificar=Situacion
Situacion=Sucursal
Sucursal=Afectar
Afectar=Eliminar
Eliminar=Cancelar
Cancelar=ReasignarUsuario
ReasignarUsuario=Campos
Campos=CamposExtras
CamposExtras=Totalizar
Totalizar=Anterior
Anterior=Siguiente
Siguiente=Anexos
Anexos=ProyInfo
ProyInfo=ComisionBorrador
ComisionBorrador=Tiempo
Tiempo=Politica
Politica=PoliticaConcepto
PoliticaConcepto=MovPos
MovPos=Navegador
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
Otros9=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edici�n
&Edici�n=&Ver
&Ver=&Otros
&Otros=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=Fiscal.Mov
Fiscal.Mov=Fiscal.MovID
Fiscal.MovID=Fiscal.Proyecto
Fiscal.Proyecto=Fiscal.UEN
Fiscal.UEN=Fiscal.Moneda
Fiscal.Moneda=Fiscal.TipoCambio
Fiscal.TipoCambio=Fiscal.FechaEmision
Fiscal.FechaEmision=Fiscal.Concepto
Fiscal.Concepto=Fiscal.Acreedor
Fiscal.Acreedor=Acreedor.Nombre
Acreedor.Nombre=Fiscal.Referencia
Fiscal.Referencia=Fiscal.Observaciones
Fiscal.Observaciones=Fiscal.Condicion
Fiscal.Condicion=Fiscal.Vencimiento
Fiscal.Vencimiento=(Fin)

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=Fiscal.Referencia
Fiscal.Referencia=Fiscal.Concepto
Fiscal.Concepto=Fiscal.FechaEmision
Fiscal.FechaEmision=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=CONFIRMAR
CONFIRMAR=BORRADOR
BORRADOR=PENDIENTE
PENDIENTE=SINCRO
SINCRO=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=AbrirPropiedades
AbrirPropiedades=AbrirLocalizar
AbrirLocalizar=AbrirLocalizarSiguiente
AbrirLocalizarSiguiente=AbrirImprimir
AbrirImprimir=AbrirPreliminar
AbrirPreliminar=AbrirExcel
AbrirExcel=AbrirCampos
AbrirCampos=(Fin)

[Detalle.ListaEnCaptura]
(Inicio)=FiscalD.ObligacionFiscal
FiscalD.ObligacionFiscal=FiscalD.Importe
FiscalD.Importe=FiscalD.OtrosImpuestos
FiscalD.OtrosImpuestos=FiscalD.Tasa
FiscalD.Tasa=FiscalD.Excento
FiscalD.Excento=FiscalD.Deducible
FiscalD.Deducible=MovNombre
MovNombre=CalcNeto
CalcNeto=(Fin)

[FormaValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaValor.ListaOrden]
(Inicio)=GrupoOrden<TAB>(Acendente)
GrupoOrden<TAB>(Acendente)=FormaCampo.Orden<TAB>(Acendente)
FormaCampo.Orden<TAB>(Acendente)=(Fin)
