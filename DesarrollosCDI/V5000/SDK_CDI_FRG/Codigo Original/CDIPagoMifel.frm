
[Forma]
Clave=CDIPagoMifel
Icono=0
CarpetaPrincipal=CDIPagoMifel
Modulos=(Todos)
Nombre=CDIPagoMifel

ListaCarpetas=CDIPagoMifel
PosicionInicialAlturaCliente=553
PosicionInicialAncho=736
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
PosicionInicialIzquierda=330
PosicionInicialArriba=64
PosicionSec1=145
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIPagoMifel]
Estilo=Hoja
Clave=CDIPagoMifel
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPagoMifel
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
Detalle=S
VistaMaestra=CDIPagoMifel
LlaveLocal=Nomina.ID
LlaveMaestra=Nomina.ID

ValidarCampos=S
ListaCamposAValidar=(Lista)
FuenteDesplegar={MS Sans Serif, 8, Negro, []}
FiltroGeneral=Personal.FormaPago = <T>TRANSFERENCIA Nomina<T>
[CDIPagoMifel.Columnas]
NombreCompleto=169
PersonalCuenta=88

Total a Pagar=68


Importe=87
COLUMN3=88
Nombre=184

CUENTA=96
CONCEPTO=120
NOMBRE EMPLEADO=383
[CDIPagoMifel.NominaD.Importe]
Carpeta=CDIPagoMifel
Clave=NominaD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[CDIPagoMifel.CUENTA]
Carpeta=CDIPagoMifel
Clave=CUENTA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIPagoMifel.CONCEPTO]
Carpeta=CDIPagoMifel
Clave=CONCEPTO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=14
ColorFondo=Blanco

[CDIPagoMifel.NOMBRE EMPLEADO]
Carpeta=CDIPagoMifel
Clave=NOMBRE EMPLEADO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=92
ColorFondo=Blanco


[(Carpeta Totalizadores)]
Pestana=S
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
Totalizadores1=Total Registros<BR>Monto Total
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S
Totalizadores2=<BR>CDIPagoMifel:TOTAL

Totalizadores3=0.00
ListaEnCaptura=Total Registros
TotExpresionesEnSumas=S
TotAlCambiar=S

[(Carpeta Totalizadores).Total Registros]
Carpeta=(Carpeta Totalizadores)
Clave=Total Registros
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata


[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=&Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S















EspacioPrevio=S


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S






















[CDIPagoMifel.ListaEnCaptura]
(Inicio)=CUENTA
CUENTA=NominaD.Importe
NominaD.Importe=CONCEPTO
CONCEPTO=NOMBRE EMPLEADO
NOMBRE EMPLEADO=(Fin)

[CDIPagoMifel.ListaCamposAValidar]
(Inicio)=COLUMN5
COLUMN5=TOTAL
TOTAL=(Fin)
























[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=&Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S











[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=Cerrar
Cerrar=Imprimir
Imprimir=(Fin)
