
[Forma]
Clave=CDIMovsNomina
Icono=0
Modulos=(Todos)
Nombre=Movimientos Personal

ListaCarpetas=CDIMovsNomina
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
CarpetaPrincipal=CDIMovsNomina
PosicionInicialIzquierda=27
PosicionInicialArriba=0
PosicionInicialAlturaCliente=745
PosicionInicialAncho=1311
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIMovsNomina]
Estilo=Hoja
Pestana=S
Clave=CDIMovsNomina
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMovsNomina
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
CarpetaVisible=S


Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CDIMovsNomina.Departamento
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
HojaOrdenarColumnas=S




ListaEnCaptura=(Lista)
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroEditarFueraPeriodo=S
OtroOrden=S
ListaOrden=(Lista)
PestanaOtroNombre=S
PestanaNombre=Movimientos
FiltroTodo=S
FiltroFechas=S
FiltroGrupo2=CDIMovsNomina.Clave
FiltroGrupo3=CDIMovsNomina.Ejercicio
FiltroFechasCampo=CDIMovsNomina.FechaPoliza
FiltroFechasDefault=(Todo)
FiltroGrupo4=CDIMovsNomina.periodo
[CDIMovsNomina.Columnas]
Personal=54
Importe=64
Cantidad=45
Movimiento=82
Concepto=304
ApellidoPaterno=93
ApellidoMaterno=90
Nombre=223
Departamento=112
FechaPoliza=75












Percepcion=93
Deduccion=84
[CDIMovsNomina.CDIMovsNomina.Personal]
Carpeta=CDIMovsNomina
Clave=CDIMovsNomina.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIMovsNomina.CDIMovsNomina.Nombre]
Carpeta=CDIMovsNomina
Clave=CDIMovsNomina.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=92
ColorFondo=Blanco

[CDIMovsNomina.CDIMovsNomina.Departamento]
Carpeta=CDIMovsNomina
Clave=CDIMovsNomina.Departamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIMovsNomina.CDIMovsNomina.FechaPoliza]
Carpeta=CDIMovsNomina
Clave=CDIMovsNomina.FechaPoliza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMovsNomina.CDIMovsNomina.Movimiento]
Carpeta=CDIMovsNomina
Clave=CDIMovsNomina.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIMovsNomina.CDIMovsNomina.Concepto]
Carpeta=CDIMovsNomina
Clave=CDIMovsNomina.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDIMovsNomina.CDIMovsNomina.Cantidad]
Carpeta=CDIMovsNomina
Clave=CDIMovsNomina.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco















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

[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S























[CDIMovsNomina.ListaEnCaptura]
(Inicio)=CDIMovsNomina.Personal
CDIMovsNomina.Personal=CDIMovsNomina.Nombre
CDIMovsNomina.Nombre=CDIMovsNomina.Departamento
CDIMovsNomina.Departamento=CDIMovsNomina.FechaPoliza
CDIMovsNomina.FechaPoliza=CDIMovsNomina.Movimiento
CDIMovsNomina.Movimiento=CDIMovsNomina.Concepto
CDIMovsNomina.Concepto=CDIMovsNomina.Percepcion
CDIMovsNomina.Percepcion=CDIMovsNomina.Deduccion
CDIMovsNomina.Deduccion=CDIMovsNomina.Cantidad
CDIMovsNomina.Cantidad=(Fin)

[CDIMovsNomina.ListaOrden]
(Inicio)=CDIMovsNomina.Ejercicio	(Decendente)
CDIMovsNomina.Ejercicio	(Decendente)=CDIMovsNomina.periodo	(Acendente)
CDIMovsNomina.periodo	(Acendente)=(Fin)

[CDIMovsNomina.CDIMovsNomina.Percepcion]
Carpeta=CDIMovsNomina
Clave=CDIMovsNomina.Percepcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMovsNomina.CDIMovsNomina.Deduccion]
Carpeta=CDIMovsNomina
Clave=CDIMovsNomina.Deduccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


















[Acciones.Conceptos]
Nombre=Conceptos
Boton=18
NombreEnBoton=S
NombreDesplegar=Conceptos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDINomConcRep
Activo=S
Visible=S








[Acciones.Actualizar Forma]
Nombre=Actualizar Forma
Boton=59
NombreEnBoton=S
NombreDesplegar=Actualizar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S



EspacioPrevio=S




[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=Presentacion preliminar
Presentacion preliminar=Conceptos
Conceptos=Actualizar Forma
Actualizar Forma=(Fin)
