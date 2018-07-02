
[Forma]
Clave=CDITranWeb
Icono=0
Modulos=(Todos)
Nombre=Operaciones WEB
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDITranWeb
PosicionInicialIzquierda=66
PosicionInicialArriba=152
PosicionInicialAlturaCliente=425
PosicionInicialAncho=1233
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
DialogoAbrir=S
PosicionSec1=154
PosicionSec2=573
PosicionCol1=960
[CDITranWeb]
Estilo=Ficha
Clave=CDITranWeb
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITranWeb
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

[CDITranWeb.CDITranWeb.IdTransaccionWeb]
Carpeta=CDITranWeb
Clave=CDITranWeb.IdTransaccionWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CDITranWeb.CDITranWeb.FechaEmision]
Carpeta=CDITranWeb
Clave=CDITranWeb.FechaEmision
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=25
[CDITranWeb.CDITranWeb.Cliente]
Carpeta=CDITranWeb
Clave=CDITranWeb.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDITranWeb.CDITranWeb.CDISocio]
Carpeta=CDITranWeb
Clave=CDITranWeb.CDISocio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDITranWeb.CDITranWeb.FechaTransaccion]
Carpeta=CDITranWeb
Clave=CDITranWeb.FechaTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=25
[CDITranWeb.CDITranWeb.IDTransWeb]
Carpeta=CDITranWeb
Clave=CDITranWeb.IDTransWeb
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWeb.CDITranWeb.Estatus]
Carpeta=CDITranWeb
Clave=CDITranWeb.Estatus
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S



[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


EspacioPrevio=S
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDITranWeb
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=Transaccion
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroGrupo1=CDITranWeb.Ejercicio
FiltroGrupo2=CDITranWeb.Periodo
OtroOrden=S
ListaOrden=CDITranWeb.Id<TAB>(Decendente)
FiltroTodo=S
FiltroFechas=S
FiltroFechasCampo=CDITranWeb.FechaEmision
FiltroFechasDefault=(Todo)
BusquedaRapida=S
BusquedaEnLinea=S
PestanaOtroNombre=S
PestanaNombre=Transacciones WEB
FiltroEstatus=S
MenuLocal=S
IconosNombre=CDITranWeb:CDITranWeb.IdTransaccionWeb
ListaAcciones=Enviar a Excel
[(Carpeta Abrir).CDITranWeb.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDITranWeb.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDITranWeb.Cliente]
Carpeta=(Carpeta Abrir)
Clave=CDITranWeb.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).CDITranWeb.CDISocio]
Carpeta=(Carpeta Abrir)
Clave=CDITranWeb.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).CDITranWeb.FechaTransaccion]
Carpeta=(Carpeta Abrir)
Clave=CDITranWeb.FechaTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDITranWeb.IDTransWeb]
Carpeta=(Carpeta Abrir)
Clave=CDITranWeb.IDTransWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDITranWeb.Estatus]
Carpeta=(Carpeta Abrir)
Clave=CDITranWeb.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[(Carpeta Abrir).Columnas]
0=278
1=-2
2=66
3=66
4=107
5=-2
6=-2



7=105
[CDITranWebD.CDITranWebD.Modulo]
Carpeta=CDITranWebD
Clave=CDITranWebD.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=3
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.IdMov]
Carpeta=CDITranWebD
Clave=CDITranWebD.IdMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.Movimiento]
Carpeta=CDITranWebD
Clave=CDITranWebD.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.Concepto]
Carpeta=CDITranWebD
Clave=CDITranWebD.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.Importe]
Carpeta=CDITranWebD
Clave=CDITranWebD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.UnidadCantidad]
Carpeta=CDITranWebD
Clave=CDITranWebD.UnidadCantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.FechaEmision]
Carpeta=CDITranWebD
Clave=CDITranWebD.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.CDISocio]
Carpeta=CDITranWebD
Clave=CDITranWebD.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.Nombre]
Carpeta=CDITranWebD
Clave=CDITranWebD.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.ReferenciaTransaccion]
Carpeta=CDITranWebD
Clave=CDITranWebD.ReferenciaTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.FechaTransaccion]
Carpeta=CDITranWebD
Clave=CDITranWebD.FechaTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.CantidadComprada]
Carpeta=CDITranWebD
Clave=CDITranWebD.CantidadComprada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.ImporteTransaccion]
Carpeta=CDITranWebD
Clave=CDITranWebD.ImporteTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.ImporteDetalle]
Carpeta=CDITranWebD
Clave=CDITranWebD.ImporteDetalle
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.Estatus]
Carpeta=CDITranWebD
Clave=CDITranWebD.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.RespuestaBanco]
Carpeta=CDITranWebD
Clave=CDITranWebD.RespuestaBanco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.MovGeneradoV]
Carpeta=CDITranWebD
Clave=CDITranWebD.MovGeneradoV
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.MovGeneradoCxC]
Carpeta=CDITranWebD
Clave=CDITranWebD.MovGeneradoCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.A]
Carpeta=CDITranWebD
Clave=CDITranWebD.A
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.B]
Carpeta=CDITranWebD
Clave=CDITranWebD.B
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.C]
Carpeta=CDITranWebD
Clave=CDITranWebD.C
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.D]
Carpeta=CDITranWebD
Clave=CDITranWebD.D
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.E]
Carpeta=CDITranWebD
Clave=CDITranWebD.E
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.F]
Carpeta=CDITranWebD
Clave=CDITranWebD.F
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.G]
Carpeta=CDITranWebD
Clave=CDITranWebD.G
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.H]
Carpeta=CDITranWebD
Clave=CDITranWebD.H
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.I]
Carpeta=CDITranWebD
Clave=CDITranWebD.I
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.J]
Carpeta=CDITranWebD
Clave=CDITranWebD.J
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.K]
Carpeta=CDITranWebD
Clave=CDITranWebD.K
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.L]
Carpeta=CDITranWebD
Clave=CDITranWebD.L
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.M]
Carpeta=CDITranWebD
Clave=CDITranWebD.M
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.N]
Carpeta=CDITranWebD
Clave=CDITranWebD.N
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebD.CDITranWebD.O]
Carpeta=CDITranWebD
Clave=CDITranWebD.O
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco



[CDITranWebD.Columnas]
Modulo=38
IdMov=133
Movimiento=170
Concepto=71
Importe=64
UnidadCantidad=86
FechaEmision=72
CDISocio=50
Nombre=183
ReferenciaTransaccion=114
FechaTransaccion=94
CantidadComprada=96
ImporteTransaccion=99
ImporteDetalle=75
Estatus=46
RespuestaBanco=86
MovGeneradoV=78
MovGeneradoCxC=89
A=20
B=26
C=25
D=70
E=28
F=37
G=83
H=46
I=44
J=26
K=25
L=32
M=27
N=29
O=32





















[CDITranWebA.CDITranWebD.Modulo]
Carpeta=CDITranWebA
Clave=CDITranWebD.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.IdMov]
Carpeta=CDITranWebA
Clave=CDITranWebD.IdMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.Movimiento]
Carpeta=CDITranWebA
Clave=CDITranWebD.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.Concepto]
Carpeta=CDITranWebA
Clave=CDITranWebD.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.Importe]
Carpeta=CDITranWebA
Clave=CDITranWebD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.UnidadCantidad]
Carpeta=CDITranWebA
Clave=CDITranWebD.UnidadCantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.FechaEmision]
Carpeta=CDITranWebA
Clave=CDITranWebD.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.CDISocio]
Carpeta=CDITranWebA
Clave=CDITranWebD.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.Nombre]
Carpeta=CDITranWebA
Clave=CDITranWebD.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.ReferenciaTransaccion]
Carpeta=CDITranWebA
Clave=CDITranWebD.ReferenciaTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.FechaTransaccion]
Carpeta=CDITranWebA
Clave=CDITranWebD.FechaTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.CantidadComprada]
Carpeta=CDITranWebA
Clave=CDITranWebD.CantidadComprada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.ImporteTransaccion]
Carpeta=CDITranWebA
Clave=CDITranWebD.ImporteTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.ImporteDetalle]
Carpeta=CDITranWebA
Clave=CDITranWebD.ImporteDetalle
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.Estatus]
Carpeta=CDITranWebA
Clave=CDITranWebD.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.RespuestaBanco]
Carpeta=CDITranWebA
Clave=CDITranWebD.RespuestaBanco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.MovGeneradoV]
Carpeta=CDITranWebA
Clave=CDITranWebD.MovGeneradoV
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.MovGeneradoCxC]
Carpeta=CDITranWebA
Clave=CDITranWebD.MovGeneradoCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.A]
Carpeta=CDITranWebA
Clave=CDITranWebD.A
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.B]
Carpeta=CDITranWebA
Clave=CDITranWebD.B
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.C]
Carpeta=CDITranWebA
Clave=CDITranWebD.C
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.D]
Carpeta=CDITranWebA
Clave=CDITranWebD.D
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.E]
Carpeta=CDITranWebA
Clave=CDITranWebD.E
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.F]
Carpeta=CDITranWebA
Clave=CDITranWebD.F
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.G]
Carpeta=CDITranWebA
Clave=CDITranWebD.G
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.H]
Carpeta=CDITranWebA
Clave=CDITranWebD.H
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.I]
Carpeta=CDITranWebA
Clave=CDITranWebD.I
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.J]
Carpeta=CDITranWebA
Clave=CDITranWebD.J
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.K]
Carpeta=CDITranWebA
Clave=CDITranWebD.K
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.L]
Carpeta=CDITranWebA
Clave=CDITranWebD.L
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.M]
Carpeta=CDITranWebA
Clave=CDITranWebD.M
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.N]
Carpeta=CDITranWebA
Clave=CDITranWebD.N
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDITranWebA.CDITranWebD.O]
Carpeta=CDITranWebA
Clave=CDITranWebD.O
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco



[CDITranWebA.Columnas]
Modulo=38
IdMov=146
Movimiento=172
Concepto=120
Importe=64
UnidadCantidad=86
FechaEmision=94
CDISocio=604
Nombre=604
ReferenciaTransaccion=604
FechaTransaccion=94
CantidadComprada=96
ImporteTransaccion=99
ImporteDetalle=75
Estatus=604
RespuestaBanco=604
MovGeneradoV=604
MovGeneradoCxC=604
A=604
B=604
C=604
D=604
E=604
F=604
G=604
H=604
I=604
J=604
K=604
L=604
M=604
N=604
O=604





























[CDITranWebD.ListaEnCaptura]
(Inicio)=CDITranWebD.Modulo
CDITranWebD.Modulo=CDITranWebD.IdMov
CDITranWebD.IdMov=CDITranWebD.Movimiento
CDITranWebD.Movimiento=CDITranWebD.Concepto
CDITranWebD.Concepto=CDITranWebD.Importe
CDITranWebD.Importe=CDITranWebD.UnidadCantidad
CDITranWebD.UnidadCantidad=CDITranWebD.FechaEmision
CDITranWebD.FechaEmision=CDITranWebD.CDISocio
CDITranWebD.CDISocio=CDITranWebD.Nombre
CDITranWebD.Nombre=CDITranWebD.ReferenciaTransaccion
CDITranWebD.ReferenciaTransaccion=CDITranWebD.FechaTransaccion
CDITranWebD.FechaTransaccion=CDITranWebD.CantidadComprada
CDITranWebD.CantidadComprada=CDITranWebD.ImporteTransaccion
CDITranWebD.ImporteTransaccion=CDITranWebD.ImporteDetalle
CDITranWebD.ImporteDetalle=CDITranWebD.Estatus
CDITranWebD.Estatus=CDITranWebD.RespuestaBanco
CDITranWebD.RespuestaBanco=CDITranWebD.MovGeneradoV
CDITranWebD.MovGeneradoV=CDITranWebD.MovGeneradoCxC
CDITranWebD.MovGeneradoCxC=CDITranWebD.A
CDITranWebD.A=CDITranWebD.B
CDITranWebD.B=CDITranWebD.C
CDITranWebD.C=CDITranWebD.D
CDITranWebD.D=CDITranWebD.E
CDITranWebD.E=CDITranWebD.F
CDITranWebD.F=CDITranWebD.G
CDITranWebD.G=CDITranWebD.H
CDITranWebD.H=CDITranWebD.I
CDITranWebD.I=CDITranWebD.J
CDITranWebD.J=CDITranWebD.K
CDITranWebD.K=CDITranWebD.L
CDITranWebD.L=CDITranWebD.M
CDITranWebD.M=CDITranWebD.N
CDITranWebD.N=CDITranWebD.O
CDITranWebD.O=(Fin)

[CDITranWebA.ListaEnCaptura]
(Inicio)=CDITranWebD.Modulo
CDITranWebD.Modulo=CDITranWebD.IdMov
CDITranWebD.IdMov=CDITranWebD.Movimiento
CDITranWebD.Movimiento=CDITranWebD.Concepto
CDITranWebD.Concepto=CDITranWebD.Importe
CDITranWebD.Importe=CDITranWebD.UnidadCantidad
CDITranWebD.UnidadCantidad=CDITranWebD.FechaEmision
CDITranWebD.FechaEmision=CDITranWebD.CDISocio
CDITranWebD.CDISocio=CDITranWebD.Nombre
CDITranWebD.Nombre=CDITranWebD.ReferenciaTransaccion
CDITranWebD.ReferenciaTransaccion=CDITranWebD.FechaTransaccion
CDITranWebD.FechaTransaccion=CDITranWebD.CantidadComprada
CDITranWebD.CantidadComprada=CDITranWebD.ImporteTransaccion
CDITranWebD.ImporteTransaccion=CDITranWebD.ImporteDetalle
CDITranWebD.ImporteDetalle=CDITranWebD.Estatus
CDITranWebD.Estatus=CDITranWebD.RespuestaBanco
CDITranWebD.RespuestaBanco=CDITranWebD.MovGeneradoV
CDITranWebD.MovGeneradoV=CDITranWebD.MovGeneradoCxC
CDITranWebD.MovGeneradoCxC=CDITranWebD.A
CDITranWebD.A=CDITranWebD.B
CDITranWebD.B=CDITranWebD.C
CDITranWebD.C=CDITranWebD.D
CDITranWebD.D=CDITranWebD.E
CDITranWebD.E=CDITranWebD.F
CDITranWebD.F=CDITranWebD.G
CDITranWebD.G=CDITranWebD.H
CDITranWebD.H=CDITranWebD.I
CDITranWebD.I=CDITranWebD.J
CDITranWebD.J=CDITranWebD.K
CDITranWebD.K=CDITranWebD.L
CDITranWebD.L=CDITranWebD.M
CDITranWebD.M=CDITranWebD.N
CDITranWebD.N=CDITranWebD.O
CDITranWebD.O=(Fin)







[CDIVTranWebArt]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Articulos y Servicios
Clave=CDIVTranWebArt
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVTranWebArt
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDITranWeb
LlaveLocal=CDIVTranWebArt.Id
LlaveMaestra=CDITranWeb.Id
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

ValidarCampos=S
ListaCamposAValidar=ImpteDetalle
[CDIVTranWebArt.CDIVTranWebArt.IdMov]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.IdMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebArt.CDIVTranWebArt.Movimiento]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebArt.CDIVTranWebArt.Concepto]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebArt.CDIVTranWebArt.Importe]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDIVTranWebArt.CDIVTranWebArt.CantidadComprada]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.CantidadComprada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIVTranWebArt.CDIVTranWebArt.ImporteDetalle]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.ImporteDetalle
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTranWebArt.CDIVTranWebArt.Estatus]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebArt.CDIVTranWebArt.RespuestaBanco]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.RespuestaBanco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebArt.CDIVTranWebArt.MovGeneradoV]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.MovGeneradoV
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebArt.CDIVTranWebArt.MovGeneradoCxC]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.MovGeneradoCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco



[CDIVTranWebArt.Columnas]
IdMov=70
Movimiento=160
Concepto=92
Importe=76
UnidadCantidad=81
FechaEmision=74
ReferenciaTransaccion=116
FechaTransaccion=123
CantidadComprada=99
ImporteTransaccion=99
ImporteDetalle=64
Estatus=71
RespuestaBanco=84
MovGeneradoV=109
MovGeneradoCxC=111








ImpteDetalle=72
CDISocio=60
Nombre=199
A=74
B=73
C=70
D=77
[CDITranWeb.CDITranWeb.ImporteTransaccion]
Carpeta=CDITranWeb
Clave=CDITranWeb.ImporteTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[(Carpeta Abrir).CDITranWeb.ImporteTransaccion]
Carpeta=(Carpeta Abrir)
Clave=CDITranWeb.ImporteTransaccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDITranWeb.ListaEnCaptura]
(Inicio)=CDITranWeb.IdTransaccionWeb
CDITranWeb.IdTransaccionWeb=CDITranWeb.FechaEmision
CDITranWeb.FechaEmision=CDITranWeb.Cliente
CDITranWeb.Cliente=CDITranWeb.CDISocio
CDITranWeb.CDISocio=CDITranWeb.ImporteTransaccion
CDITranWeb.ImporteTransaccion=CDITranWeb.FechaTransaccion
CDITranWeb.FechaTransaccion=CDITranWeb.IDTransWeb
CDITranWeb.IDTransWeb=CDITranWeb.Estatus
CDITranWeb.Estatus=(Fin)


















[CDIVTranWebCas]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Casilleros
Clave=CDIVTranWebCas
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVTranWebCas
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDITranWeb
LlaveLocal=CDIVTranWebCas.Id
LlaveMaestra=CDITranWeb.Id
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

ValidarCampos=S
ListaCamposAValidar=ImpteDetalle
[CDIVTranWebCas.CDIVTranWebCas.MovGeneradoV]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.MovGeneradoV
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.MovGeneradoCxC]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.MovGeneradoCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.IdMov]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.IdMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.Movimiento]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.Concepto]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.Importe]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.D]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.D
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.E]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.E
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.G]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.G
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco



[CDIVTranWebCas.Columnas]
MovGeneradoV=77
MovGeneradoCxC=108
IdMov=47
Movimiento=40
Concepto=64
Importe=75
D=87
E=55
G=101




ReferenciaTransaccion=113
FechaTransaccion=94
ImporteTransaccion=99
ImporteDetalle=109
Estatus=92
RespuestaBanco=83




[CDIVTranWebCas.CDIVTranWebCas.ImporteDetalle]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.ImporteDetalle
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.Estatus]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCas.CDIVTranWebCas.RespuestaBanco]
Carpeta=CDIVTranWebCas
Clave=CDIVTranWebCas.RespuestaBanco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco













[CDIVTranWebCxC]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Pagos Pendientes Realizados
Clave=CDIVTranWebCxC
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVTranWebCxC
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDITranWeb
LlaveLocal=CDIVTranWebCxC.Id
LlaveMaestra=CDITranWeb.Id
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

ValidarCampos=S
ListaCamposAValidar=ImpteDetalle
[CDIVTranWebCxC.CDIVTranWebCxC.MovGeneradoCxC]
Carpeta=CDIVTranWebCxC
Clave=CDIVTranWebCxC.MovGeneradoCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCxC.CDIVTranWebCxC.Movimiento]
Carpeta=CDIVTranWebCxC
Clave=CDIVTranWebCxC.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCxC.CDIVTranWebCxC.Concepto]
Carpeta=CDIVTranWebCxC
Clave=CDIVTranWebCxC.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCxC.CDIVTranWebCxC.Importe]
Carpeta=CDIVTranWebCxC
Clave=CDIVTranWebCxC.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTranWebCxC.CDIVTranWebCxC.FechaEmision]
Carpeta=CDIVTranWebCxC
Clave=CDIVTranWebCxC.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[CDIVTranWebCxC.CDIVTranWebCxC.ImporteDetalle]
Carpeta=CDIVTranWebCxC
Clave=CDIVTranWebCxC.ImporteDetalle
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIVTranWebCxC.Columnas]
MovGeneradoCxC=123
Movimiento=109
Concepto=206
Importe=82
FechaEmision=66
ReferenciaTransaccion=138
FechaTransaccion=94
ImporteTransaccion=102
ImporteDetalle=82




Estatus=64
RespuestaBanco=88

[CDIVTranWebCxC.CDIVTranWebCxC.Estatus]
Carpeta=CDIVTranWebCxC
Clave=CDIVTranWebCxC.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCxC.CDIVTranWebCxC.RespuestaBanco]
Carpeta=CDIVTranWebCxC
Clave=CDIVTranWebCxC.RespuestaBanco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco









[CDIVTranWebCe]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Inscripciones
Clave=CDIVTranWebCe
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVTranWebCe
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDITranWeb
LlaveLocal=CDIVTranWebCe.Id
LlaveMaestra=CDITranWeb.Id
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

ValidarCampos=S
ListaCamposAValidar=ImpteDetalle
[CDIVTranWebCe.CDIVTranWebCe.MovGeneradoV]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.MovGeneradoV
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.MovGeneradoCxC]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.MovGeneradoCxC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.IdMov]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.IdMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.Movimiento]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.Concepto]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.Importe]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.CDISocio]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.Nombre]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco





[CDIVTranWebCe.CDIVTranWebCe.Estatus]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.RespuestaBanco]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.RespuestaBanco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.I]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.I
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco




[CDIVTranWebCe.Columnas]
MovGeneradoV=106
MovGeneradoCxC=73
IdMov=75
Movimiento=78
Concepto=66
Importe=64
CDISocio=52
Nombre=163
ReferenciaTransaccion=112
FechaTransaccion=120
ImporteTransaccion=99
ImporteDetalle=78
Estatus=73
RespuestaBanco=87
I=46









K=58
A=66
G=77
[Acciones.Infocte]
Nombre=Infocte
Boton=34
NombreDesplegar=InfoCte
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CteInfo
Activo=S
Antes=S
Visible=S







EspacioPrevio=S
AntesExpresiones=Asigna(info.Cliente,CDITranWeb:CDITranWeb.Cliente)<BR>asigna(info.CDIsocio,CDITranWeb:CDITranWeb.CDISocio)









[(Carpeta Totalizadores).Importe Arts.yServicios]
Carpeta=(Carpeta Totalizadores)
Clave=Importe Arts.yServicios
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

LineaNueva=S
[(Carpeta Totalizadores).Importe Casilleros]
Carpeta=(Carpeta Totalizadores)
Clave=Importe Casilleros
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

LineaNueva=S
[(Carpeta Totalizadores).Importe Cobros Pendientes]
Carpeta=(Carpeta Totalizadores)
Clave=Importe Cobros Pendientes
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

LineaNueva=S
[(Carpeta Totalizadores).Importe Inscripciones]
Carpeta=(Carpeta Totalizadores)
Clave=Importe Inscripciones
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata






LineaNueva=S



























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
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=
Totalizadores2=<BR><BR><BR> <BR><BR><BR><BR> <BR><BR><BR><BR> <BR><BR><BR><BR><BR><BR><BR> <BR><BR><BR><BR> <BR><BR><BR><BR> <BR><BR><BR><BR><BR><BR><BR> <BR><BR><BR><BR> <BR><BR><BR><BR> <BR><BR><BR><BR><BR><BR><BR> <BR><BR><BR><BR> <BR><BR><BR><BR> <BR><BR><BR>Fin
Totalizadores3=
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S









[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Articulos y Servicios
Articulos y Servicios=Casilleros
Casilleros=Pago de Pendientes
Pago de Pendientes=Inscripciones
Inscripciones=(Fin)









[CDIVTranWebArt.ImpteDetalle]
Carpeta=CDIVTranWebArt
Clave=ImpteDetalle
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[CDIVTranWebCxC.ListaEnCaptura]
(Inicio)=CDIVTranWebCxC.MovGeneradoCxC
CDIVTranWebCxC.MovGeneradoCxC=CDIVTranWebCxC.Movimiento
CDIVTranWebCxC.Movimiento=CDIVTranWebCxC.Concepto
CDIVTranWebCxC.Concepto=CDIVTranWebCxC.Importe
CDIVTranWebCxC.Importe=CDIVTranWebCxC.FechaEmision
CDIVTranWebCxC.FechaEmision=CDIVTranWebCxC.ImporteDetalle
CDIVTranWebCxC.ImporteDetalle=CDIVTranWebCxC.Estatus
CDIVTranWebCxC.Estatus=CDIVTranWebCxC.RespuestaBanco
CDIVTranWebCxC.RespuestaBanco=(Fin)

[CDIVTranWebCas.ListaEnCaptura]
(Inicio)=CDIVTranWebCas.MovGeneradoV
CDIVTranWebCas.MovGeneradoV=CDIVTranWebCas.MovGeneradoCxC
CDIVTranWebCas.MovGeneradoCxC=CDIVTranWebCas.IdMov
CDIVTranWebCas.IdMov=CDIVTranWebCas.Movimiento
CDIVTranWebCas.Movimiento=CDIVTranWebCas.Concepto
CDIVTranWebCas.Concepto=CDIVTranWebCas.Importe
CDIVTranWebCas.Importe=CDIVTranWebCas.D
CDIVTranWebCas.D=CDIVTranWebCas.E
CDIVTranWebCas.E=CDIVTranWebCas.G
CDIVTranWebCas.G=CDIVTranWebCas.ImporteDetalle
CDIVTranWebCas.ImporteDetalle=CDIVTranWebCas.Estatus
CDIVTranWebCas.Estatus=CDIVTranWebCas.RespuestaBanco
CDIVTranWebCas.RespuestaBanco=(Fin)


[CDIVTranWebCe.CDIVTranWebCe.K]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.K
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco






[CDIVTranWebCe.CDIVTranWebCe.A]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.A
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebCe.CDIVTranWebCe.G]
Carpeta=CDIVTranWebCe
Clave=CDIVTranWebCe.G
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

































[Acciones.Navegador (Documentos)]
Nombre=Navegador (Documentos)
Boton=0
NombreDesplegar=Navegador (Documentos)
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S

EspacioPrevio=S








[CDIVTranWebCe.ListaEnCaptura]
(Inicio)=CDIVTranWebCe.MovGeneradoV
CDIVTranWebCe.MovGeneradoV=CDIVTranWebCe.MovGeneradoCxC
CDIVTranWebCe.MovGeneradoCxC=CDIVTranWebCe.IdMov
CDIVTranWebCe.IdMov=CDIVTranWebCe.Movimiento
CDIVTranWebCe.Movimiento=CDIVTranWebCe.Concepto
CDIVTranWebCe.Concepto=CDIVTranWebCe.I
CDIVTranWebCe.I=CDIVTranWebCe.Importe
CDIVTranWebCe.Importe=CDIVTranWebCe.A
CDIVTranWebCe.A=CDIVTranWebCe.G
CDIVTranWebCe.G=CDIVTranWebCe.K
CDIVTranWebCe.K=CDIVTranWebCe.CDISocio
CDIVTranWebCe.CDISocio=CDIVTranWebCe.Nombre
CDIVTranWebCe.Nombre=CDIVTranWebCe.Estatus
CDIVTranWebCe.Estatus=CDIVTranWebCe.RespuestaBanco
CDIVTranWebCe.RespuestaBanco=(Fin)












[CDIVTranWebArt.CDIVTranWebArt.CDISocio]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebArt.CDIVTranWebArt.Nombre]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco










[CDIVTranWebArt.ListaEnCaptura]
(Inicio)=CDIVTranWebArt.CDISocio
CDIVTranWebArt.CDISocio=CDIVTranWebArt.Nombre
CDIVTranWebArt.Nombre=CDIVTranWebArt.MovGeneradoV
CDIVTranWebArt.MovGeneradoV=CDIVTranWebArt.MovGeneradoCxC
CDIVTranWebArt.MovGeneradoCxC=CDIVTranWebArt.IdMov
CDIVTranWebArt.IdMov=CDIVTranWebArt.Movimiento
CDIVTranWebArt.Movimiento=CDIVTranWebArt.Concepto
CDIVTranWebArt.Concepto=CDIVTranWebArt.Importe
CDIVTranWebArt.Importe=CDIVTranWebArt.CantidadComprada
CDIVTranWebArt.CantidadComprada=CDIVTranWebArt.ImporteDetalle
CDIVTranWebArt.ImporteDetalle=CDIVTranWebArt.Estatus
CDIVTranWebArt.Estatus=CDIVTranWebArt.RespuestaBanco
CDIVTranWebArt.RespuestaBanco=ImpteDetalle
ImpteDetalle=CDIVTranWebArt.C
CDIVTranWebArt.C=CDIVTranWebArt.D
CDIVTranWebArt.D=(Fin)

[CDIVTranWebArt.CDIVTranWebArt.C]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.C
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVTranWebArt.CDIVTranWebArt.D]
Carpeta=CDIVTranWebArt
Clave=CDIVTranWebArt.D
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco














[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=0
NombreDesplegar=Enviar a Excel
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDITranWeb.ImporteTransaccion
CDITranWeb.ImporteTransaccion=CDITranWeb.Cliente
CDITranWeb.Cliente=CDITranWeb.CDISocio
CDITranWeb.CDISocio=CDITranWeb.FechaEmision
CDITranWeb.FechaEmision=CDITranWeb.FechaTransaccion
CDITranWeb.FechaTransaccion=CDITranWeb.IDTransWeb
CDITranWeb.IDTransWeb=CDITranWeb.Estatus
CDITranWeb.Estatus=(Fin)







[Forma.ListaCarpetas]
(Inicio)=CDITranWeb
CDITranWeb=CDIVTranWebArt
CDIVTranWebArt=CDIVTranWebCe
CDIVTranWebCe=CDIVTranWebCxC
CDIVTranWebCxC=CDIVTranWebCas
CDIVTranWebCas=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Abrir
Documento Abrir=Cerrar
Cerrar=Infocte
Infocte=Navegador (Documentos)
Navegador (Documentos)=(Fin)
