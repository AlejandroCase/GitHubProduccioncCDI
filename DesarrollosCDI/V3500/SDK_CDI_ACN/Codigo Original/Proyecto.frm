[Forma]
Clave=Proyecto
Nombre=<T>Proyecto<T>
Icono=0
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=262
PosicionInicialArriba=100
PosicionInicialAltura=581
PosicionInicialAncho=916
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
PosicionSeccion1=32
PosicionSeccion2=93
BarraAyuda=S
MovModulo=PROY
PosicionColumna3=50
BarraAyudaBold=S
MovEspecificos=Todos
PosicionColumna2=77
PosicionInicialAlturaCliente=673
PosicionSec1=199
PosicionSec2=605
ExpresionesAlMostrar=Asigna(Info.MovID, Nulo)<BR>Asigna(Info.Importe, 0.0)<BR>Asigna(Info.EsNuevo, Falso)
ExpresionesAlCerrar=Asigna(Info.EsNuevo, Falso)
PosicionCol2=731
PosicionCol3=426

MenuPrincipal=(Lista)
[Ficha]
Estilo=Ficha
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
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
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Pestana=S
PermiteEditar=S

[Ficha.Proyecto.Mov]
Carpeta=Ficha
Clave=Proyecto.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Proyecto.MovID]
Carpeta=Ficha
Clave=Proyecto.MovID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=11
ColorFondo=Plata
Pegado=S
IgnoraFlujo=S
ColorFuente=Negro

[Ficha.Proyecto.FechaEmision]
Carpeta=Ficha
Clave=Proyecto.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
EspacioPrevio=N
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro
Pegado=N

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=ProyectoA
Fuente={MS Sans Serif, 8, Negro, []}
IconosCampo=IndicadorIcono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
IconosConPaginas=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
ListaOrden=Proyecto.ID<TAB>(Decendente)
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroFechas=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=Proyecto.FechaEmision
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
FiltroFechasNormal=S
BusquedaRespetarUsuario=S
BusquedaRespetarControlesNum=S
FiltroSituacionTodo=S
BusquedaRespetarFiltros=S
MenuLocal=S
ListaAcciones=(Lista)
FiltroEstatus=S
FiltroUsuarios=S
FiltroMovs=S
FiltroFechasCancelacion=Proyecto.FechaCancelacion
FiltroSucursales=S
IconosNombre=ProyectoA:Proyecto.Mov+<T> <T>+ProyectoA:Proyecto.MovID

[(Carpeta Abrir).Columnas]
0=148
1=83

2=-2
3=-2
4=-2
5=-2
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
EjecucionCondicion=Si(General.MovConcurrente y ConDatos(Proyecto:Proyecto.ID) y (Proyecto:Proyecto.UltimoCambio<>SQL(<T>spMovInfoVerUltimoCambio :nID, :tModulo<T>, Proyecto:Proyecto.ID, <T>PROY<T>)), Dialogo(<T>MovConcurrente<T>) AbortarOperacion)<BR>Verdadero

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

[Detalle.Columnas]
Importe=106
Aplica=96
AplicaID=74
AplicaProntoPago=96
Personal=125
Cantidad=51
Porcentaje=51
Periodos=48
FechaInicio=73
FechaTermino=79
Observaciones=153
CantidadPendiente=53
Saldo=106
Estatus=94
Condicion=99
CtaDinero=83
Variable=95
Activo=35
FechaD=70
FechaA=77
Monto=86
Descripcion=106
Referencia=57
Concepto=104
Categoria=118
Departamento=122
Puesto=108
Grupo=101
Motivo=153
Calificacion=60
Articulo=124
Actual=99
Anterior=86
Nuevo=91
Diferencia=91
%Diferencia=64
DiferenciaPorcentaje=56
Proyecto=218
Serie=176
Tipo=86
Precio=104
FechaEmision=94
Asunto=251
Estado=90
Tiempo=40
Prioridad=47
Completada=75
Vencimiento=64
Usuario=66
Duracion=46
Orden=36
Numero=42
Predecedoras=69
TiempoUnidad=37
TieneDetalle=37
0=96
1=347
Actividad=53
Predecesora=65
DuracionUnidad=39
DuracionDias=50
Comienzo=82
Fin=79
Avance=43
Familia=154
EsFase=29
EstaLiberado=45
EsNuevo=64
Clave=59
Indicador=64
IndicadorNombre=49
RecursosAsignados=107

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
Totalizadores1=Conteo
Totalizadores2=Conteo(ProyectoD:ProyectoD.Actividad)
Totalizadores3=
Totalizadores=S
TotCarpetaRenglones=Detalle
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Conteo
CarpetaVisible=S
FichaAlineacionDerecha=S

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
Expresion=Asigna(Afectar.Modulo, <T>PROY<T>)<BR>Asigna(Afectar.ID, Proyecto:Proyecto.ID)<BR>Asigna(Afectar.Mov, Proyecto:Proyecto.Mov)<BR>Asigna(Afectar.MovID, Proyecto:Proyecto.MovID)<BR>Asigna(Afectar.GenerarMov, Nulo)<BR>Asigna(Afectar.FormaCaptura, <T>Proyecto<T>)<BR>Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.Mov, Proyecto:Proyecto.Mov)<BR>Asigna(Info.MovGenerar, Nulo)<BR>Asigna(Info.Estatus, SQL(<T>SELECT Estatus FROM Proyecto WHERE ID=:nID<T>, Proyecto:Proyecto.ID))<BR><BR>Si<BR> Info.Estatus=EstatusPendiente<BR>Entonces<BR>  Si<BR>    Precaucion(<T>¿ Esta Seguro que Desea Reestructurar el Movimiento <T>+Afectar.Mov+<T> <T>+Afectar.MovID+<T> ?<T>, BotonSi, BotonNo)=BotonSi<BR>  Entonces<BR>    Generar(<T>PROY<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.Mov, Afectar.FormaCaptura)<BR>  Fin<BR>Sino<BR>  Si<BR>    Info.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)<BR>  Entonces<BR>    ProyectoRecalcular(Proyecto:Proyecto.ID)<BR>    Afectar(<T>PROY<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>  Fin<BR>Fin
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, Proyecto:Proyecto.Usuario) y<BR>(Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador, EstatusPendiente)) y<BR>PuedeAvanzarEstatus(<T>PROY<T>, Proyecto:Proyecto.Mov, Proyecto:Proyecto.Estatus, FormaSituacion)
EjecucionCondicion=ConDatos(Proyecto:Proyecto.Mov)
AntesExpresiones=Si<BR>  General.CamposExtras=<T>Campos Extras<T> y (Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)) y SQL(<T>SELECT CEAntesAfectar FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMov AND CE=1<T>, <T>PROY<T>, Proyecto:Proyecto.Mov)<BR>Entonces<BR>  Si(no CamposExtrasMovimiento(<T>PROY<T>, Proyecto:Proyecto.Mov, Proyecto:Proyecto.ID, Verdadero, Proyecto:Proyecto.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)), AbortarOperacion)<BR>FIn

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
ActivoCondicion=(Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, Proyecto:Proyecto.Usuario)

[Acciones.RepPantalla]
Nombre=RepPantalla
Boton=6
Menu=&Archivo
NombreDesplegar=&Presentacion preliminar
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
ListaParametros1=Proyecto:Proyecto.ID
Visible=S
UsaTeclaRapida=S
TeclaRapida=Alt+F11
Expresion=ReportePantalla(ReporteMovPantalla(<T>PROY<T>, Proyecto:Proyecto.Mov, Proyecto:Proyecto.Estatus), Proyecto:Proyecto.ID)
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
ListaParametros1=Proyecto:Proyecto.ID
Visible=S
EspacioPrevio=S
GuardarAntes=S
Expresion=ReporteImpresora(ReporteMovImpresora(<T>PROY<T>, Proyecto:Proyecto.Mov, Proyecto:Proyecto.Estatus), Proyecto:Proyecto.ID)
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
Expresion=Cancelar(<T>PROY<T>, Proyecto:Proyecto.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>PROY<T>)
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs, Proyecto:Proyecto.Usuario) y ConDatos(Proyecto:Proyecto.ID) y ConDatos(Proyecto:Proyecto.MovID) y<BR>(Proyecto:Proyecto.Estatus en (EstatusSincro, EstatusPendiente, EstatusVigente))
AntesExpresiones=Asigna( Afectar.Mov, Proyecto:Proyecto.Mov ) <BR>Asigna( Afectar.MovID, Proyecto:Proyecto.MovID )

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
Expresion=Verificar(<T>PROY<T>, Proyecto:Proyecto.ID,Proyecto:Proyecto.Mov,Proyecto:Proyecto.MovID)
ActivoCondicion=Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)
EjecucionCondicion=ConDatos(Proyecto:Proyecto.Mov)

[Aplica.Proyecto.MovAplica]
Carpeta=Aplica
Clave=Proyecto.MovAplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17

[Aplica.Proyecto.MovAplicaID]
Carpeta=Aplica
Clave=Proyecto.MovAplicaID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10

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
ActivoCondicion=ConDatos(Proyecto:Proyecto.MovID)
AntesExpresiones=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Mov, Proyecto:Proyecto.Mov)<BR>Asigna(Info.MovID, Proyecto:Proyecto.MovID)

[Aplica.Proyecto.Proveedor]
Carpeta=Aplica
Clave=Proyecto.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17

[Aplica.Prov.Nombre]
Carpeta=Aplica
Clave=Prov.Nombre
Editar=S
3D=S
Tamano=50
ColorFondo=Plata

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
ActivoCondicion=(ConfigModulo(<T>PROY<T>,<T>Situaciones<T>)=<T>Si<T>) y Usuario.ModificarSituacion y<BR>PuedeAvanzarSituacion(<T>PROY<T>, Proyecto:Proyecto.Mov, Proyecto:Proyecto.Estatus, FormaSituacion)
AntesExpresiones=Si(Vacio(Proyecto:Proyecto.ID),GuardarCambios)

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
ActivoCondicion=ConfigModulo(<T>PROY<T>,<T>Tiempos<T>)=<T>Si<T>
EjecucionCondicion=ConDatos(Proyecto:Proyecto.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Mov, Proyecto:Proyecto.Mov)<BR>Asigna(Info.MovID, Proyecto:Proyecto.MovID)

[(Carpeta Abrir).Proyecto.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=Proyecto.FechaEmision
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
ActivoCondicion=ConDatos(ProyectoA:Proyecto.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.ID, ProyectoA:Proyecto.ID)
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

[Acciones.ReasignarUsuario]
Nombre=ReasignarUsuario
Boton=0
Menu=&Archivo
NombreDesplegar=Reasignar &Usuario...
EnMenu=S
TipoAccion=Formas
ClaveAccion=ReasignarUsuario
Antes=S
ActivoCondicion=no FormaBloqueada
AntesExpresiones=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Usuario, Proyecto:Proyecto.Usuario)
VisibleCondicion=Usuario.ModificarUsuario y ConDatos(Proyecto:Proyecto.ID)

[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F4
NombreDesplegar=Ane&xos
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=AnexoMov
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
EspacioPrevio=S
AntesExpresiones=Asigna(Info.Rama, <T>PROY<T>)<BR>Asigna(Info.Fecha, Proyecto:Proyecto.FechaEmision)<BR>Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (Proyecto:Proyecto.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, Proyecto:Proyecto.Mov+<T> <T>+Proyecto:Proyecto.MovID)

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
ActivoCondicion=ConDatos(Proyecto:Proyecto.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.ID, Proyecto:Proyecto.ID)

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
Activo=S
Visible=S
Expresion=CopiarMovimiento(<T>PROY<T>, Proyecto:Proyecto.ID, <T>Proyecto<T>)

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
ActivoCondicion=Usuario.ModificarSucursalDestino y (Proyecto:Proyecto.Estatus=EstatusSinAfectar) y (no FormaBloqueada)
Antes=S
AntesExpresiones=Si(Vacio(Proyecto:Proyecto.ID),GuardarCambios)
VisibleCondicion=Usuario.ModificarSucursalDestino

[(Carpeta Totalizadores).Conteo]
Carpeta=(Carpeta Totalizadores)
Clave=Conteo
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=5
ColorFondo=Plata
ColorFuente=Negro

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

[Ficha.Proyecto.UEN]
Carpeta=Ficha
Clave=Proyecto.UEN
Editar=S
3D=S
Pegado=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=S

[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=0
Menu=&Archivo
NombreDesplegar=E&valuaciones
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.Mov, Proyecto:Proyecto.Mov)<BR>Asigna(Info.Clave, <T>PROY<T>+Proyecto:Proyecto.ID)<BR>Asigna(Info.Nombre, Proyecto:Proyecto.Mov+<T> <T>+Proyecto:Proyecto.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(Proyecto:Proyecto.Estatus en (EstatusConcluido, EstatusCancelado), <T>EvaluacionCalificacionInfo<T>, <T>EvaluacionCalificacion<T>))

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
AntesExpresiones=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Mov, Proyecto:Proyecto.Mov)<BR>Asigna(Info.MovID, Proyecto:Proyecto.MovID)<BR>Asigna(Info.Fecha, Proyecto:Proyecto.FechaEmision)<BR>Asigna(Info.Estatus, Proyecto:Proyecto.Estatus)

[Acciones.Politica]
Nombre=Politica
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Shift+Ctrl+O
NombreDesplegar=P&olítica Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=PoliticaInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Proyecto:Proyecto.Mov)
AntesExpresiones=Asigna(Info.Rama, <T>PROY<T>)<BR>Asigna(Info.Clave, Proyecto:Proyecto.Mov)

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
EjecucionCondicion=ConDatos(Proyecto:Proyecto.Concepto)
AntesExpresiones=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.Concepto, Proyecto:Proyecto.Concepto)

[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F11
NombreDesplegar=Plantillas &Office
EnMenu=S
TipoAccion=Expresion
Expresion=Asigna(Info.Forma, <T>PROY<T>)<BR>Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.Mov, Proyecto:Proyecto.Mov)<BR>Asigna(Info.Nombre, Proyecto:Proyecto.Mov)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin
Activo=S
Visible=S

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
Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasMovimiento(<T>PROY<T>, Proyecto:Proyecto.Mov, Proyecto:Proyecto.ID, Falso, Proyecto:Proyecto.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))<BR>Sino<BR>  Asigna(Info.Aplica, <T>Movimiento<T>)<BR>  Asigna(Info.Clave, <T>PROY<T>+Proyecto:Proyecto.ID)<BR>  Asigna(Info.Nombre, Proyecto:Proyecto.Mov+<T> <T>+Proyecto:Proyecto.MovID)<BR>  Asigna(Info.Modulo, <T>PROY<T>)<BR>  Asigna(Info.Mov, Proyecto:Proyecto.Mov)<BR>  Asigna(Info.Categoria, Nulo)<BR>  Asigna(Info.Grupo, Nulo)<BR>  Asigna(Info.Familia, Nulo)<BR>  Asigna(Info.Departamento, Nulo)<BR>  Asigna(Info.Puesto, Nulo)<BR>  Asigna(Info.SIC, Nulo)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaExtraVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si<BR>    ConDatos(Info.FormaTipo)<BR>  Entonces<BR>    Si <BR>      Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)<BR>    Entonces<BR>      iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Sino<BR>      iConsulta(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Fin<BR>  Sino<BR>    Informacion(<T>No Tiene Definida Ninguna Forma<T>)<BR>  Fin<BR>Fin

[Acciones.FormasAnexas]
Nombre=FormasAnexas
Boton=34
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F10
NombreDesplegar=Formas Anexas
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovFormaAnexo
Antes=S
DespuesGuardar=S
Visible=S
Activo=S
AntesExpresiones=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Mov, Proyecto:Proyecto.Mov)<BR>Asigna(Info.MovID, Proyecto:Proyecto.MovID)

[Observaciones.ProyectoD.Observaciones]
Carpeta=Observaciones
Clave=ProyectoD.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20x10
ColorFondo=Blanco
ColorFuente=Negro

[Observaciones.Columnas]
Observaciones=604

[Acuerdos.ProyectoAcuerdo.Asunto]
Carpeta=Acuerdos
Clave=ProyectoAcuerdo.Asunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Acuerdos.ProyectoAcuerdo.Tipo]
Carpeta=Acuerdos
Clave=ProyectoAcuerdo.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Acuerdos.Columnas]
0=49
1=570

[Cliente]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cliente
Clave=Cliente
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
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
ListaEnCaptura=(Lista)
CondicionVisible=Proyecto:Proyecto.ContactoTipo=<T>Cliente<T>

[Cliente.Proyecto.Cliente]
Carpeta=Cliente
Clave=Proyecto.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Cliente.Cte.Nombre]
Carpeta=Cliente
Clave=Cte.Nombre
Editar=S
ValidaNombre=N
3D=S
Tamano=75
ColorFondo=Plata
ColorFuente=Negro

[Acciones.Info]
Nombre=Info
Boton=34
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+I
NombreDesplegar=Información
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S

[Proveedor]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Proveedor
Clave=Proveedor
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
PermiteEditar=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ListaEnCaptura=(Lista)
CondicionVisible=Proyecto:Proyecto.ContactoTipo=<T>Proveedor<T>

[Proveedor.Proyecto.Proveedor]
Carpeta=Proveedor
Clave=Proyecto.Proveedor
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFuente=Negro
ColorFondo=Blanco

[Proveedor.Prov.Nombre]
Carpeta=Proveedor
Clave=Prov.Nombre
Editar=S
ValidaNombre=N
3D=S
Tamano=75
ColorFondo=Plata
ColorFuente=Negro

[Personal]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Personal
Clave=Personal
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
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
ListaEnCaptura=(Lista)
CondicionVisible=Proyecto:Proyecto.ContactoTipo=<T>Personal<T>

[Personal.Proyecto.Personal]
Carpeta=Personal
Clave=Proyecto.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Personal.PersonalNombre]
Carpeta=Personal
Clave=PersonalNombre
Editar=S
ValidaNombre=N
3D=S
Tamano=75
ColorFondo=Plata
ColorFuente=Negro

[Agente]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Agente
Clave=Agente
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
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
ListaEnCaptura=(Lista)
CondicionVisible=Proyecto:Proyecto.ContactoTipo=<T>Agente<T>

[Agente.Proyecto.Agente]
Carpeta=Agente
Clave=Proyecto.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Agente.Agente.Nombre]
Carpeta=Agente
Clave=Agente.Nombre
Editar=S
ValidaNombre=N
3D=S
Tamano=75
ColorFondo=Plata
ColorFuente=Negro

[Proyecto.Proyecto.Proyecto]
Carpeta=Proyecto
Clave=Proyecto.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Planes.ProyectoPlan.Asunto]
Carpeta=Planes
Clave=ProyectoPlan.Asunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Planes.Columnas]
0=49
1=501

[Planes.ProyectoPlan.Prioridad]
Carpeta=Planes
Clave=ProyectoPlan.Prioridad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Planes.ProyectoPlan.Vencimiento]
Carpeta=Planes
Clave=ProyectoPlan.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Prospecto]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Prospecto
Clave=Prospecto
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CondicionVisible=Proyecto:Proyecto.ContactoTipo=<T>Prospecto<T>

[Prospecto.Proyecto.Prospecto]
Carpeta=Prospecto
Clave=Proyecto.Prospecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Proyecto.Comienzo]
Carpeta=Ficha
Clave=Proyecto.Comienzo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco
ColorFuente=Negro
Efectos=[Negritas]

[Ficha.Proyecto.Fin]
Carpeta=Ficha
Clave=Proyecto.Fin
ValidaNombre=S
3D=S
Tamano=20
ColorFuente=Negro
Pegado=S
Editar=S
ColorFondo=Blanco
Efectos=[Negritas]

[Ficha.Proyecto.Proyecto]
Carpeta=Ficha
Clave=Proyecto.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=22
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S

[Acciones.Recursos]
Nombre=Recursos
Boton=80
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+R
NombreDesplegar=&Recursos Asignados
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=ProyectoRecurso
Antes=S
Visible=S
DespuesGuardar=S
EspacioPrevio=S
ActivoCondicion=Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador, EstatusPendiente)
AntesExpresiones=Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Proyecto, Proyecto:Proyecto.Proyecto)<BR>Asigna(Info.Estatus, Proyecto:Proyecto.Estatus)

[(Carpeta Abrir).Proyecto.Proyecto]
Carpeta=(Carpeta Abrir)
Clave=Proyecto.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).Proyecto.Comienzo]
Carpeta=(Carpeta Abrir)
Clave=Proyecto.Comienzo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).Proyecto.Fin]
Carpeta=(Carpeta Abrir)
Clave=Proyecto.Fin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Proyecto.Supervisor]
Carpeta=Ficha
Clave=Proyecto.Supervisor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Ficha.Recurso.Nombre]
Carpeta=Ficha
Clave=Recurso.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro
ValidaNombre=N
Pegado=N

[Ficha.Proyecto.Moneda]
Carpeta=Ficha
Clave=Proyecto.Moneda
Editar=S
3D=S
Tamano=9
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S
ValidaNombre=S

[Ficha.Proyecto.TipoCambio]
Carpeta=Ficha
Clave=Proyecto.TipoCambio
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco
ColorFuente=Negro

[OtrosDatos.Proyecto.Prioridad]
Carpeta=OtrosDatos
Clave=Proyecto.Prioridad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[OtrosDatos.Proyecto.DiasHabiles]
Carpeta=OtrosDatos
Clave=Proyecto.DiasHabiles
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S

[OtrosDatos.Proyecto.HorasDia]
Carpeta=OtrosDatos
Clave=Proyecto.HorasDia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[OtrosDatos.Proyecto.MontoEstimado]
Carpeta=OtrosDatos
Clave=Proyecto.MontoEstimado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[OtrosDatos.Proyecto.FechaEstimada]
Carpeta=OtrosDatos
Clave=Proyecto.FechaEstimada
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=N

[OtrosDatos.Proyecto.Probabilidad]
Carpeta=OtrosDatos
Clave=Proyecto.Probabilidad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Actualizar]
Nombre=Actualizar
Boton=92
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=F5
NombreDesplegar=&Actualizar
GuardarAntes=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S
RefrescarDespues=S
Expresion=ProyectoRecalcular(Proyecto:Proyecto.ID)<BR>EjecutarSQL(<T>spProyectoDLiberar :nID<T>, Proyecto:Proyecto.ID)
ActivoCondicion=Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador, EstatusPendiente)

[Prospecto.Prospecto.Nombre]
Carpeta=Prospecto
Clave=Prospecto.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Plata
ColorFuente=Negro

[OtrosDatos.Proyecto.ContactoTipo]
Carpeta=OtrosDatos
Clave=Proyecto.ContactoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

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
FiltroGeneral=FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaExtraVisibleMovimiento(<T>PROY<T>, <T>{Proyecto:Proyecto.Mov}<T>)) AND FormaExtraValor.Aplica=<T>Movimiento<T> AND FormaExtraValor.AplicaClave=<T>PROY{Proyecto:Proyecto.ID}<T>
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
VerCampo=350
VerValor=350

[Detalle.Asunto]
Carpeta=Detalle
Clave=Asunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.ProyectoDias]
Nombre=ProyectoDias
Boton=53
Menu=&Edición
NombreDesplegar=Días del Proyecto
GuardarAntes=S
RefrescarDespues=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Antes=S
DespuesGuardar=S
Visible=S
Expresion=Forma(<T>ProyectoDia<T>)<BR>ProyectoRecalcular(Proyecto:Proyecto.ID)
ActivoCondicion=Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador, EstatusPendiente)
AntesExpresiones=Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Proyecto, Proyecto:Proyecto.Proyecto)<BR>Asigna(Info.FechaD, Nulo)<BR>Asigna(Info.FechaA, Nulo)

[Actividades.Columnas]
0=97
1=234

[Detalle.ProyectoD.Tipo]
Carpeta=Detalle
Clave=ProyectoD.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.ActDetalle]
Nombre=ActDetalle
Boton=0
NombreDesplegar=&Detalles
EnMenu=S
TipoAccion=Formas
ClaveAccion=ActDetalle
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(ProyectoD:ProyectoD.ID)
AntesExpresiones=Asigna(Info.ID, ProyectoD:ProyectoD.ID)

[Detalle.ProyectoD.Prioridad]
Carpeta=Detalle
Clave=ProyectoD.Prioridad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Categoria]
Carpeta=Detalle
Clave=ProyectoD.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Grupo]
Carpeta=Detalle
Clave=ProyectoD.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Familia]
Carpeta=Detalle
Clave=ProyectoD.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Comentarios]
Nombre=Comentarios
Boton=0
NombreDesplegar=&Comentarios
EnMenu=S
TipoAccion=Formas
ClaveAccion=ActComentarios
Activo=S
Antes=S
Visible=S
ConCondicion=S
EjecucionCondicion=ConDatos(ProyectoD:ProyectoD.Actividad)
AntesExpresiones=Asigna(Info.ID, ProyectoD:ProyectoD.ID)<BR>Asigna(Info.Actividad, ProyectoD:ProyectoD.Actividad)<BR>Asigna(Info.Asunto, ProyectoD:ProyectoD.Asunto)

[Acciones.RecursosDetalle]
Nombre=RecursosDetalle
Boton=0
NombreDesplegar=&Recursos
EnMenu=S
TipoAccion=Formas
ClaveAccion=ActRecurso
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(ProyectoD:ProyectoD.Actividad)
AntesExpresiones=Asigna(Info.ID, ProyectoD:ProyectoD.ID)<BR>Asigna(Info.Actividad, ProyectoD:ProyectoD.Actividad)<BR>Asigna(Info.Asunto, ProyectoD:ProyectoD.Asunto)

[Acciones.ActDetalle1]
Nombre=ActDetalle1
Boton=0
EsDefault=S
NombreDesplegar=&Detalle
EnMenu=S
TipoAccion=Formas
ClaveAccion=ActDetalle
Visible=S
Antes=S
RefrescarDespues=S
GuardarAntes=S
DespuesGuardar=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+D
ActivoCondicion=Proyecto:Proyecto.Estatus = EstatusPendiente
AntesExpresiones=Asigna(Info.ID, Act:ProyectoD.ID)

[Acciones.ActRecursoD]
Nombre=ActRecursoD
Boton=0
NombreDesplegar=&Recursos de la Actividad
EnMenu=S
TipoAccion=Formas
ClaveAccion=ActRecurso
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.ID, Act:ProyectoD.ID)<BR>Asigna(Info.Actividad, Act:ProyectoD.Asunto)
Visible=S

[Acciones.Plantilla]
Nombre=Plantilla
Boton=11
NombreEnBoton=S
Menu=&Edición
NombreDesplegar=Usar &Plantilla...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
GuardarAntes=S
EspacioPrevio=S
Expresion=GuardarCambios<BR>Asigna(Info.PlantillaProyecto, Proyecto:MovTipo.PlantillaProyecto)<BR>Asigna(Info.Actividad, Nulo)<BR>Asigna(Info.Reemplazar, <T>Si<T>)<BR>Si<BR>  Si(Proyecto:MovTipo.PlantillaProyectoFija, Verdadero, Forma(<T>EspecificarPlantillaProyecto<T>))<BR>Entonces<BR>  Si<BR>    Dialogo(<T>EstaSeguro<T>)<BR>  Entonces<BR>    Si<BR>      Vacio(Info.Actividad)<BR>    Entonces<BR>      EjecutarSQL(<T>spProyectoNuevo :nEstacion, :nID, :tProceso, :nSucursal, @Reemplazar=:tReemplazar<T>,  EstacionTrabajo, Proyecto:Proyecto.ID, Info.PlantillaProyecto, Sucursal, Info.Reemplazar)<BR>    Sino<BR>      EjecutarSQL(<T>spProyectoNuevo :nEstacion, :nID, :tProceso, :nSucursal, @EsSubPlantilla=1, @Actividad=:tActividad, @Orden=:tOrden, @Reemplazar=:tReemplazar<T>,  EstacionTrabajo , Proyecto:Proyecto.ID, Info.PlantillaProyecto, Sucursal, Info.Actividad, EstructuraEnOrden(Info.Actividad, 5), Info.Reemplazar)<BR>    Fin<BR>    ProyectoRecalcular(Proyecto:Proyecto.ID)<BR>    Forma.ActualizarForma<BR>  Fin<BR>Fin
ActivoCondicion=Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)

[Detalle]
Estilo=Hoja
Clave=Detalle
OtroOrden=S
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=ProyectoD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Proyecto
LlaveLocal=ProyectoD.ID
LlaveMaestra=Proyecto.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaFondoGrisAuto=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
ListaOrden=ProyectoD.Orden<TAB>(Acendente)
MenuLocal=S
ListaAcciones=(Lista)
CarpetaVisible=S
HojaAjustarColumnas=S
ValidarCampos=S
ListaCamposAValidar=ProyectoD.RecursosAsignados
HojaColoresPorCampo=S
HojaCampoColor=IndicadorColor
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Actividades

[Detalle.ProyectoD.Actividad]
Carpeta=Detalle
Clave=ProyectoD.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Predecesora]
Carpeta=Detalle
Clave=ProyectoD.Predecesora
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Asunto]
Carpeta=Detalle
Clave=ProyectoD.Asunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Duracion]
Carpeta=Detalle
Clave=ProyectoD.Duracion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.DuracionUnidad]
Carpeta=Detalle
Clave=ProyectoD.DuracionUnidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Comienzo]
Carpeta=Detalle
Clave=ProyectoD.Comienzo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Fin]
Carpeta=Detalle
Clave=ProyectoD.Fin
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Proyecto.Avance]
Carpeta=Ficha
Clave=Proyecto.Avance
Editar=N
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
LineaNueva=N
Pegado=S

[(Carpeta Abrir).Proyecto.Avance]
Carpeta=(Carpeta Abrir)
Clave=Proyecto.Avance
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[DetalleFicha]
Estilo=Ficha
Clave=DetalleFicha
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=ProyectoD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Proyecto
LlaveLocal=ProyectoD.ID
LlaveMaestra=Proyecto.ID
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
CarpetaVisible=S

[DetalleFicha.ProyectoD.Tipo]
Carpeta=DetalleFicha
Clave=ProyectoD.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[DetalleFicha.ProyectoD.Categoria]
Carpeta=DetalleFicha
Clave=ProyectoD.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[DetalleFicha.ProyectoD.Grupo]
Carpeta=DetalleFicha
Clave=ProyectoD.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[DetalleFicha.ProyectoD.Familia]
Carpeta=DetalleFicha
Clave=ProyectoD.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Edmond.ProyectoD.Duracion]
Carpeta=Edmond
Clave=ProyectoD.Duracion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20x20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.ComentariosD]
Nombre=ComentariosD
Boton=0
NombreDesplegar=&Comentarios
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=ProyectoDComentarios
Activo=S
Visible=S
Antes=S
DespuesGuardar=S
AntesExpresiones=Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Actividad, ProyectoD:ProyectoD.Actividad)<BR>Asigna(Info.Proyecto, Proyecto:Proyecto.Proyecto)<BR>Asigna(Info.Estatus, Proyecto:Proyecto.Estatus)

[Acciones.RecursoD]
Nombre=RecursoD
Boton=0
NombreDesplegar=&Recursos
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=ProyectoDRecurso
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
AntesExpresiones=Asigna(Info.ID, ProyectoD:ProyectoD.ID)<BR> Asigna(Info.Actividad, ProyectoD:ProyectoD.Actividad)

[Ficha.Proyecto.ContactoTipo]
Carpeta=Ficha
Clave=Proyecto.ContactoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.EsFase]
Carpeta=Detalle
Clave=ProyectoD.EsFase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Avance]
Carpeta=Detalle
Clave=ProyectoD.Avance
Editar=S
EditarConBloqueo=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.Estado]
Carpeta=Detalle
Clave=ProyectoD.Estado
Editar=S
EditarConBloqueo=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Proyecto.ConsiderarAvanceActual]
Carpeta=Ficha
Clave=Proyecto.ConsiderarAvanceActual
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=25

[Acciones.FormaAnexa]
Nombre=FormaAnexa
Boton=47
NombreEnBoton=S
Menu=&Edición
NombreDesplegar=&Datos Adicionales
GuardarAntes=S
RefrescarDespues=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Expresion=Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Forma(Proyecto:MovTipo.FormaAnexaOmision)
ActivoCondicion=ConDatos(Proyecto:MovTipo.FormaAnexaOmision)
Visible=S

[Proyecto]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Proyecto
Clave=Proyecto
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
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
ListaEnCaptura=(Lista)
CondicionVisible=Proyecto:Proyecto.ContactoTipo = <T>Proyecto<T>

[Proyecto.Proy.Descripcion]
Carpeta=Proyecto
Clave=Proy.Descripcion
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=75
ColorFondo=Plata
ColorFuente=Negro
Pegado=N

[Riesgo]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Riesgo
Clave=Riesgo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
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
ListaEnCaptura=(Lista)
CondicionVisible=Proyecto:Proyecto.ContactoTipo = <T>Riesgo<T>

[Riesgo.Proyecto.Riesgo]
Carpeta=Riesgo
Clave=Proyecto.Riesgo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.EstaLiberado]
Carpeta=Detalle
Clave=ProyectoD.EstaLiberado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Proyecto.Proyecto.ProyectoRama]
Carpeta=Proyecto
Clave=Proyecto.ProyectoRama
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Proyecto.ProyectoReestructurar]
Carpeta=Ficha
Clave=Proyecto.ProyectoReestructurar
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.EsNuevo]
Carpeta=Detalle
Clave=ProyectoD.EsNuevo
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Gantt]
Nombre=Gantt
Boton=88
NombreEnBoton=S
Menu=&Ver
NombreDesplegar=&Gantt
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S
Expresion=PlugIn(<T>Gantt<T>, Proyecto:Proyecto.ID)

[Comentarios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Comentarios
Clave=Comentarios
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
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
CarpetaVisible=S
ListaEnCaptura=Proyecto.Comentarios
AlinearTodaCarpeta=S

[Comentarios.Proyecto.Comentarios]
Carpeta=Comentarios
Clave=Proyecto.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ConScroll=S
Tamano=100x10
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.ContactoTipoClave]
Carpeta=Ficha
Clave=ContactoTipoClave
Editar=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Ficha.ContactoTipoNombre]
Carpeta=Ficha
Clave=ContactoTipoNombre
Editar=S
3D=S
Pegado=N
Tamano=40
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[OtrosDatos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Otros Datos
Clave=OtrosDatos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Proyecto
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

[OtrosDatos.Proyecto.Referencia]
Carpeta=OtrosDatos
Clave=Proyecto.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=54
ColorFondo=Blanco
ColorFuente=Negro

[OtrosDatos.Proyecto.Concepto]
Carpeta=OtrosDatos
Clave=Proyecto.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=54
ColorFondo=Blanco
ColorFuente=Negro

[OtrosDatos.Proyecto.Observaciones]
Carpeta=OtrosDatos
Clave=Proyecto.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=110
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Contactos]
Nombre=Contactos
Boton=74
Menu=&Edición
NombreDesplegar=&Contactos del Movimiento
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovCto
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
EspacioPrevio=S
AntesExpresiones=Asigna(Info.Modulo, <T>PROY<T>)<BR>Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Mov, Proyecto:Proyecto.Mov)<BR>Asigna(Info.MovID, Proyecto:Proyecto.MovID)

[Ficha.Proyecto.FechaRequerida]
Carpeta=Ficha
Clave=Proyecto.FechaRequerida
Editar=S
3D=S
Tamano=27
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=S
Pegado=S

[Riesgo.aroRiesgo.Nombre]
Carpeta=Riesgo
Clave=aroRiesgo.Nombre
Editar=S
3D=S
Pegado=N
Tamano=75
ColorFondo=Plata
ColorFuente=Negro

[Detalle.ProyectoD.Clave]
Carpeta=Detalle
Clave=ProyectoD.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Riesgo.Proyecto.UEN]
Carpeta=Riesgo
Clave=Proyecto.UEN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Riesgo.UEN.Nombre]
Carpeta=Riesgo
Clave=UEN.Nombre
Editar=S
3D=S
Tamano=75
ColorFondo=Plata
ColorFuente=Negro

[Ficha.Recurso.Rol]
Carpeta=Ficha
Clave=Recurso.Rol
Editar=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[OtrosDatos.Proyecto.CalculoInverso]
Carpeta=OtrosDatos
Clave=Proyecto.CalculoInverso
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.AnexosDetalle]
Nombre=AnexosDetalle
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+F4
NombreDesplegar=Anexos &Detalle
EnMenu=S
TipoAccion=Formas
ClaveAccion=AnexoMovD
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Proyecto:Proyecto.ID) y ConDatos(ProyectoD:ProyectoD.Actividad)
EjecucionMensaje=Si(Vacio(Proyecto:Proyecto.ID), <T>Es Necesario Guardar el Movimiento Antes de Ejecutar<T>)
EjecucionConError=S
Antes=S
AntesExpresiones=Asigna(Info.Rama, <T>PROY<T>)<BR>Asigna(Info.Fecha, Proyecto:Proyecto.FechaEmision)<BR>Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Proyecto:Proyecto.Estatus noen (EstatusCancelado, EstatusConcluido)))<BR>Asigna(Info.Cuenta, ProyectoD:ProyectoD.Actividad)<BR>Asigna(Info.Descripcion, ProyectoD:ProyectoD.Asunto)
Visible=S

[OtrosDatos.Proyecto.FechaRevision]
Carpeta=OtrosDatos
Clave=Proyecto.FechaRevision
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=S

[Acciones.Resultados]
Nombre=Resultados
Boton=64
Menu=&Ver
NombreDesplegar=&Resultados
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=ProyResultado
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Proyecto:Proyecto.Proyecto)
Antes=S
AntesExpresiones=Asigna(Info.Proyecto, Proyecto:Proyecto.Proyecto)
Visible=S

[Acciones.Consecutivo]
Nombre=Consecutivo
Boton=0
Menu=&Archivo
NombreDesplegar=A&signar Consecutivo
GuardarAntes=S
RefrescarDespues=S
EnMenu=S
TipoAccion=Expresion
Expresion=ProcesarSQL(<T>spAfectar :tModulo, :nID, :tAccion<T>, <T>PROY<T>, Proyecto:Proyecto.ID, <T>CONSECUTIVO<T>)
ActivoCondicion=Vacio(Proyecto:Proyecto.MovID)
VisibleCondicion=Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)

[Ficha.Proyecto.Descripcion]
Carpeta=Ficha
Clave=Proyecto.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=110
ColorFondo=Blanco
ColorFuente=Negro

[DetalleFicha.ProyectoD.ComienzoEsp]
Carpeta=DetalleFicha
Clave=ProyectoD.ComienzoEsp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProyectoD.RecursosAsignados]
Carpeta=Detalle
Clave=ProyectoD.RecursosAsignados
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.MovProy]
Nombre=MovProy
Boton=25
Menu=&Archivo
NombreDesplegar=Generar &Movimientos...
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovProy
Antes=S
Visible=S
ActivoCondicion=Usuario.ProyMov y (Proyecto:Proyecto.Estatus en (EstatusPendiente, EstatusConcluido))
AntesExpresiones=Asigna(Info.Proyecto, Proyecto:Proyecto.Proyecto)<BR>Asigna(Info.Actividad, ProyectoD:ProyectoD.Actividad)<BR>Asigna(Info.Nombre, Proyecto:Proyecto.Mov+<T> <T>+Proyecto:Proyecto.MovID)

[Soporte]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Movimientos
Clave=Soporte
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=SoporteA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
Detalle=S
VistaMaestra=Proyecto
LlaveLocal=Soporte.Empresa
LlaveMaestra=Proyecto.Empresa
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Automático
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroUsuarios=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacionTodo=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroUsuarioDefault=(Todos)
FiltroFechasCampo=Soporte.FechaEmision
FiltroFechasDefault=(Todo)
FiltroFechasNormal=S
FiltroFechasCancelacion=Soporte.FechaCancelacion
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
MenuLocal=S
ListaAcciones=(Lista)
FiltroAplicaEn=Soporte.Estado
FiltroAutoCampo=(Validaciones Memoria)
FiltroAutoValidar=SoporteEstado
FiltroTodo=S
FiltroEstilo=Directorio
FiltroMovsTodos=S
IconosNombre=Proyecto:Proyecto.Mov+<T> <T>+Proyecto:Proyecto.MovID
FiltroGeneral=dbo.fnProyectoOriginal(Soporte.Proyecto)=dbo.fnProyectoOriginal(<T>{Proyecto:Proyecto.Proyecto}<T>) AND Soporte.Empresa=<T>{Empresa}<T>

[Soporte.Soporte.FechaEmision]
Carpeta=Soporte
Clave=Soporte.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Soporte.Titulo]
Carpeta=Soporte
Clave=Soporte.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Soporte.FechaConclusion]
Carpeta=Soporte
Clave=Soporte.FechaConclusion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Soporte.Vencimiento]
Carpeta=Soporte
Clave=Soporte.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=100

[Soporte.Dias]
Carpeta=Soporte
Clave=Dias
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Atraso]
Carpeta=Soporte
Clave=Atraso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Soporte.Estado]
Carpeta=Soporte
Clave=Soporte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Soporte.Columnas]
0=95
1=180

2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
[Acciones.SoportePersonalizar]
Nombre=SoportePersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Soporte
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.SoporteImprimir]
Nombre=SoporteImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Soporte
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.SoportePreliminar]
Nombre=SoportePreliminar
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=Soporte
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.SoporteExcel]
Nombre=SoporteExcel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=Soporte
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[DetalleFicha.ProyectoD.FechaInicio]
Carpeta=DetalleFicha
Clave=ProyectoD.FechaInicio
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[DetalleFicha.ProyectoD.FechaConclusion]
Carpeta=DetalleFicha
Clave=ProyectoD.FechaConclusion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Acciones.Transferir]
Nombre=Transferir
Boton=81
Menu=&Edición
NombreDesplegar=&Transferir Actividades
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=ProyectoDTransferir
Visible=S
Antes=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
ActivoCondicion=Proyecto:Proyecto.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador, EstatusPendiente)
AntesExpresiones=Asigna(Info.ID, Proyecto:Proyecto.ID)<BR>Asigna(Info.Proyecto, Proyecto:Proyecto.Proyecto)<BR>Asigna(Info.Estatus, Proyecto:Proyecto.Estatus)




[Ficha.ListaEnCaptura]
(Inicio)=Proyecto.Mov
Proyecto.Mov=Proyecto.MovID
Proyecto.MovID=Proyecto.Proyecto
Proyecto.Proyecto=Proyecto.UEN
Proyecto.UEN=Proyecto.Moneda
Proyecto.Moneda=Proyecto.TipoCambio
Proyecto.TipoCambio=Proyecto.FechaEmision
Proyecto.FechaEmision=Proyecto.FechaRequerida
Proyecto.FechaRequerida=Proyecto.ProyectoReestructurar
Proyecto.ProyectoReestructurar=Proyecto.ContactoTipo
Proyecto.ContactoTipo=ContactoTipoNombre
ContactoTipoNombre=ContactoTipoClave
ContactoTipoClave=Proyecto.Supervisor
Proyecto.Supervisor=Recurso.Nombre
Recurso.Nombre=Recurso.Rol
Recurso.Rol=Proyecto.Comienzo
Proyecto.Comienzo=Proyecto.Fin
Proyecto.Fin=Proyecto.Avance
Proyecto.Avance=Proyecto.ConsiderarAvanceActual
Proyecto.ConsiderarAvanceActual=Proyecto.Descripcion
Proyecto.Descripcion=(Fin)

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=Proyecto.FechaEmision
Proyecto.FechaEmision=Proyecto.Proyecto
Proyecto.Proyecto=Proyecto.Comienzo
Proyecto.Comienzo=Proyecto.Fin
Proyecto.Fin=Proyecto.Avance
Proyecto.Avance=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=CONFIRMAR
CONFIRMAR=BORRADOR
BORRADOR=SINCRO
SINCRO=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=REESTRUCTURADO
REESTRUCTURADO=CANCELADO
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

[Cliente.ListaEnCaptura]
(Inicio)=Proyecto.Cliente
Proyecto.Cliente=Cte.Nombre
Cte.Nombre=(Fin)

[Proveedor.ListaEnCaptura]
(Inicio)=Proyecto.Proveedor
Proyecto.Proveedor=Prov.Nombre
Prov.Nombre=(Fin)

[Personal.ListaEnCaptura]
(Inicio)=Proyecto.Personal
Proyecto.Personal=PersonalNombre
PersonalNombre=(Fin)

[Agente.ListaEnCaptura]
(Inicio)=Proyecto.Agente
Proyecto.Agente=Agente.Nombre
Agente.Nombre=(Fin)

[Prospecto.ListaEnCaptura]
(Inicio)=Proyecto.Prospecto
Proyecto.Prospecto=Prospecto.Nombre
Prospecto.Nombre=(Fin)

[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden<TAB>(Acendente)
GrupoOrden<TAB>(Acendente)=FormaExtraCampo.Orden<TAB>(Acendente)
FormaExtraCampo.Orden<TAB>(Acendente)=(Fin)

[Detalle.ListaEnCaptura]
(Inicio)=ProyectoD.Actividad
ProyectoD.Actividad=ProyectoD.Clave
ProyectoD.Clave=ProyectoD.Asunto
ProyectoD.Asunto=ProyectoD.EsFase
ProyectoD.EsFase=ProyectoD.Duracion
ProyectoD.Duracion=ProyectoD.DuracionUnidad
ProyectoD.DuracionUnidad=ProyectoD.Predecesora
ProyectoD.Predecesora=ProyectoD.Comienzo
ProyectoD.Comienzo=ProyectoD.Fin
ProyectoD.Fin=ProyectoD.RecursosAsignados
ProyectoD.RecursosAsignados=ProyectoD.Avance
ProyectoD.Avance=ProyectoD.Estado
ProyectoD.Estado=ProyectoD.EstaLiberado
ProyectoD.EstaLiberado=ProyectoD.EsNuevo
ProyectoD.EsNuevo=(Fin)

[Detalle.ListaAcciones]
(Inicio)=ComentariosD
ComentariosD=RecursoD
RecursoD=(Fin)

[DetalleFicha.ListaEnCaptura]
(Inicio)=ProyectoD.Tipo
ProyectoD.Tipo=ProyectoD.Categoria
ProyectoD.Categoria=ProyectoD.Grupo
ProyectoD.Grupo=ProyectoD.Familia
ProyectoD.Familia=ProyectoD.ComienzoEsp
ProyectoD.ComienzoEsp=ProyectoD.FechaInicio
ProyectoD.FechaInicio=ProyectoD.FechaConclusion
ProyectoD.FechaConclusion=(Fin)

[Proyecto.ListaEnCaptura]
(Inicio)=Proyecto.ProyectoRama
Proyecto.ProyectoRama=Proy.Descripcion
Proy.Descripcion=(Fin)

[Riesgo.ListaEnCaptura]
(Inicio)=Proyecto.Riesgo
Proyecto.Riesgo=aroRiesgo.Nombre
aroRiesgo.Nombre=Proyecto.UEN
Proyecto.UEN=UEN.Nombre
UEN.Nombre=(Fin)

[OtrosDatos.ListaEnCaptura]
(Inicio)=Proyecto.HorasDia
Proyecto.HorasDia=Proyecto.DiasHabiles
Proyecto.DiasHabiles=Proyecto.Prioridad
Proyecto.Prioridad=Proyecto.CalculoInverso
Proyecto.CalculoInverso=Proyecto.MontoEstimado
Proyecto.MontoEstimado=Proyecto.FechaEstimada
Proyecto.FechaEstimada=Proyecto.Probabilidad
Proyecto.Probabilidad=Proyecto.Referencia
Proyecto.Referencia=Proyecto.FechaRevision
Proyecto.FechaRevision=Proyecto.Concepto
Proyecto.Concepto=Proyecto.Observaciones
Proyecto.Observaciones=(Fin)

[Soporte.ListaEnCaptura]
(Inicio)=Soporte.Titulo
Soporte.Titulo=Soporte.FechaEmision
Soporte.FechaEmision=Soporte.FechaConclusion
Soporte.FechaConclusion=Soporte.Vencimiento
Soporte.Vencimiento=Dias
Dias=Atraso
Atraso=Soporte.Estado
Soporte.Estado=(Fin)

[Soporte.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=PENDIENTE
PENDIENTE=ALTAPRIORIDAD
ALTAPRIORIDAD=PRIORIDADBAJA
PRIORIDADBAJA=CONCLUIDO
CONCLUIDO=(Fin)

[Soporte.ListaAcciones]
(Inicio)=SoporteImprimir
SoporteImprimir=SoportePreliminar
SoportePreliminar=SoporteExcel
SoporteExcel=SoportePersonalizar
SoportePersonalizar=(Fin)




[Acciones.ArtMaterial]
Nombre=ArtMaterial
Boton=47
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+M
NombreDesplegar=Actividad - Lista de Materiales
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=ProyectoDArtMaterial
Antes=S
Visible=S






















Activo=S






AntesExpresiones=Asigna(Info.ID,Proyecto:Proyecto.ID)<BR>Asigna(Info.Actividad,ProyectoD:ProyectoD.Actividad)<BR>Asigna(Info.Proyecto,Proyecto:Proyecto.Proyecto)<BR>Asigna(Temp.Logico,ProyectoD:ProyectoD.EsFase)<BR>Asigna(Info.Estatus,Proyecto:Proyecto.Estatus)






[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=OtrosDatos
OtrosDatos=Prospecto
Prospecto=Cliente
Cliente=Proveedor
Proveedor=Personal
Personal=Agente
Agente=Proyecto
Proyecto=Riesgo
Riesgo=Comentarios
Comentarios=FormaExtraValor
FormaExtraValor=Detalle
Detalle=DetalleFicha
DetalleFicha=Soporte
Soporte=(Fin)

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
FormasAnexas=Verificar
Verificar=Situacion
Situacion=Sucursal
Sucursal=Afectar
Afectar=Eliminar
Eliminar=Cancelar
Cancelar=Actualizar
Actualizar=Consecutivo
Consecutivo=ReasignarUsuario
ReasignarUsuario=MovProy
MovProy=CamposExtras
CamposExtras=Anexos
Anexos=AnexosDetalle
AnexosDetalle=FormaAnexa
FormaAnexa=Plantilla
Plantilla=Recursos
Recursos=Transferir
Transferir=Contactos
Contactos=ProyectoDias
ProyectoDias=Anterior
Anterior=Siguiente
Siguiente=Gantt
Gantt=Resultados
Resultados=Info
Info=Tiempo
Tiempo=Politica
Politica=PoliticaConcepto
PoliticaConcepto=MovPos
MovPos=ArtMaterial
ArtMaterial=Navegador
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
