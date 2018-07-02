
[Forma]
Clave=CDITareasPendientes
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Tareas Pendientes

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=508
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=349
PosicionSec1=304
PosicionSec2=464
[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Tareas Pendientes
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITareasPendientes
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
MenuLocal=S

ListaAcciones=IrModulo
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDITareasPendientes.Usuario in (<T>{Usuario}<T>, <T>{Usuario.Configuracion}<T>)
[Lista.CDITareasPendientes.Modulo]
Carpeta=Lista
Clave=CDITareasPendientes.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=4
ColorFondo=Blanco

[Lista.CDITareasPendientes.Mov]
Carpeta=Lista
Clave=CDITareasPendientes.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

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

[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreEnBoton=S
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S










EspacioPrevio=S
[Lista.Columnas]
Modulo=89
Mov=221








[Acciones.IrModulo]
Nombre=IrModulo
Boton=0
NombreDesplegar=&Ir a Modulo
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

UsaTeclaRapida=S
TeclaRapida=Ctrl+I


Antes=S
Expresion=asigna(Info.Asunto,CDITareasPendientes:CDITareasPendientes.Modulo )<BR>caso info.asunto es <T>CE<T><BR>  entonces Forma(<T>CE<T>)<BR>fin<BR><BR>asigna(Info.Asunto,Modulo.Tabla(CDITareasPendientes:CDITareasPendientes.Modulo ))<BR>caso info.asunto es <T>CDISocio<T><BR>  entonces Forma(<T>CDIModuloSocios<T>)<BR>  sino<BR>  Forma(  Modulo.Tabla(CDITareasPendientes:CDITareasPendientes.Modulo )  )<BR>fin<BR>//Forma(  Modulo.Tabla(CDITareasPendientes:CDITareasPendientes.Modulo )  )
AntesExpresiones=Si<BR>  CDITareasPendientes:CDITareasPendientes.Modulo = <T>ST<T><BR>Entonces<BR>  Asigna(Info.SubModuloST, CDITareasPendientes:CDITareasPendientes.SubModulo)<BR>  Asigna(Info.STNombre, SQL(<T>SELECT Nombre FROM Submodulo WHERE modulo = :tMod AND SubModulo = :tSub<T>, CDITareasPendientes:CDITareasPendientes.Modulo, CDITareasPendientes:CDITareasPendientes.SubModulo))<BR>Fin<BR><BR>Si<BR>  CDITareasPendientes:CDITareasPendientes.Modulo = <T>CE<T><BR>Entonces<BR>  Asigna(Info.ASUNTO,<T>CE<T>)<BR>Fin
[Detalle.Columnas]
Articulo=84
CantidadNeta=49
Costo=75
DescuentoLinea=32
Importe=102
FechaRequerida=87
Almacen=69

Concepto=194
Referencia=57
Cantidad=48
Precio=64
PorcentajeDeducible=68
Total=77
ContUso=88
Aplica=96
AplicaID=70
ImporteIVAFiscal=81
ImporteIEPSFiscal=64
Socio=96
Cliente=64
NombreSocio=173
Membresia=65
Parentesco=108
FechaNacimiento=94
EdadActual=36
Edad=75
Estatus=46
RFC=106
Unidad=39
CantidadInvNeta=53
ClavePresupuestal=98
DescripcionExtra=117
PaqueteCantidad=90
Paquete=45
Espacio=64
Materia=78
Grupo=82
Profesor=68
Horario=132
[FormaExtraValor.Columnas]
VerCampo=313
VerValor=300

[MovImpuesto.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2
11=-2
12=-2

[(Carpeta Abrir).Columnas]
0=151
1=73
2=-2
3=-2
4=-2
5=-2
6=-2

7=-2
8=-2
9=51
[Antecedentes.Columnas]
Aplica=124
AplicaID=65
Importe=118
Saldo=114
Vencimiento=86











[Aplicacion.Columnas]
Aplica=131
AplicaID=71
FechaEmision=94
Titulo=247
Prioridad=45

[FormaAnexo.Columnas]
0=121
1=48
2=-2

[MovBitacora.Columnas]
0=-2
1=256
2=-2
3=130
4=-2
5=-2
6=-2

[MovEvento.Columnas]
0=341
1=93
2=-2
3=-2
4=-2























[InteresadoEn.Columnas]
Articulo=124
DescripcionArt=357
Cantidad=64
Precio=64

[Equipo.Columnas]
NombreJugador=604

[CDICambioTitular.Columnas]
Membresia=64
Cliente=64
Socio=64
Nombre=184
EstatusSoc=74
TitularAct=70
TitularNvo=68

[CDISociosCargoRecD.Columnas]
Articulo=114
Descripcion1=280
Cantidad=64
FechaInicio=94
FechaFin=94

[CDISociosCargoRecDBaja.Columnas]
Articulo=104
Descripcion1=364
EsCuota=48
Cantidad=64
FechaInicio=81
FechaFin=80
Baja=94

[CDISociosDatosBancariosBaja.Columnas]
Institucion=146
Vigencia=67
NoTarjeta=100
NombreTarjeta=207
DefCargAuto=180
Estatus=94
BAJA=64

[AltaCargoBancario.Columnas]
Articulo=121
Descripcion1=354
FechaInicio=94
FechaFin=94
TarjetaBancaria=124

[BajaCargoBancario.Columnas]
Articulo=100
Descripcion1=349
FechaInicio=94
FechaFin=94
TarjetaBancaria=124
Baja=94

[CDICambMembr.Columnas]
Membresia=64
Cliente=64
Socio=64
Nombre=184
Estatus=43
Descripcion13=57
Descripcion15=79
Titular=36
MembresiaNva=108
LlevarCargos=67
CrearMembresia=116

















[Lista.ListaEnCaptura]
(Inicio)=CDITareasPendientes.Modulo
CDITareasPendientes.Modulo=CDITareasPendientes.Mov
CDITareasPendientes.Mov=(Fin)


[Material.Columnas]
Articulo=124
Descripcion1=268
Cantidad=51
Precio=82
Descuento=55
Importe=98
Impuesto=64

[CDICEMovPlanCambioContra.Columnas]
MonedaPrecio=64
Precio=115
Impuesto1=64
CDIClavePresupuestal=116
CDIClavePresupuestalDev=152

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Actualizar
Actualizar=(Fin)
