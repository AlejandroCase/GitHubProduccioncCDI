[Forma]
Clave=Cxc
Nombre=Info.ModuloCxcNombre
Icono=0
Modulos=CXC
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=304
PosicionInicialArriba=186
PosicionInicialAltura=580
PosicionInicialAncho=671
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
Menus=S
EsMovimiento=S
TituloAuto=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
DialogoAbrir=S
ListaAcciones=(Lista)
PosicionSeccion1=60
Totalizadores=S
PosicionSeccion2=93
MovModulo=CXC
PosicionColumna3=50
BarraAyudaBold=S
BarraAyuda=S
PosicionInicialAlturaCliente=553
BarraHerramientas=S
PosicionSec1=293
PosicionSec2=454
ExpresionesAlMostrar=Asigna(Info.Mov, Nulo)<BR>Asigna(Info.MovID, Nulo)<BR>Asigna(Info.Importe, 0.0)<BR>Asigna(Def.CxImpuesto, General.DefImpuesto)
ExpresionesAlCerrar=Asigna(Filtro.Cliente, Nulo)<BR>Asigna(Filtro.Mov, Nulo)<BR>Asigna(Filtro.Proyecto, Nulo)<BR>Asigna(Filtro.Actividad, Nulo)
TituloAutoNombre=S

MenuPrincipal=(Lista)
[Ficha]
Estilo=Ficha
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cxc
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=5
FichaEspacioNombres=80
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

[Ficha.Cxc.Mov]
Carpeta=Ficha
Clave=Cxc.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.MovID]
Carpeta=Ficha
Clave=Cxc.MovID
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=8
ColorFondo=Plata
Pegado=S
IgnoraFlujo=S
ColorFuente=Negro

[Ficha.Cxc.FechaEmision]
Carpeta=Ficha
Clave=Cxc.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
EspacioPrevio=N
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.Concepto]
Carpeta=Ficha
Clave=Cxc.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
EspacioPrevio=N
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=N

[Ficha.Cxc.Proyecto]
Carpeta=Ficha
Clave=Cxc.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=16
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S

[Ficha.Cxc.Moneda]
Carpeta=Ficha
Clave=Cxc.Moneda
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
IgnoraFlujo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.Referencia]
Carpeta=Ficha
Clave=Cxc.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
EspacioPrevio=N
EditarConBloqueo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.Observaciones]
Carpeta=Ficha
Clave=Cxc.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=55
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.Cxc.Cliente]
Carpeta=Ficha
Clave=Cxc.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
EspacioPrevio=S
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.Condicion]
Carpeta=Ficha
Clave=Cxc.Condicion
Editar=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.Vencimiento]
Carpeta=Ficha
Clave=Cxc.Vencimiento
Editar=S
3D=S
Tamano=20
EditarConBloqueo=N
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.Importe]
Carpeta=Ficha
Clave=Cxc.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
EspacioPrevio=N
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CxcA
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
ListaOrden=Cxc.ID<TAB>(Decendente)
CarpetaVisible=S
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroFechas=S
FiltroMovs=S
FiltroMovsTodos=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCampo=Cxc.Vencimiento
FiltroFechasDefault=(Todo)
FiltroMovDefault=(Todos)
BusquedaRapida=S
BusquedaInicializar=S
BusquedaAncho=20
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PENDIENTE
PestanaOtroNombre=S
PestanaNombre=movimientos
FiltroUsuarios=S
FiltroUsuarioDefault=(Todos)
BusquedaRespetarUsuario=S
BusquedaRespetarControlesNum=S
Filtros=S
FiltroPredefinido=S
FiltroEstilo=Directorio
FiltroAncho=30
FiltroAutoCampo=(Validaciones Memoria)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=Automático
FiltroAutoValidar=Mon
FiltroAplicaEn=Cxc.Moneda
FiltroSituacion=S
FiltroSituacionTodo=S
BusquedaRespetarFiltros=S
MenuLocal=S
ListaAcciones=(Lista)
BusquedaEnLinea=S
FiltroFechasCancelacion=Cxc.FechaCancelacion
FiltroSucursales=S
FiltroFechasVencimiento=S
FiltroFechasNombre=&Vencimiento
FiltroFechasCambiar=S

IconosNombre=CxcA:Cxc.Mov+<T> <T>+CxcA:Cxc.MovID
FiltroGeneral={Si(SQL(<T>SELECT ISNULL(Filtrar, 0) FROM SubModulo WHERE Modulo=:tModulo AND SubModulo=:tSub<T>, <T>CXC<T>, Info.SubModuloCxc), <T>Cxc.SubModulo=<T>+Comillas(Info.SubModuloCxc), <T>1=1<T>)}<BR>{Si(ConDatos(Filtro.Mov), <T> AND Cxc.Mov=<T>+Comillas(Filtro.Mov), <T><T>)}<BR>{Si(ConDatos(Filtro.Cliente), <T> AND Cxc.Cliente=<T>+Comillas(Filtro.Cliente), <T><T>)}<BR>{Si(ConDatos(Filtro.Tipo), <T> AND Cte.Tipo=<T>+Comillas(Filtro.Tipo), <T><T>)}
[(Carpeta Abrir).Columnas]
0=177
1=86

2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
[Ficha.ImporteTotal]
Carpeta=Ficha
Clave=ImporteTotal
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]
ColorFuente=Negro

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
EjecucionCondicion=Si(General.MovConcurrente y ConDatos(Cxc:Cxc.ID) y (Cxc:Cxc.UltimoCambio<>SQL(<T>spMovInfoVerUltimoCambio :nID, :tModulo<T>, Cxc:Cxc.ID, <T>CXC<T>)), Dialogo(<T>MovConcurrente<T>) AbortarOperacion)<BR>Verdadero

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

[Ficha.Cxc.Impuestos]
Carpeta=Ficha
Clave=Cxc.Impuestos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.FormaCobro]
Carpeta=Ficha
Clave=Cxc.FormaCobro
Editar=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

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
Vista=CxcD
Fuente={MS Sans Serif, 8, Negro, []}
VistaMaestra=Cxc
LlaveLocal=CxcD.ID
LlaveMaestra=Cxc.ID
ControlRenglon=S
CampoRenglon=CxcD.Renglon
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
ValidarCampos=S
ListaCamposAValidar=(Lista)
MenuLocal=S
ListaAcciones=Copiar
OtroOrden=S
ListaOrden=(Lista)
CondicionEdicion=(Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) o (MovTipoEn(<T>CXC<T>,Cxc:Cxc.Mov, (CXC.NC, CXC.NCD, CXC.NCF, CXC.DV, CXC.NCP)) y (Cxc:Cxc.Estatus=EstatusPendiente))
HojaFondoGrisAuto=S
PermiteLocalizar=S
HojaAjustarColumnas=S
CondicionVisible=ConDatos(Cxc:Cxc.Mov) y<BR>((MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) noen (CXC.F, CXC.A, CXC.DFA, CXC.AR, CXC.FA, CXC.AF, CXC.VV, CXC.OV, CXC.AV, CXC.CD, CXC.DE, CXC.DI, CXC.AJE, CXC.AJR, CXC.NCP)) y (Cxc:Cxc.AplicaManual o ((Cxc:Cxc.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar)) y (MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) noen (CXC.NC, CXC.NCD, CXC.NCF, CXC.DV, CXC.RA, CXC.FAC, CXC.DAC, CXC.PR, CXC.SD, CXC.SCH)))) o<BR>(MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.IM, CXC.RM))))

[Detalle.CxcD.Importe]
Carpeta=Detalle
Clave=CxcD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
EditarConBloqueo=N
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CxcD.Aplica]
Carpeta=Detalle
Clave=CxcD.Aplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
EditarConBloqueo=N
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CxcD.AplicaID]
Carpeta=Detalle
Clave=CxcD.AplicaID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
EditarConBloqueo=N
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Columnas]
Importe=83
Aplica=117
AplicaID=66
Fecha=94
UsarProntoPago=89
DescuentoProntoPago=119
AplicaProntoPago=99
DiferenciaNeta=80
SaldoNeto=81
Referencia=79
Vencimiento=94
ProntoPago=117
DiferenciaPorcentaje=38
DescuentoRecargos=104
DescuentoRecargosSugerido=64
DescuentoRecargosPorcentaje=38
ImporteIVAFiscal=64
ProporcionRetencion=53
ImporteIEPSFiscal=64
InteresesOrdinarios=69
InteresesMoratorios=75
InteresesOrdinariosQuita=47
InteresesMoratoriosQuita=44
ImpuestoAdicionalNeto=94
Retencion=64

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
Totalizadores1=Total<BR>IVA
Totalizadores2=Suma( CxcD:ImporteNeto )<BR>Suma(CxcD:ImporteIVAFiscal)
Totalizadores3=(Monetario)<BR>(Monetario)
Totalizadores=S
TotCarpetaRenglones=Detalle
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Total
CondicionVisible=ConDatos(Cxc:Cxc.Mov) y<BR>((MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) noen (CXC.F, CXC.A, CXC.DFA, CXC.AR, CXC.FA, CXC.AF, CXC.CA, CXC.CAD, CXC.CAP, CXC.VV, CXC.OV, CXC.AV, CXC.CD, CXC.DE, CXC.DI, CXC.AJE, CXC.AJR, CXC.NCP, CXC.SD, CXC.SCH)) y <BR>(Cxc:Cxc.AplicaManual o ((Cxc:Cxc.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar)) y (MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) noen (CXC.NC, CXC.NCD, CXC.NCF, CXC.DV, CXC.RA, CXC.PR)))) o<BR>(MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.IM, CXC.RM))))

[(Carpeta Totalizadores).Total]
Carpeta=(Carpeta Totalizadores)
Clave=Total
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]
ColorFuente=Negro

[Ficha.Cxc.AplicaManual]
Carpeta=Ficha
Clave=Cxc.AplicaManual
Editar=S
LineaNueva=S
3D=S
Tamano=15
EditarConBloqueo=N
ColorFondo=Blanco
ColorFuente=Negro

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
Expresion=Asigna(Afectar.Modulo, <T>CXC<T>)<BR>Asigna(Afectar.ID, Cxc:Cxc.ID)<BR>Asigna(Afectar.Mov, Cxc:Cxc.Mov)<BR>Asigna(Afectar.MovID, Cxc:Cxc.MovID)<BR>Asigna(Afectar.EnviarCFD, Falso)<BR>Asigna(Info.MovTipo, MovTipo(<T>CXC<T>, Cxc:Cxc.Mov))<BR>Asigna(Info.Cliente, Cxc:Cxc.Cliente)<BR>Asigna(Info.EnviarA, Cxc:Cxc.ClienteEnviarA)<BR>Asigna(Info.Agente, Cxc:Cte.Agente)<BR>Asigna(Info.Referencia, Cxc:Cxc.Referencia)<BR>Asigna(Info.Saldo, Suma(CxcD:ImporteNeto)-Cxc:ImporteTotal)<BR>Si<BR>  Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)<BR>Entonces<BR>  Si<BR>    (Info.MovTipo en (CXC.C, CXC.D, CXC.DM, CXC.NC, CXC.NCD, CXC.NCF, CXC.ANC, CXC.ACA, CXC.AE)) y Cxc:Cxc.AplicaManual y (ABS(Info.Saldo) > Config.CxcAutoAjuste)<BR>  Entonces<BR>    Si(no Forma(<T>CxcAplicaDif<T>), AbortarOperacion)<BR>  Fin<BR>  Afectar(<T>CXC<T>, Cxc:Cxc.ID, Cxc:Cxc.Mov, Cxc:Cxc.MovID, <T>Todo<T>, <T><T>, <T>Cxc<T>)<BR>Sino<BR>  Asigna(Info.Modulo, <T>CXC<T>)<BR>  Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>  Asigna(Info.MovID, Cxc:Cxc.MovID)<BR>  Asigna(Afectar.Modulo, <T>CXC<T>)<BR>  Asigna(Afectar.ID, Cxc:Cxc.ID)<BR>  Asigna(Afectar.Mov, Cxc:Cxc.Mov)<BR>  Asigna(Afectar.MovID, Cxc:Cxc.MovID)<BR>  Asigna(Afectar.FormaCaptura, <T>Cxc<T>)<BR>  Asigna(Info.TituloDialogo, Afectar.Mov+<T> <T>+Afectar.MovID)<BR><BR>  Si<BR>    Empresa.CFD y SQL(<T>spVerMovTipoCFD :tEmpresa, :tModulo, :tMov<T>, Empresa, Afectar.Modulo, Afectar.Mov)<BR>  Entonces<BR>    EjecutarSQL(<T>spAfectar :tModulo, :nID, :tAccion<T>, Afectar.Modulo, Afectar.ID, <T>CONSECUTIVO<T>)<BR>    Si(no CFD.Generar(Afectar.Modulo, Afectar.ID), Forma.ActualizarForma AbortarOperacion)<BR>    Asigna(Afectar.EnviarCFD, SQL(<T>SELECT EnviarAlAfectar FROM EmpresaCFD WHERE Empresa=:tEmpresa<T>, Empresa))<BR>  Fin<BR><BR>  Si<BR>    ConfigModulo(Info.Modulo, <T>FlujoAbierto<T>) = <T>Si<T><BR>  Entonces<BR>    Si<BR>      Forma(<T>GenerarMovFlujo<T>)<BR>    Entonces<BR>      Asigna(Afectar.GenerarMov, Info.MovGenerar)<BR>      Generar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>    Fin<BR>  Sino<BR>    Caso Info.MovTipo<BR>      Es CXC.A   Entonces Dialogo(<T>GenerarCxcAnticipo<T>)<BR>      Es CXC.AR  Entonces Dialogo(<T>GenerarCxcAnticipo<T>)<BR>      Es CXC.DA  Entonces Dialogo(<T>GenerarCxcDocumentoAnticipo<T>)<BR>      Es CXC.NC  Entonces Dialogo(<T>GenerarCxcNCredito<T>)<BR>      Es CXC.DAC Entonces Dialogo(<T>GenerarCxcNCredito<T>)<BR>      Es CXC.NCD Entonces Dialogo(<T>GenerarCxcNCredito<T>)<BR>      Es CXC.NCF Entonces Dialogo(<T>GenerarCxcNCredito<T>)<BR>      Es CXC.DV Entonces Dialogo(<T>GenerarCxcNCredito<T>)<BR>      Es CXC.NCP Entonces Asigna(Afectar.GenerarMov, ConfigMov.CxcAplicacion) Dialogo(<T>GenerarAplicacionCredito<T>)<BR>      Es CXC.DP  Entonces Dialogo(<T>GenerarCxcCobroPosfechado<T>)<BR>      Sino Dialogo(<T>GenerarCxcCobro<T>)<BR>    Fin<BR>  Fin<BR><BR>  Si(Afectar.EnviarCFD, CFD.Enviar(Afectar.Modulo, Afectar.ID))<BR>Fin
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, Cxc:Cxc.Usuario) y<BR>((Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)) o ((Cxc:Cxc.Estatus=EstatusPendiente) y MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.F, CXC.FA, CXC.AF, CXC.CA, CXC.CAD, CXC.CAP, CXC.VV, CXC.OV, CXC.IM, CXC.RM, CXC.D, CXC.DM, CXC.DP, CXC.CD, CXC.A, CXC.AR, CXC.DA, CXC.NC, CXC.NCD, CXC.NCF, CXC.DV, CXC.NCP, CXC.FAC, CXC.DAC))))  y<BR>PuedeAvanzarEstatus(<T>CXC<T>, Cxc:Cxc.Mov, Cxc:Cxc.Estatus, FormaSituacion)
EjecucionCondicion=ConDatos(Cxc:Cxc.Mov)
AntesExpresiones=Si<BR>  General.CamposExtras=<T>Campos Extras<T> y (Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)) y SQL(<T>SELECT CEAntesAfectar FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMov AND CE=1<T>, <T>CXC<T>, Cxc:Cxc.Mov)<BR>Entonces<BR>  Si(no CamposExtrasMovimiento(<T>CXC<T>, Cxc:Cxc.Mov, Cxc:Cxc.ID, Verdadero, Cxc:Cxc.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)), AbortarOperacion)<BR>FIn

[Ficha.Cxc.Saldo]
Carpeta=Ficha
Clave=Cxc.Saldo
Editar=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=$00808040
Efectos=[Negritas]
LineaNueva=N

[(Carpeta Abrir).ImporteTotal]
Carpeta=(Carpeta Abrir)
Clave=ImporteTotal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
Totalizador=1
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).Cxc.Saldo]
Carpeta=(Carpeta Abrir)
Clave=Cxc.Saldo
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Copiar]
Nombre=Copiar
Boton=0
UsaTeclaRapida=S
TeclaRapida=F5
NombreDesplegar=Copiar
EnMenu=S
TipoAccion=Expresion
Visible=S
Expresion=Asigna( CxcD:CxcD.Importe, CxcD:SaldoNeto)<BR>Asigna( CxcD:CxcD.DescuentoRecargos, CxcD:DescuentoRecargosSugerido)
ActivoCondicion=Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)

[(Carpeta Abrir).Cxc.Vencimiento]
Carpeta=(Carpeta Abrir)
Clave=Cxc.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Asistente Aplicacion]
Nombre=Asistente Aplicacion
Boton=12
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F7
NombreDesplegar=Asistente Aplicación
EnBarraHerramientas=S
EnMenu=S
Carpeta=Detalle
TipoAccion=Wizards
ClaveAccion=Asistente Cxc
ListaParametros1=Cxc:Cxc.Cliente<BR>Cxc:Cte.Nombre<BR>Cxc:ImporteTotal<BR>CxcD:CxcD.Aplica<BR>CxcD:CxcD.AplicaID<BR>CxcD:CxcD.Importe<BR>CxcD:CxcD.Fecha<BR>Cxc:Cxc.ClienteMoneda<BR>MovTipo(<T>CXC<T>, Cxc:Cxc.Mov)=CXC.IM<BR>MovTipo(<T>CXC<T>, Cxc:Cxc.Mov)=CXC.RM<BR>Cxc:Cxc.Importe
ListaParametros=S
Visible=S
ActivoCondicion=(Cxc:Cxc.AplicaManual y<BR>((MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.NC,CXC.NCD, CXC.NCF,CXC.DV,CXC.NCP,CXC.D,CXC.DM,CXC.DP,CXC.AE,CXC.ANC,CXC.ACA,CXC.C,CXC.A,CXC.AR,CXC.AJM,CXC.AJA,CXC.NET)) y (Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar))) o<BR>(MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.NC, CXC.NCD, CXC.NCF, CXC.DV, CXC.NCP)) y (Cxc:Cxc.Estatus=EstatusPendiente)))) o <BR>(MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.IM,CXC.RM)) y (Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar))) y<BR>(Cxc:Cxc.Moneda=Cxc:Cxc.ClienteMoneda)

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
ActivoCondicion=Vacio(Cxc:Cxc.MovID) y (Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, Cxc:Cxc.Usuario)
ConCondicion=S
EjecucionCondicion=Vacio(SQL(<T>SELECT MovID FROM Cxc WHERE ID=:nID<T>, Cxc:Cxc.ID))
EjecucionMensaje=Forma.ActualizarForma<BR><T>El movimiento ya fue afectado por otro usuario<T>
EjecucionConError=S

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
ListaParametros1=Cxc:Cxc.ID
Visible=S
TeclaRapida=Alt+F11
Expresion=ReportePantalla(ReporteMovPantalla(<T>CXC<T>, Cxc:Cxc.Mov, Cxc:Cxc.Estatus), Cxc:Cxc.ID)
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
ListaParametros1=Cxc:Cxc.ID
Visible=S
Activo=
EspacioPrevio=S
GuardarAntes=S
Expresion=ReporteImpresora(ReporteMovImpresora(<T>CXC<T>, Cxc:Cxc.Mov, Cxc:Cxc.Estatus), Cxc:Cxc.ID)
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
Multiple=S
ListaAccionesMultiples=TotalizarPost<BR>TotalizarCopiar
ActivoCondicion=(no MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.F, CXC.FA, CXC.AF, CXC.CA, CXC.CAD, CXC.CAP, CXC.VV, CXC.OV, CXC.IM, CXC.RM))) y (Cxc:Cxc.AplicaManual o (Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)))
VisibleCondicion=Cxc:Cxc.AplicaManual

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
Expresion=Cancelar(<T>CXC<T>, Cxc:Cxc.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>Cxc<T>)
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs, Cxc:Cxc.Usuario) y ConDatos(Cxc:Cxc.ID) y ConDatos(Cxc:Cxc.MovID) y <BR>(Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusSincro, EstatusConcluido, EstatusPendiente))
AntesExpresiones=Asigna( Afectar.Mov, Cxc:Cxc.Mov ) <BR>Asigna( Afectar.MovID, Cxc:Cxc.MovID )

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
Expresion=Verificar(<T>CXC<T>, Cxc:Cxc.ID,Cxc:Cxc.Mov,Cxc:Cxc.MovID)
ActivoCondicion=Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)
EjecucionCondicion=ConDatos(Cxc:Cxc.Mov)

[Ficha.Cte.Nombre]
Carpeta=Ficha
Clave=Cte.Nombre
Editar=S
3D=S
Tamano=29
ColorFondo=Plata
Efectos=[Negritas]
Pegado=N
ColorFuente=Negro

[Ficha.CxcSaldo.Saldo]
Carpeta=Ficha
Clave=CxcSaldo.Saldo
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Azul marino
Efectos=[Negritas]

[Acciones.Infomacion]
Nombre=Infomacion
Boton=34
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+I
NombreDesplegar=&Información del Cliente
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S
Expresion=Si <BR>  ConDatos(Cxc:Cxc.Cliente)<BR>Entonces<BR>  Si <BR>    (Cxc:Cte.Tipo<><T>Deudor<T>) o Usuario.VerInfoDeudores<BR>  Entonces<BR>    Asigna( Info.Cliente,Cxc:Cxc.Cliente ) <BR>    Asigna(Info.Origen, <T>CXC<T>)<BR>    Forma( <T>CteInfo<T> )<BR>  Fin<BR>Fin
ActivoCondicion=Usuario.CteInfo

[Ficha.Cxc.TipoCambio]
Carpeta=Ficha
Clave=Cxc.TipoCambio
Editar=S
3D=S
Tamano=10
Pegado=S
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.ClienteMoneda]
Carpeta=Ficha
Clave=Cxc.ClienteMoneda
Editar=S
3D=S
Tamano=11
ValidaNombre=S
ColorFuente=Negro
Pegado=S
ColorFondo=Blanco

[Ficha.Cxc.ConDesglose]
Carpeta=Ficha
Clave=Cxc.ConDesglose
Editar=S
3D=S
Tamano=22
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cxc.CtaDinero]
Carpeta=Ficha
Clave=Cxc.CtaDinero
Editar=S
3D=S
Tamano=13
ValidaNombre=S
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S

[Acciones.InfoCtaDinero]
Nombre=InfoCtaDinero
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Mayús+Ctrl+I
NombreDesplegar=Información de la Cuenta
EnMenu=S
TipoAccion=Expresion
Visible=S
ConCondicion=S
Expresion=Asigna(Info.CtaDinero, Cxc:Cxc.CtaDinero)<BR>Forma(<T>CtaDineroInfo<T>)
ActivoCondicion=MovTipoEn(<T>CXC<T>,Cxc:Cxc.Mov, (CXC.C, CXC.DP, CXC.NCP, CXC.A, CXC.AR, CXC.AA, CXC.DE, CXC.DI, CXC.DC, CXC.CD)) y Usuario.CtaDineroInfo
EjecucionCondicion=ConDatos(Cxc:Cxc.CtaDinero)

[(Carpeta Abrir).Cxc.Referencia]
Carpeta=(Carpeta Abrir)
Clave=Cxc.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Aplica]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Movimiento a Aplicar
Clave=Aplica
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cxc
Fuente={MS Sans Serif, 8, Negro, []}
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
CondicionVisible=MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) en (CXC.ANC, CXC.ACA, CXC.RA, CXC.FAC, CXC.DAC)

[Aplica.Cxc.MovAplica]
Carpeta=Aplica
Clave=Cxc.MovAplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.Cxc.MovAplicaID]
Carpeta=Aplica
Clave=Cxc.MovAplicaID
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

[Aplica.Cxc.Cliente]
Carpeta=Aplica
Clave=Cxc.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Aplica.Cte.Nombre]
Carpeta=Aplica
Clave=Cte.Nombre
Editar=S
3D=S
Tamano=55
ColorFondo=Plata
Efectos=[Negritas]
ColorFuente=Negro

[(Carpeta Abrir).Cxc.Concepto]
Carpeta=(Carpeta Abrir)
Clave=Cxc.Concepto
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
NombreDesplegar=&Posición del Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPos
Antes=S
Visible=S
ActivoCondicion=ConDatos(Cxc:Cxc.MovID)
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)

[Acciones.DepositosAnticipados]
Nombre=DepositosAnticipados
Boton=0
Menu=&Ver
NombreDesplegar=&Depósitos Anticipados Pendientes
EnMenu=S
TipoAccion=Formas
ClaveAccion=DineroDepositosAnticipados
Activo=S
Visible=S
EspacioPrevio=S

[Detalle.CxcD.Fecha]
Carpeta=Detalle
Clave=CxcD.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Desglose]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Desglose del cobro
Clave=Desglose
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cxc
Fuente={MS Sans Serif, 8, Negro, []}
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
CondicionVisible=(MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.C, CXC.A, CXC.AR, CXC.AA, CXC.DE, CXC.CAP))) y Cxc:Cxc.ConDesglose

[Desglose.Cxc.Importe1]
Carpeta=Desglose
Clave=Cxc.Importe1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.FormaCobro1]
Carpeta=Desglose
Clave=Cxc.FormaCobro1
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Referencia1]
Carpeta=Desglose
Clave=Cxc.Referencia1
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Importe2]
Carpeta=Desglose
Clave=Cxc.Importe2
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.FormaCobro2]
Carpeta=Desglose
Clave=Cxc.FormaCobro2
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Referencia2]
Carpeta=Desglose
Clave=Cxc.Referencia2
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Importe3]
Carpeta=Desglose
Clave=Cxc.Importe3
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.FormaCobro3]
Carpeta=Desglose
Clave=Cxc.FormaCobro3
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Referencia3]
Carpeta=Desglose
Clave=Cxc.Referencia3
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Importe4]
Carpeta=Desglose
Clave=Cxc.Importe4
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.FormaCobro4]
Carpeta=Desglose
Clave=Cxc.FormaCobro4
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Referencia4]
Carpeta=Desglose
Clave=Cxc.Referencia4
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Importe5]
Carpeta=Desglose
Clave=Cxc.Importe5
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.FormaCobro5]
Carpeta=Desglose
Clave=Cxc.FormaCobro5
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Referencia5]
Carpeta=Desglose
Clave=Cxc.Referencia5
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.Cxc.Cambio]
Carpeta=Desglose
Clave=Cxc.Cambio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Desglose.CobroTotal]
Carpeta=Desglose
Clave=CobroTotal
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]
ColorFuente=Negro

[Desglose.Cxc.DelEfectivo]
Carpeta=Desglose
Clave=Cxc.DelEfectivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

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
ActivoCondicion=(ConfigModulo(<T>CXC<T>,<T>Situaciones<T>)=<T>Si<T>) y Usuario.ModificarSituacion y<BR>PuedeAvanzarSituacion(<T>CXC<T>, Cxc:Cxc.Mov, Cxc:Cxc.Estatus, FormaSituacion)
AntesExpresiones=Si(Vacio(Cxc:Cxc.ID),GuardarCambios)

[Acciones.Tiempo]
Nombre=Tiempo
Boton=0
Menu=&Ver
NombreDesplegar=&Tiempos
EnMenu=S
TipoAccion=Formas
ClaveAccion=VerMovTiempo
ConCondicion=S
Antes=S
Visible=S
EspacioPrevio=S
ActivoCondicion=ConfigModulo(<T>CXC<T>,<T>Tiempos<T>)=<T>Si<T>
EjecucionCondicion=ConDatos(Cxc:Cxc.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)

[(Carpeta Abrir).Cxc.Cliente]
Carpeta=(Carpeta Abrir)
Clave=Cxc.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).Cxc.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=Cxc.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.AbrirPropiedades]
Nombre=AbrirPropiedades
Boton=0
NombreDesplegar=P&ropiedades
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
ActivoCondicion=ConDatos(CxcA:Cxc.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, CxcA:Cxc.ID)
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
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Usuario, Cxc:Cxc.Usuario)
VisibleCondicion=Usuario.ModificarUsuario y ConDatos(Cxc:Cxc.ID)

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
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.Fecha, Cxc:Cxc.FechaEmision)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (Cxc:Cxc.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, Cxc:Cxc.Mov+<T> <T>+Cxc:Cxc.MovID)

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
ActivoCondicion=Cxc:Cxc.Estatus noen (EstatusConcluido, EstatusCancelado) y PuedeModificar(Cxc:Cxc.Usuario)
EjecucionCondicion=Si(Vacio(Cxc:Cxc.ID),  GuardarCambios)<BR>Verdadero
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)

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
Antes=S
Visible=S
EjecucionCondicion=Si(Vacio(Cxc:Cxc.ID),  GuardarCambios)<BR>Verdadero
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)<BR>Asigna(Info.PuedeEditar, Cxc:Cxc.Estatus noen (EstatusConcluido, EstatusCancelado) y PuedeModificar(Cxc:Cxc.Usuario))

[Acciones.Propiedades]
Nombre=Propiedades
Boton=0
Menu=&Archivo
NombreDesplegar=Propie&dades
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
ActivoCondicion=ConDatos(Cxc:Cxc.ID)
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)
Visible=S

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
Expresion=CopiarMovimiento(<T>CXC<T>, Cxc:Cxc.ID, <T>Cxc<T>)

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

[Detalle.DiferenciaNeta]
Carpeta=Detalle
Clave=DiferenciaNeta
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Acciones.MovExpress]
Nombre=MovExpress
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Alt+F8
NombreDesplegar=&Agregar Movimiento
Multiple=S
EnMenu=S
TipoAccion=Expresion
ListaAccionesMultiples=CxcExpress<BR>Agregar<BR>Expresion
Visible=S
Antes=S
ActivoCondicion=Usuario.CxcMovExpress y (Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) y Cxc:Cxc.AplicaManual
AntesExpresiones=Asigna(Def.Cliente, Cxc:Cxc.Cliente)<BR>Asigna(Def.EnviarA, Cxc:Cxc.ClienteEnviarA)<BR>Asigna(Def.Agente, Cxc:Cxc.Agente)

[Acciones.MovExpress.Agregar]
Nombre=Agregar
Boton=0
Carpeta=Detalle
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S
ConCondicion=S
EjecucionCondicion=Info.Copiar

[Acciones.MovExpress.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
ConCondicion=S
Expresion=Asigna(CxcD:CxcD.Aplica, Info.Mov)<BR>Asigna(CxcD:CxcD.AplicaID, Info.MovID)
EjecucionCondicion=Info.Copiar

[Acciones.MovExpress.CxcExpress]
Nombre=CxcExpress
Boton=0
TipoAccion=Formas
ClaveAccion=CxcExpress
Activo=S
Visible=S

[Ficha.Cxc.ClienteEnviarA]
Carpeta=Ficha
Clave=Cxc.ClienteEnviarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=25

[Ficha.CteEnviarA.Nombre]
Carpeta=Ficha
Clave=CteEnviarA.Nombre
Editar=S
3D=S
Tamano=29
ColorFondo=Plata
ColorFuente=Negro
Pegado=N

[Acciones.AfectarLote]
Nombre=AfectarLote
Boton=0
NombreDesplegar=<T>&Afectar Selección<T>
RefrescarIconos=S
EnLote=S
EnMenu=S
TipoAccion=Expresion
Expresion=Afectar(<T>Cxc<T>, CxcA:Cxc.ID, CxcA:Cxc.Mov, CxcA:Cxc.MovID, <T>Todo<T>, <T><T>, <T>Cxc<T>)
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, CxcA:Cxc.Usuario)
VisibleCondicion=Usuario.AfectarLote

[Acciones.SeleccionarTodo]
Nombre=SeleccionarTodo
Boton=0
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
NombreDesplegar=Seleccionar &Todo
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
VisibleCondicion=Usuario.AfectarLote

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
Menu=&Edición
NombreDesplegar=&Campos...
RefrescarDespues=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CxcCampos
ActivoCondicion=no FormaBloqueada
Antes=S
AntesExpresiones=Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)
VisibleCondicion=Cxc:Cxc.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar)

[Acciones.Embarcar]
Nombre=Embarcar
Boton=0
Menu=&Archivo
NombreDesplegar=E&mbarcar...
EnMenu=S
TipoAccion=Expresion
Visible=S
Expresion=Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)<BR>Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Estatus, Cxc:Cxc.Estatus)<BR>Dialogo(<T>MovEmbarcar<T>)
ActivoCondicion=Cxc:Cxc.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusSincro, EstatusCancelado) y (no FormaBloqueada)

[Ficha.Cxc.ClienteTipoCambio]
Carpeta=Ficha
Clave=Cxc.ClienteTipoCambio
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco
ColorFuente=Negro

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
ActivoCondicion=Usuario.ModificarSucursalDestino y (Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) y (no FormaBloqueada)
Antes=S
AntesExpresiones=Si(Vacio(Cxc:Cxc.ID),GuardarCambios)
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

[Acciones.Anticipos]
Nombre=Anticipos
Boton=61
Menu=&Edición
NombreDesplegar=Anticipos
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
ConCondicion=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+Alt+F7
Expresion=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.Moneda, Cxc:Cxc.Moneda)<BR>Asigna(Info.Cuenta, Cxc:Cxc.Cliente)<BR>Si<BR>  Forma(<T>AnticipoPendiente<T>)<BR>Entonces<BR>  Asigna(Cxc:Cxc.Referencia, Info.Referencia)<BR>  Si<BR>    Cxc:Cxc.ConDesglose<BR>  Entonces<BR>    Asigna(Cxc:Cxc.Importe1, Info.Importe)<BR>  Sino<BR>    Asigna(Cxc:Cxc.Impuestos, Info.Importe-QuitarPorcentaje(Info.Importe, Def.CxImpuesto))<BR>    Asigna(Cxc:Cxc.Importe, Info.Importe-Cxc:Cxc.Impuestos)<BR>  Fin<BR>Fin
ActivoCondicion=(Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) y (MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) = CXC.AA)
EjecucionCondicion=ConDatos(Cxc:Cxc.Cliente)

[Acciones.Vales]
Nombre=Vales
Boton=96
Menu=&Edición
UsaTeclaRapida=S
NombreDesplegar=Va&les
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
GuardarAntes=S
Antes=S
DespuesGuardar=S
TeclaRapida=Ctrl+L
EspacioPrevio=S
RefrescarDespues=S
Expresion=Si(Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar), Forma(<T>ValeSerieMov<T>), Forma(<T>ValeSerieMovInfo<T>))
ActivoCondicion=MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.A, CXC.AR, CXC.AA, CXC.C))
ConCondicion=S
EjecucionCondicion=Asigna(Cxc:Cxc.ConDesglose, Verdadero) <BR>Verdadero
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)<BR>Asigna(Info.Moneda, Cxc:Cxc.Moneda)

[Detalle.DiferenciaPorcentaje]
Carpeta=Detalle
Clave=DiferenciaPorcentaje
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Detalle.CxcD.DescuentoRecargos]
Carpeta=Detalle
Clave=CxcD.DescuentoRecargos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.DescuentoRecargosSugerido]
Carpeta=Detalle
Clave=DescuentoRecargosSugerido
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Detalle.DescuentoRecargosPorcentaje]
Carpeta=Detalle
Clave=DescuentoRecargosPorcentaje
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Acciones.Totalizar.TotalizarCopiar]
Nombre=TotalizarCopiar
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Si<BR>  Cxc:Cxc.AplicaManual y MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.C, CXC.CD, CXC.D, CXC.DM)) y Config.CxcCobroImpuestos<BR>Entonces<BR>  Asigna(Cxc:Cxc.Importe, Suma(CxcD:ImporteNeto)-Suma(CxcD:ImporteIVAFiscal))<BR>  Asigna(Cxc:Cxc.Impuestos, Suma(CxcD:ImporteIVAFiscal))<BR>Sino<BR>  Asigna(Cxc:Cxc.Importe, Suma(CxcD:ImporteNeto) / (1+(Si(MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.F,CXC.FA,CXC.AF,CXC.NC,CXC.CA,CXC.IM,CXC.RM)), (ImpuestoZona(General.DefImpuesto, Cxc:Cte.ZonaImpuesto, Cxc:Cxc.ClienteEnviarA, Cxc:CteEnviarA.ZonaImpuesto)/100), 0))))<BR>Fin

[Acciones.Totalizar.TotalizarPost]
Nombre=TotalizarPost
Boton=0
Carpeta=Detalle
TipoAccion=Controles Captura
ClaveAccion=Registro Afectar
Activo=S
Visible=S

[Acciones.Consecutivo]
Nombre=Consecutivo
Boton=0
Menu=&Archivo
NombreDesplegar=A&signar Consecutivo
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Visible=S
RefrescarDespues=S
Expresion=ProcesarSQL(<T>spAfectar :tModulo, :nID, :tAccion<T>, <T>CXC<T>, Cxc:Cxc.ID, <T>CONSECUTIVO<T>)
ActivoCondicion=Vacio(Cxc:Cxc.MovID) y PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, Cxc:Cxc.Usuario)

[Ficha.Cxc.Cajero]
Carpeta=Ficha
Clave=Cxc.Cajero
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
Pegado=N

[Ficha.Cxc.Agente]
Carpeta=Ficha
Clave=Cxc.Agente
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=N

[Aplica.CxcPendiente.Referencia]
Carpeta=Aplica
Clave=CxcPendiente.Referencia
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Aplica.CxcPendiente.FechaEmision]
Carpeta=Aplica
Clave=CxcPendiente.FechaEmision
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Plata
ColorFuente=Negro
Tamano=12
Pegado=S

[Aplica.CxcPendiente.Vencimiento]
Carpeta=Aplica
Clave=CxcPendiente.Vencimiento
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Plata
ColorFuente=Negro
Tamano=12
Pegado=S

[Detalle.ImporteIVAFiscal]
Carpeta=Detalle
Clave=ImporteIVAFiscal
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Ficha.Cxc.UEN]
Carpeta=Ficha
Clave=Cxc.UEN
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
EjecucionCondicion=ConDatos(Cxc:Cxc.Proyecto)
AntesExpresiones=Asigna(Info.Proyecto, Cxc:Cxc.Proyecto)

[Ficha.Cxc.PersonalCobrador]
Carpeta=Ficha
Clave=Cxc.PersonalCobrador
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ProporcionRetencion]
Carpeta=Detalle
Clave=ProporcionRetencion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Acciones.ImporteConImpuestos]
Nombre=ImporteConImpuestos
Boton=10
NombreDesplegar=&Importe con Impuestos
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+F6
Expresion=Asigna(Info.Importe, Cxc:ImporteTotal)<BR>Asigna(Info.PorcentajeImpuesto, ImpuestoZona(Redondea(Def.CxImpuesto, 8), Cxc:Cte.ZonaImpuesto, Cxc:Cxc.ClienteEnviarA, Cxc:CteEnviarA.ZonaImpuesto))<BR>Si<BR>  Forma(<T>EspecificarImporteConImpuestos<T>)<BR>Entonces<BR>  Asigna(Cxc:Cxc.Importe,  Redondea(Info.Importe/(1+(Info.PorcentajeImpuesto/100)), 4))<BR>  Asigna(Cxc:Cxc.Impuestos, Info.Importe-Cxc:Cxc.Importe)<BR>Fin
ActivoCondicion=(Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) y <BR>(MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.F,CXC.FA,CXC.AF,CXC.NC,CXC.CA,CXC.IM,CXC.RM,CXC.A,CXC.AR,CXC.AA,CXC.DE)) o <BR>(MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.C, CXC.CD)) y Config.CxcCobroImpuestos))

[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=0
Menu=&Archivo
NombreDesplegar=E&valuaciones
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Expresion=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.Clave, <T>CXC<T>+Cxc:Cxc.ID)<BR>Asigna(Info.Nombre, Cxc:Cxc.Mov+<T> <T>+Cxc:Cxc.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(Cxc:Cxc.Estatus en (EstatusConcluido, EstatusCancelado), <T>EvaluacionCalificacionInfo<T>, <T>EvaluacionCalificacion<T>))
Activo=S
Visible=S

[Ficha.Cxc.FechaOriginal]
Carpeta=Ficha
Clave=Cxc.FechaOriginal
Editar=S
ValidaNombre=S
3D=S
Tamano=17
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CopiarMeses]
Nombre=CopiarMeses
Boton=0
Menu=&Archivo
NombreDesplegar=Copiar en el Tiempo...
GuardarAntes=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)<BR>Si(no Forma(<T>MovCopiarMeses<T>),  AbortarOperacion)

[Acciones.AnticiposFacturados]
Nombre=AnticiposFacturados
Boton=0
Menu=&Edición
NombreDesplegar=Anticipos Facturados...
EnMenu=S
TipoAccion=Expresion
GuardarAntes=S
RefrescarDespues=S
Expresion=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Cliente, Cxc:Cxc.Cliente)<BR>Asigna(Info.Nombre, Cxc:Cte.Nombre)<BR>Forma(<T>CxcAnticiposPendientes<T>)
ActivoCondicion=Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)
VisibleCondicion=Config.CxcAnticiposFacturados y (MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) = CXC.DFA)

[Detalle.ImporteIEPSFiscal]
Carpeta=Detalle
Clave=ImporteIEPSFiscal
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Acciones.Tareas]
Nombre=Tareas
Boton=70
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
NombreDesplegar=&Tareas
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=Tarea
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
AntesExpresiones=Asigna(Info.PuedeEditar, Cxc:Cxc.Estatus noen (EstatusConcluido, EstatusCancelado))<BR>Asigna(Info.Nombre, Nulo)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)<BR>Asigna(Info.Proyecto, Cxc:Cxc.Proyecto)<BR>Asigna(Info.UEN, Cxc:Cxc.UEN)<BR>Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR><BR>Asigna(Info.Cliente, Cxc:Cxc.Cliente)<BR>Asigna(Info.Proveedor, Nulo)<BR>Asigna(Info.Agente, Cxc:Cxc.Cobrador)<BR>Asigna(Info.Personal, Nulo)<BR>Asigna(Info.Reporte, Nulo)

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
Vista=Cxc
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
CarpetaVisible=S

[Comentarios.Cxc.Comentarios]
Carpeta=Comentarios
Clave=Cxc.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=89x12
ColorFondo=Blanco
ColorFuente=Negro

[Comentarios.Cxc.Nota]
Carpeta=Comentarios
Clave=Cxc.Nota
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=47
ColorFondo=Blanco
ColorFuente=Negro

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
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)<BR>Asigna(Info.Fecha, Cxc:Cxc.FechaEmision)<BR>Asigna(Info.Estatus, Cxc:Cxc.Estatus)

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
EjecucionCondicion=ConDatos(Cxc:Cxc.Mov)
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.Clave, Cxc:Cxc.Mov)

[Acciones.PoliticaConcepto]
Nombre=PoliticaConcepto
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Mayús+Ctrl+O
NombreDesplegar=Política Co&ncepto
EnMenu=S
TipoAccion=Formas
ClaveAccion=ConceptoPoliticaInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cxc:Cxc.Concepto)
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Concepto, Cxc:Cxc.Concepto)

[AC]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Crédito
Clave=AC
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cxc
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
CondicionVisible=General.AC y MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.F,CXC.CA,CXC.CAP,CXC.CAD,CXC.D,CXC.DM))

[AC.Cxc.LineaCredito]
Carpeta=AC
Clave=Cxc.LineaCredito
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[AC.LC.Descripcion]
Carpeta=AC
Clave=LC.Descripcion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=36
ColorFondo=Plata
ColorFuente=Negro

[AC.LC.VigenciaHasta]
Carpeta=AC
Clave=LC.VigenciaHasta
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro

[AC.Cxc.TipoAmortizacion]
Carpeta=AC
Clave=Cxc.TipoAmortizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[AC.TipoAmortizacion.Descripcion]
Carpeta=AC
Clave=TipoAmortizacion.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=36
ColorFondo=Plata
ColorFuente=Negro

[AC.Cxc.TipoTasa]
Carpeta=AC
Clave=Cxc.TipoTasa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[AC.TipoTasa.Descripcion]
Carpeta=AC
Clave=TipoTasa.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=36
ColorFondo=Plata
ColorFuente=Negro

[AC.Cxc.Condicion]
Carpeta=AC
Clave=Cxc.Condicion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[AC.Cxc.Vencimiento]
Carpeta=AC
Clave=Cxc.Vencimiento
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Sugerir]
Nombre=Sugerir
Boton=20
Menu=&Archivo
NombreDesplegar=&Sugerir
GuardarAntes=S
RefrescarDespues=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
EspacioPrevio=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+F7
Expresion=Asigna(Info.Importe, Vacio(Cxc:ImporteTotal, Nulo))<BR>Asigna(Info.Acreditado, Cxc:Cxc.Cliente)<BR>Si(Forma(<T>SugerirCobro<T>), EjecutarSQL(<T>spSugerirCobro :tSugerir, :tModulo, :nID, :nTotal<T>, Info.SugerirCobro, <T>CXC<T>, Cxc:Cxc.ID, Info.Importe))
ActivoCondicion=(Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)) y MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.C, CXC.D, CXC.DM))

[Acciones.TablaAmortizacion]
Nombre=TablaAmortizacion
Boton=88
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+Alt+M
NombreDesplegar=Tabla Amortización
TipoAccion=Formas
ClaveAccion=TablaAmortizacionCxc
Antes=S
ActivoCondicion=Cxc:Cxc.Amortizaciones>0
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)

[Detalle.CxcD.InteresesOrdinarios]
Carpeta=Detalle
Clave=CxcD.InteresesOrdinarios
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CxcD.InteresesMoratorios]
Carpeta=Detalle
Clave=CxcD.InteresesMoratorios
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CxcD.InteresesOrdinariosQuita]
Carpeta=Detalle
Clave=CxcD.InteresesOrdinariosQuita
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CxcD.InteresesMoratoriosQuita]
Carpeta=Detalle
Clave=CxcD.InteresesMoratoriosQuita
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[AC.Cxc.Comisiones]
Carpeta=AC
Clave=Cxc.Comisiones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[AC.Cxc.ComisionesIVA]
Carpeta=AC
Clave=Cxc.ComisionesIVA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[AC.TotalComisiones]
Carpeta=AC
Clave=TotalComisiones
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[AC.LC.VigenciaDesde]
Carpeta=AC
Clave=LC.VigenciaDesde
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro

[Acciones.Voucher]
Nombre=Voucher
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+Alt+V
NombreDesplegar=&Voucher
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CxcVoucher
Activo=S
Antes=S
DespuesGuardar=S
RefrescarDespues=S
AntesExpresiones=Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Cliente, Cxc:Cxc.Cliente)<BR>Asigna(Info.Moneda, Cxc:Cxc.Moneda)<BR>Asigna(Info.Importe, Cxc:ImporteTotal)<BR>Asigna(Info.Estatus, Cxc:Cxc.Estatus)
VisibleCondicion=MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) = CXC.C

[VIN.Cxc.VIN]
Carpeta=VIN
Clave=Cxc.VIN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Comentarios.Cxc.VIN]
Carpeta=Comentarios
Clave=Cxc.VIN
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Comentarios.Cxc.ContUso]
Carpeta=Comentarios
Clave=Cxc.ContUso
Editar=S
ValidaNombre=S
3D=S
Tamano=20
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
Expresion=Asigna(Info.Forma, <T>Cxc<T>)<BR>Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.Nombre, Cxc:Cxc.Mov)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin
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
Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasMovimiento(<T>CXC<T>, Cxc:Cxc.Mov, Cxc:Cxc.ID, Falso, Cxc:Cxc.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))<BR>Sino<BR>  Asigna(Info.Aplica, <T>Movimiento<T>)<BR>  Asigna(Info.Clave, <T>CXC<T>+Cxc:Cxc.ID)<BR>  Asigna(Info.Nombre, Cxc:Cxc.Mov+<T> <T>+Cxc:Cxc.MovID)<BR>  Asigna(Info.Modulo, <T>CXC<T>)<BR>  Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>  Asigna(Info.Categoria, Nulo)<BR>  Asigna(Info.Grupo, Nulo)<BR>  Asigna(Info.Familia, Nulo)<BR>  Asigna(Info.Departamento, Nulo)<BR>  Asigna(Info.Puesto, Nulo)<BR>  Asigna(Info.SIC, Nulo)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaExtraVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si<BR>    ConDatos(Info.FormaTipo)<BR>  Entonces<BR>    Si <BR>      Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)<BR>    Entonces<BR>      iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Sino<BR>      iConsulta(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Fin<BR>  Sino<BR>    Informacion(<T>No Tiene Definida Ninguna Forma<T>)<BR>  Fin<BR>Fin

[AC.Cxc.TieneTasaEsp]
Carpeta=AC
Clave=Cxc.TieneTasaEsp
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[AC.Cxc.TasaEsp]
Carpeta=AC
Clave=Cxc.TasaEsp
Editar=S
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.ImpuestoAdicionalNeto]
Carpeta=Detalle
Clave=ImpuestoAdicionalNeto
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Acciones.ACRecorrerVencimiento]
Nombre=ACRecorrerVencimiento
Boton=0
Menu=&Archivo
NombreDesplegar=Recorrer &Vencimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=ACRecorrerVencimiento
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)
VisibleCondicion=General.AC y (Cxc:Cxc.Estatus=EstatusConcluido)

[Acciones.ACBajaParcial]
Nombre=ACBajaParcial
Boton=0
Menu=&Archivo
NombreDesplegar=&Baja Parcial
EnMenu=S
TipoAccion=Formas
ClaveAccion=ACBajaParcial
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)
VisibleCondicion=General.AC y (Cxc:Cxc.Estatus=EstatusConcluido)

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
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)
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
ActivoCondicion=Usuario.EnviarExcel y (Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))
VisibleCondicion=ConDatos(Cxc:Cxc.Mov) y<BR>((MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) noen (CXC.F, CXC.A, CXC.DFA, CXC.AR, CXC.FA, CXC.AF, CXC.CA, CXC.CAD, CXC.CAP, CXC.VV, CXC.OV, CXC.AV, CXC.CD, CXC.DE, CXC.DI, CXC.AJE, CXC.AJR, CXC.NCP)) y (Cxc:Cxc.AplicaManual o ((Cxc:Cxc.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar)) y (MovTipo(<T>CXC<T>, Cxc:Cxc.Mov) noen (CXC.NC, CXC.NCD, CXC.NCF, CXC.DV, CXC.RA, CXC.FAC, CXC.DAC, CXC.PR, CXC.SD, CXC.SCH)))) o<BR>(MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.IM, CXC.RM))))

[Acciones.LCExpress]
Nombre=LCExpress
Boton=0
Menu=&Edición
NombreDesplegar=Línea Crédito Express
EnMenu=S
TipoAccion=Expresion
UsaTeclaRapida=S
TeclaRapida=Ctrl+F8
GuardarAntes=S
Expresion=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)<BR>Asigna(Info.LineaCredito, Info.Modulo+Info.ID)<BR>EjecutarSQL(<T>spLCExpress :tModulo, :nID<T>, Info.Modulo, Info.ID)<BR>Si<BR>  Forma(<T>LCExpress<T>)<BR>Entonces<BR>  Asigna(Cxc:Cxc.LineaCredito, Info.LineaCredito)<BR>  GuardarCambios <BR>Fin
ActivoCondicion=Config.ACLineaCreditoExpress
VisibleCondicion=General.AC y MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.F,CXC.CA,CXC.CAP,CXC.CAD,CXC.D,CXC.DM))

[Acciones.Tarjetas]
Nombre=Tarjetas
Boton=64
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+K
NombreDesplegar=Tar&jetas
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S
ConCondicion=S
Antes=S
GuardarAntes=S
RefrescarDespues=S
DespuesGuardar=S

Expresion=Si(Cxc:Cxc.Estatus en (EstatusSinAfectar, EstatusPorConfirmar), Forma(<T>TarjetaSerieMov<T>), Forma(<T>TarjetaSerieMovInfo<T>))
ActivoCondicion=MovTipoEn(<T>CXC<T>, Cxc:Cxc.Mov, (CXC.A, CXC.AR, CXC.AA, CXC.C, CXC.DC, CXC.DE))
EjecucionCondicion=Si(Cxc:Cxc.Estatus = EstatusSinAfectar, Asigna(Cxc:Cxc.ConDesglose, Verdadero)) <BR>Verdadero
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.ID, Cxc:Cxc.ID)<BR>Asigna(Info.Mov, Cxc:Cxc.Mov)<BR>Asigna(Info.MovID, Cxc:Cxc.MovID)<BR>Asigna(Info.Moneda, Cxc:Cxc.Moneda)
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
CondicionVisible=General.CamposExtras<><T>Campos Extras<T>
HojaFondoGris=S
HojaSinBorde=S
PermiteEditar=S
FiltroGeneral=FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaExtraVisibleMovimiento(<T>CXC<T>, <T>{Cxc:Cxc.Mov}<T>)) AND FormaExtraValor.Aplica=<T>Movimiento<T> AND FormaExtraValor.AplicaClave=<T>CXC{Cxc:Cxc.ID}<T>

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

[Detalle.CxcD.Retencion]
Carpeta=Detalle
Clave=CxcD.Retencion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Arrastre
Clave=MovImpuesto
Filtros=S
Detalle=S
MenuLocal=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=MovImpuestoMov
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cxc
LlaveLocal=MovImpuestoMov.ModuloID
LlaveMaestra=Cxc.ID
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosSubTitulo=<T>Origen<T>
ListaAcciones=PersonalVista
IconosNombre=MovImpuestoMov:Mov.Mov & <T> <T> & MovImpuestoMov:Mov.MovID
FiltroGeneral=MovImpuestoMov.Modulo = <T>CXC<T>
CondicionVisible=((Cxc:Cxc.Estatus = EstatusConcluido) o (Cxc:Cxc.Estatus = EstatusCancelado)) y (Config.VisualizarArrastre)

[MovImpuesto.MovImpuestoMov.Impuesto1]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.Impuesto1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.Impuesto2]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.Impuesto2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.Impuesto3]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.Impuesto3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.Importe1]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.Importe1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.Importe2]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.Importe2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.Importe3]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.Importe3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.Retencion1]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.Retencion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.Retencion2]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.Retencion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.Retencion3]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.Retencion3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.ContUso]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.ContUso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.ContUso2]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.ContUso2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[MovImpuesto.MovImpuestoMov.ContUso3]
Carpeta=MovImpuesto
Clave=MovImpuestoMov.ContUso3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.PersonalVista]
Nombre=PersonalVista
Boton=0
NombreDesplegar=Personalizar vista
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Lista.Columnas]
Cliente=117
Nombre=293
RFC=107

Serie=189
Importe=85
EstatusNombre=89
Tipo=88
Moneda=61
Saldo=79
[MovImpuesto.Columnas]
0=-2
1=-2

2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2
11=-2
12=-2
[Acciones.CargoNoIdentificado]
Nombre=CargoNoIdentificado
Boton=0
Menu=&Ver
NombreDesplegar=Cargos No Identificados
EnMenu=S
TipoAccion=Formas
ClaveAccion=DineroCargosNoIdentificados
Activo=S
Visible=S




[Ficha.ListaEnCaptura]
(Inicio)=Cxc.Mov
Cxc.Mov=Cxc.MovID
Cxc.MovID=Cxc.Proyecto
Cxc.Proyecto=Cxc.UEN
Cxc.UEN=Cxc.Moneda
Cxc.Moneda=Cxc.TipoCambio
Cxc.TipoCambio=Cxc.FechaEmision
Cxc.FechaEmision=Cxc.FechaOriginal
Cxc.FechaOriginal=Cxc.CtaDinero
Cxc.CtaDinero=Cxc.Cliente
Cxc.Cliente=Cte.Nombre
Cte.Nombre=Cxc.Cajero
Cxc.Cajero=Cxc.ClienteEnviarA
Cxc.ClienteEnviarA=CteEnviarA.Nombre
CteEnviarA.Nombre=Cxc.Agente
Cxc.Agente=Cxc.Importe
Cxc.Importe=Cxc.Impuestos
Cxc.Impuestos=ImporteTotal
ImporteTotal=Cxc.Concepto
Cxc.Concepto=Cxc.FormaCobro
Cxc.FormaCobro=Cxc.PersonalCobrador
Cxc.PersonalCobrador=Cxc.Referencia
Cxc.Referencia=Cxc.Condicion
Cxc.Condicion=Cxc.Vencimiento
Cxc.Vencimiento=Cxc.Observaciones
Cxc.Observaciones=Cxc.Saldo
Cxc.Saldo=Cxc.AplicaManual
Cxc.AplicaManual=Cxc.ConDesglose
Cxc.ConDesglose=Cxc.ClienteMoneda
Cxc.ClienteMoneda=Cxc.ClienteTipoCambio
Cxc.ClienteTipoCambio=CxcSaldo.Saldo
CxcSaldo.Saldo=(Fin)




[Detalle.ListaEnCaptura]
(Inicio)=CxcD.Aplica
CxcD.Aplica=CxcD.AplicaID
CxcD.AplicaID=CxcD.Fecha
CxcD.Fecha=CxcD.Importe
CxcD.Importe=DiferenciaNeta
DiferenciaNeta=DiferenciaPorcentaje
DiferenciaPorcentaje=CxcD.DescuentoRecargos
CxcD.DescuentoRecargos=DescuentoRecargosPorcentaje
DescuentoRecargosPorcentaje=DescuentoRecargosSugerido
DescuentoRecargosSugerido=CxcD.InteresesOrdinarios
CxcD.InteresesOrdinarios=CxcD.InteresesOrdinariosQuita
CxcD.InteresesOrdinariosQuita=CxcD.InteresesMoratorios
CxcD.InteresesMoratorios=CxcD.InteresesMoratoriosQuita
CxcD.InteresesMoratoriosQuita=CxcD.Retencion
CxcD.Retencion=ImpuestoAdicionalNeto
ImpuestoAdicionalNeto=ImporteIVAFiscal
ImporteIVAFiscal=ImporteIEPSFiscal
ImporteIEPSFiscal=ProporcionRetencion
ProporcionRetencion=(Fin)

[Detalle.ListaCamposAValidar]
(Inicio)=CxcAplica.FechaEmision
CxcAplica.FechaEmision=CxcAplica.Vencimiento
CxcAplica.Vencimiento=CxcAplica.Referencia
CxcAplica.Referencia=CxcAplica.ImporteTotal
CxcAplica.ImporteTotal=SaldoNeto
SaldoNeto=CxcAplica.Moneda
CxcAplica.Moneda=(Fin)

[Detalle.ListaOrden]
(Inicio)=CxcD.Renglon<TAB>(Acendente)
CxcD.Renglon<TAB>(Acendente)=CxcD.RenglonSub<TAB>(Acendente)
CxcD.RenglonSub<TAB>(Acendente)=(Fin)

[Aplica.ListaEnCaptura]
(Inicio)=Cxc.Cliente
Cxc.Cliente=Cte.Nombre
Cte.Nombre=Cxc.MovAplica
Cxc.MovAplica=Cxc.MovAplicaID
Cxc.MovAplicaID=CxcPendiente.Referencia
CxcPendiente.Referencia=CxcPendiente.FechaEmision
CxcPendiente.FechaEmision=CxcPendiente.Vencimiento
CxcPendiente.Vencimiento=(Fin)

[Desglose.ListaEnCaptura]
(Inicio)=Cxc.Importe1
Cxc.Importe1=Cxc.FormaCobro1
Cxc.FormaCobro1=Cxc.Referencia1
Cxc.Referencia1=Cxc.Importe2
Cxc.Importe2=Cxc.FormaCobro2
Cxc.FormaCobro2=Cxc.Referencia2
Cxc.Referencia2=Cxc.Importe3
Cxc.Importe3=Cxc.FormaCobro3
Cxc.FormaCobro3=Cxc.Referencia3
Cxc.Referencia3=Cxc.Importe4
Cxc.Importe4=Cxc.FormaCobro4
Cxc.FormaCobro4=Cxc.Referencia4
Cxc.Referencia4=Cxc.Importe5
Cxc.Importe5=Cxc.FormaCobro5
Cxc.FormaCobro5=Cxc.Referencia5
Cxc.Referencia5=Cxc.DelEfectivo
Cxc.DelEfectivo=Cxc.Cambio
Cxc.Cambio=CobroTotal
CobroTotal=(Fin)

[Comentarios.ListaEnCaptura]
(Inicio)=Cxc.Comentarios
Cxc.Comentarios=Cxc.Nota
Cxc.Nota=Cxc.ContUso
Cxc.ContUso=Cxc.VIN
Cxc.VIN=(Fin)

[AC.ListaEnCaptura]
(Inicio)=Cxc.LineaCredito
Cxc.LineaCredito=LC.Descripcion
LC.Descripcion=LC.VigenciaDesde
LC.VigenciaDesde=LC.VigenciaHasta
LC.VigenciaHasta=Cxc.TipoAmortizacion
Cxc.TipoAmortizacion=TipoAmortizacion.Descripcion
TipoAmortizacion.Descripcion=Cxc.Condicion
Cxc.Condicion=Cxc.Vencimiento
Cxc.Vencimiento=Cxc.TipoTasa
Cxc.TipoTasa=TipoTasa.Descripcion
TipoTasa.Descripcion=Cxc.TieneTasaEsp
Cxc.TieneTasaEsp=Cxc.TasaEsp
Cxc.TasaEsp=Cxc.Comisiones
Cxc.Comisiones=Cxc.ComisionesIVA
Cxc.ComisionesIVA=TotalComisiones
TotalComisiones=(Fin)

[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden<TAB>(Acendente)
GrupoOrden<TAB>(Acendente)=FormaExtraCampo.Orden<TAB>(Acendente)
FormaExtraCampo.Orden<TAB>(Acendente)=(Fin)

[MovImpuesto.ListaEnCaptura]
(Inicio)=MovImpuestoMov.Impuesto1
MovImpuestoMov.Impuesto1=MovImpuestoMov.Impuesto2
MovImpuestoMov.Impuesto2=MovImpuestoMov.Impuesto3
MovImpuestoMov.Impuesto3=MovImpuestoMov.Importe1
MovImpuestoMov.Importe1=MovImpuestoMov.Importe2
MovImpuestoMov.Importe2=MovImpuestoMov.Importe3
MovImpuestoMov.Importe3=MovImpuestoMov.Retencion1
MovImpuestoMov.Retencion1=MovImpuestoMov.Retencion2
MovImpuestoMov.Retencion2=MovImpuestoMov.Retencion3
MovImpuestoMov.Retencion3=MovImpuestoMov.ContUso
MovImpuestoMov.ContUso=MovImpuestoMov.ContUso2
MovImpuestoMov.ContUso2=MovImpuestoMov.ContUso3
MovImpuestoMov.ContUso3=(Fin)










[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=Cxc.Cliente
Cxc.Cliente=Cxc.Referencia
Cxc.Referencia=Cxc.Concepto
Cxc.Concepto=Cxc.FechaEmision
Cxc.FechaEmision=Cxc.Vencimiento
Cxc.Vencimiento=ImporteTotal
ImporteTotal=Cxc.Saldo
Cxc.Saldo=(Fin)

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
AbrirLocalizarSiguiente=SeleccionarTodo
SeleccionarTodo=AfectarLote
AfectarLote=AbrirImprimir
AbrirImprimir=AbrirPreliminar
AbrirPreliminar=AbrirExcel
AbrirExcel=AbrirMostrar
AbrirMostrar=(Fin)







[Agrupadores]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Agrupadores
Clave=Agrupadores
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cxc
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

PermiteEditar=S

CondicionVisible=General.VerMovAgrupadores
[Agrupadores.Cxc.ContratoMov]
Carpeta=Agrupadores
Clave=Cxc.ContratoMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Agrupadores.Cxc.ContratoMovID]
Carpeta=Agrupadores
Clave=Cxc.ContratoMovID
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Agrupadores.ListaEnCaptura]
(Inicio)=Cxc.ContratoMov
Cxc.ContratoMov=Cxc.ContratoMovID
Cxc.ContratoMovID=(Fin)
















[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=AC
AC=Desglose
Desglose=Aplica
Aplica=Comentarios
Comentarios=Detalle
Detalle=FormaExtraValor
FormaExtraValor=MovImpuesto
MovImpuesto=Agrupadores
Agrupadores=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=MovCopiar
MovCopiar=CopiarMeses
CopiarMeses=Abrir
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
Afectar=Consecutivo
Consecutivo=Eliminar
Eliminar=Cancelar
Cancelar=Sugerir
Sugerir=ReasignarUsuario
ReasignarUsuario=ACRecorrerVencimiento
ACRecorrerVencimiento=ACBajaParcial
ACBajaParcial=Embarcar
Embarcar=Campos
Campos=CamposExtras
CamposExtras=Totalizar
Totalizar=Voucher
Voucher=MovExpress
MovExpress=LCExpress
LCExpress=Tareas
Tareas=Anexos
Anexos=AgregarEvento
AgregarEvento=Vales
Vales=Tarjetas
Tarjetas=ImporteConImpuestos
ImporteConImpuestos=Asistente Aplicacion
Asistente Aplicacion=Anticipos
Anticipos=AnticiposFacturados
AnticiposFacturados=Anterior
Anterior=Siguiente
Siguiente=Infomacion
Infomacion=InfoCtaDinero
InfoCtaDinero=ProyInfo
ProyInfo=TablaAmortizacion
TablaAmortizacion=DepositosAnticipados
DepositosAnticipados=CargoNoIdentificado
CargoNoIdentificado=Tiempo
Tiempo=Politica
Politica=PoliticaConcepto
PoliticaConcepto=MovBitacora
MovBitacora=MovPos
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
