
[Forma]
Clave=CDIAcceAsisDiaUbic
Icono=0
Modulos=(Todos)
MovModulo=CDIAcceAsisDiaUbic
Nombre=Asistencias por Ubicación
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIAcceAsisDiaUbic
PosicionInicialIzquierda=129
PosicionInicialArriba=16
PosicionInicialAlturaCliente=650
PosicionInicialAncho=461
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Totalizadores=S
PosicionSec1=579
[CDIAcceAsisDiaUbic]
Estilo=Hoja
Clave=CDIAcceAsisDiaUbic
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAcceAsisDiaUbic
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
Filtros=S

FiltroPredefinido=S
FiltroGrupo1=CDIAcceAsisDiaUbic.Ubicacion
FiltroGrupo2=CDIAcceAsisDiaUbic.Anio
FiltroGrupo3=CDIAcceAsisDiaUbic.MesN
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
OtroOrden=S
ListaOrden=(Lista)


Pestana=S
PestanaOtroNombre=S
PestanaNombre=Accesos
[CDIAcceAsisDiaUbic.CDIAcceAsisDiaUbic.FechaEmision]
Carpeta=CDIAcceAsisDiaUbic
Clave=CDIAcceAsisDiaUbic.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIAcceAsisDiaUbic.CDIAcceAsisDiaUbic.Dia]
Carpeta=CDIAcceAsisDiaUbic
Clave=CDIAcceAsisDiaUbic.Dia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAcceAsisDiaUbic.CDIAcceAsisDiaUbic.Ubicacion]
Carpeta=CDIAcceAsisDiaUbic
Clave=CDIAcceAsisDiaUbic.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIAcceAsisDiaUbic.CDIAcceAsisDiaUbic.Cantidad]
Carpeta=CDIAcceAsisDiaUbic
Clave=CDIAcceAsisDiaUbic.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAcceAsisDiaUbic.Columnas]
Mov=124
Movid=124
FechaEmision=94
Anio=64
Mes=64
Dia=32
Ubicacion=64
Cantidad=64











[CDIAcceAsisDiaUbicC]
Estilo=Cubo
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cubo
Clave=CDIAcceAsisDiaUbicC
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAcceAsisDiaUbic
Fuente={Tahoma, 8, Negro, []}
CarpetaVisible=S




















CarpetaDesActivada=S
[CDIAcceAsisDiaUbic.ListaEnCaptura]
(Inicio)=CDIAcceAsisDiaUbic.FechaEmision
CDIAcceAsisDiaUbic.FechaEmision=CDIAcceAsisDiaUbic.Dia
CDIAcceAsisDiaUbic.Dia=CDIAcceAsisDiaUbic.Ubicacion
CDIAcceAsisDiaUbic.Ubicacion=CDIAcceAsisDiaUbic.Cantidad
CDIAcceAsisDiaUbic.Cantidad=(Fin)

[CDIAcceAsisDiaUbic.ListaOrden]
(Inicio)=CDIAcceAsisDiaUbic.Anio	(Acendente)
CDIAcceAsisDiaUbic.Anio	(Acendente)=CDIAcceAsisDiaUbic.MesN	(Acendente)
CDIAcceAsisDiaUbic.MesN	(Acendente)=CDIAcceAsisDiaUbic.Dia	(Acendente)
CDIAcceAsisDiaUbic.Dia	(Acendente)=(Fin)




[Acciones.Expresion]
Nombre=Expresion
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar VIsta
TipoAccion=Expresion










EspacioPrevio=S
Expresion=Cubo.GuardarVistaActual(<T>CDIAcceAsisDiaUbicC<T>)
[Acciones.Personalizar]
Nombre=Personalizar
Boton=48
NombreEnBoton=S
NombreDesplegar=Personalizar
TipoAccion=Expresion





EspacioPrevio=S
Expresion=Cubo.Personalizar(<T>CDIAcceAsisDiaUbicC<T>)
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=50
NombreDesplegar=Seleccionar
TipoAccion=Expresion





NombreEnBoton=S




















EspacioPrevio=S
Expresion=Cubo.SeleccionarVista(<T>CDIAcceAsisDiaUbicC<T>)
[Acciones.GuardarComo]
Nombre=GuardarComo
Boton=51
NombreEnBoton=S
NombreDesplegar=Guardar Como
TipoAccion=Expresion




EspacioPrevio=S
Expresion=Pregunta(info.mensaje, <T>Nombre de la Vista<T>, <T>Guardar Vista como?<T>)<BR>//Cubo.GuardarComoOtraVista(<T>CDIAcceAsisDiaUbicC<T>)<BR>Cubo.GuardarComoOtraVista(<T>CDIAcceAsisDiaUbicC<T>, info.mensaje )
[Acciones.Excel]
Nombre=Excel
Boton=115
NombreEnBoton=S
NombreDesplegar=Excel
TipoAccion=Expresion




















EspacioPrevio=S




Expresion=Cubo.GuardarComoExcel(<T>CDIAcceAsisDiaUbicC<T>)
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
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Total
Totalizadores2=SUMA(CDIAcceAsisDiaUbic:CDIAcceAsisDiaUbic.Cantidad)
Totalizadores3=(Cantidades)
Totalizadores=S
TotCarpetaRenglones=CDIAcceAsisDiaUbic
TotExpresionesEnSumas=S
TotAlCambiar=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Total
CarpetaVisible=S

[(Carpeta Totalizadores).Total]
Carpeta=(Carpeta Totalizadores)
Clave=Total
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata



















[Acciones.Accesos]
Nombre=Accesos
Boton=9
NombreEnBoton=S
NombreDesplegar=Accesos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIAcceDiaUbic
Activo=S
Visible=S







































[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S









































[Forma.ListaCarpetas]
(Inicio)=CDIAcceAsisDiaUbic
CDIAcceAsisDiaUbic=CDIAcceAsisDiaUbicC
CDIAcceAsisDiaUbicC=(Fin)

[Forma.ListaAcciones]
(Inicio)=Accesos
Accesos=Expresion
Expresion=Personalizar
Personalizar=Seleccionar
Seleccionar=GuardarComo
GuardarComo=Excel
Excel=Enviar a Excel
Enviar a Excel=(Fin)
