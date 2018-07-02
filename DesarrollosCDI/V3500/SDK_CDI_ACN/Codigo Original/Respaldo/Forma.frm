[Forma]
Clave=Forma
Nombre=<T>Formas<T>
Icono=0
Modulos=FRM
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=653
PosicionInicialArriba=296
PosicionInicialAltura=558
PosicionInicialAncho=618
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
MovModulo=FRM
PosicionColumna3=50
BarraAyudaBold=S
MovEspecificos=Todos
TituloAutoNombre=S
PosicionInicialAlturaCliente=571
PosicionSec1=232
PosicionCol2=519
MenuPrincipal=(Lista)

[Ficha]
Estilo=Ficha
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Forma
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
PestanaNombre=Datos Generales
FichaEspacioNombresAuto=S
PestanaOtroNombre=S
Pestana=S

[Ficha.Forma.Mov]
Carpeta=Ficha
Clave=Forma.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Forma.MovID]
Carpeta=Ficha
Clave=Forma.MovID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=9
ColorFondo=Plata
Pegado=S
IgnoraFlujo=S
ColorFuente=Negro

[Ficha.Forma.FechaEmision]
Carpeta=Ficha
Clave=Forma.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
EspacioPrevio=N
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Forma.Proyecto]
Carpeta=Ficha
Clave=Forma.Proyecto
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
Vista=Forma
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
ListaEnCaptura=Forma.FechaEmision
ListaOrden=Forma.ID<TAB>(Decendente)
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=Forma.FechaEmision
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
FiltroFechasCancelacion=Forma.FechaCancelacion
FiltroSucursales=S
FiltroProyectos=S
IconosCambiarOrden=S
FiltroEstatus=S
FiltroSituacion=S
IconosNombre=Forma:Forma.Mov+<T> <T>+Forma:Forma.MovID

[(Carpeta Abrir).Columnas]
0=135
1=88

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
EjecucionCondicion=Si(General.MovConcurrente y ConDatos(Forma:Forma.ID) y (Forma:Forma.UltimoCambio<>SQL(<T>spMovInfoVerUltimoCambio :nID, :tModulo<T>, Forma:Forma.ID, <T>FRM<T>)), Dialogo(<T>MovConcurrente<T>) AbortarOperacion)<BR>Verdadero

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
Expresion=Asigna(Afectar.Modulo, <T>FRM<T>)<BR>Asigna(Afectar.ID, Forma:Forma.ID)<BR>Asigna(Afectar.Mov, Forma:Forma.Mov)<BR>Asigna(Afectar.MovID, Forma:Forma.MovID)<BR>Asigna(Afectar.Base, <T>Todo<T>)<BR>Asigna(Afectar.GenerarMov, <T><T>)<BR>Asigna(Afectar.FormaCaptura, <T>Forma<T>)<BR>Asigna(Info.MovTipo, MovTipo(<T>FRM<T>, Forma:Forma.Mov))<BR>Asigna(Info.TituloDialogo, Forma:Forma.Mov+<T> <T>+Forma:Forma.MovID)<BR>Si<BR> Forma:Forma.Estatus = EstatusPendiente<BR>Entonces<BR>  Asigna(Info.Modulo, <T>FRM<T>)<BR>  Asigna(Info.Mov, Forma:Forma.Mov)<BR>  Asigna(Info.MovID, Forma:Forma.MovID)<BR>  Si<BR>    ConfigModulo(Info.Modulo, <T>FlujoAbierto<T>) = <T>Si<T><BR>  Entonces<BR>    Si<BR>      Forma(<T>GenerarMovFlujo<T>)<BR>    Entonces<BR>      Si<BR>        Dialogo(<T>GenerarFormaBase<T>)<BR>      Entonces<BR>        Asigna(Afectar.GenerarMov, Info.MovGenerar)<BR>        Generar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>      Fin<BR>    Fin<BR>  Sino<BR>    Asigna(Afectar.GenerarMov, Nulo)<BR>    Si<BR>      Caso Info.MovTipo<BR>        Es Forma.OR Entonces Dialogo(<T>GenerarFormaOrdenRecibo<T>)<BR>        Es Forma.OA Entonces Dialogo(<T>GenerarFormaOrdenAcomodo<T>)<BR>        Es Forma.OS Entonces Dialogo(<T>GenerarFormaOrdenSurtido<T>)<BR>      Fin<BR>      Asigna(Info.TituloDialogo, <T>Generar <T>+Comillas(Afectar.GenerarMov)+<T> de <T>+Comillas(Afectar.Mov))<BR>      ConDatos(Afectar.GenerarMov) <BR>    Entonces<BR>      Si<BR>        Dialogo(<T>GenerarCampanaBase<T>)<BR>      Entonces<BR>        Generar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>      Fin<BR>    Fin<BR>  Fin<BR>Sino<BR>  Afectar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>Fin
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, Forma:Forma.Usuario) y <BR>(Forma:Forma.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar))  y<BR>PuedeAvanzarEstatus(<T>FRM<T>, Forma:Forma.Mov, Forma:Forma.Estatus, FormaSituacion)
EjecucionCondicion=ConDatos(Forma:Forma.Mov)
AntesExpresiones=Si<BR>  General.CamposExtras=<T>Campos Extras<T> y (Forma:Forma.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)) y SQL(<T>SELECT CEAntesAfectar FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMov AND CE=1<T>, <T>FRM<T>, Forma:Forma.Mov)<BR>Entonces<BR>  Si(no CamposExtrasMovimiento(<T>FRM<T>, Forma:Forma.Mov, Forma:Forma.ID, Verdadero, Forma:Forma.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)), AbortarOperacion)<BR>FIn

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
ActivoCondicion=Vacio(Forma:Forma.MovID) y (Forma:Forma.Estatus=EstatusSinAfectar) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, Forma:Forma.Usuario)
ConCondicion=S
EjecucionCondicion=Vacio(SQL(<T>SELECT MovID FROM Forma WHERE ID=:nID<T>, Forma:Forma.ID))
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
ListaParametros1=Forma:Forma.ID
Visible=S
Activo=
Expresion=ReportePantalla(ReporteMovPantalla(<T>FRM<T>, Forma:Forma.Mov, Forma:Forma.Estatus), Forma:Forma.ID)
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
ListaParametros1=Forma:Forma.ID
Visible=S
Activo=
EspacioPrevio=S
GuardarAntes=S
Expresion=ReporteImpresora(ReporteMovImpresora(<T>FRM<T>, Forma:Forma.Mov, Forma:Forma.Estatus), Forma:Forma.ID)
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
Expresion=Cancelar(<T>FRM<T>, Forma:Forma.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>Forma<T>)
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs, Forma:Forma.Usuario) y ConDatos(Forma:Forma.ID) y ConDatos(Forma:Forma.MovID) y<BR>((Forma:Forma.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusSincro, EstatusPendiente)) o<BR>(Forma:Forma.Estatus en (EstatusConcluido, EstatusPorConfirmar)))
AntesExpresiones=Asigna( Afectar.Mov, Forma:Forma.Mov ) <BR> Asigna( Afectar.MovID, Forma:Forma.MovID )

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
Expresion=Verificar(<T>FRM<T>, Forma:Forma.ID,Forma:Forma.Mov,Forma:Forma.MovID)
ActivoCondicion=Forma:Forma.Estatus en (EstatusSinAfectar,EstatusPorConfirmar,EstatusBorrador)
EjecucionCondicion=ConDatos(Forma:Forma.Mov)

[Aplica.Forma.MovAplica]
Carpeta=Aplica
Clave=Forma.MovAplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.Forma.MovAplicaID]
Carpeta=Aplica
Clave=Forma.MovAplicaID
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
ActivoCondicion=ConDatos(Forma:Forma.MovID)
AntesExpresiones=Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.ID, Forma:Forma.ID)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.MovID, Forma:Forma.MovID)

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
ActivoCondicion=(ConfigModulo(<T>FRM<T>,<T>Situaciones<T>)=<T>Si<T>) y Usuario.ModificarSituacion y<BR>PuedeAvanzarSituacion(<T>FRM<T>, Forma:Forma.Mov, Forma:Forma.Estatus, FormaSituacion)
AntesExpresiones=Si(Vacio(Forma:Forma.ID),GuardarCambios)

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
ActivoCondicion=ConfigModulo(<T>FRM<T>,<T>Tiempos<T>)=<T>Si<T>
EjecucionCondicion=ConDatos(Forma:Forma.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.ID, Forma:Forma.ID)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.MovID, Forma:Forma.MovID)

[(Carpeta Abrir).Forma.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=Forma.FechaEmision
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
EspacioPrevio=S
AntesExpresiones=Asigna(Info.Rama, <T>FRM<T>)<BR>Asigna(Info.Fecha, Forma:Forma.FechaEmision)<BR>Asigna(Info.ID, Forma:Forma.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (Forma:Forma.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, Forma:Forma.Mov+<T> <T>+Forma:Forma.MovID)

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
EjecucionCondicion=Si(Vacio(Forma:Forma.ID),  GuardarCambios)<BR>Verdadero
AntesExpresiones=Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.ID, Forma:Forma.ID)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.MovID, Forma:Forma.MovID)<BR>Asigna(Info.PuedeEditar, Forma:Forma.Estatus noen (EstatusConcluido, EstatusCancelado) y PuedeModificar(Forma:Forma.Usuario))

[Acciones.AgregarEvento]
Nombre=AgregarEvento
Boton=56
Menu=&Edición
NombreDesplegar=Agregar E&vento
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovBitacoraAgregar
ConCondicion=S
Antes=S
Visible=S
ActivoCondicion=Forma:Forma.Estatus noen (EstatusConcluido, EstatusCancelado) y PuedeModificar(Forma:Forma.Usuario)
EjecucionCondicion=Si(Vacio(Forma:Forma.ID),  GuardarCambios)<BR>Verdadero
AntesExpresiones=Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.ID, Forma:Forma.ID)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.MovID, Forma:Forma.MovID)

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
ActivoCondicion=ConDatos(Forma:Forma.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.ID, Forma:Forma.ID)

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
Expresion=CopiarMovimiento(<T>FRM<T>, Forma:Forma.ID, <T>Forma<T>)
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
ActivoCondicion=Usuario.ModificarSucursalDestino y (Forma:Forma.Estatus=EstatusSinAfectar) y (no FormaBloqueada)
Antes=S
AntesExpresiones=Si(Vacio(Forma:Forma.ID),GuardarCambios)
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
Posicion=74
Contenedor=61
CantidadRecogida=94
CantidadEntregada=100
SubCuenta=108
CantidadPendiente=98
AplicaRID=64
PosicionDestino=86
CantidadA=64
Contacto=78
ContactoTipo=75
Nombre=183
Medio=44
Direccion=94
Agente=51
Observaciones=91
Estado=102
Calificacion=58
Organizacion=108
MedioRef=67
Puesto=87
Telefonos=77
eMail=79
Recurso=76
0=124
1=452
VerCampo=297
VerValor=275

[Ficha.Forma.UEN]
Carpeta=Ficha
Clave=Forma.UEN
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
TipoAccion=Formas
ClaveAccion=Tarea
Antes=S
DespuesGuardar=S
EspacioPrevio=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
AntesExpresiones=Asigna(Info.PuedeEditar, Forma:Forma.Estatus noen (EstatusConcluido, EstatusCancelado))<BR>Asigna(Info.Nombre, Nulo)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.MovID, Forma:Forma.MovID)<BR>Asigna(Info.Cliente, Nulo)<BR>Asigna(Info.Proveedor, Nulo)<BR>Asigna(Info.Agente, Nulo)<BR>Asigna(Info.Personal, Nulo)<BR>Asigna(Info.Proyecto, Forma:Forma.Proyecto)<BR>Asigna(Info.UEN, Forma:Forma.UEN)<BR>Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.ID, Forma:Forma.ID)<BR>Asigna(Info.Reporte, Nulo)

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
Expresion=Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.Clave, <T>FRM<T>+Forma:Forma.ID)<BR>Asigna(Info.Nombre, Forma:Forma.Mov+<T> <T>+Forma:Forma.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(Forma:Forma.Estatus en (EstatusConcluido, EstatusCancelado), <T>EvaluacionCalificacionInfo<T>, <T>EvaluacionCalificacion<T>))

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
AntesExpresiones=Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.ID, Forma:Forma.ID)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.MovID, Forma:Forma.MovID)<BR>Asigna(Info.Fecha, Forma:Forma.FechaEmision)<BR>Asigna(Info.Estatus, Forma:Forma.Estatus)

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
EjecucionCondicion=ConDatos(Forma:Forma.Mov)
AntesExpresiones=Asigna(Info.Rama, <T>FRM<T>)<BR>Asigna(Info.Clave, Forma:Forma.Mov)

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
EjecucionCondicion=ConDatos(Forma:Forma.Concepto)
AntesExpresiones=Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.Concepto, Forma:Forma.Concepto)

[Ficha.Forma.Concepto]
Carpeta=Ficha
Clave=Forma.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Forma.Referencia]
Carpeta=Ficha
Clave=Forma.Referencia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Forma.Observaciones]
Carpeta=Ficha
Clave=Forma.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
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
Expresion=Asigna(Info.Forma, <T>Forma<T>)<BR>Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.Nombre, Forma:Forma.Mov)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin

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
AntesExpresiones=Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.ID, Forma:Forma.ID)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.MovID, Forma:Forma.MovID)
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
ActivoCondicion=Usuario.EnviarExcel y (Forma:Forma.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))

[Contacto.Forma.Contacto]
Carpeta=Contacto
Clave=Forma.Contacto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Contacto.Contacto.NombreCompleto]
Carpeta=Contacto
Clave=Contacto.NombreCompleto
Editar=S
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Contacto.Forma.Cliente]
Carpeta=Contacto
Clave=Forma.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Contacto.Cte.Nombre]
Carpeta=Contacto
Clave=Cte.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Contacto.Forma.Proveedor]
Carpeta=Contacto
Clave=Forma.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Contacto.Prov.Nombre]
Carpeta=Contacto
Clave=Prov.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Contacto.Forma.Personal]
Carpeta=Contacto
Clave=Forma.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Contacto.PersonalNombreCompleto]
Carpeta=Contacto
Clave=PersonalNombreCompleto
Editar=S
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Contacto.Forma.Mov]
Carpeta=Contacto
Clave=Forma.Mov
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Contacto.Forma.MovID]
Carpeta=Contacto
Clave=Forma.MovID
Editar=N
3D=S
Pegado=N
Tamano=10
ColorFondo=Plata
ColorFuente=Negro

[Contacto.Forma.Proceso]
Carpeta=Contacto
Clave=Forma.Proceso
Editar=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Tareas.Tarea.Estado]
Carpeta=Tareas
Clave=Tarea.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=S

[Tareas.Tarea.Vencimiento]
Carpeta=Tareas
Clave=Tarea.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=S

[Tareas.Tarea.Prioridad]
Carpeta=Tareas
Clave=Tarea.Prioridad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=N

[Tareas.Columnas]
Asunto=474
Estado=93
Vencimiento=105
Prioridad=50
0=387
1=36

[Acciones.TareasImprimir]
Nombre=TareasImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=Tareas
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.TareasSeleccionar]
Nombre=TareasSeleccionar
Boton=0
NombreDesplegar=Seleccionar &Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S
EspacioPrevio=S

[Acciones.TareasQuitar]
Nombre=TareasQuitar
Boton=0
NombreDesplegar=&Quitar Selección
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S

[Acciones.TareasPreliminar]
Nombre=TareasPreliminar
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=Tareas
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.TareasExcel]
Nombre=TareasExcel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=Tareas
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.TareasPersonalizar]
Nombre=TareasPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Tareas
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.TareasAbrir]
Nombre=TareasAbrir
Boton=0
NombreDesplegar=&Abrir
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+D
RefrescarDespues=S
Expresion=Asigna(Info.TareaID, Tarea:Tarea.ID)<BR>Asigna(Info.PuedeEditar, Forma:Forma.Estatus=EstatusPendiente)<BR>Forma(<T>TareaEditar<T>)
ConCondicion=S
EjecucionCondicion=ConDatos(Tarea:Tarea.ID)

[Tareas.Tarea.Tipo]
Carpeta=Tareas
Clave=Tarea.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.TareasCompletar]
Nombre=TareasCompletar
Boton=0
NombreDesplegar=Completar Selección
EnMenu=S
ConfirmarAntes=S
DialogoMensaje=EstaSeguro
TipoAccion=Expresion
Expresion=RegistrarSeleccionID(<T>Tareas<T>)<BR>EjecutarSQL(<T>spTareasCompletarSeleccion :nEstacion<T>, EstacionTrabajo) <BR>Forma.ActualizarVista
Activo=S
Visible=S

[Tareas.Tarea.Fase]
Carpeta=Tareas
Clave=Tarea.Fase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Tareas.Tarea.Orden]
Carpeta=Tareas
Clave=Tarea.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Contacto.FormaD.Nombre]
Carpeta=Contacto
Clave=FormaD.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Contacto.FormaD.Puesto]
Carpeta=Contacto
Clave=FormaD.Puesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Contacto.FormaD.Organizacion]
Carpeta=Contacto
Clave=FormaD.Organizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Contacto.FormaD.Telefonos]
Carpeta=Contacto
Clave=FormaD.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Contacto.FormaD.eMail]
Carpeta=Contacto
Clave=FormaD.eMail
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Observaciones.FormaD.Observaciones]
Carpeta=Observaciones
Clave=FormaD.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10x10
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.DetallePersonalizar]
Nombre=DetallePersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
Carpeta=Detalle
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S
EspacioPrevio=S

[Detalle.ContactoNombre]
Carpeta=Detalle
Clave=ContactoNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.TareaSiguiente]
Carpeta=Detalle
Clave=TareaSiguiente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.DetalleCancelar]
Nombre=DetalleCancelar
Boton=0
NombreDesplegar=&Cancelar
EnMenu=S
TipoAccion=Expresion
Activo=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+X
Expresion=Asigna(Info.Nombre, FormaD:ContactoNombre)<BR>Si<BR>  Dialogo(<T>EstaSeguroFormaCancelar<T>)<BR>Entonces<BR>  EjecutarSQL(<T>spFormaCancelarContacto :nID, :nRID<T>, Forma:Forma.ID, FormaD:FormaD.RID) <BR>  Forma.ActualizarVista(<T>Lista<T>) <BR>Fin
VisibleCondicion=Forma:Forma.Estatus=EstatusPendiente

[Acciones.DetalleOportunidad]
Nombre=DetalleOportunidad
Boton=0
UsaTeclaRapida=S
TeclaRapida=Ctrl+O
NombreDesplegar=Generar &Oportunidad...
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Expresion=Asigna(Info.Nombre, FormaD:ContactoNombre)<BR>Si<BR>  Dialogo(<T>EstaSeguroFormaOportunidad<T>)<BR>Entonces<BR>  ProcesarSQL(<T>spFormaGenerarOportunidad :nID, :nRID<T>, Forma:Forma.ID, FormaD:FormaD.RID)<BR>  Forma.ActualizarVista(<T>Lista<T>) <BR>Fin
VisibleCondicion=Forma:Forma.Estatus=EstatusPendiente

[Acciones.DetalleAbrir]
Nombre=DetalleAbrir
Boton=0
UsaTeclaRapida=S
TeclaRapida=Ctrl+D
NombreDesplegar=&Abrir
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
Expresion=Asigna(Info.PuedeEditar, Forma:Forma.Estatus noen (EstatusConcluido, EstatusCancelado))<BR>Asigna(Info.Clave, FormaD:FormaD.Contacto)<BR>Asigna(Info.Nombre, FormaD:ContactoNombre)<BR>Asigna(Info.Mov, Forma:Forma.Mov)<BR>Asigna(Info.MovID, Forma:Forma.MovID)<BR>Asigna(Info.Modulo, <T>FRM<T>)<BR>Asigna(Info.ID, FormaD:FormaD.RID)<BR>Asigna(Info.Reporte, Nulo)<BR>Caso FormaD:FormaD.ContactoTipo<BR>  Es <T>Prospecto<T> Entonces Si(Forma(<T>FormaProspecto<T>), Forma.ActualizarVista(<T>Lista<T>))<BR>Fin
EjecucionCondicion=ConDatos(FormaD:FormaD.Contacto)

[Detalle]
Estilo=Hoja
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=FormaD
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S
OtroOrden=S
Detalle=S
VistaMaestra=Forma
LlaveLocal=FormaD.ID
LlaveMaestra=Forma.ID
HojaSinBorde=S
HojaFondoGris=S
ListaEnCaptura=(Lista)
ListaOrden=(Lista)

[Detalle.VerCampo]
Carpeta=Detalle
Clave=VerCampo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
ColorFuente=Negro

[Detalle.VerValor]
Carpeta=Detalle
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro
Efectos=[Negritas]

[Ficha.Forma.FormaTipo]
Carpeta=Ficha
Clave=Forma.FormaTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.FormaTipoFormas.NombreCorto]
Carpeta=Ficha
Clave=FormaTipoFormas.NombreCorto
Editar=S
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Ficha.Forma.Aplica]
Carpeta=Ficha
Clave=Forma.Aplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFuente=Negro
ColorFondo=Blanco

[Ficha.Forma.AplicaClave]
Carpeta=Ficha
Clave=Forma.AplicaClave
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=40
ColorFuente=Negro
Editar=S
ColorFondo=Blanco

[Acciones.Forma]
Nombre=Forma
Boton=104
Menu=&Edición
NombreDesplegar=&Forma
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
NombreEnBoton=S
EspacioPrevio=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+1
ConCondicion=S
RefrescarDespues=S
GuardarAntes=S
Expresion=Si<BR>  Forma:Forma.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar)<BR>Entonces<BR>  iForma(Forma:Forma.FormaTipo, <T>Movimiento<T>, Forma:Forma.ID, Forma:Forma.Mov+<T> <T>+Forma:Forma.MovID)<BR>Sino<BR>  iConsulta(Forma:Forma.FormaTipo, <T>Movimiento<T>, Forma:Forma.ID, Forma:Forma.Mov+<T> <T>+Forma:Forma.MovID)<BR>Fin
EjecucionCondicion=ConDatos(Forma:Forma.FormaTipo)

[Ficha.Forma.eMail]
Carpeta=Ficha
Clave=Forma.eMail
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=66
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=S

[eMail.Forma.eMailDireccion]
Carpeta=eMail
Clave=Forma.eMailDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=68
ColorFondo=Blanco
ColorFuente=Negro

[eMail.Forma.eMailAsunto]
Carpeta=eMail
Clave=Forma.eMailAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=68x3
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Detalle
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
Sucursal=Forma
Forma=Afectar
Afectar=Eliminar
Eliminar=Cancelar
Cancelar=Tareas
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

[Ficha.ListaEnCaptura]
(Inicio)=Forma.Mov
Forma.Mov=Forma.MovID
Forma.MovID=Forma.Proyecto
Forma.Proyecto=Forma.UEN
Forma.UEN=Forma.FechaEmision
Forma.FechaEmision=Forma.Concepto
Forma.Concepto=Forma.Referencia
Forma.Referencia=Forma.FormaTipo
Forma.FormaTipo=FormaTipoFormas.NombreCorto
FormaTipoFormas.NombreCorto=Forma.Aplica
Forma.Aplica=Forma.AplicaClave
Forma.AplicaClave=Forma.Observaciones
Forma.Observaciones=Forma.eMail
Forma.eMail=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=PENDIENTE
PENDIENTE=SINCRO
SINCRO=EMAIL
EMAIL=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=AbrirImprimir
AbrirImprimir=AbrirPreliminar
AbrirPreliminar=AbrirExcel
AbrirExcel=AbrirCampos
AbrirCampos=(Fin)

[Detalle.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[Detalle.ListaOrden]
(Inicio)=GrupoOrden<TAB>(Acendente)
GrupoOrden<TAB>(Acendente)=FormaCampo.Orden<TAB>(Acendente)
FormaCampo.Orden<TAB>(Acendente)=(Fin)
