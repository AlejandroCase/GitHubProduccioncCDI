
[Forma]
Clave=CDIExplorarGastoDConceptoComite
Icono=0
BarraHerramientas=S
EsConsultaExclusiva=S
Modulos=GAS
MovModulo=GAS
Nombre=<T>Gastos por Comité<T>
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=527
PosicionInicialAncho=789
ListaAcciones=(Lista)
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
PosicionInicialIzquierda=213
PosicionInicialArriba=87
Comentarios=Lista(Info.Proveedor, Info.Nombre)
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=GastoT
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S
FiltroEstatus=S
FiltroFechas=S
FiltroMovs=S
FiltroMonedas=S
FiltroListaEstatus=(Lista)

BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroMovsTodos=S


FiltroEstatusDefault=CONCLUIDO
FiltroFechasCampo=GastoT.FechaEmision
FiltroMovDefault=(Todos)
FiltroMonedasCampo=GastoT.Moneda


FiltroFechasDefault=Este Mes
IconosSubTitulo=<T>Movimiento<T>
ListaEnCaptura=(Lista)

FiltroTodo=S
FiltroTodoFinal=S
FiltroGrupo1=GastoT.Concepto
FiltroValida1=GastoT.Concepto
IconosConSenales=S
IconosNombre=GastoT:GastoT.Mov + <T> <T> + GastoT:GastoT.MovID
FiltroGeneral=GastoT.Empresa=<T>{Empresa}<T> AND<BR>GastoT.Proyecto=<T>{Usuario.DefProyecto}<T>  AND<BR>GastoT.Mov IN ({MovListaSQL(<T>GAS<T>, GAS.G, GAS.GTC, GAS.C, GAS.CCH, GAS.DC, GAS.DG, GAS.OI, GAS.CB, GAS.AB, GAS.EST, GAS.CI, GAS.S)})<BR>{Si(ConDatos(Info.Proveedor), <T> AND GastoT.Acreedor=<T>+Comillas(Info.Proveedor), <T><T>)}
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S


[Acciones.PresentacionPreliminar]
Nombre=PresentacionPreliminar
Boton=6
NombreDesplegar=Presentación Preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S


[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Excel a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S


[Acciones.MovPropiedades]
Nombre=MovPropiedades
Boton=35
NombreDesplegar=Propiedades del Movimiento
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
Activo=S
Visible=S




Antes=S
ClaveAccion=MovPropiedades
AntesExpresiones=Asigna(Info.Modulo, <T>GAS<T>)<BR>Asigna(Info.ID, GastoT:GastoT.ID)
[Acciones.MostrarCampos]
Nombre=MostrarCampos
Boton=45
NombreDesplegar=Personalizar Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S








[Lista.GastoT.FechaEmision]
Carpeta=Lista
Clave=GastoT.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.GastoT.Vencimiento]
Carpeta=Lista
Clave=GastoT.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.GastoT.Acreedor]
Carpeta=Lista
Clave=GastoT.Acreedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.Prov.Nombre]
Carpeta=Lista
Clave=Prov.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.GastoT.Concepto]
Carpeta=Lista
Clave=GastoT.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.ImporteLineaF]
Carpeta=Lista
Clave=ImporteLineaF
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.ImpuestosLineaF]
Carpeta=Lista
Clave=ImpuestosLineaF
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.RetencionLineaF]
Carpeta=Lista
Clave=RetencionLineaF
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.TotalLineaF]
Carpeta=Lista
Clave=TotalLineaF
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Lista.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=299








































[Lista.ListaEnCaptura]
(Inicio)=GastoT.FechaEmision
GastoT.FechaEmision=GastoT.Vencimiento
GastoT.Vencimiento=GastoT.Acreedor
GastoT.Acreedor=Prov.Nombre
Prov.Nombre=GastoT.Concepto
GastoT.Concepto=ImporteLineaF
ImporteLineaF=ImpuestosLineaF
ImpuestosLineaF=RetencionLineaF
RetencionLineaF=TotalLineaF
TotalLineaF=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=RECURRENTE
RECURRENTE=(Fin)




























[Acciones.Bitacora]
Nombre=Bitacora
Boton=56
NombreEnBoton=S
NombreDesplegar=&Bitacora
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovBitacora
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Modulo, <T>GAS<T>)<BR>Asigna(Info.ID, GastoT:GastoT.ID)<BR>Asigna(Info.Mov, GastoT:GastoT.Mov)<BR>Asigna(Info.MovID, GastoT:GastoT.MovID)<BR>Asigna(Info.PuedeEditar, GastoT:GastoT.Estatus noen (EstatusConcluido, EstatusCancelado) y PuedeModificar(GastoT:GastoT.Usuario))
Visible=S

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=PresentacionPreliminar
PresentacionPreliminar=Excel
Excel=MovPropiedades
MovPropiedades=MostrarCampos
MostrarCampos=Bitacora
Bitacora=(Fin)
