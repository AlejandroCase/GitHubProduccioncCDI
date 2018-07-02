
[Forma]
Clave=CDIAcceDiaUbic
Icono=0
Modulos=(Todos)
MovModulo=CDIAcceDiaUbic
Nombre=Accesos por Ubicación
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIAcceDiaUbic
PosicionInicialIzquierda=585
PosicionInicialArriba=15
PosicionInicialAlturaCliente=650
PosicionInicialAncho=464
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Totalizadores=S
PosicionSec1=579
[CDIAcceDiaUbic]
Estilo=Hoja
Clave=CDIAcceDiaUbic
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAcceDiaUbic
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
FiltroGrupo1=CDIAcceDiaUbic.Ubicacion
FiltroGrupo2=CDIAcceDiaUbic.Anio
FiltroGrupo3=CDIAcceDiaUbic.MesN
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
[CDIAcceDiaUbic.CDIAcceDiaUbic.FechaEmision]
Carpeta=CDIAcceDiaUbic
Clave=CDIAcceDiaUbic.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIAcceDiaUbic.CDIAcceDiaUbic.Dia]
Carpeta=CDIAcceDiaUbic
Clave=CDIAcceDiaUbic.Dia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAcceDiaUbic.CDIAcceDiaUbic.Ubicacion]
Carpeta=CDIAcceDiaUbic
Clave=CDIAcceDiaUbic.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIAcceDiaUbic.CDIAcceDiaUbic.Cantidad]
Carpeta=CDIAcceDiaUbic
Clave=CDIAcceDiaUbic.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAcceDiaUbic.Columnas]
Mov=124
Movid=124
FechaEmision=94
Anio=64
Mes=64
Dia=32
Ubicacion=64
Cantidad=64











[CDIAcceDiaUbicC]
Estilo=Cubo
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cubo
Clave=CDIAcceDiaUbicC
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAcceDiaUbic
Fuente={Tahoma, 8, Negro, []}
CarpetaVisible=S




















CarpetaDesActivada=S
[CDIAcceDiaUbic.ListaEnCaptura]
(Inicio)=CDIAcceDiaUbic.FechaEmision
CDIAcceDiaUbic.FechaEmision=CDIAcceDiaUbic.Dia
CDIAcceDiaUbic.Dia=CDIAcceDiaUbic.Ubicacion
CDIAcceDiaUbic.Ubicacion=CDIAcceDiaUbic.Cantidad
CDIAcceDiaUbic.Cantidad=(Fin)

[CDIAcceDiaUbic.ListaOrden]
(Inicio)=CDIAcceDiaUbic.Anio	(Acendente)
CDIAcceDiaUbic.Anio	(Acendente)=CDIAcceDiaUbic.MesN	(Acendente)
CDIAcceDiaUbic.MesN	(Acendente)=CDIAcceDiaUbic.Dia	(Acendente)
CDIAcceDiaUbic.Dia	(Acendente)=(Fin)




[Acciones.Expresion]
Nombre=Expresion
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar VIsta
TipoAccion=Expresion
Activo=S
Visible=S










EspacioPrevio=S
Expresion=Cubo.GuardarVistaActual(<T>CDIAcceDiaUbicC<T>)
[Acciones.Personalizar]
Nombre=Personalizar
Boton=48
NombreEnBoton=S
NombreDesplegar=Personalizar
TipoAccion=Expresion
Activo=S
Visible=S





EspacioPrevio=S
Expresion=Cubo.Personalizar(<T>CDIAcceDiaUbicC<T>)
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=50
NombreDesplegar=Seleccionar
TipoAccion=Expresion
Activo=S
Visible=S





NombreEnBoton=S




















EspacioPrevio=S
Expresion=Cubo.SeleccionarVista(<T>CDIAcceDiaUbicC<T>)
[Acciones.GuardarComo]
Nombre=GuardarComo
Boton=51
NombreEnBoton=S
NombreDesplegar=Guardar Como
TipoAccion=Expresion
Activo=S
Visible=S




EspacioPrevio=S
Expresion=Pregunta(info.mensaje, <T>Nombre de la Vista<T>, <T>Guardar Vista como?<T>)<BR>//Cubo.GuardarComoOtraVista(<T>CDIAcceDiaUbicC<T>)<BR>Cubo.GuardarComoOtraVista(<T>CDIAcceDiaUbicC<T>, info.mensaje )
[Acciones.Excel]
Nombre=Excel
Boton=115
NombreEnBoton=S
NombreDesplegar=Excel
TipoAccion=Expresion
Activo=S
Visible=S




















EspacioPrevio=S




Expresion=Cubo.GuardarComoExcel(<T>CDIAcceDiaUbicC<T>)
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
Totalizadores2=SUMA(CDIAcceDiaUbic:CDIAcceDiaUbic.Cantidad)
Totalizadores3=(Cantidades)
Totalizadores=S
TotCarpetaRenglones=CDIAcceDiaUbic
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















[Acciones.Asistencias]
Nombre=Asistencias
Boton=9
NombreEnBoton=S
NombreDesplegar=Asistencias
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIAcceAsisDiaUbic
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
(Inicio)=CDIAcceDiaUbic
CDIAcceDiaUbic=CDIAcceDiaUbicC
CDIAcceDiaUbicC=(Fin)

[Forma.ListaAcciones]
(Inicio)=Asistencias
Asistencias=Expresion
Expresion=Personalizar
Personalizar=Seleccionar
Seleccionar=GuardarComo
GuardarComo=Excel
Excel=Enviar a Excel
Enviar a Excel=(Fin)
