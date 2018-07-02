
[Forma]
Clave=CDICfgDim
Icono=0
Modulos=(Todos)
MovModulo=NOM
Nombre=Cfg Rep Dim

ListaCarpetas=(Lista)
CarpetaPrincipal=CDICfgDim
PosicionInicialAlturaCliente=489
PosicionInicialAncho=1010
PosicionInicialIzquierda=31
PosicionInicialArriba=35
PosicionCol1=845
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraHerramientas=S
PosicionSec1=208
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal





ExpresionesAlMostrar=EjecutarSQL(<T>EXEC Sp_FiltroDim :nEstacion,:tEmpresa<T>, EstacionTrabajo,Empresa )
[CfgDim.Columnas]
Columna=47
Titulo=76
Descripcion=128
Tipo=59
Obligatorio=83
Campo=126

TablaPer=35
[Detalle]
Estilo=Hoja
Clave=Detalle
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICfgDimD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDICfgDim
LlaveLocal=CDICfgDimD.ID
LlaveMaestra=CDICfgDim.ID
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
PestanaNombre=Detalle
PermiteEditar=S

ControlRenglon=S
CampoRenglon=CDICfgDimD.Renglon
HojaIndicador=S
HojaConfirmarEliminar=S

[Detalle.Columnas]
NominaConcepto=150
NominaConcepto_1=64
Concepto=313
Movimiento=67














Concepto_1=326
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



EnBarraHerramientas=S






GuardarAntes=S
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


















EspacioPrevio=S

[Acciones.ReporteDimGrid]
Nombre=ReporteDimGrid
Boton=68
NombreEnBoton=S
NombreDesplegar=Dim
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S
































GuardarAntes=S



Expresion=Si<BR>  Forma(<T>EspecificarEjercicio<T>)<BR>Entonces<BR>  ReportePantalla(<T>CDIReporteDimGrid<T>)<BR>Fin
[Detalle.ListaCamposAValidar]
(Inicio)=NominaConcepto.GravaISR
NominaConcepto.GravaISR=NominaConcepto.GravaIMSS
NominaConcepto.GravaIMSS=NominaConcepto.GravaImpuestoEstatal
NominaConcepto.GravaImpuestoEstatal=(Fin)











[Obligatorio]
Estilo=Ficha
Clave=Obligatorio
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDICfgDim
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDICfgDim.Obligatorio
CarpetaVisible=S

FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

[Obligatorio.Columnas]
Obligatorio=64



[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreEnBoton=S
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S



Antes=S





































GuardarAntes=S
AntesExpresiones=GuardarCambios<BR>EjecutarSQL(<T>EXEC Sp_FiltroDim :nEstacion,:tempresa<T>, EstacionTrabajo, Empresa )
[ListaConcepto.Columnas]
NominaConcepto=161
Concepto=389





































[Acciones.Guardar Cambios.GuardarCambios]
Nombre=GuardarCambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Guardar Cambios.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S



[Acciones.Guardar Cambios.ListaAccionesMultiples]
(Inicio)=GuardarCambios
GuardarCambios=Actualizar Forma
Actualizar Forma=(Fin)















































































[CfgDim.ListaEnCaptura]
(Inicio)=CfgDim.Columna
CfgDim.Columna=CfgDim.Titulo
CfgDim.Titulo=CfgDim.Tipo
CfgDim.Tipo=CfgDim.Campo
CfgDim.Campo=(Fin)




[CDICfgDim]
Estilo=Hoja
Clave=CDICfgDim
Filtros=S
OtroOrden=S
ValidarCampos=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICfgDim
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaIndicador=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaConfirmarEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaCamposAValidar=CDICfgDim.Descripcion
ListaOrden=CDICfgDim.Columna<TAB>(Acendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S









FiltroGeneral={<T>CDICfgDim.Columna not in (Select Clave from listast where Estacion=<T>& Comillas(EstacionTrabajo) &<T>) and CDICfgDim.Empresa=<T>& Comillas(Empresa) &<T>}
[CDICfgDim.CDICfgDim.Columna]
Carpeta=CDICfgDim
Clave=CDICfgDim.Columna
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICfgDim.CDICfgDim.Titulo]
Carpeta=CDICfgDim
Clave=CDICfgDim.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=90
ColorFondo=Blanco

[CDICfgDim.CDICfgDim.Tipo]
Carpeta=CDICfgDim
Clave=CDICfgDim.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICfgDim.CDICfgDim.Campo]
Carpeta=CDICfgDim
Clave=CDICfgDim.Campo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Obligatorio.CDICfgDim.Obligatorio]
Carpeta=Obligatorio
Clave=CDICfgDim.Obligatorio
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco


[Detalle.CDICfgDimD.NominaConcepto]
Carpeta=Detalle
Clave=CDICfgDimD.NominaConcepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.CDICfgDimD.Concepto]
Carpeta=Detalle
Clave=CDICfgDimD.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDICfgDim.Columnas]
Columna=49
Titulo=306
Tipo=102
Campo=330












[CDICfgDim.ListaEnCaptura]
(Inicio)=CDICfgDim.Columna
CDICfgDim.Columna=CDICfgDim.Titulo
CDICfgDim.Titulo=CDICfgDim.Tipo
CDICfgDim.Tipo=CDICfgDim.Campo
CDICfgDim.Campo=(Fin)



































































[Detalle.ListaEnCaptura]
(Inicio)=CDICfgDimD.NominaConcepto
CDICfgDimD.NominaConcepto=CDICfgDimD.Concepto
CDICfgDimD.Concepto=(Fin)

















[Forma.ListaCarpetas]
(Inicio)=CDICfgDim
CDICfgDim=Obligatorio
Obligatorio=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar Cambios
Guardar Cambios=ReporteDimGrid
ReporteDimGrid=Actualizar
Actualizar=(Fin)
