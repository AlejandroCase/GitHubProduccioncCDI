[Forma]
Clave=TMA
Nombre=<T>TMA<T>
Icono=0
Modulos=TMA
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=555
PosicionInicialArriba=337
PosicionInicialAltura=558
PosicionInicialAncho=810
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
PosicionSeccion1=29
PosicionSeccion2=92
BarraAyuda=S
MovModulo=TMA
PosicionColumna3=50
BarraAyudaBold=S
MovEspecificos=Todos
VentanaBloquearAjuste=N
TituloAutoNombre=S
PosicionInicialAlturaCliente=492
ExpresionesAlMostrar=Asigna(Info.MovID, Nulo)<BR>Asigna(Info.Importe, 0.0)<BR>Asigna(Info.Aplica, Nulo)
ExpresionesAlCerrar=Asigna(Filtro.Cliente, Nulo)<BR>Asigna(Filtro.Proveedor, Nulo)<BR>Asigna(Filtro.Mov, Nulo)<BR>Asigna(Filtro.Proyecto, Nulo)<BR>Asigna(Filtro.Actividad, Nulo)
PosicionSec1=177

MenuPrincipal=(Lista)
[Ficha]
Estilo=Ficha
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=TMA
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=5
FichaEspacioNombres=100
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
CarpetaVisible=S
PermiteEditar=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
FichaEspacioNombresAuto=S
Pestana=S

[Ficha.TMA.Mov]
Carpeta=Ficha
Clave=TMA.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.TMA.MovID]
Carpeta=Ficha
Clave=TMA.MovID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Plata
Pegado=S
IgnoraFlujo=S
ColorFuente=Negro

[Ficha.TMA.FechaEmision]
Carpeta=Ficha
Clave=TMA.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
EspacioPrevio=N
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.TMA.Proyecto]
Carpeta=Ficha
Clave=TMA.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro
Pegado=N
EditarConBloqueo=S

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=TMA
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
ListaOrden=TMA.ID<TAB>(Decendente)
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=TMA.FechaEmision
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
FiltroUsuarioDefault=(Usuario)
BusquedaRespetarUsuario=S
BusquedaRespetarControlesNum=S
FiltroSituacionTodo=S
BusquedaRespetarFiltros=S
MenuLocal=S
ListaAcciones=(Lista)
FiltroFechasNormal=S
FiltroFechasCancelacion=TMA.FechaCancelacion
FiltroSucursales=S
FiltroProyectos=S
IconosCambiarOrden=S
FiltroEstatus=S
FiltroSituacion=S
IconosNombre=TMA:TMA.Mov+<T> <T>+TMA:TMA.MovID

[(Carpeta Abrir).Columnas]
0=135
1=88

2=-2
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
EjecucionCondicion=Si(General.MovConcurrente y ConDatos(TMA:TMA.ID) y (TMA:TMA.UltimoCambio<>SQL(<T>spMovInfoVerUltimoCambio :nID, :tModulo<T>, TMA:TMA.ID, <T>TMA<T>)), Dialogo(<T>MovConcurrente<T>) AbortarOperacion)<BR>Verdadero

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
ConCondicion=S
EspacioPrevio=S
GuardarAntes=S
Antes=S
DespuesGuardar=S

Expresion=Asigna(Afectar.Modulo, <T>TMA<T>)<BR>Asigna(Afectar.ID, TMA:TMA.ID)<BR>Asigna(Afectar.Mov, TMA:TMA.Mov)<BR>Asigna(Afectar.MovID, TMA:TMA.MovID)<BR>Asigna(Afectar.Base, <T>Todo<T>)<BR>Asigna(Afectar.GenerarMov, <T><T>)<BR>Asigna(Afectar.FormaCaptura, <T>TMA<T>)<BR>Asigna(Info.MovTipo, MovTipo(<T>TMA<T>, TMA:TMA.Mov))<BR>Asigna(Info.TituloDialogo, TMA:TMA.Mov+<T> <T>+TMA:TMA.MovID)<BR>Si<BR> TMA:TMA.Estatus = EstatusPendiente<BR>Entonces<BR>  Asigna(Info.Modulo, <T>TMA<T>)<BR>  Asigna(Info.Mov, TMA:TMA.Mov)<BR>  Asigna(Info.MovID, TMA:TMA.MovID)<BR>  Si<BR>    ConfigModulo(Info.Modulo, <T>FlujoAbierto<T>) = <T>Si<T><BR>  Entonces<BR>    Si<BR>      Forma(<T>GenerarMovFlujo<T>)<BR>    Entonces<BR>      Asigna(Afectar.Base, <T>Pendiente<T>)<BR>      Asigna(Afectar.GenerarMov, Info.MovGenerar)<BR>      Generar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>    Fin<BR>  Sino<BR>    Asigna(Afectar.GenerarMov, Nulo)<BR>    Si<BR>      Caso Info.MovTipo<BR>        Es TMA.SADO Entonces Dialogo(<T>GenerarTMASolicitudAcomodo<T>)<BR>        Es TMA.OADO Entonces Dialogo(<T>GenerarTMAOrdenAcomodo<T>)<BR>      Fin<BR>      Asigna(Info.TituloDialogo, <T>Generar <T>+Comillas(Afectar.GenerarMov)+<T> de <T>+Comillas(Afectar.Mov))<BR>      ConDatos(Afectar.GenerarMov)<BR>    Entonces<BR>      Asigna(Afectar.Base, <T>Pendiente<T>)<BR>      Generar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>    Fin<BR>  Fin<BR>Sino<BR>  Afectar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>Fin
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, TMA:TMA.Usuario) y <BR>(TMA:TMA.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar, EstatusPendiente))  y<BR>PuedeAvanzarEstatus(<T>TMA<T>, TMA:TMA.Mov, TMA:TMA.Estatus, FormaSituacion)
EjecucionCondicion=ConDatos(TMA:TMA.Mov)
AntesExpresiones=Si<BR>  General.CamposExtras=<T>Campos Extras<T> y (TMA:TMA.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)) y SQL(<T>SELECT CEAntesAfectar FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMov AND CE=1<T>, <T>TMA<T>, TMA:TMA.Mov)<BR>Entonces<BR>  Si(no CamposExtrasMovimiento(<T>TMA<T>, TMA:TMA.Mov, TMA:TMA.ID, Verdadero, TMA:TMA.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)), AbortarOperacion)<BR>FIn
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=E&liminar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S
EspacioPrevio=S
ActivoCondicion=Vacio(TMA:TMA.MovID) y (TMA:TMA.Estatus=EstatusSinAfectar) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, TMA:TMA.Usuario)
ConCondicion=S
EjecucionCondicion=Vacio(SQL(<T>SELECT MovID FROM TMA WHERE ID=:nID<T>, TMA:TMA.ID))
EjecucionMensaje=Forma.ActualizarForma<BR><T>El movimiento ya fue afectado por otro usuario<T>
EjecucionConError=S

[Acciones.RepPantalla]
Nombre=RepPantalla
Boton=6
Menu=&Archivo
UsaTeclaRapida=
NombreDesplegar=&Presentacion preliminar
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=
TipoAccion=Expresion
ListaParametros1=TMA:TMA.ID
Visible=S
Activo=
Expresion=ReportePantalla(ReporteMovPantalla(<T>TMA<T>, TMA:TMA.Mov, TMA:TMA.Estatus), TMA:TMA.ID)
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
ListaParametros1=TMA:TMA.ID
Visible=S
Activo=
EspacioPrevio=S
GuardarAntes=S
Expresion=ReporteImpresora(ReporteMovImpresora(<T>TMA<T>, TMA:TMA.Mov, TMA:TMA.Estatus), TMA:TMA.ID)
ActivoCondicion=Usuario.ImprimirMovs

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
Expresion=Cancelar(<T>TMA<T>, TMA:TMA.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>TMA<T>)
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs, TMA:TMA.Usuario) y ConDatos(TMA:TMA.ID) y ConDatos(TMA:TMA.MovID) y<BR>((TMA:TMA.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusSincro, EstatusPendiente)) o<BR>(TMA:TMA.Estatus en (EstatusConcluido, EstatusPorConfirmar)))
AntesExpresiones=Asigna( Afectar.Mov, TMA:TMA.Mov ) <BR> Asigna( Afectar.MovID, TMA:TMA.MovID )

[Acciones.Verificar]
Nombre=Verificar
Boton=41
Menu=&Archivo
NombreDesplegar=<T>&Verificar<T>
EnMenu=S
TipoAccion=Expresion
Visible=S
GuardarAntes=S
EspacioPrevio=S
ConCondicion=S
EnBarraHerramientas=S
Expresion=Verificar(<T>TMA<T>, TMA:TMA.ID,TMA:TMA.Mov,TMA:TMA.MovID)
ActivoCondicion=TMA:TMA.Estatus en (EstatusSinAfectar,EstatusPorConfirmar,EstatusBorrador)
EjecucionCondicion=ConDatos(TMA:TMA.Mov)

[Aplica.TMA.MovAplica]
Carpeta=Aplica
Clave=TMA.MovAplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.TMA.MovAplicaID]
Carpeta=Aplica
Clave=TMA.MovAplicaID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Localizar]
Nombre=Localizar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Mayús+F3
NombreDesplegar=L&ocalizar...
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Localizar
Activo=S
Visible=S

[Acciones.MovPos]
Nombre=MovPos
Boton=0
Menu=&Ver
NombreDesplegar=&Posición del Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPos
Antes=S
Visible=S
EspacioPrevio=S
ActivoCondicion=ConDatos(TMA:TMA.MovID)
AntesExpresiones=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.ID, TMA:TMA.ID)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.MovID, TMA:TMA.MovID)

[Acciones.Situacion]
Nombre=Situacion
Boton=71
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F12
NombreDesplegar=&Situación
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Antes=S
Visible=S
EspacioPrevio=S
ActivoCondicion=(ConfigModulo(<T>TMA<T>,<T>Situaciones<T>)=<T>Si<T>) y Usuario.ModificarSituacion y<BR>PuedeAvanzarSituacion(<T>TMA<T>, TMA:TMA.Mov, TMA:TMA.Estatus, FormaSituacion)
AntesExpresiones=Si(Vacio(TMA:TMA.ID),GuardarCambios)

[Acciones.Tiempo]
Nombre=Tiempo
Boton=0
Menu=&Ver
NombreDesplegar=&Tiempos
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=VerMovTiempo
ConCondicion=S
Antes=S
Visible=S
ActivoCondicion=ConfigModulo(<T>TMA<T>,<T>Tiempos<T>)=<T>Si<T>
EjecucionCondicion=ConDatos(TMA:TMA.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.ID, TMA:TMA.ID)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.MovID, TMA:TMA.MovID)

[(Carpeta Abrir).TMA.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=TMA.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=10

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

[(Carpeta Totalizadores).Importe]
Carpeta=(Carpeta Totalizadores)
Clave=Importe
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro
Pegado=S

[(Carpeta Totalizadores).Impuestos]
Carpeta=(Carpeta Totalizadores)
Clave=Impuestos
Editar=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Plata
ColorFuente=Negro
Pegado=S

[(Carpeta Totalizadores).Retención]
Carpeta=(Carpeta Totalizadores)
Clave=Retención
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=13
ColorFondo=Plata
ColorFuente=Negro

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
DespuesGuardar=S
AntesExpresiones=Asigna(Info.Rama, <T>TMA<T>)<BR>Asigna(Info.Fecha, TMA:TMA.FechaEmision)<BR>Asigna(Info.ID, TMA:TMA.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (TMA:TMA.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, TMA:TMA.Mov+<T> <T>+TMA:TMA.MovID)

[Acciones.Bitacora]
Nombre=Bitacora
Boton=56
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+B
NombreDesplegar=Bitácora
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovBitacora
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=Si(Vacio(TMA:TMA.ID),  GuardarCambios)<BR>Verdadero
AntesExpresiones=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.ID, TMA:TMA.ID)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.MovID, TMA:TMA.MovID)<BR>Asigna(Info.PuedeEditar, TMA:TMA.Estatus noen (EstatusConcluido, EstatusCancelado) y PuedeModificar(TMA:TMA.Usuario))

[Acciones.AgregarEvento]
Nombre=AgregarEvento
Boton=56
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+E
NombreDesplegar=Agregar &Evento
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovBitacoraAgregar
ConCondicion=S
Antes=S
Visible=S
ActivoCondicion=TMA:TMA.Estatus noen (EstatusConcluido, EstatusCancelado) y PuedeModificar(TMA:TMA.Usuario)
EjecucionCondicion=Si(Vacio(TMA:TMA.ID),  GuardarCambios)<BR>Verdadero
AntesExpresiones=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.ID, TMA:TMA.ID)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.MovID, TMA:TMA.MovID)

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
ActivoCondicion=ConDatos(TMA:TMA.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.ID, TMA:TMA.ID)

[Acciones.MovCopiar]
Nombre=MovCopiar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Mayús+F11
NombreDesplegar=&Copiar
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Expresion=CopiarMovimiento(<T>TMA<T>, TMA:TMA.ID, <T>TMA<T>)
Activo=S
Visible=S

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
ActivoCondicion=Usuario.ModificarSucursalDestino y (TMA:TMA.Estatus=EstatusSinAfectar) y (no FormaBloqueada)
Antes=S
AntesExpresiones=Si(Vacio(TMA:TMA.ID),GuardarCambios)
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

[Detalle.Columnas]
Aplica=92
AplicaID=64
FechaEmision=128
Reporte=136
Tipo=96
Asunto=232
Socio=83
Titulo=86
Cantidad=50
Precio=101
Costo=103
PrecioTotal=104
CostoTotal=93
Tarima=97
Articulo=106
Unidad=45
Factor=49
Posicion=83
Contenedor=61
CantidadRecogida=94
CantidadEntregada=100
SubCuenta=108
CantidadPendiente=98
AplicaRID=64
PosicionDestino=86
CantidadA=64
Almacen=78
Posicion_1=80
EstaPendiente=55

[Ficha.TMA.UEN]
Carpeta=Ficha
Clave=TMA.UEN
Editar=S
3D=S
Pegado=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=S

[Acciones.Tareas]
Nombre=Tareas
Boton=70
Menu=&Edición
NombreDesplegar=&Tareas
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=Tarea
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
EspacioPrevio=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
AntesExpresiones=Asigna(Info.PuedeEditar, TMA:TMA.Estatus noen (EstatusConcluido, EstatusCancelado))<BR>Asigna(Info.Nombre, Nulo)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.MovID, TMA:TMA.MovID)<BR>Asigna(Info.Cliente, Nulo)<BR>Asigna(Info.Proveedor, Nulo)<BR>Asigna(Info.Agente, Nulo)<BR>Asigna(Info.Personal, Nulo)<BR>Asigna(Info.Proyecto, TMA:TMA.Proyecto)<BR>Asigna(Info.UEN, TMA:TMA.UEN)<BR>Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.ID, TMA:TMA.ID)<BR>Asigna(Info.Reporte, Nulo)

[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=0
Menu=&Archivo
NombreDesplegar=E&valuaciones
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
GuardarAntes=S
Expresion=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.Clave, <T>TMA<T>+TMA:TMA.ID)<BR>Asigna(Info.Nombre, TMA:TMA.Mov+<T> <T>+TMA:TMA.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(TMA:TMA.Estatus en (EstatusConcluido, EstatusCancelado), <T>EvaluacionCalificacionInfo<T>, <T>EvaluacionCalificacion<T>))

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
AntesExpresiones=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.ID, TMA:TMA.ID)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.MovID, TMA:TMA.MovID)<BR>Asigna(Info.Fecha, TMA:TMA.FechaEmision)<BR>Asigna(Info.Estatus, TMA:TMA.Estatus)

[Acciones.Politica]
Nombre=Politica
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Mayús+Ctrl+O
NombreDesplegar=P&olítica Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=PoliticaInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(TMA:TMA.Mov)
AntesExpresiones=Asigna(Info.Rama, <T>TMA<T>)<BR>Asigna(Info.Clave, TMA:TMA.Mov)

[Acciones.PoliticaConcepto]
Nombre=PoliticaConcepto
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Mayús+Ctrl+N
NombreDesplegar=Política Co&ncepto
EnMenu=S
TipoAccion=Formas
ClaveAccion=ConceptoPoliticaInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(TMA:TMA.Concepto)
AntesExpresiones=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.Concepto, TMA:TMA.Concepto)

[(Carpeta Abrir).TMA.Concepto]
Carpeta=(Carpeta Abrir)
Clave=TMA.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Detalle]
Estilo=Hoja
PestanaOtroNombre=S
Clave=Detalle
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=TMAD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=TMA
LlaveLocal=TMAD.ID
LlaveMaestra=TMA.ID
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
ControlRenglon=S
CampoRenglon=TMAD.Renglon
HojaFondoGrisAuto=S

[Ficha.TMA.Concepto]
Carpeta=Ficha
Clave=TMA.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.TMA.Referencia]
Carpeta=Ficha
Clave=TMA.Referencia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.TMA.Observaciones]
Carpeta=Ficha
Clave=TMA.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=74
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F11
NombreDesplegar=Plantillas &Office
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Asigna(Info.Forma, <T>TMA<T>)<BR>Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.Nombre, TMA:TMA.Mov)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin

[Detalle.TMAD.Tarima]
Carpeta=Detalle
Clave=TMAD.Tarima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.TMAD.Posicion]
Carpeta=Detalle
Clave=TMAD.Posicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.TMA.Almacen]
Carpeta=Ficha
Clave=TMA.Almacen
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.TMAD.PosicionDestino]
Carpeta=Detalle
Clave=TMAD.PosicionDestino
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CamposExtras]
Nombre=CamposExtras
Boton=0
Menu=&Edición
NombreDesplegar=General.CamposExtras+<T>...<T>
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+1
RefrescarDespues=S
Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasMovimiento(<T>TMA<T>, TMA:TMA.Mov, TMA:TMA.ID, Falso, TMA:TMA.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))<BR>Sino<BR>  Asigna(Info.Aplica, <T>Movimiento<T>)<BR>  Asigna(Info.Clave, <T>TMA<T>+TMA:TMA.ID)<BR>  Asigna(Info.Nombre, TMA:TMA.Mov+<T> <T>+TMA:TMA.MovID)<BR>  Asigna(Info.Modulo, <T>TMA<T>)<BR>  Asigna(Info.Mov, TMA:TMA.Mov)<BR>  Asigna(Info.Categoria, Nulo)<BR>  Asigna(Info.Grupo, Nulo)<BR>  Asigna(Info.Familia, Nulo)<BR>  Asigna(Info.Departamento, Nulo)<BR>  Asigna(Info.Puesto, Nulo)<BR>  Asigna(Info.SIC, Nulo)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaExtraVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si<BR>    ConDatos(Info.FormaTipo)<BR>  Entonces<BR>    Si <BR>      TMA:TMA.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)<BR>    Entonces<BR>      iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Sino<BR>      iConsulta(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Fin<BR>  Sino<BR>    Informacion(<T>No Tiene Definida Ninguna Forma<T>)<BR>  Fin<BR>Fin

[Ficha.TMA.Agente]
Carpeta=Ficha
Clave=TMA.Agente
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S

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
AntesExpresiones=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.ID, TMA:TMA.ID)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.MovID, TMA:TMA.MovID)
DespuesGuardar=S
Visible=S

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
ActivoCondicion=Usuario.EnviarExcel y (TMA:TMA.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))

[FormaExtraValor]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Características
Clave=FormaExtraValor
Filtros=S
OtroOrden=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaExtraValor
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
ListaOrden=(Lista)
FiltroAplicaEn=FormaExtraCampo.Grupo
FiltroPredefinido=S
FiltroAutoCampo=FormaExtraCampo.Grupo
FiltroAutoValidar=FormaExtraCampo.Grupo
FiltroAutoOrden=FormaExtraCampo.Orden
FiltroGrupo1=FormaExtraCampo.Grupo
FiltroValida1=FormaExtraCampo.Grupo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
HojaFondoGris=S
HojaSinBorde=S
PermiteEditar=S
FiltroGeneral=FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaExtraVisibleMovimiento(<T>TMA<T>, <T>{TMA:TMA.Mov}<T>)) AND FormaExtraValor.Aplica=<T>Movimiento<T> AND FormaExtraValor.AplicaClave=<T>TMA{TMA:TMA.ID}<T>
CondicionVisible=General.CamposExtras<><T>Campos Extras<T>

[FormaExtraValor.VerCampo]
Carpeta=FormaExtraValor
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFuente=Negro
ColorFondo=Plata
IgnoraFlujo=N

[FormaExtraValor.VerValor]
Carpeta=FormaExtraValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFuente=Negro
ColorFondo=Blanco
Efectos=[Negritas]

[FormaExtraValor.Columnas]
VerCampo=310
VerValor=310

[Detalle.TMAD.Almacen]
Carpeta=Detalle
Clave=TMAD.Almacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.OrigenNombre]
Carpeta=Ficha
Clave=OrigenNombre
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro

[Detalle.TMAD.EstaPendiente]
Carpeta=Detalle
Clave=TMAD.EstaPendiente
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro




[Ficha.ListaEnCaptura]
(Inicio)=TMA.Mov
TMA.Mov=TMA.MovID
TMA.MovID=TMA.Proyecto
TMA.Proyecto=TMA.UEN
TMA.UEN=TMA.FechaEmision
TMA.FechaEmision=TMA.Almacen
TMA.Almacen=TMA.Concepto
TMA.Concepto=TMA.Referencia
TMA.Referencia=TMA.Agente
TMA.Agente=OrigenNombre
OrigenNombre=TMA.Observaciones
TMA.Observaciones=(Fin)

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=TMA.FechaEmision
TMA.FechaEmision=TMA.Concepto
TMA.Concepto=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=PENDIENTE
PENDIENTE=SINCRO
SINCRO=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=AbrirImprimir
AbrirImprimir=AbrirPreliminar
AbrirPreliminar=AbrirExcel
AbrirExcel=AbrirCampos
AbrirCampos=(Fin)

[Detalle.ListaEnCaptura]
(Inicio)=TMAD.Tarima
TMAD.Tarima=TMAD.Almacen
TMAD.Almacen=TMAD.Posicion
TMAD.Posicion=TMAD.PosicionDestino
TMAD.PosicionDestino=TMAD.EstaPendiente
TMAD.EstaPendiente=(Fin)

[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden<TAB>(Acendente)
GrupoOrden<TAB>(Acendente)=FormaExtraCampo.Orden<TAB>(Acendente)
FormaExtraCampo.Orden<TAB>(Acendente)=(Fin)




[Lista.Columnas]
0=118
1=179
2=78
Almacen=90
Nombre=229
Grupo=100
Sucursal=46








































3=-2
4=90







[Acciones.SeleccionarTarimas]
Nombre=SeleccionarTarimas
Boton=65
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F7
NombreDesplegar=&Seleccionar Tarimas
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S











































Expresion=Asigna(Info.Modulo, <T>TMA<T>)<BR>Asigna(Info.ID, TMA:TMA.ID)<BR>Asigna(Info.Mov, TMA:TMA.Mov)<BR>Asigna(Info.MovID, TMA:TMA.MovID)<BR>Caso MovTipo(<T>TMA<T>, TMA:TMA.Mov)<BR>  Es TMA.OADO Entonces Asigna(Info.MovTipo, TMA.SADO)<BR>  Es TMA.ADO Entonces Asigna(Info.MovTipo, TMA.OADO)<BR>Fin<BR>Si<BR>  Forma(<T>TMAPendiente<T>)<BR>Entonces<BR>  EjecutarSQL(<T>spTMAPendienteSeleccionar :nEstacion, :nSucursal, :nID<T>, EstacionTrabajo, Sucursal, TMA:TMA.ID) <BR>  Forma.ActualizarVista(<T>Detalle<T>) <BR>Fin
ActivoCondicion=MovTipoEn(<T>TMA<T>, TMA:TMA.Mov, (TMA.OADO, TMA.ADO)) y (TMA:TMA.Estatus en (EstatusSinAfectar, EstatusPorConfirmar))









[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Detalle
Detalle=FormaExtraValor
FormaExtraValor=(Fin)

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
Cancelar=CamposExtras
CamposExtras=SeleccionarTarimas
SeleccionarTarimas=Tareas
Tareas=Anexos
Anexos=AgregarEvento
AgregarEvento=Anterior
Anterior=Siguiente
Siguiente=Tiempo
Tiempo=Politica
Politica=PoliticaConcepto
PoliticaConcepto=Bitacora
Bitacora=MovPos
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
&Archivo=&Edición
&Edición=&Ver
&Ver=&Otros
&Otros=(Fin)
