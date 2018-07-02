[Forma]
Clave=CE
Icono=0
Modulos=CE
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialAlturaCliente=430
PosicionInicialAncho=994
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionInicialIzquierda=1552
PosicionInicialArriba=119
PosicionSeccion1=36
Nombre=Control Escolar
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
ListaAcciones002=<CONTINUA>Otros9
Menus=S
MovModulo=CE
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
DialogoAbrir=S
AutoGuardarEncabezado=S
TituloAutoNombre=S
Totalizadores=S
PosicionSeccion2=94
BarraAyuda=S
BarraAyudaBold=S
PosicionSec1=369
PosicionSec2=570
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=asigna(info.numero,0)
MenuPrincipal=(Lista)
[Ficha]
Estilo=Ficha
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CE
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
PermiteEditar=S
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
[Ficha.CE.Mov]
Carpeta=Ficha
Clave=CE.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco
[Ficha.CE.MovID]
Carpeta=Ficha
Clave=CE.MovID
Editar=S
ValidaNombre=N
3D=S
Pegado=S
Tamano=12
ColorFondo=Plata
[Ficha.CE.Moneda]
Carpeta=Ficha
Clave=CE.Moneda
Editar=S
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco
[Ficha.CE.TipoCambio]
Carpeta=Ficha
Clave=CE.TipoCambio
Editar=S
3D=S
Pegado=S
Tamano=7
ColorFondo=Blanco
[Ficha.CE.FechaEmision]
Carpeta=Ficha
Clave=CE.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=24
[Ficha.CE.Proyecto]
Carpeta=Ficha
Clave=CE.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
Pegado=S
[Ficha.CE.UEN]
Carpeta=Ficha
Clave=CE.UEN
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=7
Pegado=S
[Ficha.CE.Concepto]
Carpeta=Ficha
Clave=CE.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco
[Ficha.CE.Referencia]
Carpeta=Ficha
Clave=CE.Referencia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=48
ColorFondo=Blanco
[Detalle.Columnas]
ClavePlan=64
Materia=78
Grupo=82
Espacio=71
Profesor=68
Cupo=46
Sucursal=64
Inscripcion=64
Precio=71
CEPlan=87
DescuentoLineal=36
Horario=132
Importe=71
ImporteNeto=68
Profesor2=64
Profesor3=64
Profesor4=64
EspacioN=64
ProfesorN=79
Profesor2N=64
Profesor3N=64
Profesor4N=64
HorarioN=141
CDIBeca=74
[Ficha.CE.Observaciones]
Carpeta=Ficha
Clave=CE.Observaciones
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=48
ColorFondo=Blanco

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

Expresion=Asigna(Afectar.Modulo, <T>CE<T>)<BR>Asigna(Afectar.ID, CE:CE.ID)<BR>Asigna(Afectar.Mov, CE:CE.Mov)<BR>Asigna(Afectar.MovID, CE:CE.MovID)<BR>Asigna(Afectar.Base, <T>Todo<T>)<BR>Asigna(Afectar.GenerarMov, <T><T>)<BR>Asigna(Afectar.FormaCaptura, <T>CE<T>)<BR>Asigna(Info.MovTipo, MovTipo(<T>CE<T>,CE:CE.Mov))<BR>Asigna(Info.Cerrado, CE:CE.Estatus<>EstatusSinAfectar)<BR>Si<BR>  CE:CE.Estatus = <T>SINAFECTAR<T><BR>Entonces<BR>  Asigna(Info.Moneda, CE:CE.Moneda)<BR>  Asigna(Info.TipoCambio, CE:CE.TipoCambio)<BR>  Asigna(Info.Importe, Suma(CED:ImporteTotal)+CE:TotalArtículos+CE:CE.HHCuotaSEPImporte+CE:CE.Inscripcion)<BR>  Asigna(Info.Importe, Info.Importe*(CE:CE.Porcentaje/100))<BR>  Si<BR>    (Info.Importe > 0) y (MovTipoEn(<T>CE<T>, CE:CE.Mov, (CE.I, CE.P)) y (CE:CE.HHVencimiento<=CE:CE.FechaEmision)) y<BR>    (SQL(<T>IF EXISTS(SELECT Mov FROM HHCEInscripcionVentaExcluir WHERE Mov = :tMov) SELECT 1 ELSE SELECT 0<T>, CE:CE.Mov) = 0)<BR>  Entonces<BR>    Asigna(Info.ID, CE:CE.ID)<BR>    Forma(<T>HHCEVentaCobro<T>)<BR>  Sino<BR>    Afectar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, <T><T>, <T>CE<T>)<BR>  Fin<BR>Sino<BR>  Si<BR>    MovTipo(<T>CE<T>, CE:CE.Mov) = CE.BES<BR>  Entonces<BR>    Dialogo(<T>CEBecaAfectar<T>)<BR>    ActualizarForma<BR>  Sino<BR>    //Si( Confirmacion(<T>¿Esta Seguro de Concluir el Alta del Alumno?<T>,  BotonAceptar , BotonCancelar ) =  BotonAceptar ,Afectar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, <T><T>, <T>CE<T>))<BR>        Afectar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, <T><T>, <T>CE<T>)<BR>  Fin<BR>Fin
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, CE:CE.Usuario) y<BR>(CE:CE.Estatus en (EstatusSinAfectar, EstatusPendiente)) y <BR>PuedeAvanzarEstatus(<T>CE<T>, CE:CE.Mov, CE:CE.Estatus, FormaSituacion) y<BR>Si<BR> MovTipo(<T>CE<T>, CE:CE.Mov) en (CE.P)<BR>Entonces<BR>  (CE:CE.Estatus en (EstatusSinAfectar))<BR>Sino<BR>  1=1<BR>Fin
EjecucionCondicion=ConDatos(CE:CE.Mov)
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

Expresion=Si<BR>  Precaucion(<T>¿ Esta seguro que desea cancelar el movimiento ?<T>+NuevaLinea+NuevaLinea+Afectar.Mov+<T> <T>+Afectar.MovID, BotonSi, BotonNo ) = BotonSi<BR>Entonces<BR>  Cancelar(<T>CE<T>, CE:CE.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>CE<T>)<BR>Fin
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs, CE:CE.Usuario) y ConDatos(CE:CE.ID) y ConDatos(CE:CE.MovID) y (CE:CE.Estatus en (<T>SINAFECTAR<T>, <T>PENDIENTE<T>, <T>CONCLUIDO<T>, <T>AUTORIZADO<T>)) y (no((MovTipo(<T>CE<T>, CE:CE.Mov) = CE.BES) y (CE:CE.Estatus = <T>RECHAZADO<T>)))
AntesExpresiones=Asigna(Afectar.Modulo, <T>CE<T>)<BR>Asigna(Afectar.ID, CE:CE.ID)<BR>Asigna(Afectar.Mov, CE:CE.Mov ) <BR>Asigna(Afectar.MovID, CE:CE.MovID )
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
ActivoCondicion=Vacio(CE:CE.MovID) y (CE:CE.Estatus en (EstatusSinAfectar)) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, CE:CE.Usuario)


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
Expresion=ReporteImpresora(ReporteMovImpresora(<T>CE<T>, CE:CE.Mov, CE:CE.Estatus), CE:CE.ID)
ActivoCondicion=Usuario.ImprimirMovs


[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Visible=S
Activo=S
EspacioPrevio=S

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
Expresion=ReportePantalla(ReporteMovPantalla(<T>CE<T>, CE:CE.Mov, CE:CE.Estatus), CE:CE.ID)
ActivoCondicion=Usuario.PreliminarMovs

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
ActivoCondicion=CE:CE.Estatus=EstatusSinAfectar

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

RefrescarDespues=S
Expresion=Asigna(Afectar.Modulo, <T>CE<T>)<BR>Asigna(Afectar.ID, CE:CE.ID)<BR>Asigna(Afectar.Mov, CE:CE.Mov)<BR>Asigna(Afectar.MovID, CE:CE.MovID)<BR>Asigna(Afectar.GenerarMov, Nulo)<BR>Verificar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.GenerarMov)
ActivoCondicion=CE:CE.Estatus en (EstatusSinAfectar)
EjecucionCondicion=ConDatos(CE:CE.Programa)
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
ActivoCondicion=ConDatos(CE:CE.MovID)
AntesExpresiones=Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.ID, CE:CE.ID)<BR>Asigna(Info.Mov, CE:CE.Mov)<BR>Asigna(Info.MovID, CE:CE.MovID)

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
ActivoCondicion=(ConfigModulo(<T>CE<T>,<T>Situaciones<T>)=<T>Si<T>) y Usuario.ModificarSituacion y<BR>PuedeAvanzarSituacion(<T>CE<T>, CE:CE.Mov, CE:CE.Estatus, FormaSituacion)
AntesExpresiones=Si(Vacio(CE:CE.ID),GuardarCambios)

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
ActivoCondicion=ConfigModulo(<T>CE<T>,<T>Tiempos<T>)=<T>Si<T>
EjecucionCondicion=ConDatos(CE:CE.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.ID, CE:CE.ID)<BR>Asigna(Info.Mov, CE:CE.Mov)<BR>Asigna(Info.MovID, CE:CE.MovID)

[Acciones.AbrirPropiedades]
Nombre=AbrirPropiedades
Boton=0
NombreDesplegar=P&ropiedades
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Antes=S
Visible=S

ActivoCondicion=ConDatos(CE:CE.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.ID, CE:CE.ID)
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
[Acciones.AbrirMostrar]
Nombre=AbrirMostrar
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
ClaveAccion=AnexoMov
Activo=S
Visible=S
EnBarraHerramientas=S
Antes=S
DespuesGuardar=S
AntesExpresiones=Asigna(Info.Rama, <T>CE<T>)<BR>Asigna(Info.Fecha, CE:CE.FechaEmision)<BR>Asigna(Info.ID, CE:CE.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (CE:CE.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, CE:CE.Mov+<T> <T>+CE:CE.MovID)


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
ActivoCondicion=ConDatos(CE:CE.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.ID, CE:CE.ID)

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
Expresion=CopiarMovimiento(<T>INV<T>, Inv:Inv.ID, <T>Inv<T>)

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
Expresion=Asigna(Info.Forma, <T>CE<T>)<BR>Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.Mov, CE:CE.Mov)<BR>Asigna(Info.Nombre, CE:CE.Mov)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin

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
AntesExpresiones=Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.ID, CE:CE.ID)<BR>Asigna(Info.Mov, CE:CE.Mov)<BR>Asigna(Info.MovID, CE:CE.MovID)

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
EjecucionCondicion=ConDatos(CE:CE.Proyecto)
AntesExpresiones=Asigna(Info.Proyecto, CE:CE.Proyecto)
[(Carpeta Abrir)]
Estilo=Iconos
PestanaOtroNombre=S
Clave=(Carpeta Abrir)
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CEA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CE.Situacion
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S
PestanaNombre=movimientos
OtroOrden=S
MenuLocal=S
PermiteLocalizar=S
IconosSubTitulo=<T>Movimiento<T>
ListaOrden=CE.ID<TAB>(Decendente)
FiltroEstatus=S
FiltroUsuarios=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroSituacion=S
FiltroSucursales=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=SINAFECTAR
FiltroUsuarioDefault=(Usuario)
FiltroFechasCampo=CE.FechaEmision
FiltroFechasDefault=Hoy
FiltroMovDefault=(Todos)
FiltroFechasCancelacion=CE.FechaCancelacion
BusquedaRapida=S
BusquedaRespetarFiltros=S
BusquedaRespetarUsuario=S
BusquedaEnLinea=S
BusquedaAncho=20
ListaAcciones=(Lista)

ListaEnCaptura=(Lista)
FiltroProyectos=S
ElementosPorPaginaEsp=200
IconosNombre=CEA:CE.Mov + <T> <T> + CEA:CE.MovID
IconosConPaginas=S
[(Carpeta Abrir).Columnas]
0=235
1=88
2=79
3=124
4=242
5=100
6=166
7=75


[Detalle.CED.CEPlan]
Carpeta=Detalle
Clave=CED.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco
[Detalle.CED.Materia]
Carpeta=Detalle
Clave=CED.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Detalle.CED.Grupo]
Carpeta=Detalle
Clave=CED.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Detalle.CED.Espacio]
Carpeta=Detalle
Clave=CED.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Detalle.CED.Profesor]
Carpeta=Detalle
Clave=CED.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Detalle.CED.Cupo]
Carpeta=Detalle
Clave=CED.Cupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[Detalle.CED.Inscripcion]
Carpeta=Detalle
Clave=CED.Inscripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
[Detalle.CED.Precio]
Carpeta=Detalle
Clave=CED.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[Detalle.CED.DescuentoLineal]
Carpeta=Detalle
Clave=CED.DescuentoLineal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[CED.Columnas]
CEPlan=89
Materia=85
Grupo=83
Espacio=85
Profesor=85
Cupo=36
Inscripcion=64
Precio=81
DescuentoLineal=38
Horario=153
HoraD=44
HoraA=41
Importe=78
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
Antes=S
Visible=S
AntesExpresiones=//Asigna(CE:CE.Importe, Suma(CED:Importe)+CE:NetoInscripcion)<BR>Asigna(CE:CE.Importe, Suma(CED:SubTotal)+CE:TotalArtículos+CE:CE.HHCuotaSEPImporte+CE:CE.Inscripcion)<BR>Asigna(CE:CE.Impuestos, Suma(CED:Impuesto1)+CE:ImpuestoInscripción)
[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Derecha
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
Totalizadores1=Importe<BR>Desc<BR>Sub Total<BR>Impuestos<BR>Total<BR>Materias
Totalizadores2=Suma(CED:Importe)+CE:TotalArtículos+CE:CE.HHCuotaSEPImporte+CE:CE.Inscripcion<BR>-(Suma(CED:DescGlobal))<BR>Suma(CED:SubTotal)+CE:TotalArtículos+CE:CE.HHCuotaSEPImporte+CE:CE.Inscripcion<BR>Suma(CED:Impuesto1)<BR>Redondea(Suma(CED:ImporteTotal)+CE:TotalArtículos+CE:CE.HHCuotaSEPImporte+CE:CE.Inscripcion, Config.VentaCobroRedondeoDecimales)<BR>Conteo(CED:CED.ID)
Totalizadores3=(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)
TotCarpetaRenglones=Detalle
ListaEnCaptura=(Lista)
TotExpresionesEnSumas=S
TotAlCambiar=S
CondicionVisible=MovTipoEn(<T>CE<T>, CE:CE.Mov, (CE.P, CE.I, CE.C, CE.B))
[Detalle]
Estilo=Hoja
Clave=Detalle
OtroOrden=S
ValidarCampos=S
Detalle=S
MenuLocal=S
PermiteEditar=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CED
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CE
LlaveLocal=CED.ID
LlaveMaestra=CE.ID
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
ListaCamposAValidar=(Lista)
ListaOrden=CED.Renglon<TAB>(Acendente)
ControlRenglon=S
CampoRenglon=CED.Renglon
HojaConfirmarEliminar=S
HojaFondoGrisAuto=S
CondicionEdicion=((CE:CE.CDIPermiteEditar) y (CE:CE.Estatus en(EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar))<BR>y (CE:CE.Mov<><T>Baja<T>) )
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Detalle
CarpetaVisible=S
[Detalle.CED.Horario]
Carpeta=Detalle
Clave=CED.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[(Carpeta Totalizadores).Importe]
Carpeta=(Carpeta Totalizadores)
Clave=Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Plata
Pegado=S
[(Carpeta Totalizadores).Desc]
Carpeta=(Carpeta Totalizadores)
Clave=Desc
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=12
ColorFondo=Plata
[(Carpeta Totalizadores).Sub Total]
Carpeta=(Carpeta Totalizadores)
Clave=Sub Total
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=12
ColorFondo=Plata
[(Carpeta Totalizadores).Impuestos]
Carpeta=(Carpeta Totalizadores)
Clave=Impuestos
Editar=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Plata
Pegado=S
[(Carpeta Totalizadores).Total]
Carpeta=(Carpeta Totalizadores)
Clave=Total
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=12
ColorFondo=Plata
Efectos=[Negritas]
[(Carpeta Totalizadores).Materias]
Carpeta=(Carpeta Totalizadores)
Clave=Materias
Editar=S
ValidaNombre=N
3D=S
Pegado=S
Tamano=5
ColorFondo=Plata
[Detalle.Importe]
Carpeta=Detalle
Clave=Importe
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[Contactos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Contactos
Clave=Contactos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CE
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
CondicionVisible=MovTipoEn(<T>CE<T>, CE:CE.Mov, (CE.P, CE.I, CE.C, CE.B, CE.BES))
[Contactos.CE.Cliente]
Carpeta=Contactos
Clave=CE.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco
[Contactos.Cte.Nombre]
Carpeta=Contactos
Clave=Cte.Nombre
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Plata
Pegado=S
[Contactos.CE.Porcentaje]
Carpeta=Contactos
Clave=CE.Porcentaje
3D=S
Tamano=8
ColorFondo=Plata
Pegado=S
Editar=S
[Contactos.CE.Cliente2]
Carpeta=Contactos
Clave=CE.Cliente2
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Plata
[Contactos.CE.Porcentaje2]
Carpeta=Contactos
Clave=CE.Porcentaje2
ValidaNombre=N
3D=S
Tamano=8
ColorFondo=Plata
Pegado=S
Editar=S
[Contactos.CE.CEPlan]
Carpeta=Contactos
Clave=CE.CEPlan
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco
Pegado=N
LineaNueva=S
[Contactos.CE.Condicion]
Carpeta=Contactos
Clave=CE.Condicion
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco
Pegado=N
LineaNueva=S
[Ficha.CE.Programa]
Carpeta=Ficha
Clave=CE.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco
[Ficha.CEPrograma.Ciclo]
Carpeta=Ficha
Clave=CEPrograma.Ciclo
ValidaNombre=S
3D=S
Tamano=48
ColorFondo=Plata
[Acciones.Asigna Materia]
Nombre=Asigna Materia
Boton=72
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+B
NombreDesplegar=&Asigna Materia
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
EspacioPrevio=S
ConCondicion=S
Visible=S
Antes=S
GuardarAntes=S
ActivoCondicion=(CE:CE.Estatus = EstatusSinAfectar)
EjecucionCondicion=((CE:CE.Estatus = <T>SINAFECTAR<T>) y (MovTipoEn(<T>CE<T>, CE:CE.Mov, (CE.P, CE.I, CE.C))) y ConDatos(CE:CE.Programa) y ConDatos(CE:CE.CEPlan)) y (ConDatos(CE:CE.Cliente) o ConDatos(CE:CE.Personal))
AntesExpresiones=GuardarCambios<BR>Asigna(Info.ID, CE:CE.ID)<BR>Asigna(Info.Programa, CE:CE.Programa)<BR>Asigna(Info.Plan, CE:CE.CEPlan)<BR>Asigna(Info.Cliente, CE:Cte.Cliente)<BR>Asigna(Info.Personal, CE:CE.Personal)<BR>Asigna(Info.Descripcion, CE:CEPlan.Descripcion)<BR>Asigna(Info.Cantidad, CE:CEPlan.CreditoDirecto)<BR>EjecutarSQL(<T>spEliminaCEPlan :E<T>, EstacionTrabajo)<BR>Si(CE:CEPlan.CreditoDirecto, Forma(<T>CEPlanAsigna2<T>), Forma(<T>CEPlanAsigna<T>))
[Contactos.CEPlan.Descripcion]
Carpeta=Contactos
Clave=CEPlan.Descripcion
ValidaNombre=N
3D=S
Pegado=S
Tamano=40
ColorFondo=Plata
[Ficha.CE.FechaInicio]
Carpeta=Ficha
Clave=CE.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=24
[Ficha.CE.FechaFin]
Carpeta=Ficha
Clave=CE.FechaFin
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=23
[Contactos.CE.Inscripcion]
Carpeta=Contactos
Clave=CE.Inscripcion
Editar=S
ValidaNombre=N
3D=S
Tamano=13
Pegado=S
ColorFondo=Blanco
[Detalle.CED.EspacioN]
Carpeta=Detalle
Clave=CED.EspacioN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Detalle.CED.HorarioN]
Carpeta=Detalle
Clave=CED.HorarioN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
[Acciones.CalendarioVerificar]
Nombre=CalendarioVerificar
Boton=9
Menu=&Ver
NombreDesplegar=Verificar Calendario
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Reportes Pantalla
ClaveAccion=CECalendarioVerificar
Antes=S
Visible=S

ActivoCondicion=CE:CE.Estatus en (<T>SINAFECTAR<T>, <T>CONCLUIDO<T>) y MovTipoEn( <T>CE<T>, CE:CE.Mov, (CE.AP) )
AntesExpresiones=GuardarCambios<BR>Asigna(Info.ID, CE:CE.ID)<BR>Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.Programa, CE:CE.Programa)<BR>Si(CE:CE.Estatus=<T>SINAFECTAR<T>, Asigna(Rep.Titulo, SQL(<T> DECLARE @OKRef varchar(255) EXEC spCEGenerarCalendario :nID, :tModulo, 0, NULL, @OkRef OUTPUT, 0 SELECT @OkRef<T>, Info.ID, Info.Modulo)) Si(ConDatos(Rep.Titulo), Informacion(Rep.Titulo) AbortarOperacion ))
[Acciones.Plantilla]
Nombre=Plantilla
Boton=12
Menu=&Edición
NombreDesplegar=Plantilla
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
Visible=S
ConCondicion=S
RefrescarDespues=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+L
ClaveAccion=Actualizar Forma
Antes=S

ActivoCondicion=(CE:CE.Estatus = EstatusSinAfectar)
EjecucionCondicion=((CE:CE.Estatus = <T>SINAFECTAR<T>) y <BR>(MovTipoEn(<T>CE<T>, CE:CE.Mov, (CE.P, CE.I))) y <BR>ConDatos(CE:CE.Programa) y <BR>ConDatos(CE:CE.CEPlan) y <BR>CE:CEPlan.CreditoDirecto = 0) y<BR>(ConDatos(CE:CE.Cliente) o ConDatos(CE:CE.Personal))
AntesExpresiones=GuardarCambios<BR>Asigna(Info.ID, CE:CE.ID)<BR>Asigna(Info.Programa, CE:CE.Programa)<BR>Asigna(Info.Plan, CE:CE.CEPlan)<BR>Asigna(Info.Cliente, CE:Cte.Cliente)<BR>Asigna(Info.Personal, CE:CE.Personal)<BR>Asigna(Info.Descripcion, CE:CEPlan.Descripcion)<BR>Asigna(Info.Cantidad, CE:CEPlan.CreditoDirecto)<BR>Si(Forma(<T>EspecificarGrado<T>),<BR>EjecutarSQL(<T>spCESugierePlantilla :tEstacion, :tEmpresa, :nSuc, :tPrograma, :tPlan, :tGrupo, :nGrado<T>, EstacionTrabajo, Empresa, Sucursal, Info.Programa, Info.Plan, Info.CEGrupo, Info.Grado)<BR>Forma(<T>CEPlanAsignaPlantilla<T>))
[Detalle.CED.ProfesorN]
Carpeta=Detalle
Clave=CED.ProfesorN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=0
NombreDesplegar=&Evaluaciones
TipoAccion=Expresion
Menu=&Archivo
GuardarAntes=S
EnMenu=S
Expresion=Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.Mov, CE:CE.Mov)<BR>Asigna(Info.Clave, <T>CE<T>+CE:CE.ID)<BR>Asigna(Info.Nombre, CE:CE.Mov+<T> <T>+CE:CE.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(CE:CE.Estatus en (EstatusConcluido, EstatusCancelado,EstatusSinAfectar,), <T>EvaluacionCalificacion<T>, <T>EvaluacionCalificacionInfo<T>))
Activo=S
Visible=S
[Acciones.CteExpress]
Nombre=CteExpress
Boton=79
NombreDesplegar=Agregar &Cliente...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
NombreEnBoton=S

Menu=&Archivo
Expresion=Asigna(Info.Tipo, <T>Cliente<T>)<BR>Forma(<T>CteExpress<T>)
ActivoCondicion=Usuario.AgregarCteExpress

[Lista.Columnas]
UEN=44
Nombre=269
Observacion=416
0=160
1=315
Articulo=131
Descripcion1=244
Cliente=127
RFC=124
Socio=127
NombreSocio=171
Tipo=76
CentroCostos=127
Descripcion=235
Area=292
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

[Profesor.Columnas]
0=83
1=313

[Horario.Columnas]
0=296

[Acciones.HHCEGrupoSugerir]
Nombre=HHCEGrupoSugerir
Boton=92
Menu=&Edición
NombreDesplegar=Sugerir Grupos
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Visible=S
Antes=S
GuardarAntes=S
DespuesGuardar=S
ActivoCondicion=(MovTipo( <T>CE<T>, CE:CE.Mov ) = <T>CE.AP<T>) y (CE:CE.Estatus = EstatusSinAfectar)
AntesExpresiones=Si(Forma(<T>HHCEGrupoSugerir<T>), EjecutarSQL(<T>spHHCEGrupoSugerir :nID, :tEspecial<T>, CE:CE.ID, Info.HHEspecial))

[Acciones.CteInfo2]
Nombre=CteInfo2
Boton=80
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Shift+Ctrl+I
NombreDesplegar=&Información del Cliente A
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteInfo
ActivoCondicion=Usuario.CteInfo
ConCondicion=S
EjecucionCondicion=ConDatos(CE:CE.Cliente2)
Antes=S
AntesExpresiones=Asigna(Info.Origen, <T>CE<T>)<BR>Asigna(Info.Cliente, CE:CE.Cliente2)
Visible=S

[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+I
NombreDesplegar=I&nformación del Cliente
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteInfo
ActivoCondicion=Usuario.CteInfo
ConCondicion=S
EjecucionCondicion=ConDatos(CE:CE.Cliente)
Antes=S
AntesExpresiones=Asigna(Info.Origen, <T>CE<T>)<BR>Asigna(Info.Cliente, CE:CE.Cliente)
Visible=S

[Material]
Estilo=Hoja
Pestana=S
Clave=Material
OtroOrden=S
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=HHCEArt
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CE
LlaveLocal=HHCEArt.ID
LlaveMaestra=CE.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaFondoGrisAuto=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=HHCEArt.Renglon<TAB>(Acendente)
ControlRenglon=S
CampoRenglon=HHCEArt.Renglon
ValidarCampos=S

ListaCamposAValidar=Art.PrecioLista
PestanaOtroNombre=S
PestanaNombre=Material
CondicionVisible=MovTipoEn( <T>CE<T>, CE:CE.Mov, ( CE.I, CE.P ) )
[Material.HHCEArt.Articulo]
Carpeta=Material
Clave=HHCEArt.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[Material.HHCEArt.Cantidad]
Carpeta=Material
Clave=HHCEArt.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Material.HHCEArt.Precio]
Carpeta=Material
Clave=HHCEArt.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Material.HHCEArt.Descuento]
Carpeta=Material
Clave=HHCEArt.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Material.Columnas]
Articulo=124
Cantidad=51
Precio=82
Descuento=55
Descripcion1=268
Importe=98
Impuesto=64
[Material.Art.Descripcion1]
Carpeta=Material
Clave=Art.Descripcion1
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Material.Importe]
Carpeta=Material
Clave=Importe
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata

[Acciones.ArtSugerir]
Nombre=ArtSugerir
Boton=92
NombreDesplegar=Sugerir Material
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Antes=S
DespuesGuardar=S
Visible=S
Menu=&Edición
ActivoCondicion=(MovTipoEn( <T>CE<T>, CE:CE.Mov, ( CE.I, CE.P ) )) y (CE:CE.Estatus = EstatusSinAfectar)
AntesExpresiones=EjecutarSQL(<T>spHHCEArtSugerir :nID<T>, CE:CE.ID)
[CEProgramaD.Columnas]
0=75
1=77
2=79
3=191
4=151
5=41
6=62

[Contactos.CE.HHCuotaSEP]
Carpeta=Contactos
Clave=CE.HHCuotaSEP
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco

[Contactos.CE.HHCuotaSEPImporte]
Carpeta=Contactos
Clave=CE.HHCuotaSEPImporte
Editar=S
3D=S
ColorFondo=Blanco

Tamano=12
[Contactos.CE.HHInscripcion]
Carpeta=Contactos
Clave=CE.HHInscripcion
Editar=S
3D=S
Tamano=11
ColorFondo=Blanco


Pegado=S
[Contactos.CteFacturarA.Nombre]
Carpeta=Contactos
Clave=CteFacturarA.Nombre
3D=S
Pegado=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Material.Impuesto]
Carpeta=Material
Clave=Impuesto
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata

[Material.ListaEnCaptura]
(Inicio)=HHCEArt.Articulo
HHCEArt.Articulo=Art.Descripcion1
Art.Descripcion1=HHCEArt.Cantidad
HHCEArt.Cantidad=HHCEArt.Precio
HHCEArt.Precio=HHCEArt.Descuento
HHCEArt.Descuento=Importe
Importe=Impuesto
Impuesto=(Fin)

[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Importe
Importe=Desc
Desc=Sub Total
Sub Total=Impuestos
Impuestos=Total
Total=Materias
Materias=(Fin)


[Contactos.CE.HHVencimiento]
Carpeta=Contactos
Clave=CE.HHVencimiento
Editar=S
ValidaNombre=S
3D=S
Tamano=14
ColorFondo=Blanco
Pegado=S


[Acciones.Cobro]
Nombre=Cobro
Boton=0
Menu=&Edición
NombreDesplegar=Cobro
EnMenu=S
TipoAccion=Formas
ClaveAccion=HHCEVentaCobro
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.ID, CE:CE.ID)<BR>Asigna(Info.Cerrado, Verdadero)<BR>Asigna(Info.Moneda, CE:CE.Moneda)<BR>Asigna(Info.TipoCambio, CE:CE.TipoCambio)<BR>Asigna(Info.Importe, Suma(CED:ImporteTotal)+CE:TotalArtículos+CE:CE.HHCuotaSEPImporte+CE:CE.Inscripcion)<BR>Asigna(Info.Importe, Info.Importe*(CE:CE.Porcentaje/100))
VisibleCondicion=(MovTipoEn( <T>CE<T>, CE:CE.Mov, ( CE.I, CE.P ) )) y (CE:CE.Estatus en (EstatusPendiente, EstatusConcluido, EstatusCancelado))


[Acciones.HHCECambio]
Nombre=HHCECambio
Boton=102
NombreDesplegar=Cambio/Pospuesto
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=HHCECambio
Menu=&Edición

[Detalle.CED.CDIBeca]
Carpeta=Detalle
Clave=CED.CDIBeca
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Contactos.CE.CDISocio]
Carpeta=Contactos
Clave=CE.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[Contactos.SocioNombre]
Carpeta=Contactos
Clave=SocioNombre
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Plata
Pegado=S




[(Carpeta Abrir).CE.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CE.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CE.Programa]
Carpeta=(Carpeta Abrir)
Clave=CE.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).CE.Cliente]
Carpeta=(Carpeta Abrir)
Clave=CE.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[(Carpeta Abrir).CE.Importe]
Carpeta=(Carpeta Abrir)
Clave=CE.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


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
ActivoCondicion=CE:CE.CDIFlujoAutorizacion
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.ID, CE:CE.ID)<BR>Asigna(Info.Mov, CE:CE.Mov)
DespuesGuardar=S
Visible=S




[Acciones.Bitacora]
Nombre=Bitacora
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+B
NombreDesplegar=&Bitacora
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovBitacora
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>CE<T>)<BR>Asigna(Info.ID,CE:CE.ID)<BR>Asigna(Info.Mov, CE:CE.Mov)<BR>Asigna(Info.MovID,CE:CE.MovID)<BR>Asigna(Info.PuedeEditar, CE:CE.Estatus noen (EstatusCancelado) y PuedeModificar(CE:CE.Usuario))
Visible=S


[MovBitacora]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Bitácora
Clave=MovBitacora
Filtros=S
MenuLocal=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=MovBitacora
Fuente={Tahoma, 8, Negro, []}
IconosCampo=EventoTipo.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
IconosSubTitulo=<T>Tipo<T>
ListaEnCaptura=(Lista)


IconosNombre=MovBitacora:MovBitacora.Tipo
FiltroGeneral=MovBitacora.Modulo=<T>CE<T> and MovBitacora.ID={CE:CE.ID}
[MovBitacora.MovBitacora.Fecha]
Carpeta=MovBitacora
Clave=MovBitacora.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[MovBitacora.MovBitacora.Evento]
Carpeta=MovBitacora
Clave=MovBitacora.Evento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[MovBitacora.MovBitacora.Usuario]
Carpeta=MovBitacora
Clave=MovBitacora.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[MovBitacora.MovBitacora.Duracion]
Carpeta=MovBitacora
Clave=MovBitacora.Duracion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[MovBitacora.MovBitacora.DuracionUnidad]
Carpeta=MovBitacora
Clave=MovBitacora.DuracionUnidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[MovBitacora.Columnas]
0=-2
1=256
2=-2
3=130
4=-2
5=-2

[MovBitacora.ListaEnCaptura]
(Inicio)=MovBitacora.Fecha
MovBitacora.Fecha=MovBitacora.Evento
MovBitacora.Evento=MovBitacora.Usuario
MovBitacora.Usuario=MovBitacora.Duracion
MovBitacora.Duracion=MovBitacora.DuracionUnidad
MovBitacora.DuracionUnidad=(Fin)

[Contactos.ListaEnCaptura]
(Inicio)=CE.CDISocio
CE.CDISocio=SocioNombre
SocioNombre=CE.Cliente
CE.Cliente=Cte.Nombre
Cte.Nombre=CE.Porcentaje
CE.Porcentaje=CE.Cliente2
CE.Cliente2=CteFacturarA.Nombre
CteFacturarA.Nombre=CE.Porcentaje2
CE.Porcentaje2=CE.CEPlan
CE.CEPlan=CEPlan.Descripcion
CEPlan.Descripcion=CE.Condicion
CE.Condicion=CE.HHVencimiento
CE.HHVencimiento=CE.HHInscripcion
CE.HHInscripcion=CE.Inscripcion
CE.Inscripcion=CE.HHCuotaSEP
CE.HHCuotaSEP=CE.HHCuotaSEPImporte
CE.HHCuotaSEPImporte=(Fin)

[CDIPreRegisDet.Columnas]
Mov=66
MovId=43
FechaEmision=73
CDISocio=56
Nombre=193
Concepto=220
Programa=89
Ceplan=83
Estatus=104


[Acciones.PreRegistros]
Nombre=PreRegistros
Boton=18
NombreDesplegar=PreRegistros
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Antes=S
Visible=S
NombreEnBoton=S


DespuesGuardar=S


ActivoCondicion=(CE:CE.Mov en (<T>Baja<T>,<T>Cambio<T>,<T>Cambio Horario<T>)) Y( CE:CE.Estatus =<T>SINAFECTAR<T>)
AntesExpresiones=guardarcambios<BR>asigna(Info.CDIPlan,CE:CE.CEPlan)<BR>asigna(Info.Programa,CE:CE.Programa)<BR>asigna(Info.Cliente,CE:CE.Cliente)<BR>ASigna(info.Numero,CE:CE.ID)<BR>Formamodal(<T>CDIPreRegisDet<T>)<BR>ASigna(Info.Numero,9999)
[CDICEMovPlan]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Plan
Clave=CDICEMovPlan
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICEMovPlan
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


CondicionEdicion=//CE:CE.Estatus=<T>SINAFECTAR<T><BR>((CE:CE.CDIPermiteEditar) y (CE:CE.Estatus en(EstatusSinAfectar, EstatusBorrador))<BR>y (CE:CE.Mov<><T>Baja<T>) )
Detalle=S
VistaMaestra=CE
LlaveLocal=CDICEMovPlan.Id
LlaveMaestra=CE.ID
CondicionVisible=CE:CE.Mov en (<T>Alta Plan<T>)
[CDICEMovPlan.CDICEMovPlan.CePlan]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CePlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

EditarConBloqueo=N
[CDICEMovPlan.CDICEMovPlan.Descripcion]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.Descripcion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=120
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.Nivel]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=N
[CDICEMovPlan.CDICEMovPlan.Area]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.Area
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CreditoDirecto]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CreditoDirecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[CDICEMovPlan.CDICEMovPlan.Creditos]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.Creditos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CreditosOpcional]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CreditosOpcional
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S




[CDICEMovPlan.CDICEMovPlan.HorarioVariable]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.HorarioVariable
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.Coordinacion]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.Coordinacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco



Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDIPermiteBeca]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIPermiteBeca
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S


[CDICEMovPlan.CDICEMovPlan.CDIEdadMinima]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIEdadMinima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[CDICEMovPlan.CDICEMovPlan.CDIEdadMaxima]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIEdadMaxima
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDIEstaturaMinima]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIEstaturaMinima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[CDICEMovPlan.CDICEMovPlan.CDIPesoMinimo]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIPesoMinimo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDISexo]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDISexo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDICoberturaMedica]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDICoberturaMedica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=25
[CDICEMovPlan.CDICEMovPlan.CDIEvaluacionProfesor]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIEvaluacionProfesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[CDICEMovPlan.CDICEMovPlan.CDIEvaluacionPsicologica]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIEvaluacionPsicologica
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDICondicionFisica]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDICondicionFisica
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDIDatosMedicos]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIDatosMedicos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDIDatosTransporte]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIDatosTransporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[CDICEMovPlan.CDICEMovPlan.CDIMostrarInternet]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIMostrarInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[CDICEMovPlan.CDICEMovPlan.CDIDiasVigenciaPreRegistro]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIDiasVigenciaPreRegistro
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDILimiteMesesDatosMedicos]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDILimiteMesesDatosMedicos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco



Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDIPeriodo]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIPeriodo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S

[CDICobertura.Columnas]
Clave=101
Descripcion=304
Articulo=124
FechaInicio=71
FechaFin=69






Periodo=79
MesInicial=64
MesFinal=64
[CDICEMovPlanBaja.CE.CEPlan]
Carpeta=CDICEMovPlanBaja
Clave=CE.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.CE.CEPlan]
Carpeta=Ficha
Clave=CE.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[CDICECamPlan]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Plan
Clave=CDICECamPlan
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICEMovPlan
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CE
LlaveLocal=CDICEMovPlan.Id
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

LlaveMaestra=CE.ID


























ExpAntesRefrescar=caso CE:CE.Mov es <T>Cambio Plan<T><BR>   entonces<BR>    guardarcambios<BR>    EjecutarSQl(<T>xpCDITranplanCambios :nI, :tC<T>, CE:CE.ID,CE:CE.CEPlan)<BR>fin
RefrescarAlEntrar=S
CondicionVisible=CE:CE.Mov en (<T>Cambio Plan<T>)
AlinearTodaCarpeta=S
[CDICobertura.Columnas]
Clave=64
Descripcion=304
Articulo=124
FechaInicio=94
FechaFin=94






[CDICECamPlanBaja.CE.CEPlan]
Carpeta=CDICECamPlanBaja
Clave=CE.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[CDICECamPlan.CDICEMovPlan.CePlan]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CePlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICECamPlan.CDICEMovPlan.Descripcion]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.Descripcion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=87
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.Nivel]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=N
[CDICECamPlan.CDICEMovPlan.Area]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.Area
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CreditoDirecto]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CreditoDirecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICECamPlan.CDICEMovPlan.Creditos]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.Creditos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CreditosOpcional]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CreditosOpcional
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S




[CDICECamPlan.CDICEMovPlan.HorarioVariable]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.HorarioVariable
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICECamPlan.CDICEMovPlan.Coordinacion]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.Coordinacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



Pegado=S
[CDICECamPlan.CDICEMovPlan.CDIPermiteBeca]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIPermiteBeca
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S

[CDICECamPlan.CDICEMovPlan.CDIEdadMinima]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIEdadMinima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[CDICECamPlan.CDICEMovPlan.CDIEdadMaxima]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIEdadMaxima
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CDIEstaturaMinima]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIEstaturaMinima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICECamPlan.CDICEMovPlan.CDIPesoMinimo]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIPesoMinimo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CDISexo]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDISexo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CDICoberturaMedica]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDICoberturaMedica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICECamPlan.CDICEMovPlan.CDIEvaluacionProfesor]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIEvaluacionProfesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[CDICECamPlan.CDICEMovPlan.CDIEvaluacionPsicologica]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIEvaluacionPsicologica
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CDICondicionFisica]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDICondicionFisica
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CDIDatosMedicos]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIDatosMedicos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CDIDatosTransporte]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIDatosTransporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[CDICECamPlan.CDICEMovPlan.CDIMostrarInternet]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIMostrarInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDICECamPlan.CDICEMovPlan.CDIDiasVigenciaPreRegistro]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIDiasVigenciaPreRegistro
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CDILimiteMesesDatosMedicos]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDILimiteMesesDatosMedicos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=10

[CDICECamPlan.CDICEMovPlan.CDIPeriodo]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIPeriodo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDICECamPlan.CDICEMovPlan.CDICobertura]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDICobertura
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco









Pegado=S


[CDICEMovPlan.CDICEMovPlan.CDIPeriodoPreciosYdescuentos]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIPeriodoPreciosYdescuentos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDIGeneraCargoRecurrente]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIGeneraCargoRecurrente
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDIMinimoEdadPermitido]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIMinimoEdadPermitido
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10
Pegado=S
[CDICEMovPlan.CDICEMovPlan.CDIMaximoEdadPermitido]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIMaximoEdadPermitido
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10









Pegado=S
[CDICECamPlan.CDICEMovPlan.CDIPeriodoPreciosYdescuentos]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIPeriodoPreciosYdescuentos
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICECamPlan.CDICEMovPlan.CDIGeneraCargoRecurrente]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIGeneraCargoRecurrente
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICECamPlan.CDICEMovPlan.CDIMinimoEdadPermitido]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIMinimoEdadPermitido
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICECamPlan.CDICEMovPlan.CDIMaximoEdadPermitido]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIMaximoEdadPermitido
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



































[Acciones.CDICePlanPerPrecioDescto]
Nombre=CDICePlanPerPrecioDescto
Boton=59
NombreEnBoton=S
NombreDesplegar=Periodos Precios y Descuentos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICePlanPerPrecioDescto
Antes=S



























































Activo=S
GuardarAntes=S
DespuesGuardar=S
AntesExpresiones=asigna(info.id,CE:CE.ID)<BR>ASigna(info.plan,CE:CE.CEPlan)<BR>ASigna(info.programa,CE:CE.Programa)<BR>Asigna(Info.estatus,CE:CE.Estatus)<BR>ASigna(Info.Mov,CE:CE.Mov)
VisibleCondicion=//((CE:CE.Mov=<T>Alta Programa<T>) y (CE:CE.Estatus =<T>SINAFECTAR<T>))<BR>(CE:CE.Mov en (<T>Alta Programa<T>,<T>Cambio Precio<T>))
[CDICeMovPlanPend.CDICEMovPlan.CDIClavePresupuestal]
Carpeta=CDICeMovPlanPend
Clave=CDICEMovPlan.CDIClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco








[CDICeMovPlanPend.ListaEnCaptura]
(Inicio)=CDICEMovPlan.Inscripcion
CDICEMovPlan.Inscripcion=CDICEMovPlan.Precio
CDICEMovPlan.Precio=CDICEMovPlan.MonedaPrecio
CDICEMovPlan.MonedaPrecio=CDICEMovPlan.Impuesto1
CDICEMovPlan.Impuesto1=CDICEMovPlan.CDICobertura
CDICEMovPlan.CDICobertura=CDICEMovPlan.CDICentroCostos
CDICEMovPlan.CDICentroCostos=CDICEMovPlan.CDIClavePresupuestal
CDICEMovPlan.CDIClavePresupuestal=(Fin)

















[CDICEMovPend.CDICEMovPlan.CDICobertura]
Carpeta=CDICEMovPend
Clave=CDICEMovPlan.CDICobertura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICEMovPend.CDICEMovPlan.CDICentroCostos]
Carpeta=CDICEMovPend
Clave=CDICEMovPlan.CDICentroCostos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICEMovPend.CDICEMovPlan.CDIClavePresupuestal]
Carpeta=CDICEMovPend
Clave=CDICEMovPlan.CDIClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICEMovPend.CDICEMovPlan.CDIPeriodoPreciosYdescuentos]
Carpeta=CDICEMovPend
Clave=CDICEMovPlan.CDIPeriodoPreciosYdescuentos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICEMovPend.ListaEnCaptura]
(Inicio)=CDICEMovPlan.CDICobertura
CDICEMovPlan.CDICobertura=CDICEMovPlan.CDICentroCostos
CDICEMovPlan.CDICentroCostos=CDICEMovPlan.CDIClavePresupuestal
CDICEMovPlan.CDIClavePresupuestal=CDICEMovPlan.CDIPeriodoPreciosYdescuentos
CDICEMovPlan.CDIPeriodoPreciosYdescuentos=(Fin)





































[CDICeMovPlanPendientes]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Plan Contraloria
Clave=CDICeMovPlanPendientes
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICEMovPlanCont
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

Detalle=S
VistaMaestra=CE
LlaveLocal=CDICEMovPlanCont.Id
LlaveMaestra=CE.ID

CondicionEdicion=((CE:CE.CDIPermiteEditar) y (CE:CE.Estatus en(EstatusPendiente))y (CE:CE.Mov=<T>Alta Plan<T>))



ExpAntesRefrescar=asigna(Info.Plan,CDICEMovPlan:CDICEMovPlan.CePlan)
CondicionVisible=((CE:CE.Mov=<T>Alta Plan<T>) y (CE:CE.Estatus en (<T>PENDIENTE<T>,<T>CONCLUIDO<T>)))
[CDICEMovPlan.CDICEMovPlan.CDICobertura]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDICobertura
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=25
ColorFondo=Blanco

[CDICEMovPlan.CDICEMovPlan.Condicion]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.Condicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[CDICeMovPlanPendientes.CDICEMovPlanCont.MonedaPrecio]
Carpeta=CDICeMovPlanPendientes
Clave=CDICEMovPlanCont.MonedaPrecio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICeMovPlanPendientes.CDICEMovPlanCont.Precio]
Carpeta=CDICeMovPlanPendientes
Clave=CDICEMovPlanCont.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





Tamano=15

















EditarConBloqueo=S
[CDICeCambioMov]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cambio
Clave=CDICeCambioMov
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICeCambioMov
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CE
LlaveLocal=CDICeCambioMov.ID
LlaveMaestra=CE.ID
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








RefrescarAlEntrar=S
CondicionVisible=(CE:CE.Mov en(<T>Cambio<T>,<T>Cambio Horario<T>))
[CDICeCambioMov.CDICeCambioMov.MovBajaGenerado]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.MovBajaGenerado
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

LineaNueva=S
EspacioPrevio=S
[CDICeCambioMov.CDICeCambioMov.MovPreRGenerado]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.MovPreRGenerado
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


















[CDICeCambioMov.CDICeCambioMov.BajaPrograma]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.BajaPrograma
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

EspacioPrevio=S
[CDICeCambioMov.CDICeCambioMov.BajaPlan]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.BajaPlan
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICeCambioMov.CDICeCambioMov.BajaMovimiento]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.BajaMovimiento
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICeCambioMov.CDICeCambioMov.BajaMovimientoId]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.BajaMovimientoId
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICeCambioMov.CDICeCambioMov.AltaPrograma]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.AltaPrograma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

EspacioPrevio=S
[CDICeCambioMov.CDICeCambioMov.AltaPlan]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.AltaPlan
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





















[CDICeCambioMov.CDICeCambioMov.AltaMateria]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.AltaMateria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICeCambioMov.CDICeCambioMov.AltaGrupo]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.AltaGrupo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICeCambioMov.CDICeCambioMov.AltaEspacio]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.AltaEspacio
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICeCambioMov.CDICeCambioMov.AltaProfesor]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.AltaProfesor
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco









[CDICeCambioMov.CDICeCambioMov.AltaHorario]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.AltaHorario
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco























































































































[CDICeCambioMov.CDICeCambioMov.BajaPrecio]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.BajaPrecio
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICeCambioMov.CDICeCambioMov.BajaDescuentoLineal]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.BajaDescuentoLineal
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICeCambioMov.CDICeCambioMov.BajaCDIBeca]
Carpeta=CDICeCambioMov
Clave=CDICeCambioMov.BajaCDIBeca
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco












[CDICeMovPlanPendientes.CDICEMovPlanCont.CDIClavePresupuestal]
Carpeta=CDICeMovPlanPendientes
Clave=CDICEMovPlanCont.CDIClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

EditarConBloqueo=S
[CDICeMovPlanPendientes.CDICEMovPlanCont.CDIClavePresupuestalDev]
Carpeta=CDICeMovPlanPendientes
Clave=CDICEMovPlanCont.CDIClavePresupuestalDev
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



















EditarConBloqueo=S
















[CDICEMovPlanCambioContra]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cambio Precios y Datos Contraloria en Plan
Clave=CDICEMovPlanCambioContra
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICEMovPlan
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CE
LlaveLocal=CDICEMovPlan.Id
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)


LlaveMaestra=CE.ID
ExpAntesRefrescar=caso CE:CE.Mov es <T>Cambio Datos Contra<T><BR>   entonces<BR>    guardarcambios<BR>    EjecutarSQl(<T>xpCDITraeplanCamCont :nI, :tC<T>, CE:CE.ID,CE:CE.CEPlan)<BR>fin
RefrescarAlEntrar=S
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CondicionVisible=CE:CE.Mov=<T>Cambio Datos Contra<T>
[CDICEMovPlanCambioContra.CDICEMovPlan.CDIClavePresupuestal]
Carpeta=CDICEMovPlanCambioContra
Clave=CDICEMovPlan.CDIClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICEMovPlanCambioContra.CDICEMovPlan.CDIClavePresupuestalDev]
Carpeta=CDICEMovPlanCambioContra
Clave=CDICEMovPlan.CDIClavePresupuestalDev
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDICEMovPlanCambioContra.Columnas]
CDIClavePresupuestal=116
CDIClavePresupuestalDev=152

































Precio=115
MonedaPrecio=64
CDIConcepto=181
Impuesto1=64
[CDICEMovPlanCambioContra.CDICEMovPlan.Precio]
Carpeta=CDICEMovPlanCambioContra
Clave=CDICEMovPlan.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco























[Detalle.ListaEnCaptura]
(Inicio)=CED.CEPlan
CED.CEPlan=CED.Materia
CED.Materia=CED.Grupo
CED.Grupo=CED.Espacio
CED.Espacio=CED.EspacioN
CED.EspacioN=CED.Profesor
CED.Profesor=CED.ProfesorN
CED.ProfesorN=CED.Cupo
CED.Cupo=CED.Precio
CED.Precio=CED.DescuentoLineal
CED.DescuentoLineal=CED.CDIBeca
CED.CDIBeca=Importe
Importe=CED.Horario
CED.Horario=CED.HorarioN
CED.HorarioN=(Fin)

[Detalle.ListaCamposAValidar]
(Inicio)=CEPlan.Descripcion
CEPlan.Descripcion=CEMateria.Descripcion
CEMateria.Descripcion=Profesor.Nombre
Profesor.Nombre=Espacio.Nombre
Espacio.Nombre=(Fin)






























































































































































































































































































































































[CDICEMovPlan.CDICEMovPlan.PreciosPeriodo]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.PreciosPeriodo
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco













































































[CDICECamPlan.CDICEMovPlan.PreciosPeriodo]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.PreciosPeriodo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco













[CDICECamPlan.CDICEMovPlan.Condicion]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.Condicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

























[CDICEMovPlanCambioContra.CDICEMovPlan.MonedaPrecio]
Carpeta=CDICEMovPlanCambioContra
Clave=CDICEMovPlan.MonedaPrecio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[CDICEMovPlanCambioContra.CDICEMovPlan.Impuesto1]
Carpeta=CDICEMovPlanCambioContra
Clave=CDICEMovPlan.Impuesto1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDICeMovPlanPendientes.ListaEnCaptura]
(Inicio)=CDICEMovPlanCont.MonedaPrecio
CDICEMovPlanCont.MonedaPrecio=CDICEMovPlanCont.Precio
CDICEMovPlanCont.Precio=CDICEMovPlanCont.Impuesto1
CDICEMovPlanCont.Impuesto1=CDICEMovPlanCont.CDIClavePresupuestal
CDICEMovPlanCont.CDIClavePresupuestal=CDICEMovPlanCont.CDIClavePresupuestalDev
CDICEMovPlanCont.CDIClavePresupuestalDev=(Fin)

[CDICeMovPlanPendientes.CDICEMovPlanCont.Impuesto1]
Carpeta=CDICeMovPlanPendientes
Clave=CDICEMovPlanCont.Impuesto1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDICEMovPlan.CDICEMovPlan.CDIConcepto]
Carpeta=CDICEMovPlan
Clave=CDICEMovPlan.CDIConcepto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=55
ColorFondo=Blanco


Pegado=S
[CDICECamPlan.CDICEMovPlan.CDIConcepto]
Carpeta=CDICECamPlan
Clave=CDICEMovPlan.CDIConcepto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=43
ColorFondo=Blanco


Pegado=S
[CDICEMovPlanCambioContra.ListaEnCaptura]
(Inicio)=CDICEMovPlan.MonedaPrecio
CDICEMovPlan.MonedaPrecio=CDICEMovPlan.Precio
CDICEMovPlan.Precio=CDICEMovPlan.Impuesto1
CDICEMovPlan.Impuesto1=CDICEMovPlan.CDIClavePresupuestal
CDICEMovPlan.CDIClavePresupuestal=CDICEMovPlan.CDIClavePresupuestalDev
CDICEMovPlan.CDIClavePresupuestalDev=(Fin)















[(Carpeta Abrir).Tabla]
Carpeta=(Carpeta Abrir)
Clave=Tabla
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


























































[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CE.FechaEmision
CE.FechaEmision=CE.Programa
CE.Programa=CE.Cliente
CE.Cliente=Cte.Nombre
Cte.Nombre=CE.Importe
CE.Importe=Tabla
Tabla=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=CONCLUIDO
CONCLUIDO=PENDIENTE
PENDIENTE=SINAFECTAR
SINAFECTAR=AUTORIZADO
AUTORIZADO=RECHAZADO
RECHAZADO=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=AbrirPropiedades
AbrirPropiedades=AbrirLocalizar
AbrirLocalizar=AbrirLocalizarSiguiente
AbrirLocalizarSiguiente=AbrirImprimir
AbrirImprimir=AbrirPreliminar
AbrirPreliminar=AbrirExcel
AbrirExcel=AbrirMostrar
AbrirMostrar=(Fin)















[CDICeCambioMov.ListaEnCaptura]
(Inicio)=CDICeCambioMov.BajaPrograma
CDICeCambioMov.BajaPrograma=CDICeCambioMov.BajaPlan
CDICeCambioMov.BajaPlan=CDICeCambioMov.BajaMovimiento
CDICeCambioMov.BajaMovimiento=CDICeCambioMov.BajaMovimientoId
CDICeCambioMov.BajaMovimientoId=CDICeCambioMov.BajaPrecio
CDICeCambioMov.BajaPrecio=CDICeCambioMov.BajaDescuentoLineal
CDICeCambioMov.BajaDescuentoLineal=CDICeCambioMov.BajaCDIBeca
CDICeCambioMov.BajaCDIBeca=CDICeCambioMov.AltaPrograma
CDICeCambioMov.AltaPrograma=CDICeCambioMov.AltaPlan
CDICeCambioMov.AltaPlan=CDICeCambioMov.AltaMateria
CDICeCambioMov.AltaMateria=CDICeCambioMov.AltaGrupo
CDICeCambioMov.AltaGrupo=CDICeCambioMov.AltaEspacio
CDICeCambioMov.AltaEspacio=CDICeCambioMov.AltaProfesor
CDICeCambioMov.AltaProfesor=CDICeCambioMov.AltaHorario
CDICeCambioMov.AltaHorario=CDICeCambioMov.MovBajaGenerado
CDICeCambioMov.MovBajaGenerado=CDICeCambioMov.MovPreRGenerado
CDICeCambioMov.MovPreRGenerado=(Fin)

















































[Acciones.CDICeplanAnterior]
Nombre=CDICeplanAnterior
Boton=20
NombreDesplegar=Devoluciones Programas 2014
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDICePlanPerPreDesctoAnter
Activo=S
Antes=S
















NombreEnBoton=S

















































































ConCondicion=S





















EjecucionCondicion=(CE:CE.Programa=<T>PER-E.2015<T>) Y (CE:CE.Mov=<T>Alta Programa<T>)
AntesExpresiones=asigna(Info.IDR, CE:CE.ID)<BR>Asigna(Info.CDIPlan, CED:CED.CEPlan)
VisibleCondicion=(CE:CE.Programa=<T>PER-E.2015<T>) Y (CE:CE.Mov=<T>Alta Programa<T>)   






































[Ficha.ListaEnCaptura]
(Inicio)=CE.Mov
CE.Mov=CE.MovID
CE.MovID=CE.Proyecto
CE.Proyecto=CE.UEN
CE.UEN=CE.Moneda
CE.Moneda=CE.TipoCambio
CE.TipoCambio=CE.FechaEmision
CE.FechaEmision=CE.Referencia
CE.Referencia=CE.Concepto
CE.Concepto=CE.Observaciones
CE.Observaciones=CE.Programa
CE.Programa=CEPrograma.Ciclo
CEPrograma.Ciclo=CE.FechaInicio
CE.FechaInicio=CE.FechaFin
CE.FechaFin=CE.CEPlan
CE.CEPlan=(Fin)





























[CDICEMovPlan.ListaEnCaptura]
(Inicio)=CDICEMovPlan.CePlan
CDICEMovPlan.CePlan=CDICEMovPlan.Descripcion
CDICEMovPlan.Descripcion=CDICEMovPlan.Nivel
CDICEMovPlan.Nivel=CDICEMovPlan.Area
CDICEMovPlan.Area=CDICEMovPlan.Coordinacion
CDICEMovPlan.Coordinacion=CDICEMovPlan.CreditoDirecto
CDICEMovPlan.CreditoDirecto=CDICEMovPlan.Creditos
CDICEMovPlan.Creditos=CDICEMovPlan.CreditosOpcional
CDICEMovPlan.CreditosOpcional=CDICEMovPlan.HorarioVariable
CDICEMovPlan.HorarioVariable=CDICEMovPlan.CDIPermiteBeca
CDICEMovPlan.CDIPermiteBeca=CDICEMovPlan.CDIEdadMinima
CDICEMovPlan.CDIEdadMinima=CDICEMovPlan.CDIEdadMaxima
CDICEMovPlan.CDIEdadMaxima=CDICEMovPlan.CDIMinimoEdadPermitido
CDICEMovPlan.CDIMinimoEdadPermitido=CDICEMovPlan.CDIMaximoEdadPermitido
CDICEMovPlan.CDIMaximoEdadPermitido=CDICEMovPlan.CDIEstaturaMinima
CDICEMovPlan.CDIEstaturaMinima=CDICEMovPlan.CDIPesoMinimo
CDICEMovPlan.CDIPesoMinimo=CDICEMovPlan.CDISexo
CDICEMovPlan.CDISexo=CDICEMovPlan.CDIEvaluacionProfesor
CDICEMovPlan.CDIEvaluacionProfesor=CDICEMovPlan.CDIEvaluacionPsicologica
CDICEMovPlan.CDIEvaluacionPsicologica=CDICEMovPlan.CDICondicionFisica
CDICEMovPlan.CDICondicionFisica=CDICEMovPlan.CDIDatosMedicos
CDICEMovPlan.CDIDatosMedicos=CDICEMovPlan.CDIDatosTransporte
CDICEMovPlan.CDIDatosTransporte=CDICEMovPlan.CDIDiasVigenciaPreRegistro
CDICEMovPlan.CDIDiasVigenciaPreRegistro=CDICEMovPlan.CDILimiteMesesDatosMedicos
CDICEMovPlan.CDILimiteMesesDatosMedicos=CDICEMovPlan.CDIPeriodo
CDICEMovPlan.CDIPeriodo=CDICEMovPlan.CDIMostrarInternet
CDICEMovPlan.CDIMostrarInternet=CDICEMovPlan.CDIPeriodoPreciosYdescuentos
CDICEMovPlan.CDIPeriodoPreciosYdescuentos=CDICEMovPlan.CDIGeneraCargoRecurrente
CDICEMovPlan.CDIGeneraCargoRecurrente=CDICEMovPlan.CDICoberturaMedica
CDICEMovPlan.CDICoberturaMedica=CDICEMovPlan.CDICobertura
CDICEMovPlan.CDICobertura=CDICEMovPlan.Condicion
CDICEMovPlan.Condicion=CDICEMovPlan.PreciosPeriodo
CDICEMovPlan.PreciosPeriodo=CDICEMovPlan.CDIConcepto
CDICEMovPlan.CDIConcepto=(Fin)
























[CDICECamPlan.ListaEnCaptura]
(Inicio)=CDICEMovPlan.CePlan
CDICEMovPlan.CePlan=CDICEMovPlan.Descripcion
CDICEMovPlan.Descripcion=CDICEMovPlan.Nivel
CDICEMovPlan.Nivel=CDICEMovPlan.Area
CDICEMovPlan.Area=CDICEMovPlan.Coordinacion
CDICEMovPlan.Coordinacion=CDICEMovPlan.CreditoDirecto
CDICEMovPlan.CreditoDirecto=CDICEMovPlan.Creditos
CDICEMovPlan.Creditos=CDICEMovPlan.CreditosOpcional
CDICEMovPlan.CreditosOpcional=CDICEMovPlan.HorarioVariable
CDICEMovPlan.HorarioVariable=CDICEMovPlan.CDIPermiteBeca
CDICEMovPlan.CDIPermiteBeca=CDICEMovPlan.CDIEdadMinima
CDICEMovPlan.CDIEdadMinima=CDICEMovPlan.CDIEdadMaxima
CDICEMovPlan.CDIEdadMaxima=CDICEMovPlan.CDIMinimoEdadPermitido
CDICEMovPlan.CDIMinimoEdadPermitido=CDICEMovPlan.CDIMaximoEdadPermitido
CDICEMovPlan.CDIMaximoEdadPermitido=CDICEMovPlan.CDIEstaturaMinima
CDICEMovPlan.CDIEstaturaMinima=CDICEMovPlan.CDIPesoMinimo
CDICEMovPlan.CDIPesoMinimo=CDICEMovPlan.CDISexo
CDICEMovPlan.CDISexo=CDICEMovPlan.CDIEvaluacionProfesor
CDICEMovPlan.CDIEvaluacionProfesor=CDICEMovPlan.CDIEvaluacionPsicologica
CDICEMovPlan.CDIEvaluacionPsicologica=CDICEMovPlan.CDICondicionFisica
CDICEMovPlan.CDICondicionFisica=CDICEMovPlan.CDIDatosMedicos
CDICEMovPlan.CDIDatosMedicos=CDICEMovPlan.CDIDatosTransporte
CDICEMovPlan.CDIDatosTransporte=CDICEMovPlan.CDIDiasVigenciaPreRegistro
CDICEMovPlan.CDIDiasVigenciaPreRegistro=CDICEMovPlan.CDILimiteMesesDatosMedicos
CDICEMovPlan.CDILimiteMesesDatosMedicos=CDICEMovPlan.CDIPeriodo
CDICEMovPlan.CDIPeriodo=CDICEMovPlan.CDIMostrarInternet
CDICEMovPlan.CDIMostrarInternet=CDICEMovPlan.CDIPeriodoPreciosYdescuentos
CDICEMovPlan.CDIPeriodoPreciosYdescuentos=CDICEMovPlan.CDIGeneraCargoRecurrente
CDICEMovPlan.CDIGeneraCargoRecurrente=CDICEMovPlan.CDICoberturaMedica
CDICEMovPlan.CDICoberturaMedica=CDICEMovPlan.CDICobertura
CDICEMovPlan.CDICobertura=CDICEMovPlan.Condicion
CDICEMovPlan.Condicion=CDICEMovPlan.PreciosPeriodo
CDICEMovPlan.PreciosPeriodo=CDICEMovPlan.CDIConcepto
CDICEMovPlan.CDIConcepto=(Fin)







[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Contactos
Contactos=Material
Material=Detalle
Detalle=CDICEMovPlan
CDICEMovPlan=CDICECamPlan
CDICECamPlan=CDICeMovPlanPendientes
CDICeMovPlanPendientes=CDICeCambioMov
CDICeCambioMov=MovBitacora
MovBitacora=CDICEMovPlanCambioContra
CDICEMovPlanCambioContra=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=MovCopiar
MovCopiar=Abrir
Abrir=Localizar
Localizar=Guardar
Guardar=Evaluaciones
Evaluaciones=Propiedades
Propiedades=Imprimir
Imprimir=RepPantalla
RepPantalla=PlantillasOffice
PlantillasOffice=InfoPath
InfoPath=Verificar
Verificar=Situacion
Situacion=Afectar
Afectar=Eliminar
Eliminar=Cancelar
Cancelar=Totalizar
Totalizar=Anexos
Anexos=Anterior
Anterior=Siguiente
Siguiente=CteInfo
CteInfo=CteInfo2
CteInfo2=ProyInfo
ProyInfo=CalendarioVerificar
CalendarioVerificar=Tiempo
Tiempo=MovPos
MovPos=Asigna Materia
Asigna Materia=Plantilla
Plantilla=Cobro
Cobro=CteExpress
CteExpress=HHCEGrupoSugerir
HHCEGrupoSugerir=ArtSugerir
ArtSugerir=HHCECambio
HHCECambio=Navegador
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
Otros9=CDIAutorizar
CDIAutorizar=Bitacora
Bitacora=PreRegistros
PreRegistros=CDICePlanPerPrecioDescto
CDICePlanPerPrecioDescto=CDICeplanAnterior
CDICeplanAnterior=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=(Fin)
