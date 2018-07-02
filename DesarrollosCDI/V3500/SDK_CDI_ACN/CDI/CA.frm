[Forma]
Clave=CA
Nombre=Registro
Icono=0
Modulos=CA
MovModulo=CA
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
Menus=S
BarraHerramientas=S
EsMovimiento=S
MovEspecificos=Todos
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraAyuda=S
BarraAyudaBold=S
PosicionInicialIzquierda=272
PosicionInicialArriba=97
PosicionInicialAlturaCliente=570
PosicionInicialAncho=735
PosicionSeccion1=39
ListaAcciones=(Lista)
DialogoAbrir=S
PosicionSec1=175
TituloAutoNombre=S
AutoGuardarEncabezado=S
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Nombre, Nulo)
MenuPrincipal=(Lista)
[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CA
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=5
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S
ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=Registro
[Ficha.CA.Mov]
Carpeta=Ficha
Clave=CA.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[Ficha.CA.MovID]
Carpeta=Ficha
Clave=CA.MovID
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Plata
Pegado=S
[Ficha.CA.Proyecto]
Carpeta=Ficha
Clave=CA.Proyecto
Editar=S
ValidaNombre=S
3D=S
Tamano=14
ColorFondo=Blanco
[Ficha.CA.UEN]
Carpeta=Ficha
Clave=CA.UEN
Editar=S
3D=S
Tamano=6
ColorFondo=Blanco
[Ficha.CA.FechaEmision]
Carpeta=Ficha
Clave=CA.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[Ficha.CA.Concepto]
Carpeta=Ficha
Clave=CA.Concepto
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S
[Ficha.CA.Referencia]
Carpeta=Ficha
Clave=CA.Referencia
Editar=S
ValidaNombre=S
3D=S
Tamano=45
ColorFondo=Blanco
[Ficha.CA.Observaciones]
Carpeta=Ficha
Clave=CA.Observaciones
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=45
ColorFondo=Blanco
[Ficha.CA.Programa]
Carpeta=Ficha
Clave=CA.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[Ficha.CA.CEPlan]
Carpeta=Ficha
Clave=CA.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[Ficha.CA.Materia]
Carpeta=Ficha
Clave=CA.Materia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco
Pegado=N
[Ficha.CA.Grupo]
Carpeta=Ficha
Clave=CA.Grupo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco
Pegado=N
[CAD.Columnas]
Cliente=79
Personal=79
Profesor=79
Asistencia=64
Calificacion=123

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
Visible=S
Activo=S

[Acciones.MovCopiar]
Nombre=MovCopiar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Shift+F11
NombreDesplegar=&Copiar
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Expresion=CopiarMovimiento(<T>CA<T>, CA:CA.ID, <T>CA<T>)

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

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Visible=S
Activo=S

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
ActivoCondicion=ConDatos(CA:CA.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>CA<T>)<BR>Asigna(Info.ID, CA:CA.ID)

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
Menu=&Archivo
NombreDesplegar=&Imprimir...
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
ListaParametros1=Inv:Inv.ID
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+P
EspacioPrevio=S
Expresion=ReporteImpresora(ReporteMovImpresora(<T>CA<T>, CA:CA.Mov, CA:CA.Estatus), CA:CA.ID)
ActivoCondicion=Usuario.ImprimirMovs

[Acciones.RepPantalla]
Nombre=RepPantalla
Boton=6
Menu=&Archivo
UsaTeclaRapida=S
NombreDesplegar=&Presentación preliminar
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
ListaParametros1=Inv:Inv.ID
Visible=S
TeclaRapida=Alt+F11
Expresion=ReportePantalla(ReporteMovPantalla(<T>CA<T>, CA:CA.Mov, CA:CA.Estatus), CA:CA.ID)
ActivoCondicion=Usuario.PreliminarMovs

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
Expresion=Asigna(Info.Forma, <T>CA<T>)<BR>Asigna(Info.Modulo, <T>CA<T>)<BR>Asigna(Info.Mov, CA:CA.Mov)<BR>Asigna(Info.Nombre, CA:CA.Mov)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin

[Acciones.InfoPath]
Nombre=InfoPath
Boton=113
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F10
NombreDesplegar=Formas
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=InfoPathMov
Antes=S
DespuesGuardar=S
Visible=S
ActivoCondicion=Usuario.InfoPath
AntesExpresiones=Asigna(Info.Modulo, <T>CA<T>)<BR>Asigna(Info.ID, CA:CA.ID)<BR>Asigna(Info.Mov, CA:CA.Mov)<BR>Asigna(Info.MovID, CA:CA.MovID)

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
ActivoCondicion=Usuario.EnviarExcel y (CA:CA.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))

[Acciones.Verificar]
Nombre=Verificar
Boton=41
Menu=&Archivo
NombreDesplegar=<T>&Verificar<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
EspacioPrevio=S
GuardarAntes=S
ConCondicion=S
Expresion=Asigna(Afectar.Modulo, <T>CA<T>)<BR>Asigna(Afectar.ID, CA:CA.ID)<BR>Asigna(Afectar.Mov, CA:CA.Mov)<BR>Asigna(Afectar.MovID, CA:CA.MovID)<BR>Asigna(Afectar.GenerarMov, Nulo)<BR>Verificar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.GenerarMov)
ActivoCondicion=CA:CA.Estatus en (EstatusSinAfectar,EstatusPorConfirmar,EstatusBorrador)
EjecucionCondicion=ConDatos(CA:CA.Mov)

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
ActivoCondicion=(ConfigModulo(<T>CA<T>,<T>Situaciones<T>)=<T>Si<T>) y Usuario.ModificarSituacion y<BR>PuedeAvanzarSituacion(<T>CA<T>, CA:CA.Mov, CA:CA.Estatus, FormaSituacion)
AntesExpresiones=Si(Vacio(CA:CA.ID),GuardarCambios)

[Acciones.Afectar]
Nombre=Afectar
Boton=7
Menu=&Archivo
NombreDesplegar=<T>A&fectar<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
UsaTeclaRapida=S
TeclaRapida=F12
GuardarAntes=S
RefrescarDespues=S
ConCondicion=S
EspacioPrevio=S
Expresion=Asigna(Afectar.Modulo, <T>CA<T>)<BR>Asigna(Afectar.ID, CA:CA.ID)<BR>Asigna(Afectar.Mov, CA:CA.Mov)<BR>Asigna(Afectar.MovID, CA:CA.MovID)<BR>Asigna(Afectar.Base, <T>Todo<T>)<BR>Asigna(Afectar.GenerarMov, <T><T>)<BR>Asigna(Afectar.FormaCaptura, <T>CA<T>)<BR>Asigna(Info.MovTipo, MovTipo(<T>CA<T>,CA:CA.Mov))<BR>Afectar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, <T><T>, <T>CA<T>)
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, CA:CA.Usuario) y <BR>(CA:CA.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar))  y<BR>PuedeAvanzarEstatus(<T>CA<T>, CA:CA.Mov, CA:CA.Estatus, FormaSituacion)
EjecucionCondicion=ConDatos(CA:CA.Mov)

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
ActivoCondicion=Vacio(CA:CA.MovID) y (CA:CA.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar)) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, CA:CA.Usuario)


[Acciones.Cancelar]
Nombre=Cancelar
Boton=33
Menu=&Archivo
NombreDesplegar=<T>Cancela&r<T>
EnMenu=S
TipoAccion=Expresion
Visible=S
EnBarraHerramientas=S
Antes=S
RefrescarDespues=S
GuardarAntes=S
Expresion=Si<BR>  Precaucion(<T>¿ Esta seguro que desea cancelar el movimiento ?<T>+NuevaLinea+NuevaLinea+Afectar.Mov+<T> <T>+Afectar.MovID, BotonSi, BotonNo ) = BotonSi<BR>Entonces<BR>  Cancelar(<T>CA<T>, CA:CA.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>CA<T>)<BR>Fin
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs, CA:CA.Usuario) y ConDatos(CA:CA.ID) y ConDatos(CA:CA.MovID) y (CA:CA.Estatus en (<T>SINAFECTAR<T>, <T>PENDIENTE<T>, <T>CONCLUIDO<T>)) y ( no MovTipoEn( <T>CA<T>, CA:CA.Mov, ( CA.JC ) )  )
AntesExpresiones=Asigna(Afectar.Modulo, <T>CA<T>)<BR>Asigna(Afectar.ID, CA:CA.ID)<BR>Asigna(Afectar.Mov, CA:CA.Mov ) <BR>Asigna(Afectar.MovID, CA:CA.MovID )

[Acciones.Campos]
Nombre=Campos
Boton=0
Menu=&Edición
NombreDesplegar=&Campos...
RefrescarDespues=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=InvCampos
Antes=S
ActivoCondicion=no FormaBloqueada
AntesExpresiones=Asigna(Info.ID, CA:CA.ID)<BR>Asigna(Info.Mov, CA:CA.Mov)<BR>Asigna(Info.MovID, CA:CA.MovID)
VisibleCondicion=CA:CA.Estatus<>EstatusSinAfectar

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
ClaveAccion=AnexoMov
Activo=S
Visible=S
EnBarraHerramientas=S
Antes=S
DespuesGuardar=S
AntesExpresiones=Asigna(Info.Rama, <T>CA<T>)<BR>Asigna(Info.Fecha, CA:CA.FechaEmision)<BR>Asigna(Info.ID, CA:CA.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (CA:CA.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, CA:CA.Mov+<T> <T>+CA:CA.MovID)


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
EjecucionCondicion=ConDatos(CA:CA.Proyecto)
AntesExpresiones=Asigna(Info.Proyecto, CA:CA.Proyecto)

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
ActivoCondicion=ConfigModulo(<T>CA<T>,<T>Tiempos<T>)=<T>Si<T>
EjecucionCondicion=ConDatos(CA:CA.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>CA<T>)<BR>Asigna(Info.ID, CA:CA.ID)<BR>Asigna(Info.Mov, CA:CA.Mov)<BR>Asigna(Info.MovID, CA:CA.MovID)

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
[Ficha.CA.Cliente]
Carpeta=Ficha
Clave=CA.Cliente
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=movimientos
IconosSubTitulo=<T>Movimiento<T>
OtroOrden=S
MenuLocal=S
PermiteLocalizar=S
ListaEnCaptura=CA.FechaEmision<BR>CA.Programa<BR>CA.CEPlan<BR>CA.Materia<BR>CA.Grupo<BR>CA.Referencia<BR>Cte.Tipo<BR>Cte.Rama
ListaOrden=CA.ID<TAB>(Decendente)
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroUsuarios=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroListaEstatus=(Todos)<BR>SINAFECTAR<BR>CONCLUIDO<BR>CANCELADO
FiltroEstatusDefault=SINAFECTAR
FiltroUsuarioDefault=(Usuario)
FiltroFechasCampo=CA.FechaEmision
FiltroFechasDefault=Este Mes
FiltroMovDefault=(Todos)
FiltroFechasNormal=S
FiltroFechasCancelacion=CA.FechaCancelacion
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
IconosNombre=CA:CA.Mov + <T> <T> + CA:CA.MovID
[(Carpeta Abrir).Columnas]
0=166
1=87
2=71
3=76
4=78
5=75
6=174
7=-2
8=-2
[Detalle]
Estilo=Hoja
Clave=Detalle
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CAD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CA
LlaveLocal=CAD.ID
LlaveMaestra=CA.ID
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
OtroOrden=S
ListaOrden=CAD.Renglon<TAB>(Acendente)
ControlRenglon=S
CampoRenglon=CAD.Renglon
PermiteLocalizar=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaFondoGrisAuto=S
CondicionEdicion=(CA:CA.CDIPermiteEditar) y (CA:CA.Estatus en(EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar))
FiltroGeneral=1 = 1 {Si(ConDatos(Info.Nombre) y MovTipoEn( <T>CA<T>, CA:CA.Mov, ( CA.JAC, CA.JC, CA.AC )), <T> AND Cte.Nombre like <T> + Comillas(<T>%<T> + Info.Nombre + <T>%<T>) ,<T> <T>)}
[Detalle.CAD.Cliente]
Carpeta=Detalle
Clave=CAD.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Detalle.CAD.Personal]
Carpeta=Detalle
Clave=CAD.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Detalle.CAD.Profesor]
Carpeta=Detalle
Clave=CAD.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Detalle.CAD.Asistencia]
Carpeta=Detalle
Clave=CAD.Asistencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[Detalle.CAD.Calificacion]
Carpeta=Detalle
Clave=CAD.Calificacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
[Detalle.Columnas]
Materia=98
Descripcion=184
Cliente=101
Personal=101
Profesor=101
Asistencia=64
Calificacion=104
Materia_1=64
Observaciones=284
ID=0
Renglon=64
Valor=64
Cliente_1=64
Nombre=184
Personal_1=64
ApellidoPaterno=184
ApellidoMaterno=184
Nombre_1=184
Profesor_1=64
Nombre_2=184
TieneMovimientos=92
PersonalNombre=184
Referencia=180
Tipo=55
Rama=64
[Detalle.CAD.Materia]
Carpeta=Detalle
Clave=CAD.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[(Carpeta Abrir).CA.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CA.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[(Carpeta Abrir).CA.Programa]
Carpeta=(Carpeta Abrir)
Clave=CA.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[(Carpeta Abrir).CA.CEPlan]
Carpeta=(Carpeta Abrir)
Clave=CA.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[(Carpeta Abrir).CA.Materia]
Carpeta=(Carpeta Abrir)
Clave=CA.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[(Carpeta Abrir).CA.Grupo]
Carpeta=(Carpeta Abrir)
Clave=CA.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[(Carpeta Abrir).CA.Referencia]
Carpeta=(Carpeta Abrir)
Clave=CA.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro
[Detalle.CAD.Observaciones]
Carpeta=Detalle
Clave=CAD.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
[Acciones.GenerarLista]
Nombre=GenerarLista
Boton=20
Menu=&Edición
NombreDesplegar=&Generar Lista
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Antes=S
Visible=S
ConCondicion=S
ActivoCondicion=CA:CA.Estatus = <T>SINAFECTAR<T>
EjecucionCondicion=ConDatos(CA:CA.Programa) y ConDatos(CA:CA.CEPlan) y ConDatos(CA:CA.Grupo) Y  MovTipoEn( <T>CA<T>, CA:CA.Mov, ( CA.AC, CA.APE, CA.APR, CA.CC ) )
AntesExpresiones=GuardarCambios<BR>EjecutarSQL(<T>spCAGenerarListaAsistencia :nID, :tEmpresa, :nSuc<T>, CA:CA.ID, Empresa, Sucursal)
[Detalle.CAD.Referencia]
Carpeta=Detalle
Clave=CAD.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
[Acciones.Filtro]
Nombre=Filtro
Boton=107
NombreEnBoton=S
Menu=&Ver
NombreDesplegar=Filtro
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Antes=S
Visible=S
ActivoCondicion=MovTipoEn( <T>CA<T>, CA:CA.Mov, ( CA.JAC, CA.JC, CA.AC ))
AntesExpresiones=GuardarCambios<BR>Forma(<T>EspecificarNombre<T>)
[Detalle.Cte.Nombre]
Carpeta=Detalle
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
[Ficha.CEPlan.Descripcion]
Carpeta=Ficha
Clave=CEPlan.Descripcion
ValidaNombre=S
3D=S
Tamano=46
ColorFondo=Plata
[Detalle.Profesor.Nombre]
Carpeta=Detalle
Clave=Profesor.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
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
Expresion=Asigna(Info.Modulo, <T>CA<T>)<BR>Asigna(Info.Mov, CA:CA.Mov)<BR>Asigna(Info.Clave, <T>CA<T>+CA:CA.ID)<BR>Asigna(Info.Nombre, CA:CA.Mov+<T> <T>+CA:CA.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(CA:CA.Estatus en (EstatusConcluido, EstatusCancelado,EstatusSinAfectar,), <T>EvaluacionCalificacion<T>, <T>EvaluacionCalificacionInfo<T>))
[(Carpeta Abrir).Cte.Tipo]
Carpeta=(Carpeta Abrir)
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro
[(Carpeta Abrir).Cte.Rama]
Carpeta=(Carpeta Abrir)
Clave=Cte.Rama
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro


[CEPrograma.Columnas]
0=92
1=210
2=74
3=70

[CEPlan.Columnas]
0=102
1=490







[CEPlanD.Columnas]
0=74
1=403
















[Lista.Columnas]
Cliente=117
Nombre=293
RFC=107

0=106
1=301


[Profesor.Columnas]
0=83
1=313





























[Detalle.ListaCamposAValidar]
(Inicio)=Cte.Nombre
Cte.Nombre=Personal.ApellidoMaterno
Personal.ApellidoMaterno=Profesor.Nombre
Profesor.Nombre=(Fin)

[Detalle.PersonalNombre]
Carpeta=Detalle
Clave=PersonalNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


























[Ficha.ListaEnCaptura]
(Inicio)=CA.Mov
CA.Mov=CA.MovID
CA.MovID=CA.Proyecto
CA.Proyecto=CA.UEN
CA.UEN=CA.FechaEmision
CA.FechaEmision=CA.Observaciones
CA.Observaciones=CA.Concepto
CA.Concepto=CA.Referencia
CA.Referencia=CA.CEPlan
CA.CEPlan=CEPlan.Descripcion
CEPlan.Descripcion=CA.Programa
CA.Programa=CA.Materia
CA.Materia=CA.Grupo
CA.Grupo=CA.Cliente
CA.Cliente=Cte.Nombre
Cte.Nombre=(Fin)

[Ficha.Cte.Nombre]
Carpeta=Ficha
Clave=Cte.Nombre
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]













[CEProgramaD.Columnas]
0=75
1=77
2=79
3=191
4=151
5=41
6=62








































[Acciones.CDIAutorizar]
Nombre=CDIAutorizar
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Shift+Ctrl+A
NombreDesplegar=Autorizar Flujo
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIMovAutorizar
ActivoCondicion=CA:CA.CDIFlujoAutorizacion
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>CA<T>)<BR>Asigna(Info.ID, CA:CA.ID)<BR>Asigna(Info.Mov, CA:CA.Mov)
DespuesGuardar=S
Visible=S


















[Detalle.ListaEnCaptura]
(Inicio)=CAD.Materia
CAD.Materia=CAD.Cliente
CAD.Cliente=Cte.Nombre
Cte.Nombre=CAD.Personal
CAD.Personal=PersonalNombre
PersonalNombre=CAD.Profesor
CAD.Profesor=Profesor.Nombre
Profesor.Nombre=CAD.Asistencia
CAD.Asistencia=CAD.Calificacion
CAD.Calificacion=CAD.Referencia
CAD.Referencia=CAD.Observaciones
CAD.Observaciones=(Fin)

[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=MovCopiar
MovCopiar=Abrir
Abrir=Localizar
Localizar=Guardar Cambios
Guardar Cambios=Propiedades
Propiedades=Imprimir
Imprimir=RepPantalla
RepPantalla=PlantillasOffice
PlantillasOffice=InfoPath
InfoPath=Excel
Excel=Verificar
Verificar=Situacion
Situacion=Afectar
Afectar=Eliminar
Eliminar=Cancelar
Cancelar=Campos
Campos=Anexos
Anexos=Anterior
Anterior=Siguiente
Siguiente=ProyInfo
ProyInfo=Tiempo
Tiempo=GenerarLista
GenerarLista=Filtro
Filtro=Navegador
Navegador=Evaluaciones
Evaluaciones=Cerrar
Cerrar=Otros2
Otros2=Otros3
Otros3=Otros4
Otros4=Otros5
Otros5=Otros6
Otros6=Otros7
Otros7=Otros8
Otros8=Otros9
Otros9=CDIAutorizar
CDIAutorizar=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=(Fin)
