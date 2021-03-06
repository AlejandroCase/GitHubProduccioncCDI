
[Forma]
Clave=CDICargosAmexOut
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Cargos Automáticos Amex
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDICargosAmexOut
DialogoAbrir=S
PosicionInicialIzquierda=107
PosicionInicialArriba=77
PosicionInicialAlturaCliente=575
PosicionInicialAncho=1152
PosicionSec1=155
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=CDICargosAmexOut:CDICargosAmexOut.Id
BarraAyuda=S
BarraAyudaBold=S
BarraAyudaEsp=S
Totalizadores=S
PosicionCol1=808
[CDICargosAmexOut]
Estilo=Ficha
Clave=CDICargosAmexOut
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICargosAmexOut
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

[CDICargosAmexOut.CDICargosAmexOut.FechaEmision]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDICargosAmexOut.CDICargosAmexOut.Ruta]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.Ruta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[CDICargosAmexOut.CDICargosAmexOut.Lote]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.Lote
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10
[CDICargosAmexOut.CDICargosAmexOut.Usuario]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.Usuario
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICargosAmexOut.CDICargosAmexOut.Estatus]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDICargosAmexOut
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
Filtros=S

FiltroPredefinido=S
FiltroGrupo1=CDICargosAmexOut.Ejercicio
FiltroGrupo2=CDICargosAmexOut.Periodo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
IconosSubTitulo=<T>Lote<T>

PestanaOtroNombre=S
PestanaNombre=Cargos Automáticos Amex
IconosNombre=CDICargosAmexOut:CDICargosAmexOut.Lote
[(Carpeta Abrir).CDICargosAmexOut.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDICargosAmexOut.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDICargosAmexOut.Usuario]
Carpeta=(Carpeta Abrir)
Clave=CDICargosAmexOut.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).CDICargosAmexOut.Estatus]
Carpeta=(Carpeta Abrir)
Clave=CDICargosAmexOut.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).Columnas]
0=-2
1=73
2=73
3=-2

4=-2

[CDICargosAmexOutD]
Estilo=Hoja
Pestana=S
Clave=CDICargosAmexOutD
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICargosAmexOutD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDICargosAmexOut
LlaveLocal=CDICargosAmexOutD.Lote
LlaveMaestra=CDICargosAmexOut.Lote
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
PestanaOtroNombre=S
PestanaNombre=Generados

OtroOrden=S
ListaOrden=CDICargosAmexOutD.Movimiento<TAB>(Acendente)
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaEnLinea=S
BusquedaInicializar=S
BusquedaRespetarControles=S
[CDICargosAmexOutD.CDICargosAmexOutD.Movimiento]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40

ColorFondo=Blanco
[CDICargosAmexOutD.CDICargosAmexOutD.Socio]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10

[CDICargosAmexOutD.CDICargosAmexOutD.Afiliacion]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.Afiliacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDICargosAmexOutD.CDICargosAmexOutD.Resultado]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.Resultado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICargosAmexOutD.CDICargosAmexOutD.NoTarjeta]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.NoTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICargosAmexOutD.CDICargosAmexOutD.Filer1]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.Filer1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[CDICargosAmexOutD.CDICargosAmexOutD.importe]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[CDICargosAmexOutD.CDICargosAmexOutD.Fecha]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[CDICargosAmexOutD.CDICargosAmexOutD.IDR]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.IDR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICargosAmexOutD.CDICargosAmexOutD.FechaExpiracion]
Carpeta=CDICargosAmexOutD
Clave=CDICargosAmexOutD.FechaExpiracion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S


[CDICargosAmexOutD.Columnas]
Movimiento=112
Socio=64
Afiliacion=46
Resultado=52
NoTarjeta=94
Filer1=30
importe=76
Fecha=40
IDR=64
FechaExpiracion=94


[CDICargosAmexOutTxt]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=TXT
Clave=CDICargosAmexOutTxt
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICargosAmexOutTxt
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
ListaEnCaptura=CDICargosAmexOutTxt.Campo
CarpetaVisible=S

Detalle=S
VistaMaestra=CDICargosAmexOut
LlaveLocal=CDICargosAmexOutTxt.Lote
LlaveMaestra=CDICargosAmexOut.Lote
OtroOrden=S
ListaOrden=CDICargosAmexOutTxt.RenglonID<TAB>(Acendente)
RefrescarAlEntrar=S
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
BusquedaEnLinea=S
[CDICargosAmexOutTxt.CDICargosAmexOutTxt.Campo]
Carpeta=CDICargosAmexOutTxt
Clave=CDICargosAmexOutTxt.Campo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=90
ColorFondo=Blanco


[CDICargosAmexOutTxt.Columnas]
Campo=508
















[CDICuentasAmex]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Respuesta Amex
Clave=CDICuentasAmex
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICuentasAmex
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
ListaEnCaptura=(Lista)

CarpetaVisible=S
Detalle=S
VistaMaestra=CDICargosAmexOut
LlaveLocal=CDICuentasAmex.lote
LlaveMaestra=CDICargosAmexOut.Lote


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
BusquedaEnLinea=S
[CDICuentasAmex.CDICuentasAmex.Campo1]
Carpeta=CDICuentasAmex
Clave=CDICuentasAmex.Campo1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDICuentasAmex.CDICuentasAmex.Campo2]
Carpeta=CDICuentasAmex
Clave=CDICuentasAmex.Campo2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICuentasAmex.CDICuentasAmex.Campo3]
Carpeta=CDICuentasAmex
Clave=CDICuentasAmex.Campo3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco

[CDICuentasAmex.CDICuentasAmex.Campo4]
Carpeta=CDICuentasAmex
Clave=CDICuentasAmex.Campo4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICuentasAmex.CDICuentasAmex.Campo5]
Carpeta=CDICuentasAmex
Clave=CDICuentasAmex.Campo5
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[CDICuentasAmex.CDICuentasAmex.Campo6]
Carpeta=CDICuentasAmex
Clave=CDICuentasAmex.Campo6
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICuentasAmex.CDICuentasAmex.Campo7]
Carpeta=CDICuentasAmex
Clave=CDICuentasAmex.Campo7
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDICuentasAmex.CDICuentasAmex.idr]
Carpeta=CDICuentasAmex
Clave=CDICuentasAmex.idr
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDICuentasAmex.Columnas]
lote=64
Campo1=46
Campo2=43
Campo3=100
Campo4=64
Campo5=43
Campo6=94
Campo7=80
idr=64






[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S


[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S





EspacioPrevio=S
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S



EspacioPrevio=S
[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
ConCondicion=S
Visible=S





EspacioPrevio=S
EjecucionCondicion=CDICargosAmexOut:CDICargosAmexOut.Estatus=<T>SINAFECTAR<T>
[Acciones.Generar]
Nombre=Generar
Boton=39
NombreEnBoton=S
NombreDesplegar=Generar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura



















GuardarAntes=S
Antes=S
DespuesGuardar=S



















ClaveAccion=Actualizar Forma

ActivoCondicion=vacio(CDICargosAmexOut:CDICargosAmexOut.Estatus)
AntesExpresiones=EjecutarSql(<T>xpCDIAmexOut :tE, :tM, :nI<T>,<T>CDI<T>,<T>Pesos<T>,CDICargosAmexOut:CDICargosAmexOut.Id)
VisibleCondicion=(CONDATOS(CDICargosAmexOut:CDICargosAmexOut.FechaEmision) Y CONDATOS(CDICargosAmexOut:CDICargosAmexOut.Ruta))
[Acciones.Enviar]
Nombre=Enviar
Boton=52
NombreEnBoton=S
NombreDesplegar=Generar Archivo
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S


























































































































Expresion=eJECUTARSql(<T>xpCDIAmexOutGenFile :tE, :nI, :tU <T>,empresa,CDICargosAmexOut:CDICargosAmexOut.Id,usuario)
ActivoCondicion=CDICargosAmexOut:CDICargosAmexOut.Estatus=<T>SINAFECTAR<T>
[Acciones.Recibir]
Nombre=Recibir
Boton=57
NombreEnBoton=S
NombreDesplegar=Recibir
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Antes=S
Visible=S























































ActivoCondicion=CDICargosAmexOut:CDICargosAmexOut.Estatus=<T>GENERADO<T>
AntesExpresiones=ASIGNA(Info.Id,CDICargosAmexOut:CDICargosAmexOut.Id)<BR>ASIGNA(Info.Numero,CDICargosAmexOut:CDICargosAmexOut.Lote)  <BR>FormaModal(<T>LeerAmex<T>)

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDICargosAmexOut.FechaEmision
CDICargosAmexOut.FechaEmision=CDICargosAmexOut.Usuario
CDICargosAmexOut.Usuario=CDICargosAmexOut.Estatus
CDICargosAmexOut.Estatus=(Fin)





























































[Acciones.GenRI]
Nombre=GenRI
Boton=11
NombreDesplegar=Generar Recibo
EnBarraHerramientas=S
TipoAccion=Expresion

NombreEnBoton=S




Multiple=S
ListaAccionesMultiples=(Lista)
EspacioPrevio=S
Visible=S
ActivoCondicion=CDICargosAmexOut:CDICargosAmexOut.Estatus=<T>RECIBIDO<T>
[Acciones.Cobro]
Nombre=Cobro
Boton=64
NombreEnBoton=S
NombreDesplegar=Generar Cobro
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion























































































Multiple=S
ListaAccionesMultiples=(Lista)
Activo=S
[Acciones.GenRI.Proceso2]
Nombre=Proceso2
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=ejecutarsql(<T>sprocStartCDISCRecibosAmex<T>)
[Acciones.GenRI.Proceso1]
Nombre=Proceso1
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
















Expresion=ejecutarsql(<T>spCDIProcAmexSC_B0 :nE, :tU, :nI, :nP<T>,estaciontrabajo, usuario, CDICargosAmexOut:CDICargosAmexOut.Id,1)

[Acciones.Cobro.Proc2]
Nombre=Proc2
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S




Expresion=ejecutarsql(<T>spCDIProcAmexSC_B0 :nE, :tU, :nI, :nP<T>,estaciontrabajo, usuario, CDICargosAmexOut:CDICargosAmexOut.Id,2)
[Acciones.Cobro.Proceso1]
Nombre=Proceso1
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S







Expresion=ejecutarsql(<T>sprocStartCDISCRecibosAmex<T>)
[Acciones.GenRI.ListaAccionesMultiples]
(Inicio)=Proceso1
Proceso1=Proceso2
Proceso2=(Fin)






[CDICargosAmexCobrosSC]
Estilo=Hoja
Pestana=S
Clave=CDICargosAmexCobrosSC
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDICargosAmexCobrosSC
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Normal
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

PestanaOtroNombre=S
PestanaNombre=Cobros
OtroOrden=S
ValidarCampos=S
Detalle=S
RefrescarAlEntrar=S


VistaMaestra=CDICargosAmexOut
LlaveLocal=CDICargosAmexCobrosSC.lote
LlaveMaestra=CDICargosAmexOut.Lote


HojaAjustarColumnas=S
HojaOrdenarColumnas=S
ListaEnCaptura=(Lista)



ListaOrden=CDICargosAmexCobrosSC.MovVta<TAB>(Decendente)
ListaCamposAValidar=(Lista)
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
BusquedaEnLinea=S
BusquedaAutoAsterisco=S
[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.Campo1]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.Campo1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.Campo2]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.Campo2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.Campo3]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.Campo3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.Campo4]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.Campo4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.Campo5]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.Campo5
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.Campo6]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.Campo6
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.Campo7]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.Campo7
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.idr]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.idr
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.IDRecVta]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.IDRecVta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.MovVta]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.MovVta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.MovIdVta]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.MovIdVta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.MovCxc]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.MovCxc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICargosAmexCobrosSC.CDICargosAmexCobrosSC.MovIdCxc]
Carpeta=CDICargosAmexCobrosSC
Clave=CDICargosAmexCobrosSC.MovIdCxc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






















[CDICargosAmexCobrosSC.Columnas]
Campo1=46
Campo2=43
Campo3=100
Campo4=64
Campo5=43
Campo6=94
Campo7=46
idr=64
IDRecVta=64
MovVta=62
MovIdVta=73
IDRecCxc=64
IdCxcCob=64
MovCxc=50
MovIdCxc=69







[CDICargosAmexCobrosSC.ListaOrden]
(Inicio)=CDICargosAmexCobrosSC.id	(Acendente)
CDICargosAmexCobrosSC.id	(Acendente)=CDICargosAmexCobrosSC.MovVta	(Acendente)
CDICargosAmexCobrosSC.MovVta	(Acendente)=(Fin)





























[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Total Registros<BR>Importe Registros<BR>Importe Aprobado<BR>Importe Declinado
Totalizadores2=SQL(<T>SELECT count(campo4) from CDICuentasAmex where Lote=:nI<T>,  CDICuentasAmex:CDICuentasAmex.lote)<BR>SQL(<T>SELECT sum(campo4) from CDICuentasAmex where Lote=:nI<T>,  CDICuentasAmex:CDICuentasAmex.lote)<BR>SQL(<T>SELECT sum(campo4) from CDICuentasAmex where Lote=:nI and Campo2=:tL<T>,  CDICuentasAmex:CDICuentasAmex.Lote,<T>A<T>)<BR>SQL(<T>SELECT sum(campo4) from CDICuentasAmex where Lote=:nI and Campo2 <> :tJ<T>,  CDICuentasAmex:CDICuentasAmex.Lote, <T>A<T>)
Totalizadores3=(Cantidades)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)
Totalizadores=S
TotCarpetaRenglones=CDICuentasAmex
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S





TotExpresionesEnSumas=S
TotAlCambiar=S
ListaEnCaptura=(Lista)



[(Carpeta Totalizadores).Total Registros]
Carpeta=(Carpeta Totalizadores)
Clave=Total Registros
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

Pegado=S
[(Carpeta Totalizadores).Importe Registros]
Carpeta=(Carpeta Totalizadores)
Clave=Importe Registros
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

Pegado=S


[(Carpeta Totalizadores).Importe Aprobado]
Carpeta=(Carpeta Totalizadores)
Clave=Importe Aprobado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

[(Carpeta Totalizadores).Importe Declinado]
Carpeta=(Carpeta Totalizadores)
Clave=Importe Declinado
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata











Pegado=S



























[CDICargosAmexOutD.ListaCamposAValidar]
(Inicio)=CDICargosAmexOutD.Cliente
CDICargosAmexOutD.Cliente=CDICargosAmexOutD.Socio
CDICargosAmexOutD.Socio=(Fin)

[CDICuentasAmex.ListaEnCaptura]
(Inicio)=CDICuentasAmex.Campo1
CDICuentasAmex.Campo1=CDICuentasAmex.Campo2
CDICuentasAmex.Campo2=CDICuentasAmex.Campo3
CDICuentasAmex.Campo3=CDICuentasAmex.Campo4
CDICuentasAmex.Campo4=CDICuentasAmex.Campo5
CDICuentasAmex.Campo5=CDICuentasAmex.Campo6
CDICuentasAmex.Campo6=CDICuentasAmex.Campo7
CDICuentasAmex.Campo7=CDICuentasAmex.idr
CDICuentasAmex.idr=(Fin)


[CDICargosAmexOut.ListaEnCaptura]
(Inicio)=CDICargosAmexOut.FechaEmision
CDICargosAmexOut.FechaEmision=CDICargosAmexOut.Ruta
CDICargosAmexOut.Ruta=CDICargosAmexOut.Lote
CDICargosAmexOut.Lote=CDICargosAmexOut.Usuario
CDICargosAmexOut.Usuario=CDICargosAmexOut.Estatus
CDICargosAmexOut.Estatus=(Fin)










[CDICargosAmexCobrosSC.ListaEnCaptura]
(Inicio)=CDICargosAmexCobrosSC.Campo1
CDICargosAmexCobrosSC.Campo1=CDICargosAmexCobrosSC.Campo2
CDICargosAmexCobrosSC.Campo2=CDICargosAmexCobrosSC.Campo3
CDICargosAmexCobrosSC.Campo3=CDICargosAmexCobrosSC.Campo4
CDICargosAmexCobrosSC.Campo4=CDICargosAmexCobrosSC.Campo5
CDICargosAmexCobrosSC.Campo5=CDICargosAmexCobrosSC.Campo6
CDICargosAmexCobrosSC.Campo6=CDICargosAmexCobrosSC.Campo7
CDICargosAmexCobrosSC.Campo7=CDICargosAmexCobrosSC.idr
CDICargosAmexCobrosSC.idr=CDICargosAmexCobrosSC.IDRecVta
CDICargosAmexCobrosSC.IDRecVta=CDICargosAmexCobrosSC.MovVta
CDICargosAmexCobrosSC.MovVta=CDICargosAmexCobrosSC.MovIdVta
CDICargosAmexCobrosSC.MovIdVta=CDICargosAmexCobrosSC.MovCxc
CDICargosAmexCobrosSC.MovCxc=CDICargosAmexCobrosSC.MovIdCxc
CDICargosAmexCobrosSC.MovIdCxc=(Fin)

[CDICargosAmexCobrosSC.ListaCamposAValidar]
(Inicio)=CDICargosAmexCobrosSC.cdisocio
CDICargosAmexCobrosSC.cdisocio=CDICargosAmexCobrosSC.nombre
CDICargosAmexCobrosSC.nombre=CDICargosAmexCobrosSC.Telefonos
CDICargosAmexCobrosSC.Telefonos=(Fin)




















[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Total Registros
Total Registros=Importe Registros
Importe Registros=Importe Aprobado
Importe Aprobado=Importe Declinado
Importe Declinado=(Fin)



[CDICargosAmexOutD.ListaEnCaptura]
(Inicio)=CDICargosAmexOutD.Socio
CDICargosAmexOutD.Socio=CDICargosAmexOutD.FechaExpiracion
CDICargosAmexOutD.FechaExpiracion=CDICargosAmexOutD.Afiliacion
CDICargosAmexOutD.Afiliacion=CDICargosAmexOutD.Resultado
CDICargosAmexOutD.Resultado=CDICargosAmexOutD.NoTarjeta
CDICargosAmexOutD.NoTarjeta=CDICargosAmexOutD.Filer1
CDICargosAmexOutD.Filer1=CDICargosAmexOutD.importe
CDICargosAmexOutD.importe=CDICargosAmexOutD.Fecha
CDICargosAmexOutD.Fecha=CDICargosAmexOutD.Movimiento
CDICargosAmexOutD.Movimiento=CDICargosAmexOutD.IDR
CDICargosAmexOutD.IDR=(Fin)






















[Acciones.Cobro.ListaAccionesMultiples]
(Inicio)=Proc2
Proc2=Proceso1
Proceso1=(Fin)



























[Forma.ListaCarpetas]
(Inicio)=CDICargosAmexOut
CDICargosAmexOut=CDICargosAmexOutD
CDICargosAmexOutD=CDICargosAmexOutTxt
CDICargosAmexOutTxt=CDICuentasAmex
CDICuentasAmex=CDICargosAmexCobrosSC
CDICargosAmexCobrosSC=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Abrir
Documento Abrir=Documento Nuevo
Documento Nuevo=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=Generar
Generar=Enviar
Enviar=Recibir
Recibir=GenRI
GenRI=Cobro
Cobro=(Fin)
