
[Forma]
Clave=cdiIngrInscComite
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Ingresos Inscripciones

ListaCarpetas=(Lista)
CarpetaPrincipal=cdiIngrInsc
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1312
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Totalizadores=S
PosicionSec1=687
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Dise�o
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=asigna(info.usuario, sql(<T>select grupotrabajo from usuario where usuario=:tU<T>,usuario))
[cdiIngrInsc]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
Clave=cdiIngrInsc
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=cdiIngrInsc
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
OtroOrden=S

ListaOrden=cdiIngrInsc.Id<TAB>(Decendente)
HojaOrdenarColumnas=S
ValidarCampos=S
ListaCamposAValidar=(Lista)
PestanaNombre=PreRegistro
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=cdiIngrInsc.proyecto
FiltroGrupo2=cdiIngrInsc.Coordinacion
FiltroGrupo3=cdiIngrInsc.CdiPeriodo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
FiltroTodo=S
BusquedaRapidaControles=S
FiltroFechas=S
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
FiltroFechasCampo=cdiIngrInsc.FechaEmisionPreReg
HojaIndicador=S
FiltroFechasDefault=(Todo)
FiltroGeneral=Proyecto=<T>{Info.Usuario}<T>     
[cdiIngrInsc.cdiIngrInsc.CdiPeriodo]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.CdiPeriodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Coordinacion]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Coordinacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Ceplan]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Ceplan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Descripcion]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Id]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Id
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.mov]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.movid]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Cliente]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.CDiSocio]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.CDiSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Conteo]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Conteo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.MovSC]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.MovSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.MovIDSC]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.MovIDSC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.MovRI]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.MovRI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.MovidRI]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.MovidRI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Articulo]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Precio]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Impuesto1]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Impuesto1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.DescuentoLinea]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.DescuentoLinea
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.DescuentoImporte]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.DescuentoImporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.MovCxC]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.MovCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.MovIdCxC]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.MovIdCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.MovApl]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.MovApl
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.MOvIDApl]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.MOvIDApl
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.FechaEmision]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.importe]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.impuestos]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.impuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Origen]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Origen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.OrigenID]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.OrigenID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.Columnas]
CdiPeriodo=57
Coordinacion=134
Ceplan=74
Descripcion=247
Id=52
mov=70
movid=54
Cliente=48
CDiSocio=51
Conteo=42
MovSC=104
MovIDSC=66
MovRI=100
MovidRI=54
Articulo=46
Precio=60
Impuesto1=60
DescuentoLinea=80
DescuentoImporte=93
MovCxC=75
MovIdCxC=61
MovApl=60
MOvIDApl=58
FechaEmision=70
importe=64
impuestos=64
Origen=74
OrigenID=55





Beca=64
Descuento1=64
descuento2=64
Descuento3=64
descuento4=64

ClavePresupuestalPlan=113
ClavePresupuestalDev=125
aplicaid=56
Aplica=124
ImporteAplica=82
proyecto=102
Nombre=208
FechaEmisionPreReg=103
EstatusPreReg=94
FechaEmisionSc=94
EstatusSc=94
FechaEmisionRI=94
EstatusRI=94
FechaEmisionCxc=94
EstatusCxc=94
[cdiIngrInsc.cdiIngrInsc.Beca]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Beca
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Descuento1]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Descuento1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.descuento2]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.descuento2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Descuento3]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Descuento3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.descuento4]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.descuento4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[cdiIngrInsc.cdiIngrInsc.ClavePresupuestalPlan]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.ClavePresupuestalPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.ClavePresupuestalDev]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.ClavePresupuestalDev
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[cdiIngrInsc.cdiIngrInsc.aplicaid]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.aplicaid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Aplica]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Aplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.ImporteAplica]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.ImporteAplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







[cdiIngrInsc.cdiIngrInsc.proyecto]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.Nombre]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco









[cdiIngrInsc.cdiIngrInsc.FechaEmisionPreReg]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.FechaEmisionPreReg
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.EstatusPreReg]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.EstatusPreReg
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.FechaEmisionSc]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.FechaEmisionSc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.EstatusSc]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.EstatusSc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.FechaEmisionRI]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.FechaEmisionRI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.EstatusRI]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.EstatusRI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.FechaEmisionCxc]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.FechaEmisionCxc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdiIngrInsc.cdiIngrInsc.EstatusCxc]
Carpeta=cdiIngrInsc
Clave=cdiIngrInsc.EstatusCxc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco



[Totales]
Estilo=Cubo
Pestana=S
Clave=Totales
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Totales
Vista=cdiIngrInsc










[Acciones.Mostrar Campos]
Nombre=Mostrar Campos
Boton=45
NombreDesplegar=Mostrar Campos
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S







[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S













[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Derecha
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Inscritos
Totalizadores2=suma(cdiIngrInsc:cdiIngrInsc.Conteo)
Totalizadores=S
TotCarpetaRenglones=cdiIngrInsc
TotExpresionesEnSumas=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Inscritos
CarpetaVisible=S

[(Carpeta Totalizadores).Inscritos]
Carpeta=(Carpeta Totalizadores)
Clave=Inscritos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata



























































[cdiIngrInsc.ListaEnCaptura]
(Inicio)=cdiIngrInsc.proyecto
cdiIngrInsc.proyecto=cdiIngrInsc.CdiPeriodo
cdiIngrInsc.CdiPeriodo=cdiIngrInsc.Coordinacion
cdiIngrInsc.Coordinacion=cdiIngrInsc.Ceplan
cdiIngrInsc.Ceplan=cdiIngrInsc.Descripcion
cdiIngrInsc.Descripcion=cdiIngrInsc.ClavePresupuestalPlan
cdiIngrInsc.ClavePresupuestalPlan=cdiIngrInsc.Id
cdiIngrInsc.Id=cdiIngrInsc.mov
cdiIngrInsc.mov=cdiIngrInsc.movid
cdiIngrInsc.movid=cdiIngrInsc.FechaEmisionPreReg
cdiIngrInsc.FechaEmisionPreReg=cdiIngrInsc.EstatusPreReg
cdiIngrInsc.EstatusPreReg=cdiIngrInsc.Cliente
cdiIngrInsc.Cliente=cdiIngrInsc.CDiSocio
cdiIngrInsc.CDiSocio=cdiIngrInsc.Nombre
cdiIngrInsc.Nombre=cdiIngrInsc.MovSC
cdiIngrInsc.MovSC=cdiIngrInsc.MovIDSC
cdiIngrInsc.MovIDSC=cdiIngrInsc.EstatusSc
cdiIngrInsc.EstatusSc=cdiIngrInsc.FechaEmisionSc
cdiIngrInsc.FechaEmisionSc=cdiIngrInsc.MovRI
cdiIngrInsc.MovRI=cdiIngrInsc.MovidRI
cdiIngrInsc.MovidRI=cdiIngrInsc.Articulo
cdiIngrInsc.Articulo=cdiIngrInsc.Precio
cdiIngrInsc.Precio=cdiIngrInsc.Impuesto1
cdiIngrInsc.Impuesto1=cdiIngrInsc.DescuentoLinea
cdiIngrInsc.DescuentoLinea=cdiIngrInsc.DescuentoImporte
cdiIngrInsc.DescuentoImporte=cdiIngrInsc.FechaEmisionRI
cdiIngrInsc.FechaEmisionRI=cdiIngrInsc.EstatusRI
cdiIngrInsc.EstatusRI=cdiIngrInsc.Beca
cdiIngrInsc.Beca=cdiIngrInsc.Descuento1
cdiIngrInsc.Descuento1=cdiIngrInsc.descuento2
cdiIngrInsc.descuento2=cdiIngrInsc.Descuento3
cdiIngrInsc.Descuento3=cdiIngrInsc.descuento4
cdiIngrInsc.descuento4=cdiIngrInsc.MovCxC
cdiIngrInsc.MovCxC=cdiIngrInsc.MovIdCxC
cdiIngrInsc.MovIdCxC=cdiIngrInsc.FechaEmisionCxc
cdiIngrInsc.FechaEmisionCxc=cdiIngrInsc.EstatusCxc
cdiIngrInsc.EstatusCxc=cdiIngrInsc.MovApl
cdiIngrInsc.MovApl=cdiIngrInsc.MOvIDApl
cdiIngrInsc.MOvIDApl=cdiIngrInsc.FechaEmision
cdiIngrInsc.FechaEmision=cdiIngrInsc.importe
cdiIngrInsc.importe=cdiIngrInsc.impuestos
cdiIngrInsc.impuestos=cdiIngrInsc.ClavePresupuestalDev
cdiIngrInsc.ClavePresupuestalDev=cdiIngrInsc.aplicaid
cdiIngrInsc.aplicaid=cdiIngrInsc.Aplica
cdiIngrInsc.Aplica=cdiIngrInsc.ImporteAplica
cdiIngrInsc.ImporteAplica=cdiIngrInsc.Origen
cdiIngrInsc.Origen=cdiIngrInsc.OrigenID
cdiIngrInsc.OrigenID=cdiIngrInsc.Conteo
cdiIngrInsc.Conteo=(Fin)

[cdiIngrInsc.ListaCamposAValidar]
(Inicio)=cdiIngrInsc.proyecto
cdiIngrInsc.proyecto=cdiIngrInsc.Coordinacion
cdiIngrInsc.Coordinacion=cdiIngrInsc.Ceplan
cdiIngrInsc.Ceplan=cdiIngrInsc.Descripcion
cdiIngrInsc.Descripcion=(Fin)













[Forma.ListaCarpetas]
(Inicio)=cdiIngrInsc
cdiIngrInsc=Totales
Totales=(Fin)

[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=Mostrar Campos
Mostrar Campos=(Fin)
