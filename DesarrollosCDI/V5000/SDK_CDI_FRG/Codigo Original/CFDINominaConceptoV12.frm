
[Forma]
Clave=CFDINominaConceptoV12
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=CFDI Nómina - Conceptos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialIzquierda=173
PosicionInicialArriba=0
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1081
PosicionCol1=269
Menus=S
PosicionSec1=313
PosicionSec2=313
MenuPrincipal=&Maestros
[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Lista
Clave=Lista
OtroOrden=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaConceptoV12
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
ListaEnCaptura=CFDINominaConceptoV12.Concepto

ListaOrden=CFDINominaConceptoV12.Concepto<TAB>(Acendente)
CarpetaVisible=S
BusquedaRapidaControles=S

FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S

[Lista.Columnas]
Concepto=203
ClaveSAT=82
ConceptoSAT=249

NominaConcepto=203
0=300
1=-2


Clave=64
Descripcion=391
[Lista.ListaEnCaptura]
(Inicio)=CFDINominaConceptoV12.Concepto
CFDINominaConceptoV12.Concepto=CFDINominaConceptoV12.ClaveSAT
CFDINominaConceptoV12.ClaveSAT=(Fin)

[Detalle]
Estilo=Ficha
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CFDINominaConceptoV12
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

PestanaOtroNombre=S
PestanaNombre=Detalle
FichaEspacioEntreLineas=6
FichaEspacioNombres=198
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

[Detalle.Columnas]
ClaveSAT=94
ConceptoSAT=304

















[Acciones.TipoPercepcion]
Nombre=TipoPercepcion
Boton=0
Menu=&Maestros
NombreDesplegar=Tipos de Percepción
EnMenu=S
TipoAccion=Formas
ClaveAccion=CFDINominaTipoPercepcionV12
Activo=S
Visible=S



[Acciones.TipoDeduccion]
Nombre=TipoDeduccion
Boton=0
Menu=&Maestros
NombreDesplegar=Tipos de Deducción
EnMenu=S
TipoAccion=Formas
ClaveAccion=CFDINominaTipoDeduccionV12
Activo=S
Visible=S

























[Acciones.Incapacidad]
Nombre=Incapacidad
Boton=0
Menu=&Maestros
NombreDesplegar=Tipo de Incapacidad
EnMenu=S
TipoAccion=formas
ClaveAccion=CFDINominaTipoIncapacidadV12
Activo=S
Visible=S











EspacioPrevio=S
[Acciones.HorasExtra]
Nombre=HorasExtra
Boton=0
Menu=&Maestros
NombreDesplegar=Tipo &Horas Extra
EnMenu=S
TipoAccion=Formas
ClaveAccion=CFDINominaTipoHorasExtraV12
Activo=S
Visible=S










[Acciones.TipoOtrosPagos]
Nombre=TipoOtrosPagos
Boton=0
Menu=&Maestros
NombreDesplegar=Tipo &Otros Pagos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CFDINominaTipoOtrosPagosV12
Activo=S
Visible=S

















[Lista.CFDINominaConceptoV12.Concepto]
Carpeta=Lista
Clave=CFDINominaConceptoV12.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[Detalle.CFDINominaConceptoV12.Concepto]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.Concepto
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=60
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.ClaveSAT]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.ClaveSAT
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=12
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.TipoSAT]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.TipoSAT
Editar=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco






[Detalle.CFDINominaConceptoV12.TipoDeduccionSAT]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.TipoDeduccionSAT
Editar=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CampoTotalizar]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CampoTotalizar
Editar=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgDescuento]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgDescuento
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgDeduccionesGravadas]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgDeduccionesGravadas
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgDeduccionesExcentas]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgDeduccionesExcentas
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco






[Detalle.CFDINominaConceptoV12.CfgPercepcionesGravadas]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgPercepcionesGravadas
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgPercepcionesExcentas]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgPercepcionesExcentas
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco







[Detalle.CFDINominaConceptoV12.CfgDiasPagados]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgDiasPagados
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgSDI]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgSDI
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.IngresoAcumulable]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.IngresoAcumulable
Editar=S
LineaNueva=S
3D=S
Tamano=60
ColorFondo=Blanco

ValidaNombre=N
[Detalle.CFDINominaConceptoV12.IngresoNoAcumulable]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.IngresoNoAcumulable
Editar=S
3D=S
Tamano=60
ColorFondo=Blanco




LineaNueva=S
ValidaNombre=N
[Detalle.CFDINominaConceptoV12.CfgIncapacidad]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgIncapacidad
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgTipoIncapacidad]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgTipoIncapacidad
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco




[Detalle.CFDINominaConceptoV12.CfgHoraExtra]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgHoraExtra
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgTipoHoraExtra]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgTipoHoraExtra
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco




[Detalle.CFDINominaConceptoV12.CfgDiasHorasDobles]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgDiasHorasDobles
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgDiasHorasTriples]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgDiasHorasTriples
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgTotalPercepciones]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgTotalPercepciones
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgTotalDeducciones]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgTotalDeducciones
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco




[Detalle.CFDINominaConceptoV12.CfgJubilacionPensionRetiro]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgJubilacionPensionRetiro
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgTotalUnaExhibicion]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgTotalUnaExhibicion
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgTotalParcialidad]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgTotalParcialidad
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgSeparacionIndemnizacion]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgSeparacionIndemnizacion
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco




[Detalle.CFDINominaConceptoV12.CfgNumeroAniosServicio]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgNumeroAniosServicio
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco


[Detalle.CFDINominaConceptoV12.CfgValorMercado]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgValorMercado
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco

EspacioPrevio=S
[Detalle.CFDINominaConceptoV12.CfgPrecioAlOtorgarse]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgPrecioAlOtorgarse
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco




[Detalle.CFDINominaConceptoV12.CfgOtroPago]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgOtroPago
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgTipoOtroPago]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgTipoOtroPago
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgSubContratacion]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgSubContratacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgSubsidioCausado]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgSubsidioCausado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgSaldoAFavor]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgSaldoAFavor
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Detalle.CFDINominaConceptoV12.CfgRemanenteSalFav]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.CfgRemanenteSalFav
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




















[prueba.CFDINominaConceptoV12.Concepto]
Carpeta=prueba
Clave=CFDINominaConceptoV12.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[prueba.CFDINominaConceptoV12.ClaveSAT]
Carpeta=prueba
Clave=CFDINominaConceptoV12.ClaveSAT
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[prueba.CFDINominaConceptoV12.CampoTotalizar]
Carpeta=prueba
Clave=CFDINominaConceptoV12.CampoTotalizar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[prueba.Columnas]
Concepto=304
ClaveSAT=94
CampoTotalizar=81






[prueba.ListaEnCaptura]
(Inicio)=CFDINominaConceptoV12.Concepto
CFDINominaConceptoV12.Concepto=CFDINominaConceptoV12.ClaveSAT
CFDINominaConceptoV12.ClaveSAT=CFDINominaConceptoV12.CampoTotalizar
CFDINominaConceptoV12.CampoTotalizar=(Fin)














[Detalle.CFDINominaConceptoV12.UltSdoMensOrd]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.UltSdoMensOrd
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco












[Detalle.CFDINominaConceptoV12.MontoDiario]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.MontoDiario
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco












































[Detalle.CFDINominaConceptoV12.AñoSaldoFavor]
Carpeta=Detalle
Clave=CFDINominaConceptoV12.AñoSaldoFavor
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[Detalle.ListaEnCaptura]
(Inicio)=CFDINominaConceptoV12.Concepto
CFDINominaConceptoV12.Concepto=CFDINominaConceptoV12.ClaveSAT
CFDINominaConceptoV12.ClaveSAT=CFDINominaConceptoV12.TipoSAT
CFDINominaConceptoV12.TipoSAT=CFDINominaConceptoV12.TipoDeduccionSAT
CFDINominaConceptoV12.TipoDeduccionSAT=CFDINominaConceptoV12.CampoTotalizar
CFDINominaConceptoV12.CampoTotalizar=CFDINominaConceptoV12.CfgDescuento
CFDINominaConceptoV12.CfgDescuento=CFDINominaConceptoV12.CfgDeduccionesGravadas
CFDINominaConceptoV12.CfgDeduccionesGravadas=CFDINominaConceptoV12.CfgDeduccionesExcentas
CFDINominaConceptoV12.CfgDeduccionesExcentas=CFDINominaConceptoV12.CfgPercepcionesGravadas
CFDINominaConceptoV12.CfgPercepcionesGravadas=CFDINominaConceptoV12.CfgPercepcionesExcentas
CFDINominaConceptoV12.CfgPercepcionesExcentas=CFDINominaConceptoV12.CfgDiasPagados
CFDINominaConceptoV12.CfgDiasPagados=CFDINominaConceptoV12.CfgSDI
CFDINominaConceptoV12.CfgSDI=CFDINominaConceptoV12.CfgIncapacidad
CFDINominaConceptoV12.CfgIncapacidad=CFDINominaConceptoV12.CfgTipoIncapacidad
CFDINominaConceptoV12.CfgTipoIncapacidad=CFDINominaConceptoV12.CfgHoraExtra
CFDINominaConceptoV12.CfgHoraExtra=CFDINominaConceptoV12.CfgTipoHoraExtra
CFDINominaConceptoV12.CfgTipoHoraExtra=CFDINominaConceptoV12.CfgDiasHorasDobles
CFDINominaConceptoV12.CfgDiasHorasDobles=CFDINominaConceptoV12.CfgDiasHorasTriples
CFDINominaConceptoV12.CfgDiasHorasTriples=CFDINominaConceptoV12.CfgTotalPercepciones
CFDINominaConceptoV12.CfgTotalPercepciones=CFDINominaConceptoV12.CfgTotalDeducciones
CFDINominaConceptoV12.CfgTotalDeducciones=CFDINominaConceptoV12.CfgJubilacionPensionRetiro
CFDINominaConceptoV12.CfgJubilacionPensionRetiro=CFDINominaConceptoV12.CfgTotalUnaExhibicion
CFDINominaConceptoV12.CfgTotalUnaExhibicion=CFDINominaConceptoV12.CfgTotalParcialidad
CFDINominaConceptoV12.CfgTotalParcialidad=CFDINominaConceptoV12.MontoDiario
CFDINominaConceptoV12.MontoDiario=CFDINominaConceptoV12.CfgSeparacionIndemnizacion
CFDINominaConceptoV12.CfgSeparacionIndemnizacion=CFDINominaConceptoV12.CfgNumeroAniosServicio
CFDINominaConceptoV12.CfgNumeroAniosServicio=CFDINominaConceptoV12.UltSdoMensOrd
CFDINominaConceptoV12.UltSdoMensOrd=CFDINominaConceptoV12.IngresoAcumulable
CFDINominaConceptoV12.IngresoAcumulable=CFDINominaConceptoV12.IngresoNoAcumulable
CFDINominaConceptoV12.IngresoNoAcumulable=CFDINominaConceptoV12.CfgValorMercado
CFDINominaConceptoV12.CfgValorMercado=CFDINominaConceptoV12.CfgPrecioAlOtorgarse
CFDINominaConceptoV12.CfgPrecioAlOtorgarse=CFDINominaConceptoV12.CfgOtroPago
CFDINominaConceptoV12.CfgOtroPago=CFDINominaConceptoV12.CfgTipoOtroPago
CFDINominaConceptoV12.CfgTipoOtroPago=CFDINominaConceptoV12.CfgSubContratacion
CFDINominaConceptoV12.CfgSubContratacion=CFDINominaConceptoV12.CfgSubsidioCausado
CFDINominaConceptoV12.CfgSubsidioCausado=CFDINominaConceptoV12.CfgSaldoAFavor
CFDINominaConceptoV12.CfgSaldoAFavor=CFDINominaConceptoV12.CfgRemanenteSalFav
CFDINominaConceptoV12.CfgRemanenteSalFav=CFDINominaConceptoV12.AñoSaldoFavor
CFDINominaConceptoV12.AñoSaldoFavor=(Fin)









[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=GuardarCerrar
GuardarCerrar=TipoPercepcion
TipoPercepcion=TipoDeduccion
TipoDeduccion=Incapacidad
Incapacidad=HorasExtra
HorasExtra=TipoOtrosPagos
TipoOtrosPagos=(Fin)