[Forma]
Clave=pFiscal
Nombre=Fiscal
Icono=0
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
AccionesTamanoBoton=15x5
AccionesDerecha=S
DialogoAbrir=S
ListaAcciones=(Lista)
PosicionSeccion1=48
Totalizadores=S
PosicionSeccion2=92
BarraAyuda=S
MovModulo=(Todos)
PosicionColumna3=50
BarraAyudaBold=S
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
Vista=pFiscal
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

[Ficha.pFiscal.Mov]
Carpeta=Ficha
Clave=pFiscal.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.pFiscal.MovID]
Carpeta=Ficha
Clave=pFiscal.MovID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=8
ColorFondo=Plata
Pegado=S
IgnoraFlujo=S
ColorFuente=Negro

[Ficha.pFiscal.FechaEmision]
Carpeta=Ficha
Clave=pFiscal.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=28
EspacioPrevio=N
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.pFiscal.Concepto]
Carpeta=Ficha
Clave=pFiscal.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=28
EspacioPrevio=S
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=N

[Ficha.pFiscal.Proyecto]
Carpeta=Ficha
Clave=pFiscal.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.pFiscal.Moneda]
Carpeta=Ficha
Clave=pFiscal.Moneda
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=9
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.pFiscal.Referencia]
Carpeta=Ficha
Clave=pFiscal.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=28
EspacioPrevio=N
EditarConBloqueo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.pFiscal.Observaciones]
Carpeta=Ficha
Clave=pFiscal.Observaciones
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
Vista=pFiscalA
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=(Situación)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
IconosConPaginas=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
ListaOrden=pFiscal.ID<TAB>(Decendente)
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=pFiscal.FechaEmision
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
FiltroAplicaEn=pFiscal.Moneda
FiltroSituacionTodo=S
BusquedaRespetarFiltros=S
MenuLocal=S
ListaAcciones=(Lista)
FiltroFechasCancelacion=pFiscal.FechaCancelacion
FiltroSucursales=S
FiltroMonedas=S
FiltroMonedasCampo=pFiscal.Moneda
IconosNombre=pFiscalA:pFiscal.Mov+<T> <T>+pFiscalA:pFiscal.MovID

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
Vista=pFiscalD
Fuente={MS Sans Serif, 8, Negro, []}
VistaMaestra=pFiscal
LlaveLocal=pFiscalD.ID
LlaveMaestra=pFiscal.ID
ControlRenglon=S
CampoRenglon=pFiscalD.Renglon
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
OtroOrden=S
ListaOrden=pFiscalD.Renglon<TAB>(Acendente)
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
DebepFiscal=82
HaberpFiscal=87
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
Totalizadores2=Suma(pFiscalD:CalcNeto)
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
Expresion=Asigna(Temp.Texto, SQL(<T>ppAfectarFIS :nID, :tAccion, :tUsuario<T>, pFiscal:pFiscal.ID, <T>AFECTAR<T>, Usuario))<BR>Si(ConDatos(Temp.Texto), Informacion(Temp.Texto))
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, pFiscal:pFiscal.Usuario) y<BR>((pFiscal:pFiscal.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) o<BR>((pFiscal:pFiscal.Estatus=EstatusPendiente)))
EjecucionCondicion=ConDatos(pFiscal:pFiscal.Mov)

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
ActivoCondicion=Vacio(pFiscal:pFiscal.MovID) y (pFiscal:pFiscal.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, pFiscal:pFiscal.Usuario)
EjecucionCondicion=Vacio(SQL(<T>SELECT MovID FROM pFiscal WHERE ID=:nID<T>, pFiscal:pFiscal.ID))
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
ListaParametros1=pFiscal:pFiscal.ID
Visible=S
TeclaRapida=Alt+F11
Expresion=ReportePantalla(<T>pFIS<T>, pFiscal:pFiscal.ID)
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
ListaParametros1=pFiscal:pFiscal.ID
Visible=S
EspacioPrevio=S
GuardarAntes=S
Expresion=ReporteImpresora(<T>pFIS<T>, pFiscal:pFiscal.ID)
ActivoCondicion=Usuario.ImprimirMovs

[Acciones.Totalizar]
Nombre=Totalizar
Boton=0
Menu=&Edición
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
Expresion=Cancelar(<T>FIS<T>, pFiscal:pFiscal.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>FIS<T>)
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs, pFiscal:pFiscal.Usuario) y ConDatos(pFiscal:pFiscal.ID) y ConDatos(pFiscal:pFiscal.MovID) y<BR>(pFiscal:pFiscal.Estatus en (EstatusSinAfectar, EstatusSincro, EstatusPorConfirmar, EstatusConcluido,EstatusPendiente))
AntesExpresiones=Asigna( Afectar.Mov, pFiscal:pFiscal.Mov ) <BR> Asigna( Afectar.MovID, pFiscal:pFiscal.MovID )

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
Expresion=Asigna(Temp.Texto, SQL(<T>ppAfectarFIS :nID, :tAccion, :tUsuario<T>, pFiscal:pFiscal.ID, <T>VERIFICAR<T>, Usuario))<BR>Si(ConDatos(Temp.Texto), Informacion(Temp.Texto))
ActivoCondicion=pFiscal:pFiscal.Estatus en (EstatusSinAfectar,EstatusPorConfirmar,EstatusBorrador)
EjecucionCondicion=ConDatos(pFiscal:pFiscal.Mov)

[Ficha.pFiscal.TipoCambio]
Carpeta=Ficha
Clave=pFiscal.TipoCambio
Editar=S
3D=S
Tamano=6
Pegado=S
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.pFiscal.MovAplica]
Carpeta=Aplica
Clave=pFiscal.MovAplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.pFiscal.MovAplicaID]
Carpeta=Aplica
Clave=pFiscal.MovAplicaID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).pFiscal.Referencia]
Carpeta=(Carpeta Abrir)
Clave=pFiscal.Referencia
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
TeclaRapida=Shift+F3
NombreDesplegar=L&ocalizar...
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Localizar
Activo=S
Visible=S

[(Carpeta Abrir).pFiscal.Concepto]
Carpeta=(Carpeta Abrir)
Clave=pFiscal.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.pFiscal.Agente]
Carpeta=Aplica
Clave=pFiscal.Agente
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

[(Carpeta Abrir).pFiscal.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=pFiscal.FechaEmision
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
ActivoCondicion=ConDatos(pFiscalA:pFiscal.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>FIS<T>)<BR>Asigna(Info.ID, pFiscalA:pFiscal.ID)
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
NombreDesplegar=&Presentación preliminar
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

[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edición
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
AntesExpresiones=Asigna(Info.Rama, <T>FIS<T>)<BR>Asigna(Info.Fecha, pFiscal:pFiscal.FechaEmision)<BR>Asigna(Info.ID, pFiscal:pFiscal.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (pFiscal:pFiscal.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, pFiscal:pFiscal.Mov+<T> <T>+pFiscal:pFiscal.MovID)

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
Antes=S
ActivoCondicion=Usuario.ModificarSucursalDestino y (pFiscal:pFiscal.Estatus=EstatusSinAfectar) y (no FormaBloqueada)
AntesExpresiones=Si(Vacio(pFiscal:pFiscal.ID),GuardarCambios)
VisibleCondicion=Usuario.ModificarSucursalDestino

[Ficha.pFiscal.UEN]
Carpeta=Ficha
Clave=pFiscal.UEN
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
NombreDesplegar=Información del Proyecto
EnMenu=S
TipoAccion=Formas
ClaveAccion=ProyInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(pFiscal:pFiscal.Proyecto)
AntesExpresiones=Asigna(Info.Proyecto, pFiscal:pFiscal.Proyecto)

[Acciones.Excel]
Nombre=Excel
Boton=67
Menu=&Archivo
NombreDesplegar=E&xcel...
EnMenu=S
Carpeta=Detalle
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Visible=S
ActivoCondicion=Usuario.EnviarExcel y (pFiscal:pFiscal.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))

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

[Detalle.pFiscalD.ObligacionFiscal]
Carpeta=Detalle
Clave=pFiscalD.ObligacionFiscal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.pFiscalD.Importe]
Carpeta=Detalle
Clave=pFiscalD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.pFiscalD.Tasa]
Carpeta=Detalle
Clave=pFiscalD.Tasa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.pFiscalD.OtrosImpuestos]
Carpeta=Detalle
Clave=pFiscalD.OtrosImpuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.pFiscalD.Excento]
Carpeta=Detalle
Clave=pFiscalD.Excento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.pFiscalD.Deducible]
Carpeta=Detalle
Clave=pFiscalD.Deducible
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

[Ficha.pFiscal.Acreedor]
Carpeta=Ficha
Clave=pFiscal.Acreedor
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

[Ficha.pFiscal.Condicion]
Carpeta=Ficha
Clave=pFiscal.Condicion
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=S

[Ficha.pFiscal.Vencimiento]
Carpeta=Ficha
Clave=pFiscal.Vencimiento
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
Ficha=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Localizar
Localizar=Guardar
Guardar=Imprimir
Imprimir=RepPantalla
RepPantalla=Excel
Excel=Verificar
Verificar=Sucursal
Sucursal=Afectar
Afectar=Eliminar
Eliminar=Cancelar
Cancelar=Totalizar
Totalizar=Anterior
Anterior=Siguiente
Siguiente=Anexos
Anexos=ProyInfo
ProyInfo=Navegador
Navegador=Cerrar
Cerrar=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Otros
&Otros=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=pFiscal.Mov
pFiscal.Mov=pFiscal.MovID
pFiscal.MovID=pFiscal.Proyecto
pFiscal.Proyecto=pFiscal.UEN
pFiscal.UEN=pFiscal.Moneda
pFiscal.Moneda=pFiscal.TipoCambio
pFiscal.TipoCambio=pFiscal.FechaEmision
pFiscal.FechaEmision=pFiscal.Concepto
pFiscal.Concepto=pFiscal.Acreedor
pFiscal.Acreedor=Acreedor.Nombre
Acreedor.Nombre=pFiscal.Referencia
pFiscal.Referencia=pFiscal.Observaciones
pFiscal.Observaciones=pFiscal.Condicion
pFiscal.Condicion=pFiscal.Vencimiento
pFiscal.Vencimiento=(Fin)

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=pFiscal.Referencia
pFiscal.Referencia=pFiscal.Concepto
pFiscal.Concepto=pFiscal.FechaEmision
pFiscal.FechaEmision=(Fin)

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
(Inicio)=pFiscalD.ObligacionFiscal
pFiscalD.ObligacionFiscal=pFiscalD.Importe
pFiscalD.Importe=pFiscalD.OtrosImpuestos
pFiscalD.OtrosImpuestos=pFiscalD.Tasa
pFiscalD.Tasa=pFiscalD.Excento
pFiscalD.Excento=pFiscalD.Deducible
pFiscalD.Deducible=MovNombre
MovNombre=CalcNeto
CalcNeto=(Fin)
