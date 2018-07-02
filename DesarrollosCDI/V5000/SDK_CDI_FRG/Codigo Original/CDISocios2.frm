[Forma]
Clave=CDISocios2
Nombre=<T>Socios<T>
Icono=4
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=88
PosicionInicialArriba=92
PosicionInicialAltura=593
PosicionInicialAncho=1230
Menus=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionSeccion1=7
BarraAyuda=S
DialogoAbrir=S
Plantillas=S
PlantillasExcepciones=(Lista)
MovModulo=CXC
PosicionInicialAlturaCliente=534
BarraAyudaBold=S
VentanaEstadoInicial=Normal
PosicionSec1=231

PosicionCol1=951
ExpresionesAlMostrar=Asigna(Info.Copiar, Falso)<BR>Asigna(Info.Tipo,<T>Cliente<T>)
MenuPrincipal=(Lista)
[Lista.Cte.Cliente]
Carpeta=Lista
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cte.Nombre]
Carpeta=Lista
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Cliente=117
Nombre=293
0=128
1=389
Fecha=148
Usuario=82
Sucursal=64
Nombre_1=154
Empresa=69

Estado=150
Delegacion=129
Colonia=189
CodigoPostal=71
Ruta=67
2=-2
Nacionalidad=291
Tipo=76
Telefono=227
Extencion=53
Lada=41
DePreferencia=74
PedirTono=57
Direccion=272
Pais=116
3=-2
4=-2
5=-2
6=-2
7=-2
Año=64
Marca=201
Modelo=203
Enfermedad=239
Descripcion=593
Alergia=308
Medicamento=212
NoTarjeta=100
Vigencia=68
Institucion=252
Clave=41
Grado=190
Monto=124
Articulo=124
Descripcion1=276
Ciudad=63
CDISocio=64
SocioTitular=313
Condicion=138
Socio=127
NIPCDI=112
Membresia=64
PrecioLista=86
FechaInicio=76
FechaFin=76
EsCuota=64
Cantidad=60
casillero=51
Ubicacion=190
NombreSocio=171
RFC=107
TipoAutomatico=64
Automatico=106
AMEX=135
VigenciaAMEX=94
DescripcionArt=398
[Ficha]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=111
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CondicionVisible=Usuario.SoEconomicos
ExpAntesRefrescar=asigna(Info.cliente,Cte:Cte.Cliente)
[Ficha.Cte.Cliente]
Carpeta=Ficha
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]



[Ficha.Cte.Direccion]
Carpeta=Ficha
Clave=Cte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=54
ColorFondo=$00DFFFFF

[Ficha.Cte.CodigoPostal]
Carpeta=Ficha
Clave=Cte.CodigoPostal
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF

LineaNueva=S
[Ficha.Cte.Colonia]
Carpeta=Ficha
Clave=Cte.Colonia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=$00DFFFFF

[Ficha.Cte.Poblacion]
Carpeta=Ficha
Clave=Cte.Poblacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
LineaNueva=N
ColorFondo=Blanco

[Ficha.Cte.Estado]
Carpeta=Ficha
Clave=Cte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=$00DFFFFF

[Ficha.Cte.Pais]
Carpeta=Ficha
Clave=Cte.Pais
Editar=S
ValidaNombre=S
3D=S
Tamano=20
LineaNueva=N
ColorFondo=$00DFFFFF

[Ficha.Cte.Telefonos]
Carpeta=Ficha
Clave=Cte.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=15
ColorFondo=$00DFFFFF


[Ficha.Cte.PersonalTelefonos]
Carpeta=Ficha
Clave=Cte.PersonalTelefonos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[Ficha.Cte.PersonalTelefonoMovil]
Carpeta=Ficha
Clave=Cte.PersonalTelefonoMovil
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
Pegado=N


[Notas.Cte.Notas]
Carpeta=Notas
Clave=Cte.Notas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75x18

[Notas.Cte.DirInternet]
Carpeta=Notas
Clave=Cte.DirInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75

[RevisiónPagos.Cte.DiaRevision1]
Carpeta=RevisiónPagos
Clave=Cte.DiaRevision1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[RevisiónPagos.Cte.DiaRevision2]
Carpeta=RevisiónPagos
Clave=Cte.DiaRevision2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[RevisiónPagos.Cte.HorarioRevision]
Carpeta=RevisiónPagos
Clave=Cte.HorarioRevision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[RevisiónPagos.Cte.DiaPago1]
Carpeta=RevisiónPagos
Clave=Cte.DiaPago1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
EspacioPrevio=S

[RevisiónPagos.Cte.DiaPago2]
Carpeta=RevisiónPagos
Clave=Cte.DiaPago2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[RevisiónPagos.Cte.HorarioPago]
Carpeta=RevisiónPagos
Clave=Cte.HorarioPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
Visible=S
Activo=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+N

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=E&liminar
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S
EnBarraHerramientas=S
ActivoCondicion=no Cte:Cte.TieneMovimientos

[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Visible=S
Activo=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Cerrar
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Visible=S
Activo=S

[Acciones.EnviarA]
Nombre=EnviarA
Boton=16
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+S
NombreDesplegar=&Sucursales
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteEnviarA
Visible=S
Antes=S
GuardarAntes=S
ConCondicion=S
DespuesGuardar=S
ActivoCondicion=Cte:Cte.Tipo<><T>Estructura<T>
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[EnviarA.Cte.EnviarA]
Carpeta=EnviarA
Clave=Cte.EnviarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[EnviarA.CteEnviarA.Nombre]
Carpeta=EnviarA
Clave=CteEnviarA.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

[EnviarA.CteEnviarA.Direccion]
Carpeta=EnviarA
Clave=CteEnviarA.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=56
ColorFondo=Plata


[Venta.Cte.EnviarA]
Carpeta=Venta
Clave=Cte.EnviarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.Agente]
Carpeta=Venta
Clave=Cte.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Venta.Agente.Nombre]
Carpeta=Venta
Clave=Agente.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Venta.Cte.DiaRevision1]
Carpeta=Venta
Clave=Cte.DiaRevision1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.DiaRevision2]
Carpeta=Venta
Clave=Cte.DiaRevision2
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.HorarioRevision]
Carpeta=Venta
Clave=Cte.HorarioRevision
Editar=S
ValidaNombre=S
3D=S
Tamano=39
Pegado=N
ColorFondo=Blanco

[Venta.Cte.DiaPago1]
Carpeta=Venta
Clave=Cte.DiaPago1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.DiaPago2]
Carpeta=Venta
Clave=Cte.DiaPago2
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.HorarioPago]
Carpeta=Venta
Clave=Cte.HorarioPago
Editar=S
ValidaNombre=S
3D=S
Tamano=39
Pegado=N
ColorFondo=Blanco

[Notas.Cte.Mensaje]
Carpeta=Notas
Clave=Cte.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75

[ID.Cte.Cliente]
Carpeta=ID
Clave=Cte.Cliente
Editar=S
LineaNueva=N
3D=N
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]
Pegado=S

[ID.Cte.Nombre]
Carpeta=ID
Clave=Cte.Nombre
Editar=S
3D=N
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]
LineaNueva=S

[Acciones.Propiedades]
Nombre=Propiedades
Boton=35
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F11
NombreDesplegar=&Propiedades
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=Prop
Activo=S
Antes=S
Visible=S
GuardarAntes=S
ConCondicion=S
DespuesGuardar=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion, Cte:Cte.Nombre)

[Venta.Cte.Cliente]
Carpeta=Venta
Clave=Cte.Cliente
Editar=N
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]
ValidaNombre=S

[Venta.Cte.Nombre]
Carpeta=Venta
Clave=Cte.Nombre
Editar=N
3D=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]
ValidaNombre=S

[Acciones.Conciliar]
Nombre=Conciliar
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F8
NombreDesplegar=&Conciliar Movimientos
EnMenu=S
TipoAccion=Formas
ClaveAccion=Conciliar
Visible=S
GuardarAntes=S
Antes=S
ConCondicion=S
DespuesGuardar=S
ActivoCondicion=Cte:Cte.Conciliar
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.TituloDialogo, <T>Cliente<T>)<BR>Asigna(Info.Cuenta,Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion,Cte:Cte.Nombre)

[Acciones.Informacion]
Nombre=Informacion
Boton=34
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+I
NombreDesplegar=&Información
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteInfo
Antes=S
Visible=S
ConCondicion=S
ActivoCondicion=(Cte:Cte.Tipo<><T>Estructura<T>) y Usuario.CteInfo
EjecucionCondicion=(Cte:Cte.Tipo<><T>Deudor<T>) o Usuario.VerInfoDeudores
AntesExpresiones=Asigna( Info.Cliente,Cte:Cte.Cliente )



[Acciones.Tareas]
Nombre=Tareas
Boton=70
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
NombreDesplegar=&Tareas
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=Tarea
Activo=S
Visible=S
Antes=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.PuedeEditar, Verdadero)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)<BR>Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Proveedor, Nulo)<BR>Asigna(Info.Agente, Nulo)<BR>Asigna(Info.Personal, Nulo)<BR>Asigna(Info.Proyecto, Nulo)<BR>Asigna(Info.UEN, Nulo)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.ID, Nulo)<BR>Asigna(Info.Reporte, Nulo)

[Ficha.Cte.EntreCalles]
Carpeta=Ficha
Clave=Cte.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.Plano]
Carpeta=Ficha
Clave=Cte.Plano
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Venta.Cte.AgenteServicio]
Carpeta=Venta
Clave=Cte.AgenteServicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.AgenteServicio.Nombre]
Carpeta=Venta
Clave=AgenteServicio.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F4
NombreDesplegar=Ane&xos
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=AnexoCta
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.AnexoCfg, Verdadero)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion, Cte:Cte.Nombre)

[Acciones.CteRelacion]
Nombre=CteRelacion
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+R
NombreDesplegar=&Relaciones del Cliente
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteRelacion
Visible=S
Antes=S
ActivoCondicion=Cte:Cte.Tipo<><T>Estructura<T>
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)

[Credito.Cte.Cliente]
Carpeta=Credito
Clave=Cte.Cliente
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
ValidaNombre=S

[Credito.Cte.Nombre]
Carpeta=Credito
Clave=Cte.Nombre
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
ValidaNombre=S

[Credito.Cte.CreditoConLimite]
Carpeta=Credito
Clave=Cte.CreditoConLimite
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=30

[Credito.Cte.CreditoLimite]
Carpeta=Credito
Clave=Cte.CreditoLimite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Credito.Cte.CreditoMoneda]
Carpeta=Credito
Clave=Cte.CreditoMoneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Credito.Cte.CreditoConDias]
Carpeta=Credito
Clave=Cte.CreditoConDias
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=30

[Credito.Cte.CreditoDias]
Carpeta=Credito
Clave=Cte.CreditoDias
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Credito.Cte.CreditoConCondiciones]
Carpeta=Credito
Clave=Cte.CreditoConCondiciones
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Credito.Cte.CreditoCondiciones]
Carpeta=Credito
Clave=Cte.CreditoCondiciones
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.AgregarEvento]
Nombre=AgregarEvento
Boton=56
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+E
NombreDesplegar=Agregar &Evento
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaBitacoraAgregar
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion, Cte:Cte.Nombre)

[Acciones.Bitacora]
Nombre=Bitacora
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+B
NombreDesplegar=&Bitácora
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaBitacora
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Tipo, Cte:Cte.Tipo)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion, Cte:Cte.Nombre)<BR>Asigna(Info.PuedeEditar, Verdadero)


[Acciones.Agentes]
Nombre=Agentes
Boton=0
Menu=&Edición
NombreDesplegar=&Agentes del Cliente
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteAgente
Visible=S
ConCondicion=S
Antes=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
ActivoCondicion=Cte:Cte.Tipo<><T>Estructura<T>
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente,Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)


[ReglaNegocio]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Regla Negocio
Clave=ReglaNegocio
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=//(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos) y (Usuario.SoReglaNegocio)
CarpetaDesActivada=S
[ReglaNegocio.Cte.Cliente]
Carpeta=ReglaNegocio
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]



[Venta.CteEnviarA.Nombre]
Carpeta=Venta
Clave=CteEnviarA.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Venta.Cte.DefMoneda]
Carpeta=Venta
Clave=Cte.DefMoneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.CteCat]
Nombre=CteCat
Boton=0
Menu=&Maestros
NombreDesplegar=&Categorías
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteCat
Activo=S
Visible=S

[Acciones.CteGrupo]
Nombre=CteGrupo
Boton=0
Menu=&Maestros
NombreDesplegar=&Grupos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteGrupo
Activo=S
Visible=S

[Acciones.CteFam]
Nombre=CteFam
Boton=0
Menu=&Maestros
NombreDesplegar=&Familias
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteFam
Activo=S
Visible=S

[Acciones.ListaPrecioEsp]
Nombre=ListaPrecioEsp
Boton=0
Menu=&Ver
NombreDesplegar=Lista Precios
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=ListaPreciosInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.ListaPreciosEsp) y (Izquierda(Cte:Cte.ListaPreciosEsp, 1)<><T>(<T>))
AntesExpresiones=Asigna(Info.Lista, Cte:Cte.ListaPreciosEsp)



[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
Filtros=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CteA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Socio<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=CteCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=CteGrupo
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=CteFam
FiltroAplicaEn1=Cte.Categoria
FiltroAplicaEn2=Cte.Grupo
FiltroAplicaEn3=Cte.Familia
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroArbol=Clientes
FiltroArbolAplica=Cte.Rama
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
FiltroListas=S
FiltroListasRama=CXC
FiltroListasAplicaEn=Cte.Cliente
ListaAcciones=(Lista)
PestanaOtroNombre=S
PestanaNombre=Socios
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=CteTipo
FiltroAplicaEn4=Cte.Tipo
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=Espacio
FiltroAplicaEn5=Cte.Espacio
OtroOrden=S
ListaOrden=Cte.Socio<TAB>(Acendente)


IconosConPaginas=S
ElementosPorPaginaEsp=200
IconosNombre=CteA:Cte.Socio
FiltroGeneral=Cte.CDISocio = 1
[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S

[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
EnMenu=S
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[(Carpeta Abrir).Columnas]
0=106
1=283

2=137
3=-2
4=-2
[Acciones.Situacion]
Nombre=Situacion
Boton=71
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F12
NombreDesplegar=&Situación
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Visible=S

ActivoCondicion=Usuario.ModificarSituacion
[Acciones.Actualizar]
Nombre=Actualizar
Boton=0
UsaTeclaRapida=S
TeclaRapida=F5
NombreDesplegar=&Actualizar
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Actualizar Arbol
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=0
NombreDesplegar=&Presentacion preliminar
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Campos]
Nombre=Campos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S








[Acciones.Otros1]
Nombre=Otros1
Menu=&Otros
EnMenu=S
TipoAccion=Expresion
Boton=0

[Acciones.Otros2]
Nombre=Otros2
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros3]
Nombre=Otros3
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros4]
Nombre=Otros4
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros5]
Nombre=Otros5
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros6]
Nombre=Otros6
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros7]
Nombre=Otros7
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros8]
Nombre=Otros8
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros9]
Nombre=Otros9
Menu=&Otros
EnMenu=S
TipoAccion=Expresion


[Ficha.Cte.Delegacion]
Carpeta=Ficha
Clave=Cte.Delegacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF

LineaNueva=S


[Venta.Cte.SucursalEmpresa]
Carpeta=Venta
Clave=Cte.SucursalEmpresa
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S

[Venta.Sucursal.Nombre]
Carpeta=Venta
Clave=Sucursal.Nombre
Editar=S
3D=S
Tamano=60
ColorFondo=Plata
ValidaNombre=S

[Acciones.ListaNegra]
Nombre=ListaNegra
Boton=22
Menu=&Ver
NombreDesplegar=Lista &Negra
EnMenu=S
TipoAccion=Formas
ClaveAccion=ListaNegraLista
Activo=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Mayús+Ctrl+N
EspacioPrevio=S


[Otros.Cte.Cliente]
Carpeta=Otros
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Otros.Cte.Nombre]
Carpeta=Otros
Clave=Cte.Nombre
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]

[Otros.Cte.Mensaje]
Carpeta=Otros
Clave=Cte.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=81
ColorFondo=Blanco
EspacioPrevio=S

[Otros.Cte.DirInternet]
Carpeta=Otros
Clave=Cte.DirInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=81
ColorFondo=Blanco

[Otros.Cte.NivelAcceso]
Carpeta=Otros
Clave=Cte.NivelAcceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S


[Internet.Cte.Cliente]
Carpeta=Internet
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Internet.Cte.Nombre]
Carpeta=Internet
Clave=Cte.Nombre
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Internet.Cte.Contrasena]
Carpeta=Internet
Clave=Cte.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Internet.Cte.wVerDisponible]
Carpeta=Internet
Clave=Cte.wVerDisponible
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Otros.Cte.Idioma]
Carpeta=Otros
Clave=Cte.Idioma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[CRM.Cte.Cliente]
Carpeta=CRM
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[CRM.Cte.Nombre]
Carpeta=CRM
Clave=Cte.Nombre
ValidaNombre=N
3D=S
Tamano=42
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[CRM.Cte.Descripcion1]
Carpeta=CRM
Clave=Cte.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion2]
Carpeta=CRM
Clave=Cte.Descripcion2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion3]
Carpeta=CRM
Clave=Cte.Descripcion3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion4]
Carpeta=CRM
Clave=Cte.Descripcion4
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion5]
Carpeta=CRM
Clave=Cte.Descripcion5
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro


[Acciones.CteBonificacion]
Nombre=CteBonificacion
Boton=0
Menu=&Edición
NombreDesplegar=Bonificación Autómatica Multiple
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteBonificacion
Antes=S
Visible=S
ConCondicion=S
GuardarAntes=S
ActivoCondicion=Cte:Cte.BonificacionTipo=<T>Multiple<T>
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
DespuesGuardar=S

[CRM.Cte.Descripcion6]
Carpeta=CRM
Clave=Cte.Descripcion6
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion7]
Carpeta=CRM
Clave=Cte.Descripcion7
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion8]
Carpeta=CRM
Clave=Cte.Descripcion8
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion9]
Carpeta=CRM
Clave=Cte.Descripcion9
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion10]
Carpeta=CRM
Clave=Cte.Descripcion10
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro


[Otros.Cte.Alta]
Carpeta=Otros
Clave=Cte.Alta
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
Editar=S
ColorFondo=Blanco

[Otros.Cte.UltimoCambio]
Carpeta=Otros
Clave=Cte.UltimoCambio
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[CRM.Cte.Descripcion11]
Carpeta=CRM
Clave=Cte.Descripcion11
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion12]
Carpeta=CRM
Clave=Cte.Descripcion12
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion13]
Carpeta=CRM
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion14]
Carpeta=CRM
Clave=Cte.Descripcion14
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion15]
Carpeta=CRM
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion16]
Carpeta=CRM
Clave=Cte.Descripcion16
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion17]
Carpeta=CRM
Clave=Cte.Descripcion17
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion18]
Carpeta=CRM
Clave=Cte.Descripcion18
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion19]
Carpeta=CRM
Clave=Cte.Descripcion19
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.Descripcion20]
Carpeta=CRM
Clave=Cte.Descripcion20
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Otros.Cte.CBDir]
Carpeta=Otros
Clave=Cte.CBDir
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco


[Personal.Cte.Cliente]
Carpeta=Personal
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
Efectos=[Negritas]

[Personal.Cte.Nombre]
Carpeta=Personal
Clave=Cte.Nombre
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Personal.Columnas]
Cliente=64
Nombre=244

[Personal.Cte.PersonalDireccion]
Carpeta=Personal
Clave=Cte.PersonalDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco
EspacioPrevio=S

[Personal.Cte.PersonalEntreCalles]
Carpeta=Personal
Clave=Cte.PersonalEntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalPlano]
Carpeta=Personal
Clave=Cte.PersonalPlano
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalDelegacion]
Carpeta=Personal
Clave=Cte.PersonalDelegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalColonia]
Carpeta=Personal
Clave=Cte.PersonalColonia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalPoblacion]
Carpeta=Personal
Clave=Cte.PersonalPoblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalEstado]
Carpeta=Personal
Clave=Cte.PersonalEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalPais]
Carpeta=Personal
Clave=Cte.PersonalPais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalCodigoPostal]
Carpeta=Personal
Clave=Cte.PersonalCodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalTelefonos]
Carpeta=Personal
Clave=Cte.PersonalTelefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=19
ColorFondo=Blanco
EspacioPrevio=S

[Personal.Cte.FechaNacimiento]
Carpeta=Personal
Clave=Cte.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
EspacioPrevio=S
Tamano=25

[Personal.Cte.FechaMatrimonio]
Carpeta=Personal
Clave=Cte.FechaMatrimonio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=20

[Personal.Cte.Conyuge]
Carpeta=Personal
Clave=Cte.Conyuge
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
EspacioPrevio=N

[Personal.Cte.Sexo]
Carpeta=Personal
Clave=Cte.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.Fuma]
Carpeta=Personal
Clave=Cte.Fuma
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
EspacioPrevio=N
Tamano=7

[Personal.Cte.Profesion]
Carpeta=Personal
Clave=Cte.Profesion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.Puesto]
Carpeta=Personal
Clave=Cte.Puesto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.NumeroHijos]
Carpeta=Personal
Clave=Cte.NumeroHijos
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=5
Pegado=S


[Seguro.Cte.Cliente]
Carpeta=Seguro
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
Efectos=[Negritas]

[Seguro.Cte.Nombre]
Carpeta=Seguro
Clave=Cte.Nombre
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Seguro.Cte.Aseguradora]
Carpeta=Seguro
Clave=Cte.Aseguradora
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.PolizaTipo]
Carpeta=Seguro
Clave=Cte.PolizaTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.PolizaNumero]
Carpeta=Seguro
Clave=Cte.PolizaNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.PolizaReferencia]
Carpeta=Seguro
Clave=Cte.PolizaReferencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.Deducible]
Carpeta=Seguro
Clave=Cte.Deducible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.DeducibleMoneda]
Carpeta=Seguro
Clave=Cte.DeducibleMoneda
Editar=S
3D=S
Pegado=N
Tamano=10
ColorFondo=Blanco

[Seguro.Cte.Coaseguro]
Carpeta=Seguro
Clave=Cte.Coaseguro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.CteAseguradora.Nombre]
Carpeta=Seguro
Clave=CteAseguradora.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

[Personal.Cte.Responsable]
Carpeta=Personal
Clave=Cte.Responsable
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
EspacioPrevio=N

[Personal.Cte.Parentesco]
Carpeta=Personal
Clave=Cte.Parentesco
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
LineaNueva=S

[Personal.Cte.Religion]
Carpeta=Personal
Clave=Cte.Religion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.Alergias]
Carpeta=Personal
Clave=Cte.Alergias
Editar=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=N

[Seguro.Cte.NombreAsegurado]
Carpeta=Seguro
Clave=Cte.NombreAsegurado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco

[Personal.Cte.EstadoCivil]
Carpeta=Personal
Clave=Cte.EstadoCivil
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=25
ColorFondo=Blanco

[Personal.Edad]
Carpeta=Personal
Clave=Edad
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[Otros.Cte.Espacio]
Carpeta=Otros
Clave=Cte.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.Espacio.Nombre]
Carpeta=Otros
Clave=Espacio.Nombre
Editar=S
3D=S
Tamano=60
ColorFondo=Plata
ValidaNombre=S

[Acciones.CteParecidos]
Nombre=CteParecidos
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+P
NombreDesplegar=Clientes Parecidos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteParecidos
Activo=S
Antes=S
Visible=S
AntesExpresiones=Asigna(Info.Nombre, Cte:Cte.Nombre)

[Personal.Cte.FacturarCte]
Carpeta=Personal
Clave=Cte.FacturarCte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
EspacioPrevio=S

[Personal.CteFacturarA.Nombre]
Carpeta=Personal
Clave=CteFacturarA.Nombre
Editar=S
3D=S
Tamano=20
ColorFondo=Plata

[Personal.Cte.FacturarCteEnviarA]
Carpeta=Personal
Clave=Cte.FacturarCteEnviarA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=7
Pegado=S

[Personal.CteEnviarAFacturarA.Nombre]
Carpeta=Personal
Clave=CteEnviarAFacturarA.Nombre
Editar=S
3D=S
Tamano=18
ColorFondo=Plata


[Venta.Cte.PersonalCobrador]
Carpeta=Venta
Clave=Cte.PersonalCobrador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco

[Venta.PersonalNombre]
Carpeta=Venta
Clave=PersonalNombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Acciones.Cobrador]
Nombre=Cobrador
Boton=0
Menu=&Maestros
NombreDesplegar=C&obradores
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=Cobrador

[Acciones.EspacioAsignacion]
Nombre=EspacioAsignacion
Boton=0
Menu=&Edición
NombreDesplegar=Asignar Espacio
EnMenu=S
TipoAccion=Formas
ClaveAccion=EspacioAsignacion
ConCondicion=S
Antes=S
GuardarAntes=S
DespuesGuardar=S
ActivoCondicion=Config.EspaciosAsignacion y (Cte:Cte.Tipo<><T>Estructura<T>)
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Proyecto, Nulo)
VisibleCondicion=General.Espacios

[Acciones.Cubos]
Nombre=Cubos
Boton=100
Menu=&Ver
NombreDesplegar=<T>Cubos<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Dialogos
ClaveAccion=CuboCliente
Activo=S
Visible=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.CteArt]
Nombre=CteArt
Boton=0
Menu=&Edición
NombreDesplegar=&Artículos del Cliente
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteArt
ConCondicion=S
Antes=S
Visible=S
ActivoCondicion=Usuario.CteArt
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)<BR>Asigna(Info.Articulo, Nulo)

[Internet.Cte.wVerArtListaPreciosEsp]
Carpeta=Internet
Clave=Cte.wVerArtListaPreciosEsp
Editar=S
LineaNueva=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.CRMImporte]
Carpeta=CRM
Clave=Cte.CRMImporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.CRMCantidad]
Carpeta=CRM
Clave=Cte.CRMCantidad
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.CRMPresupuestoAsignado]
Carpeta=CRM
Clave=Cte.CRMPresupuestoAsignado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.CRMEtapa]
Carpeta=CRM
Clave=Cte.CRMEtapa
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.CRMCierreProbabilidad]
Carpeta=CRM
Clave=Cte.CRMCierreProbabilidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.CRMCierreFechaAprox]
Carpeta=CRM
Clave=Cte.CRMCierreFechaAprox
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[CRM.Cte.CRMCompetencia]
Carpeta=CRM
Clave=Cte.CRMCompetencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=68
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[CRM.Cte.CRMInfluencia]
Carpeta=CRM
Clave=Cte.CRMInfluencia
Editar=S
ValidaNombre=S
3D=S
Tamano=68
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S

[CRM.Cte.CRMFuente]
Carpeta=CRM
Clave=Cte.CRMFuente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=68
ColorFondo=Blanco
ColorFuente=Negro

[Internet.Cte.Contrasena2]
Carpeta=Internet
Clave=Cte.Contrasena2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Personal.Cte.PersonalTelefonoMovil]
Carpeta=Personal
Clave=Cte.PersonalTelefonoMovil
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.Titulo]
Carpeta=Personal
Clave=Cte.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco


[Ford.Cte.Cliente]
Carpeta=Ford
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Ford.Cte.Nombre]
Carpeta=Ford
Clave=Cte.Nombre
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Ford.Cte.FordDistribuidor]
Carpeta=Ford
Clave=Cte.FordDistribuidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Flotilla]
Carpeta=Ford
Clave=Cte.Flotilla
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S


[Ford.Cte.Fecha1]
Carpeta=Ford
Clave=Cte.Fecha1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Fecha2]
Carpeta=Ford
Clave=Cte.Fecha2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Fecha3]
Carpeta=Ford
Clave=Cte.Fecha3
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Fecha4]
Carpeta=Ford
Clave=Cte.Fecha4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Fecha5]
Carpeta=Ford
Clave=Cte.Fecha5
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Personal.Cte.PersonalNombres]
Carpeta=Personal
Clave=Cte.PersonalNombres
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalApellidoPaterno]
Carpeta=Personal
Clave=Cte.PersonalApellidoPaterno
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

[Personal.Cte.PersonalApellidoMaterno]
Carpeta=Personal
Clave=Cte.PersonalApellidoMaterno
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
Pegado=S


[Perfiles.Cte.EsProveedor]
Carpeta=Perfiles
Clave=Cte.EsProveedor
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=20

[Perfiles.Cte.EsPersonal]
Carpeta=Perfiles
Clave=Cte.EsPersonal
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=20

[Perfiles.Cte.EsAgente]
Carpeta=Perfiles
Clave=Cte.EsAgente
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=20

[Perfiles.Cte.EsAlmacen]
Carpeta=Perfiles
Clave=Cte.EsAlmacen
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=20

[Perfiles.Cte.EsEspacio]
Carpeta=Perfiles
Clave=Cte.EsEspacio
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=20

[Perfiles.Cte.EsCentroCostos]
Carpeta=Perfiles
Clave=Cte.EsCentroCostos
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=20

[Perfiles.Cte.EsProyecto]
Carpeta=Perfiles
Clave=Cte.EsProyecto
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=20

[Perfiles.Cte.EsCentroTrabajo]
Carpeta=Perfiles
Clave=Cte.EsCentroTrabajo
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=20

[Perfiles.Cte.EsEstacionTrabajo]
Carpeta=Perfiles
Clave=Cte.EsEstacionTrabajo
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=20

[Perfiles.Cte.Cliente]
Carpeta=Perfiles
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Perfiles.Cte.Nombre]
Carpeta=Perfiles
Clave=Cte.Nombre
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]

[Acciones.Historico]
Nombre=Historico
Boton=0
Menu=&Ver
NombreDesplegar=Histórico de Cambios
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+H
Antes=S
Expresion=Asigna(Info.Tabla, <T>Cte<T>)<BR>Asigna(Info.Llave, Carpeta.LlavePrimaria(<T>Ficha<T>, <T>|<T>))<BR>Si(Version.RegHist y (SQL(<T>SELECT Estatus FROM CfgRegHist WHERE SysTabla=:tTabla<T>, Info.Tabla)=EstatusActivo), Forma(<T>RegHist<T>), Forma(<T>CteHist<T>))
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=103
Menu=&Edición
NombreDesplegar=E&valuaciones
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=EvaluacionCalificacion
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Asigna(Info.Clave, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)<BR>Asigna(Info.Aplica, <T>Clientes<T>)<BR>Asigna(Info.Nombre2, Cte:Agente.Nombre)

[Seguro.Cte.PolizaImporte]
Carpeta=Seguro
Clave=Cte.PolizaImporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Venta.Cte.Licencias]
Carpeta=Venta
Clave=Cte.Licencias
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Venta.Cte.LicenciasTipo]
Carpeta=Venta
Clave=Cte.LicenciasTipo
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Acciones.Movimientos]
Nombre=Movimientos
Boton=50
Menu=&Ver
UsaTeclaRapida=S
NombreDesplegar=&Movimientos del Cliente
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteMov
Activo=S
Visible=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Otros.Cte.Cuenta]
Carpeta=Otros
Clave=Cte.Cuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Otros.Cta.Descripcion]
Carpeta=Otros
Clave=Cta.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Acciones.MovCte]
Nombre=MovCte
Boton=25
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=F12
NombreDesplegar=Generar &Movimientos...
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
ClaveAccion=MovCte
ActivoCondicion=Usuario.CteMov
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Aseguradora, Cte:Cte.Aseguradora)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.CteAcceso]
Nombre=CteAcceso
Boton=0
Menu=&Edición
NombreDesplegar=Acceso Especifico...
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteAcceso
Activo=S
ConCondicion=S
Antes=S
GuardarAntes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
VisibleCondicion=General.NivelAccesoEsp y (Cte:Cte.NivelAcceso=<T>(Especifico)<T>)

[Acciones.CteOtrosDatos]
Nombre=CteOtrosDatos
Boton=58
Menu=&Edición
NombreDesplegar=&Otros Datos...
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteOtrosDatos
Activo=S
ConCondicion=S
Antes=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+O
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Otros.Cte.CuentaRetencion]
Carpeta=Otros
Clave=Cte.CuentaRetencion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CtaRetencion.Descripcion]
Carpeta=Otros
Clave=CtaRetencion.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata


[Fiscal.Cte.Cliente]
Carpeta=Fiscal
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
Efectos=[Negritas]

[Fiscal.Cte.Nombre]
Carpeta=Fiscal
Clave=Cte.Nombre
3D=S
Tamano=39
ColorFondo=Plata
Efectos=[Negritas]

[Fiscal.Cte.FiscalRegimen]
Carpeta=Fiscal
Clave=Cte.FiscalRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.RFC]
Carpeta=Fiscal
Clave=Cte.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.CURP]
Carpeta=Fiscal
Clave=Cte.CURP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ford.Cte.FordZona]
Carpeta=Ford
Clave=Cte.FordZona
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CtePedidoDef]
Nombre=CtePedidoDef
Boton=0
Menu=&Edición
NombreDesplegar=Pedido por O&misión...
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtePedidoDef
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
GuardarAntes=S
ActivoCondicion=Cte:Cte.PedidoDef
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)


[Acciones.CteEvento]
Nombre=CteEvento
Boton=0
Menu=&Edición
NombreDesplegar=Participación en Eventos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteEvento
Activo=S
Antes=S
GuardarAntes=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
DespuesGuardar=S
VisibleCondicion=General.Espacios

[Ficha.Cte.DireccionNumero]
Carpeta=Ficha
Clave=Cte.DireccionNumero
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=$00DFFFFF

[Ficha.Cte.TelefonosLada]
Carpeta=Ficha
Clave=Cte.TelefonosLada
Editar=S
3D=S
Pegado=S
Tamano=4
ColorFondo=Blanco
ValidaNombre=N

[Personal.Cte.PersonalTelefonosLada]
Carpeta=Personal
Clave=Cte.PersonalTelefonosLada
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco

[Acciones.CteTel]
Nombre=CteTel
Boton=0
Menu=&Edición
NombreDesplegar=Otros &Teléfonos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteTel
Activo=S
Visible=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.CtePension]
Nombre=CtePension
Boton=0
Menu=&Edición
NombreDesplegar=&Pensiones Alimenticias
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtePension
Activo=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
VisibleCondicion=General.Autotransportes

[Fiscal.Cte.IEPS]
Carpeta=Fiscal
Clave=Cte.IEPS
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Internet.Cte.wMovVentas]
Carpeta=Internet
Clave=Cte.wMovVentas
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Fiscal.Cte.PITEX]
Carpeta=Fiscal
Clave=Cte.PITEX
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Acciones.CteUEN]
Nombre=CteUEN
Boton=0
Menu=&Edición
NombreDesplegar=Límite de Crédito a Nivel UEN
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteUEN
Antes=S
Activo=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
VisibleCondicion=Config.VentaLimiteCreditoNivelUEN

[Acciones.Mapa]
Nombre=Mapa
Boton=105
Menu=&Ver
NombreDesplegar=&Mapa
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Mapa.Borrar<BR>Mapa.Agregar(<T>Cliente<T>, Cte:Cte.Cliente)<BR>PlugIn(<T>Mapa<T>, <T>Cliente<T>, <T>Posicionar<T>)
[Acciones.Politica]
Nombre=Politica
Boton=22
Menu=&Edición
NombreDesplegar=Política
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=Politica
Activo=S
ConCondicion=S
Antes=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Mayús+Ctrl+O
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CTE<T>)<BR>Asigna(Info.Clave, Cte:Cte.Cliente)

[AC.Cte.Cliente]
Carpeta=AC
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[AC.Cte.Nombre]
Carpeta=AC
Clave=Cte.Nombre
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[AC.Cte.CapacidadPago]
Carpeta=AC
Clave=Cte.CapacidadPago
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFuente=Negro
ColorFondo=Plata

[Acciones.CapacidadPago]
Nombre=CapacidadPago
Boton=0
Menu=&Edición
NombreDesplegar=Capacidad Pago...
EnMenu=S
TipoAccion=Formas
Activo=S
ConCondicion=S
Antes=S
GuardarAntes=S
RefrescarDespues=S
ClaveAccion=CteCapacidadPago
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
VisibleCondicion=General.AC

[Otros.Cte.Intercompania]
Carpeta=Otros
Clave=Cte.Intercompania
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.Agente3]
Carpeta=Venta
Clave=Cte.Agente3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Agente3.Nombre]
Carpeta=Venta
Clave=Agente3.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Venta.Cte.Agente4]
Carpeta=Venta
Clave=Cte.Agente4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Agente4.Nombre]
Carpeta=Venta
Clave=Agente4.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Venta.Cte.Publico]
Carpeta=Venta
Clave=Cte.Publico
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.OtrosDatosCteRep]
Nombre=OtrosDatosCteRep
Boton=0
Menu=&Edición
NombreDesplegar=Otros Datos - &Reportes
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteRep
Activo=S
ConCondicion=S
Antes=S
Visible=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)


[Personal.Cte.Extranjero]
Carpeta=Personal
Clave=Cte.Extranjero
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco


[Acciones.RefCta]
Nombre=RefCta
Boton=110
Menu=&Edición
NombreDesplegar=&Referencias
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=RefCta
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F11
NombreDesplegar=Plantillas &Office
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S
Expresion=Asigna(Info.Forma, <T>Cte<T>)<BR>Asigna(Info.Nombre, <T>Clientes<T>)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin

[Acciones.Mensajes]
Nombre=Mensajes
Boton=112
Menu=&Ver
NombreDesplegar=Mensajes
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=OutlookCte
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)

[Fiscal.Cte.ImportadorRegimen]
Carpeta=Fiscal
Clave=Cte.ImportadorRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.ImportadorRegistro]
Carpeta=Fiscal
Clave=Cte.ImportadorRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Acciones.ListaPoliticos]
Nombre=ListaPoliticos
Boton=0
Menu=&Ver
NombreDesplegar=Lista &Poíiticos
EnMenu=S
TipoAccion=Formas
ClaveAccion=ListaPoliticosLista
Activo=S
Visible=S


[Personal.Cte.PersonalSMS]
Carpeta=Personal
Clave=Cte.PersonalSMS
Editar=S
3D=S
Tamano=13
ColorFondo=Blanco

[Ficha.Cte.DireccionNumeroInt]
Carpeta=Ficha
Clave=Cte.DireccionNumeroInt
Editar=S
3D=S
Pegado=S
Tamano=20

ColorFondo=Blanco
[Acciones.CteDepto]
Nombre=CteDepto
Boton=0
Menu=&Edición
NombreDesplegar=&Departamentos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteDepto
Activo=S
Visible=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.CteCFD]
Nombre=CteCFD
Boton=0
Menu=&Edición
NombreDesplegar=Datos CFD
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteCFD
Activo=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
VisibleCondicion=Empresa.CFD

[Fiscal.Cte.RPU]
Carpeta=Fiscal
Clave=Cte.RPU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.SIRAC]
Carpeta=Fiscal
Clave=Cte.SIRAC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Valores.Columnas]
0=278
1=234
VerCampo=340
VerValor=318


[FormaExtraValor.VerCampo]
Carpeta=FormaExtraValor
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Plata
IgnoraFlujo=N

[FormaExtraValor.VerValor]
Carpeta=FormaExtraValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
Efectos=[Negritas]

[FormaExtraValor.Columnas]
VerCampo=346
VerValor=364

[Acciones.CteMapeoMov]
Nombre=CteMapeoMov
Boton=0
Menu=&Edición
NombreDesplegar=Mapeo Movimientos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteMapeoMov
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
Visible=S


[Comentarios.Cte.Comentarios]
Carpeta=Comentarios
Clave=Cte.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100x10
ColorFondo=Blanco

[Fiscal.Cte.IFE]
Carpeta=Fiscal
Clave=Cte.IFE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.Pasaporte]
Carpeta=Fiscal
Clave=Cte.Pasaporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.PolizaFechaEmision]
Carpeta=Seguro
Clave=Cte.PolizaFechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=25

[Seguro.Cte.PolizaVencimiento]
Carpeta=Seguro
Clave=Cte.PolizaVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=25

[Seguro.Cte.NotificarA]
Carpeta=Seguro
Clave=Cte.NotificarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco
EspacioPrevio=S

[Seguro.Cte.NoriticarATelefonos]
Carpeta=Seguro
Clave=Cte.NoriticarATelefonos
Editar=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco
LineaNueva=S

[Foto.Cte.Foto]
Carpeta=Foto
Clave=Cte.Foto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100x100
ColorFondo=Blanco
ColorFuente=Negro

[Personal.Cte.Peso]
Carpeta=Personal
Clave=Cte.Peso
Editar=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[Personal.Cte.Estatura]
Carpeta=Personal
Clave=Cte.Estatura
Editar=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco
Pegado=S

[Personal.Cte.GrupoSanguineo]
Carpeta=Personal
Clave=Cte.GrupoSanguineo
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Personal.Cte.GrupoSanguineoRH]
Carpeta=Personal
Clave=Cte.GrupoSanguineoRH
Editar=S
ValidaNombre=N
3D=S
Pegado=N
Tamano=14
ColorFondo=Blanco

[Acciones.SugerirRFC]
Nombre=SugerirRFC
Boton=0
Menu=&Edición
NombreDesplegar=Sugerir &RFC (Personas Fisicas)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Asigna(Temp.Texto, SQL(<T>SELECT dbo.fnCalculaRFC(:tNombre, :tPaterno, :tMaterno, :fNacimiento, :tRegimen)<T>, Cte:Cte.PersonalNombres, Cte:Cte.PersonalApellidoPaterno, Cte:Cte.PersonalApellidoMaterno, Cte:Cte.FechaNacimiento, Cte:Cte.FiscalRegimen))<BR>Si(SQL(<T>spRegistroOk :tCual, :tRegistro, :tEmpresa<T>, <T>RFC<T>, Temp.Texto, Empresa),Asigna(Cte:Cte.RFC, Temp.Texto))
[Personal.Cte.RFC]
Carpeta=Personal
Clave=Cte.RFC
3D=S
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]

[Acciones.ExpedienteFamiliar]
Nombre=ExpedienteFamiliar
Boton=0
Menu=&Maestros
NombreDesplegar=E&xpedientes Familiares
EnMenu=S
TipoAccion=Formas
ClaveAccion=ExpedienteFamiliar
Activo=S
Visible=S
EspacioPrevio=S

[Personal.Cte.ExpedienteFamiliar]
Carpeta=Personal
Clave=Cte.ExpedienteFamiliar
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
LineaNueva=S

[Personal.ExpedienteFamiliar.Nombre]
Carpeta=Personal
Clave=ExpedienteFamiliar.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

[Acciones.CteEntregaMercancia]
Nombre=CteEntregaMercancia
Boton=0
Menu=&Edición
NombreDesplegar=Datos Entrega Mercancia
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteEntregaMercancia
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
Visible=S

[Acciones.CteCto]
Nombre=CteCto
Boton=60
Menu=&Edición
NombreDesplegar=&Contactos del Cliente
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteCto
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
Visible=S

[Acciones.CamposExtras]
Nombre=CamposExtras
Boton=104
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+1
NombreDesplegar=General.CamposExtras+<T>...<T>
GuardarAntes=S
RefrescarDespues=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasContacto(<T>Cliente<T>, Cte:Cte.Tipo, Cte:Cte.Cliente)<BR>Sino<BR>  Asigna(Info.Aplica, <T>Cliente<T>)<BR>  Asigna(Info.Clave, Cte:Cte.Cliente)<BR>  Asigna(Info.Nombre, Cte:Cte.Nombre)<BR>  Asigna(Info.Modulo, Nulo)<BR>  Asigna(Info.Mov, Nulo)<BR>  Asigna(Info.Categoria, Cte:Cte.Categoria)<BR>  Asigna(Info.Grupo, Cte:Cte.Grupo)<BR>  Asigna(Info.Familia, Cte:Cte.Familia)<BR>  Asigna(Info.Departamento, Nulo)<BR>  Asigna(Info.Puesto, Nulo)<BR>  Asigna(Info.SIC, Nulo)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaExtraVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si(ConDatos(Info.FormaTipo), iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre), Informacion(<T>No Tiene Definida Ninguna Forma<T>))<BR>Fin
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Visible=S



[Oportunidad.CteOportunidad.ImporteEstimado]
Carpeta=Oportunidad
Clave=CteOportunidad.ImporteEstimado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.Etapa]
Carpeta=Oportunidad
Clave=CteOportunidad.Etapa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Oportunidad.CteOportunidad.Avance]
Carpeta=Oportunidad
Clave=CteOportunidad.Avance
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.ProbabilidadCierre]
Carpeta=Oportunidad
Clave=CteOportunidad.ProbabilidadCierre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.FechaEstimadaCierre]
Carpeta=Oportunidad
Clave=CteOportunidad.FechaEstimadaCierre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.PresupuestoAsignado]
Carpeta=Oportunidad
Clave=CteOportunidad.PresupuestoAsignado
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Competidores.CteCompetidor.Competidor]
Carpeta=Competidores
Clave=CteCompetidor.Competidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Producto]
Carpeta=Competidores
Clave=CteCompetidor.Producto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Orden]
Carpeta=Competidores
Clave=CteCompetidor.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Importe]
Carpeta=Competidores
Clave=CteCompetidor.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Moneda]
Carpeta=Competidores
Clave=CteCompetidor.Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Situacion]
Carpeta=Competidores
Clave=CteCompetidor.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Fecha]
Carpeta=Competidores
Clave=CteCompetidor.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Observaciones]
Carpeta=Competidores
Clave=CteCompetidor.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.Columnas]
Competidor=191
Producto=120
Orden=36
Importe=90
Moneda=64
Situacion=134
Fecha=64
Observaciones=438

[Oportunidad.CteOportunidad.Observaciones]
Carpeta=Oportunidad
Clave=CteOportunidad.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=80x3
ColorFondo=Blanco
ColorFuente=Negro


[UsoServicio.CteUsoServicio.Servicio]
Carpeta=UsoServicio
Clave=CteUsoServicio.Servicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Fecha]
Carpeta=UsoServicio
Clave=CteUsoServicio.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Porcentaje]
Carpeta=UsoServicio
Clave=CteUsoServicio.Porcentaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Evaluacion]
Carpeta=UsoServicio
Clave=CteUsoServicio.Evaluacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Observaciones]
Carpeta=UsoServicio
Clave=CteUsoServicio.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[UsoServicio.Columnas]
Servicio=293
Fecha=94
Porcentaje=38
Evaluacion=87
Observaciones=189

[Acciones.UsoServicio]
Nombre=UsoServicio
Boton=0
Menu=&Maestros
NombreDesplegar=Servicios (Usos)
EnMenu=S
TipoAccion=Formas
ClaveAccion=UsoServicio
Activo=S
VisibleCondicion=General.CteUsoServicio

[Detalle.Columnas]
CampoNombre=311
Valor=303
ValorAnterior=285

Condicion=139
NumeroDocumentos=146
[Acciones.MapaTodos]
Nombre=MapaTodos
Boton=0
NombreDesplegar=Ver Mapa (&Todos)
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>Cte.Cliente<T>)<BR>Mapa.AgregarListaSt(<T>Cliente<T>)<BR>PlugIn(<T>Mapa<T>, <T>Cliente<T>, <T>Posicionar<T>)

[Acciones.MapaSeleccion]
Nombre=MapaSeleccion
Boton=0
NombreDesplegar=Ver Mapa (&Selección)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>Cte.Cliente<T>, Verdadero)<BR>Mapa.AgregarListaSt(<T>Cliente<T>)<BR>PlugIn(<T>Mapa<T>, <T>Cliente<T>, <T>Posicionar<T>)





[Internet.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Contrasena
Cte.Contrasena=Cte.Contrasena2
Cte.Contrasena2=Cte.wMovVentas
Cte.wMovVentas=Cte.wVerDisponible
Cte.wVerDisponible=Cte.wVerArtListaPreciosEsp
Cte.wVerArtListaPreciosEsp=(Fin)

[CRM.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.CRMImporte
Cte.CRMImporte=Cte.CRMCantidad
Cte.CRMCantidad=Cte.CRMPresupuestoAsignado
Cte.CRMPresupuestoAsignado=Cte.CRMEtapa
Cte.CRMEtapa=Cte.CRMCierreProbabilidad
Cte.CRMCierreProbabilidad=Cte.CRMCierreFechaAprox
Cte.CRMCierreFechaAprox=Cte.CRMCompetencia
Cte.CRMCompetencia=Cte.CRMInfluencia
Cte.CRMInfluencia=Cte.CRMFuente
Cte.CRMFuente=Cte.Descripcion1
Cte.Descripcion1=Cte.Descripcion2
Cte.Descripcion2=Cte.Descripcion3
Cte.Descripcion3=Cte.Descripcion4
Cte.Descripcion4=Cte.Descripcion5
Cte.Descripcion5=Cte.Descripcion6
Cte.Descripcion6=Cte.Descripcion7
Cte.Descripcion7=Cte.Descripcion8
Cte.Descripcion8=Cte.Descripcion9
Cte.Descripcion9=Cte.Descripcion10
Cte.Descripcion10=Cte.Descripcion11
Cte.Descripcion11=Cte.Descripcion12
Cte.Descripcion12=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion14
Cte.Descripcion14=Cte.Descripcion15
Cte.Descripcion15=Cte.Descripcion16
Cte.Descripcion16=Cte.Descripcion17
Cte.Descripcion17=Cte.Descripcion18
Cte.Descripcion18=Cte.Descripcion19
Cte.Descripcion19=Cte.Descripcion20
Cte.Descripcion20=(Fin)



[Ford.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.FordDistribuidor
Cte.FordDistribuidor=Cte.FordZona
Cte.FordZona=Cte.Fecha1
Cte.Fecha1=Cte.Fecha2
Cte.Fecha2=Cte.Fecha3
Cte.Fecha3=Cte.Fecha4
Cte.Fecha4=Cte.Fecha5
Cte.Fecha5=Cte.Flotilla
Cte.Flotilla=(Fin)


[Acciones.CteArtEmpaque]
Nombre=CteArtEmpaque
Boton=0
Menu=&Edición
NombreDesplegar=Empaques por Cliente...
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteArtEmpaque
ConCondicion=S
Antes=S
Visible=S

















GuardarAntes=S








ActivoCondicion=Config.VentaCteArtEmpaqueCorrugado
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
























































































































[Acciones.IntelisisSL]
Nombre=IntelisisSL
Boton=0
Menu=&Edición
NombreDesplegar=&Licencias
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=IntelisisSL
ActivoCondicion=General.Intelisis
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
DespuesGuardar=S
VisibleCondicion=General.Intelisis


[SituacionCta.SituacionCta.Situacion]
Carpeta=SituacionCta
Clave=SituacionCta.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionFecha]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionUsuario]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionNota]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionNota
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[SituacionCta.Columnas]
0=188
1=148
2=-2
3=-2
4=-2


[Ecuador.Cte.TipoRegistro]
Carpeta=Ecuador
Clave=Cte.TipoRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





































































































[Acciones.CDIEstadoCivil]
Nombre=CDIEstadoCivil
Boton=0
Menu=&Maestros
NombreDesplegar=Estado Civil
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIEstadoCivil
Activo=S
Visible=S













[Acciones.CDINacionalidad]
Nombre=CDINacionalidad
Boton=0
Menu=&Maestros
NombreDesplegar=Nacionalidad
EnMenu=S
TipoAccion=Formas
ClaveAccion=Nacionalidad
Activo=S
Visible=S













[Acciones.CDITipoSangre]
Nombre=CDITipoSangre
Boton=0
Menu=&Maestros
NombreDesplegar=Tipo de Sangre
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDITipoSangre
Activo=S
Visible=S

















[Acciones.CDIInstitucionFin]
Nombre=CDIInstitucionFin
Boton=0
Menu=&Maestros
NombreDesplegar=Instituciones Financieras
EnMenu=S
TipoAccion=Formas
ClaveAccion=InstitucionFin
Activo=S
Visible=S





[Acciones.CDISocioTipo]
Nombre=CDISocioTipo
Boton=0
NombreEnBoton=S
Menu=&Maestros
NombreDesplegar=Tipo Socio
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteTipo
Activo=S
Antes=S
AntesExpresiones=Asigna( Info.Numero, 1 )
Visible=S

















[Acciones.CDIInstitucionesAcademicas]
Nombre=CDIInstitucionesAcademicas
Boton=0
Menu=&Maestros
NombreDesplegar=Instituciones Academicas
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIInstitucionesAcademicas
Activo=S
Visible=S



















[Ficha.Cte.Membresia]
Carpeta=Ficha
Clave=Cte.Membresia
Editar=N
ValidaNombre=S
3D=S
ColorFondo=$00C8D0D4













Tamano=14
Efectos=[Negritas]
[Ficha.Cte.Parentesco]
Carpeta=Ficha
Clave=Cte.Parentesco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF




























[Ficha.Cte.PersonalApellidoPaterno]
Carpeta=Ficha
Clave=Cte.PersonalApellidoPaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF

[Ficha.Cte.PersonalApellidoMaterno]
Carpeta=Ficha
Clave=Cte.PersonalApellidoMaterno
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF

[Ficha.Cte.PersonalNombres]
Carpeta=Ficha
Clave=Cte.PersonalNombres
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF










[Ficha.Cte.Alta]
Carpeta=Ficha
Clave=Cte.Alta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


Tamano=20
[Ficha.Cte.Sexo]
Carpeta=Ficha
Clave=Cte.Sexo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF

[Ficha.Cte.FechaNacimiento]
Carpeta=Ficha
Clave=Cte.FechaNacimiento
Editar=S
ValidaNombre=S
3D=S
ColorFondo=$00DFFFFF







LineaNueva=S
Tamano=20
[Ficha.Cte.EstadoCivil]
Carpeta=Ficha
Clave=Cte.EstadoCivil
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF











[Ficha.Edad]
Carpeta=Ficha
Clave=Edad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00C8D0D4






Efectos=[Negritas]










[Ficha.Cte.PersonalPais]
Carpeta=Ficha
Clave=Cte.PersonalPais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF






[Ficha.Cte.Nacionalidad]
Carpeta=Ficha
Clave=Cte.Nacionalidad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF






[Ficha.Cte.Ocupacion]
Carpeta=Ficha
Clave=Cte.Ocupacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00DFFFFF











[Ficha.Cte.MismaDireccion]
Carpeta=Ficha
Clave=Cte.MismaDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
[Ficha.Cte.DireccionOtroSocio]
Carpeta=Ficha
Clave=Cte.DireccionOtroSocio
Editar=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco



















































[Ficha.Cte.Socio]
Carpeta=Ficha
Clave=Cte.Socio
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=$00C8D0D4


































































































































Efectos=[Negritas]
Pegado=S
[Ficha.Cte.eMail1]
Carpeta=Ficha
Clave=Cte.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



















[Ficha.Cte.OtrosTelefonos]
Carpeta=Ficha
Clave=Cte.OtrosTelefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco






















[Ficha.Cte.OtrasDirecciones]
Carpeta=Ficha
Clave=Cte.OtrasDirecciones
Editar=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco



































































































[Ficha.Cte.NumeroPasaporte]
Carpeta=Ficha
Clave=Cte.NumeroPasaporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.InstitucionEnSuPais]
Carpeta=Ficha
Clave=Cte.InstitucionEnSuPais
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.DireccionEnSuPais]
Carpeta=Ficha
Clave=Cte.DireccionEnSuPais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.DireccionUltimoEmpleo]
Carpeta=Ficha
Clave=Cte.DireccionUltimoEmpleo
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco





























































































[Foto]
Estilo=Ficha
Clave=Foto
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S


FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S



ListaEnCaptura=(Lista)
RefrescarAlEntrar=S
[Seguro.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Aseguradora
Cte.Aseguradora=CteAseguradora.Nombre
CteAseguradora.Nombre=Cte.NombreAsegurado
Cte.NombreAsegurado=Cte.PolizaTipo
Cte.PolizaTipo=Cte.PolizaNumero
Cte.PolizaNumero=Cte.PolizaReferencia
Cte.PolizaReferencia=Cte.PolizaImporte
Cte.PolizaImporte=Cte.PolizaFechaEmision
Cte.PolizaFechaEmision=Cte.PolizaVencimiento
Cte.PolizaVencimiento=Cte.Deducible
Cte.Deducible=Cte.DeducibleMoneda
Cte.DeducibleMoneda=Cte.Coaseguro
Cte.Coaseguro=Cte.NotificarA
Cte.NotificarA=Cte.NoriticarATelefonos
Cte.NoriticarATelefonos=(Fin)



[UsoServicio.ListaEnCaptura]
(Inicio)=CteUsoServicio.Servicio
CteUsoServicio.Servicio=CteUsoServicio.Fecha
CteUsoServicio.Fecha=CteUsoServicio.Porcentaje
CteUsoServicio.Porcentaje=CteUsoServicio.Evaluacion
CteUsoServicio.Evaluacion=CteUsoServicio.Observaciones
CteUsoServicio.Observaciones=(Fin)













[Personal.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.PersonalNombres
Cte.PersonalNombres=Cte.PersonalApellidoPaterno
Cte.PersonalApellidoPaterno=Cte.PersonalApellidoMaterno
Cte.PersonalApellidoMaterno=Cte.RFC
Cte.RFC=Cte.Parentesco
Cte.Parentesco=Cte.Responsable
Cte.Responsable=Cte.ExpedienteFamiliar
Cte.ExpedienteFamiliar=ExpedienteFamiliar.Nombre
ExpedienteFamiliar.Nombre=Cte.PersonalDireccion
Cte.PersonalDireccion=Cte.PersonalEntreCalles
Cte.PersonalEntreCalles=Cte.PersonalPlano
Cte.PersonalPlano=Cte.PersonalDelegacion
Cte.PersonalDelegacion=Cte.PersonalColonia
Cte.PersonalColonia=Cte.PersonalCodigoPostal
Cte.PersonalCodigoPostal=Cte.PersonalPoblacion
Cte.PersonalPoblacion=Cte.PersonalEstado
Cte.PersonalEstado=Cte.PersonalPais
Cte.PersonalPais=Cte.PersonalTelefonos
Cte.PersonalTelefonos=Cte.PersonalTelefonosLada
Cte.PersonalTelefonosLada=Cte.PersonalTelefonoMovil
Cte.PersonalTelefonoMovil=Cte.PersonalSMS
Cte.PersonalSMS=Cte.FechaNacimiento
Cte.FechaNacimiento=Edad
Edad=Cte.Extranjero
Cte.Extranjero=Cte.Sexo
Cte.Sexo=Cte.Religion
Cte.Religion=Cte.Profesion
Cte.Profesion=Cte.Puesto
Cte.Puesto=Cte.Titulo
Cte.Titulo=Cte.EstadoCivil
Cte.EstadoCivil=Cte.Conyuge
Cte.Conyuge=Cte.FechaMatrimonio
Cte.FechaMatrimonio=Cte.NumeroHijos
Cte.NumeroHijos=Cte.Peso
Cte.Peso=Cte.Estatura
Cte.Estatura=Cte.GrupoSanguineo
Cte.GrupoSanguineo=Cte.GrupoSanguineoRH
Cte.GrupoSanguineoRH=Cte.Alergias
Cte.Alergias=Cte.Fuma
Cte.Fuma=Cte.FacturarCte
Cte.FacturarCte=CteFacturarA.Nombre
CteFacturarA.Nombre=Cte.FacturarCteEnviarA
Cte.FacturarCteEnviarA=CteEnviarAFacturarA.Nombre
CteEnviarAFacturarA.Nombre=(Fin)

[Fiscal.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.FiscalRegimen
Cte.FiscalRegimen=Cte.RFC
Cte.RFC=Cte.CURP
Cte.CURP=Cte.IFE
Cte.IFE=Cte.Pasaporte
Cte.Pasaporte=Cte.IEPS
Cte.IEPS=Cte.PITEX
Cte.PITEX=Cte.RPU
Cte.RPU=Cte.SIRAC
Cte.SIRAC=Cte.ImportadorRegimen
Cte.ImportadorRegimen=Cte.ImportadorRegistro
Cte.ImportadorRegistro=(Fin)

[Venta.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.EnviarA
Cte.EnviarA=CteEnviarA.Nombre
CteEnviarA.Nombre=Cte.DefMoneda
Cte.DefMoneda=Cte.Licencias
Cte.Licencias=Cte.LicenciasTipo
Cte.LicenciasTipo=Cte.Agente
Cte.Agente=Agente.Nombre
Agente.Nombre=Cte.AgenteServicio
Cte.AgenteServicio=AgenteServicio.Nombre
AgenteServicio.Nombre=Cte.Agente3
Cte.Agente3=Agente3.Nombre
Agente3.Nombre=Cte.Agente4
Cte.Agente4=Agente4.Nombre
Agente4.Nombre=Cte.PersonalCobrador
Cte.PersonalCobrador=PersonalNombre
PersonalNombre=Cte.SucursalEmpresa
Cte.SucursalEmpresa=Sucursal.Nombre
Sucursal.Nombre=Cte.Publico
Cte.Publico=Cte.DiaRevision1
Cte.DiaRevision1=Cte.DiaRevision2
Cte.DiaRevision2=Cte.HorarioRevision
Cte.HorarioRevision=Cte.DiaPago1
Cte.DiaPago1=Cte.DiaPago2
Cte.DiaPago2=Cte.HorarioPago
Cte.HorarioPago=(Fin)


[Perfiles.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.EsProveedor
Cte.EsProveedor=Cte.EsPersonal
Cte.EsPersonal=Cte.EsAgente
Cte.EsAgente=Cte.EsAlmacen
Cte.EsAlmacen=Cte.EsCentroCostos
Cte.EsCentroCostos=Cte.EsProyecto
Cte.EsProyecto=Cte.EsCentroTrabajo
Cte.EsCentroTrabajo=Cte.EsEstacionTrabajo
Cte.EsEstacionTrabajo=Cte.EsEspacio
Cte.EsEspacio=(Fin)

[Otros.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Espacio
Cte.Espacio=Espacio.Nombre
Espacio.Nombre=Cte.Cuenta
Cte.Cuenta=Cta.Descripcion
Cta.Descripcion=Cte.CuentaRetencion
Cte.CuentaRetencion=CtaRetencion.Descripcion
CtaRetencion.Descripcion=Cte.Mensaje
Cte.Mensaje=Cte.DirInternet
Cte.DirInternet=Cte.NivelAcceso
Cte.NivelAcceso=Cte.CBDir
Cte.CBDir=Cte.Idioma
Cte.Idioma=Cte.Alta
Cte.Alta=Cte.UltimoCambio
Cte.UltimoCambio=Cte.Intercompania
Cte.Intercompania=(Fin)

[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden	(Acendente)
GrupoOrden	(Acendente)=FormaExtraCampo.Orden	(Acendente)
FormaExtraCampo.Orden	(Acendente)=(Fin)

[SituacionCta.ListaEnCaptura]
(Inicio)=SituacionCta.Situacion
SituacionCta.Situacion=SituacionCta.SituacionFecha
SituacionCta.SituacionFecha=SituacionCta.SituacionUsuario
SituacionCta.SituacionUsuario=SituacionCta.SituacionNota
SituacionCta.SituacionNota=(Fin)

















[Economicos]
Estilo=Ficha
Pestana=S
Clave=Economicos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FichaEspacioEntreLineas=6
FichaEspacioNombres=101
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

PestanaOtroNombre=S
PestanaNombre=Economicos
CondicionVisible=Usuario.SoEconomicos
[Economicos.Cte.CDIEcoSocioEmpresa]
Carpeta=Economicos
Clave=Cte.CDIEcoSocioEmpresa
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=23
[Economicos.Cte.CDIEcoPropietarioEmpresa]
Carpeta=Economicos
Clave=Cte.CDIEcoPropietarioEmpresa
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=23
[Economicos.Cte.CDIEcoAccionistaEmpresa]
Carpeta=Economicos
Clave=Cte.CDIEcoAccionistaEmpresa
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=23
[Economicos.Cte.CDIEcoEmpleadoEmpresa]
Carpeta=Economicos
Clave=Cte.CDIEcoEmpleadoEmpresa
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=23
[Economicos.Cte.CDIEcoNombreEmpresa]
Carpeta=Economicos
Clave=Cte.CDIEcoNombreEmpresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Economicos.Cte.CDIEcoNombreGiro]
Carpeta=Economicos
Clave=Cte.CDIEcoNombreGiro
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[Economicos.Cte.CDIEcoDireccion]
Carpeta=Economicos
Clave=Cte.CDIEcoDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=54
ColorFondo=Blanco

[Economicos.Cte.CDIEcoDireccionNumero]
Carpeta=Economicos
Clave=Cte.CDIEcoDireccionNumero
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=6
ColorFondo=Blanco

Pegado=S
[Economicos.Cte.CDIEcoDireccionNumeroInt]
Carpeta=Economicos
Clave=Cte.CDIEcoDireccionNumeroInt
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=6
ColorFondo=Blanco

Pegado=S
[Economicos.Cte.CDIEcoEntreCalles]
Carpeta=Economicos
Clave=Cte.CDIEcoEntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Economicos.Cte.CDIEcoPlano]
Carpeta=Economicos
Clave=Cte.CDIEcoPlano
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Economicos.Cte.CDIEcoObservaciones]
Carpeta=Economicos
Clave=Cte.CDIEcoObservaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco

[Economicos.Cte.CDIEcoDelegacion]
Carpeta=Economicos
Clave=Cte.CDIEcoDelegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Economicos.Cte.CDIEcoColonia]
Carpeta=Economicos
Clave=Cte.CDIEcoColonia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Economicos.Cte.CDIEcoPoblacion]
Carpeta=Economicos
Clave=Cte.CDIEcoPoblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Economicos.Cte.CDIEcoEstado]
Carpeta=Economicos
Clave=Cte.CDIEcoEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Economicos.Cte.CDIEcoPais]
Carpeta=Economicos
Clave=Cte.CDIEcoPais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Economicos.Cte.CDIEcoCodigoPostal]
Carpeta=Economicos
Clave=Cte.CDIEcoCodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Economicos.Cte.CDIEcoMail]
Carpeta=Economicos
Clave=Cte.CDIEcoMail
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Economicos.Cte.CDIEcoTelefono]
Carpeta=Economicos
Clave=Cte.CDIEcoTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Economicos.Cte.CDIEcoFax]
Carpeta=Economicos
Clave=Cte.CDIEcoFax
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco














































[Economicos.Cte.Cliente]
Carpeta=Economicos
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=27
ColorFondo=$00C8D0D4
Efectos=[Negritas]







[Economicos.CDINombreSocio]
Carpeta=Economicos
Clave=CDINombreSocio
Editar=N
3D=S
Pegado=S
Tamano=39
ColorFondo=$00C8D0D4

Efectos=[Negritas]











[Economicos.Cte.CDIEcoIngresos]
Carpeta=Economicos
Clave=Cte.CDIEcoIngresos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco

Tamano=20
[Economicos.Cte.CDIEcoCasa]
Carpeta=Economicos
Clave=Cte.CDIEcoCasa
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[Economicos.Cte.CDIEcoMontoRenta]
Carpeta=Economicos
Clave=Cte.CDIEcoMontoRenta
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=20
[Economicos.Cte.CDIEcoMontoColegiatura]
Carpeta=Economicos
Clave=Cte.CDIEcoMontoColegiatura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[Economicos.Cte.CDIEcoColegio]
Carpeta=Economicos
Clave=Cte.CDIEcoColegio
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Economicos.Cte.CDIEcoGastosMensules]
Carpeta=Economicos
Clave=Cte.CDIEcoGastosMensules
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[Economicos.Cte.CDIEcoAutomoviles]
Carpeta=Economicos
Clave=Cte.CDIEcoAutomoviles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco































[DatosMedicos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Medicos
Clave=DatosMedicos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
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


CondicionEdicion=usuario.grupotrabajo en (<T>Socios<T>)
CondicionVisible=Usuario.SoDatosMedicos
CarpetaDesActivada=S
[DatosMedicos.Cte.Cliente]
Carpeta=DatosMedicos
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[DatosMedicos.CDINombreSocio]
Carpeta=DatosMedicos
Clave=CDINombreSocio
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=39
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[DatosMedicos.Cte.CDIMedEstatura]
Carpeta=DatosMedicos
Clave=Cte.CDIMedEstatura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosMedicos.Cte.CDIMEdPeso]
Carpeta=DatosMedicos
Clave=Cte.CDIMEdPeso
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
Pegado=S
[DatosMedicos.Cte.CDIMedTipoSangre]
Carpeta=DatosMedicos
Clave=Cte.CDIMedTipoSangre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco

Pegado=S
[DatosMedicos.Cte.CDIMedDonador]
Carpeta=DatosMedicos
Clave=Cte.CDIMedDonador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00DFFFFF

[DatosMedicos.Cte.CDIMedEnfermo]
Carpeta=DatosMedicos
Clave=Cte.CDIMedEnfermo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00DFFFFF

Pegado=S
[DatosMedicos.Cte.CDIMedEnfermedad]
Carpeta=DatosMedicos
Clave=Cte.CDIMedEnfermedad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

Pegado=S
[DatosMedicos.Cte.CDIMedAlergia]
Carpeta=DatosMedicos
Clave=Cte.CDIMedAlergia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00DFFFFF

[DatosMedicos.Cte.CDIMedAlergias]
Carpeta=DatosMedicos
Clave=Cte.CDIMedAlergias
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

Pegado=S
[DatosMedicos.Cte.CDIMedMedicamento]
Carpeta=DatosMedicos
Clave=Cte.CDIMedMedicamento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00DFFFFF

Pegado=S
[DatosMedicos.Cte.CDIMedMedicamentos]
Carpeta=DatosMedicos
Clave=Cte.CDIMedMedicamentos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

Pegado=S

[DatosMedicos.Cte.CDIMedAvisar]
Carpeta=DatosMedicos
Clave=Cte.CDIMedAvisar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=$00DFFFFF

[DatosMedicos.Cte.CDIMedTelefono]
Carpeta=DatosMedicos
Clave=Cte.CDIMedTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=$00DFFFFF

[DatosMedicos.Cte.CDIMedCelular]
Carpeta=DatosMedicos
Clave=Cte.CDIMedCelular
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=29
ColorFondo=$00DFFFFF

Pegado=S
[DatosMedicos.Cte.CDIMedNombreMedico]
Carpeta=DatosMedicos
Clave=Cte.CDIMedNombreMedico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedTeleMedico]
Carpeta=DatosMedicos
Clave=Cte.CDIMedTeleMedico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedCapacidades]
Carpeta=DatosMedicos
Clave=Cte.CDIMedCapacidades
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedCuidados]
Carpeta=DatosMedicos
Clave=Cte.CDIMedCuidados
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedRecomenda]
Carpeta=DatosMedicos
Clave=Cte.CDIMedRecomenda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

EspacioPrevio=S
[DatosMedicos.Cte.CDIMedNoTarjeton]
Carpeta=DatosMedicos
Clave=Cte.CDIMedNoTarjeton
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedVigencia]
Carpeta=DatosMedicos
Clave=Cte.CDIMedVigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





Tamano=20



[Foto.CDIImagen]
Carpeta=Foto
Clave=CDIImagen
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ConScroll=S
Tamano=30X15
ColorFondo=Blanco

[Foto.Cte.RutaImagen]
Carpeta=Foto
Clave=Cte.RutaImagen
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

























ConScroll=S
[Preferencias]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Preferencias
Clave=Preferencias
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISociosPreferencias
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDISociosPreferencias.Cliente
LlaveMaestra=Cte.Cliente
FichaEspacioEntreLineas=6
FichaEspacioNombres=139
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)


CondicionVisible=Usuario.SoPreferencias
[Preferencias.CDISociosPreferencias.Cliente]
Carpeta=Preferencias
Clave=CDISociosPreferencias.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
Efectos=[Negritas]

[Preferencias.CDISociosPreferencias.CDIPrefCheck1]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck2]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck2
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck3]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck3
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck4]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck4
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck5]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck5
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck6]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck6
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck7]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck7
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck8]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck8
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck9]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck9
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck10]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck10
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck11]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck11
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck12]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck12
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck13]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck13
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck14]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck14
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck15]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck15
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck16]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck16
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

LineaNueva=S
[Preferencias.CDISociosPreferencias.CDIPrefCheck17]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck17
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck18]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck18
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck19]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck19
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck20]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck20
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck21]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck21
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck22]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck22
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck23]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck23
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck24]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck24
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck25]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck25
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck26]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck26
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck27]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck27
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck28]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck28
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck29]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck29
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck30]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck30
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck31]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck31
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck32]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck32
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck33]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck33
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck34]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck34
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck35]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck35
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck36]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck36
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck37]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck37
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck38]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck38
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck39]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck39
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck40]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck40
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck41]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck41
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck42]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck42
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck43]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck43
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck44]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck44
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck45]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck45
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck46]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck46
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck47]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck47
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck48]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck48
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck49]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck49
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Preferencias.CDISociosPreferencias.CDIPrefCheck50]
Carpeta=Preferencias
Clave=CDISociosPreferencias.CDIPrefCheck50
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco







































[Transporte]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Transporte
Clave=Transporte
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
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


CondicionVisible=Usuario.SoTransporte
[Transporte.Cte.CDITransServicio]
Carpeta=Transporte
Clave=Cte.CDITransServicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Transporte.Cte.CDITransHoraAscenso]
Carpeta=Transporte
Clave=Cte.CDITransHoraAscenso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransMismaDir]
Carpeta=Transporte
Clave=Cte.CDITransMismaDir
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Transporte.Cte.CDITransDirOtroSocio]
Carpeta=Transporte
Clave=Cte.CDITransDirOtroSocio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[Transporte.Cte.CDITransDireccion]
Carpeta=Transporte
Clave=Cte.CDITransDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=56
ColorFondo=Blanco

[Transporte.Cte.CDITransNumero]
Carpeta=Transporte
Clave=Cte.CDITransNumero
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=6
ColorFondo=Blanco

[Transporte.Cte.CDITransNumeroInt]
Carpeta=Transporte
Clave=Cte.CDITransNumeroInt
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=6
ColorFondo=Blanco

[Transporte.Cte.CDITransEntreCalles]
Carpeta=Transporte
Clave=Cte.CDITransEntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransPlano]
Carpeta=Transporte
Clave=Cte.CDITransPlano
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransCodigoPostal]
Carpeta=Transporte
Clave=Cte.CDITransCodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransDelegacion]
Carpeta=Transporte
Clave=Cte.CDITransDelegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransColonia]
Carpeta=Transporte
Clave=Cte.CDITransColonia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransPoblacion]
Carpeta=Transporte
Clave=Cte.CDITransPoblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransEstado]
Carpeta=Transporte
Clave=Cte.CDITransEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransNombreResp]
Carpeta=Transporte
Clave=Cte.CDITransNombreResp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Transporte.Cte.CDITransTelefono]
Carpeta=Transporte
Clave=Cte.CDITransTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Transporte.Cte.CDITransLLevarDom]
Carpeta=Transporte
Clave=Cte.CDITransLLevarDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Transporte.Cte.CDITransHoraSalida]
Carpeta=Transporte
Clave=Cte.CDITransHoraSalida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransMismaDir2]
Carpeta=Transporte
Clave=Cte.CDITransMismaDir2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Transporte.Cte.CDITransDirOtroSocio2]
Carpeta=Transporte
Clave=Cte.CDITransDirOtroSocio2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[Transporte.Cte.CDITransDireccion2]
Carpeta=Transporte
Clave=Cte.CDITransDireccion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=56
ColorFondo=Blanco

[Transporte.Cte.CDITransNumero2]
Carpeta=Transporte
Clave=Cte.CDITransNumero2
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=6
ColorFondo=Blanco

[Transporte.Cte.CDITransNumeroInt2]
Carpeta=Transporte
Clave=Cte.CDITransNumeroInt2
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=6
ColorFondo=Blanco

[Transporte.Cte.CDITransEntreCalles2]
Carpeta=Transporte
Clave=Cte.CDITransEntreCalles2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransPlano2]
Carpeta=Transporte
Clave=Cte.CDITransPlano2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransCodigoPostal2]
Carpeta=Transporte
Clave=Cte.CDITransCodigoPostal2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransDelegacion2]
Carpeta=Transporte
Clave=Cte.CDITransDelegacion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransColonia2]
Carpeta=Transporte
Clave=Cte.CDITransColonia2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransPoblacion2]
Carpeta=Transporte
Clave=Cte.CDITransPoblacion2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransEstado2]
Carpeta=Transporte
Clave=Cte.CDITransEstado2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransNombreResp2]
Carpeta=Transporte
Clave=Cte.CDITransNombreResp2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Transporte.Cte.CDITransTelefono2]
Carpeta=Transporte
Clave=Cte.CDITransTelefono2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco






























[DatosBancarios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Bancarios
Clave=DatosBancarios
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=120
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco

ListaEnCaptura=(Lista)




CondicionVisible=Usuario.SoDatosBancarios
[DatosBancarios.Cte.CDIDatosBancarios]
Carpeta=DatosBancarios
Clave=Cte.CDIDatosBancarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco


























EditarConBloqueo=S
[InstitucionAcedemica]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Institución Acedemica
Clave=InstitucionAcedemica
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIDatosAcademicos
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDIDatosAcademicos.Cliente
LlaveMaestra=Cte.Cliente
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
[InstitucionAcedemica.ListaEnCaptura]
(Inicio)=CDIDatosAcademicos.Institucion
CDIDatosAcademicos.Institucion=CDIDatosAcademicos.Nivel
CDIDatosAcademicos.Nivel=CDIDatosAcademicos.Grado
CDIDatosAcademicos.Grado=CDIDatosAcademicos.Direccion
CDIDatosAcademicos.Direccion=CDIDatosAcademicos.Numero
CDIDatosAcademicos.Numero=CDIDatosAcademicos.NumeroInt
CDIDatosAcademicos.NumeroInt=CDIDatosAcademicos.EntreCalles
CDIDatosAcademicos.EntreCalles=CDIDatosAcademicos.Plano
CDIDatosAcademicos.Plano=CDIDatosAcademicos.Delegacion
CDIDatosAcademicos.Delegacion=CDIDatosAcademicos.Colonia
CDIDatosAcademicos.Colonia=CDIDatosAcademicos.CodigoPostal
CDIDatosAcademicos.CodigoPostal=CDIDatosAcademicos.Poblacion
CDIDatosAcademicos.Poblacion=CDIDatosAcademicos.Estado
CDIDatosAcademicos.Estado=CDIDatosAcademicos.Pais
CDIDatosAcademicos.Pais=(Fin)

[InstitucionAcedemica.CDIDatosAcademicos.Institucion]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Nivel]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Grado]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Grado
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Direccion]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=55
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Numero]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Numero
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.NumeroInt]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.NumeroInt
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.EntreCalles]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Plano]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Plano
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Delegacion]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Colonia]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Colonia
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.CodigoPostal]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.CodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Poblacion]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Poblacion
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Estado]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[InstitucionAcedemica.CDIDatosAcademicos.Pais]
Carpeta=InstitucionAcedemica
Clave=CDIDatosAcademicos.Pais
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco













[DatosAcademicos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Academicos
Clave=DatosAcademicos
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIDatosAcademicos
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDIDatosAcademicos.Cliente
LlaveMaestra=Cte.Cliente
FichaEspacioEntreLineas=6
FichaEspacioNombres=108
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)


CondicionVisible=Usuario.SoDatosAcademicos
[DatosAcademicos.CDIDatosAcademicos.Institucion]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Nivel]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Grado]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Grado
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Direccion]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=54
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Numero]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Numero
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=6
ColorFondo=Blanco

Pegado=S
[DatosAcademicos.CDIDatosAcademicos.NumeroInt]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.NumeroInt
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=6
ColorFondo=Blanco

Pegado=S
[DatosAcademicos.CDIDatosAcademicos.EntreCalles]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Plano]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Plano
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.CodigoPostal]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.CodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Delegacion]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Delegacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Colonia]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Poblacion]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Poblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Estado]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[DatosAcademicos.CDIDatosAcademicos.Pais]
Carpeta=DatosAcademicos
Clave=CDIDatosAcademicos.Pais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
















[EstudioSocioeconomico]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Estudio Socioeconomico
Clave=EstudioSocioeconomico
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEstudioSocioeconomico
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDIEstudioSocioeconomico.Cliente
LlaveMaestra=Cte.Cliente
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=$00C8D0D4
ListaEnCaptura=(Lista)


CondicionVisible=Usuario.SoEstudioSocioeconomico
[EstudioSocioeconomico.CDIEstudioSocioeconomico.IngresoMensual]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.IngresoMensual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.Alimentacion]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.Alimentacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.GastosMedicos]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.GastosMedicos
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.Gas]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.Gas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.Recracion]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.Recracion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.Agua]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.Agua
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.AbonosCreditos]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.AbonosCreditos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.Predial]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.Predial
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.RopaCalzado]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.RopaCalzado
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.Telefono]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.Telefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.FondoAhorro]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.FondoAhorro
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.TelefonoCelular]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.TelefonoCelular
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.Transporte]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.Transporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.Otros]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.Otros
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.ViviendaPropia]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.ViviendaPropia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[EstudioSocioeconomico.CDIEstudioSocioeconomico.MontoRentaMes]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.MontoRentaMes
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.OtrosDependientes]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.OtrosDependientes
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[EstudioSocioeconomico.CDIEstudioSocioeconomico.Colegiaturas]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.Colegiaturas
Editar=S
ValidaNombre=S
3D=S
Tamano=3
ColorFondo=Blanco










































[Ficha.Cte.NIPCDI]
Carpeta=Ficha
Clave=Cte.NIPCDI
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=$00C8D0D4















































Efectos=[Negritas]
[Preferencias.ListaEnCaptura]
(Inicio)=CDISociosPreferencias.Cliente
CDISociosPreferencias.Cliente=CDISociosPreferencias.CDIPrefCheck1
CDISociosPreferencias.CDIPrefCheck1=CDISociosPreferencias.CDIPrefCheck2
CDISociosPreferencias.CDIPrefCheck2=CDISociosPreferencias.CDIPrefCheck3
CDISociosPreferencias.CDIPrefCheck3=CDISociosPreferencias.CDIPrefCheck4
CDISociosPreferencias.CDIPrefCheck4=CDISociosPreferencias.CDIPrefCheck5
CDISociosPreferencias.CDIPrefCheck5=CDISociosPreferencias.CDIPrefCheck6
CDISociosPreferencias.CDIPrefCheck6=CDISociosPreferencias.CDIPrefCheck7
CDISociosPreferencias.CDIPrefCheck7=CDISociosPreferencias.CDIPrefCheck8
CDISociosPreferencias.CDIPrefCheck8=CDISociosPreferencias.CDIPrefCheck9
CDISociosPreferencias.CDIPrefCheck9=CDISociosPreferencias.CDIPrefCheck10
CDISociosPreferencias.CDIPrefCheck10=CDISociosPreferencias.CDIPrefCheck11
CDISociosPreferencias.CDIPrefCheck11=CDISociosPreferencias.CDIPrefCheck12
CDISociosPreferencias.CDIPrefCheck12=CDISociosPreferencias.CDIPrefCheck13
CDISociosPreferencias.CDIPrefCheck13=CDISociosPreferencias.CDIPrefCheck14
CDISociosPreferencias.CDIPrefCheck14=CDISociosPreferencias.CDIPrefCheck15
CDISociosPreferencias.CDIPrefCheck15=CDISociosPreferencias.CDIPrefCheck16
CDISociosPreferencias.CDIPrefCheck16=CDISociosPreferencias.CDIPrefCheck17
CDISociosPreferencias.CDIPrefCheck17=CDISociosPreferencias.CDIPrefCheck18
CDISociosPreferencias.CDIPrefCheck18=CDISociosPreferencias.CDIPrefCheck19
CDISociosPreferencias.CDIPrefCheck19=CDISociosPreferencias.CDIPrefCheck20
CDISociosPreferencias.CDIPrefCheck20=CDISociosPreferencias.CDIPrefCheck21
CDISociosPreferencias.CDIPrefCheck21=CDISociosPreferencias.CDIPrefCheck22
CDISociosPreferencias.CDIPrefCheck22=CDISociosPreferencias.CDIPrefCheck23
CDISociosPreferencias.CDIPrefCheck23=CDISociosPreferencias.CDIPrefCheck24
CDISociosPreferencias.CDIPrefCheck24=CDISociosPreferencias.CDIPrefCheck25
CDISociosPreferencias.CDIPrefCheck25=CDISociosPreferencias.CDIPrefCheck26
CDISociosPreferencias.CDIPrefCheck26=CDISociosPreferencias.CDIPrefCheck27
CDISociosPreferencias.CDIPrefCheck27=CDISociosPreferencias.CDIPrefCheck28
CDISociosPreferencias.CDIPrefCheck28=CDISociosPreferencias.CDIPrefCheck29
CDISociosPreferencias.CDIPrefCheck29=CDISociosPreferencias.CDIPrefCheck30
CDISociosPreferencias.CDIPrefCheck30=CDISociosPreferencias.CDIPrefCheck31
CDISociosPreferencias.CDIPrefCheck31=CDISociosPreferencias.CDIPrefCheck32
CDISociosPreferencias.CDIPrefCheck32=CDISociosPreferencias.CDIPrefCheck33
CDISociosPreferencias.CDIPrefCheck33=CDISociosPreferencias.CDIPrefCheck34
CDISociosPreferencias.CDIPrefCheck34=CDISociosPreferencias.CDIPrefCheck35
CDISociosPreferencias.CDIPrefCheck35=CDISociosPreferencias.CDIPrefCheck36
CDISociosPreferencias.CDIPrefCheck36=CDISociosPreferencias.CDIPrefCheck37
CDISociosPreferencias.CDIPrefCheck37=CDISociosPreferencias.CDIPrefCheck38
CDISociosPreferencias.CDIPrefCheck38=CDISociosPreferencias.CDIPrefCheck39
CDISociosPreferencias.CDIPrefCheck39=CDISociosPreferencias.CDIPrefCheck40
CDISociosPreferencias.CDIPrefCheck40=CDISociosPreferencias.CDIPrefCheck41
CDISociosPreferencias.CDIPrefCheck41=CDISociosPreferencias.CDIPrefCheck42
CDISociosPreferencias.CDIPrefCheck42=CDISociosPreferencias.CDIPrefCheck43
CDISociosPreferencias.CDIPrefCheck43=CDISociosPreferencias.CDIPrefCheck44
CDISociosPreferencias.CDIPrefCheck44=CDISociosPreferencias.CDIPrefCheck45
CDISociosPreferencias.CDIPrefCheck45=CDISociosPreferencias.CDIPrefCheck46
CDISociosPreferencias.CDIPrefCheck46=CDISociosPreferencias.CDIPrefCheck47
CDISociosPreferencias.CDIPrefCheck47=CDISociosPreferencias.CDIPrefCheck48
CDISociosPreferencias.CDIPrefCheck48=CDISociosPreferencias.CDIPrefCheck49
CDISociosPreferencias.CDIPrefCheck49=CDISociosPreferencias.CDIPrefCheck50
CDISociosPreferencias.CDIPrefCheck50=(Fin)


[DatosAcademicos.ListaEnCaptura]
(Inicio)=CDIDatosAcademicos.Institucion
CDIDatosAcademicos.Institucion=CDIDatosAcademicos.Nivel
CDIDatosAcademicos.Nivel=CDIDatosAcademicos.Grado
CDIDatosAcademicos.Grado=CDIDatosAcademicos.Direccion
CDIDatosAcademicos.Direccion=CDIDatosAcademicos.Numero
CDIDatosAcademicos.Numero=CDIDatosAcademicos.NumeroInt
CDIDatosAcademicos.NumeroInt=CDIDatosAcademicos.EntreCalles
CDIDatosAcademicos.EntreCalles=CDIDatosAcademicos.Plano
CDIDatosAcademicos.Plano=CDIDatosAcademicos.CodigoPostal
CDIDatosAcademicos.CodigoPostal=CDIDatosAcademicos.Delegacion
CDIDatosAcademicos.Delegacion=CDIDatosAcademicos.Colonia
CDIDatosAcademicos.Colonia=CDIDatosAcademicos.Poblacion
CDIDatosAcademicos.Poblacion=CDIDatosAcademicos.Estado
CDIDatosAcademicos.Estado=CDIDatosAcademicos.Pais
CDIDatosAcademicos.Pais=(Fin)


[SociosCDI]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Socio
Clave=SociosCDI
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)


CarpetaDesActivada=S
[SociosCDI.Cte.Cliente]
Carpeta=SociosCDI
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Plata



Efectos=[Negritas]
[Acciones.CDIRoles]
Nombre=CDIRoles
Boton=59
NombreDesplegar=&Roles
EnBarraHerramientas=S
Activo=S
ConCondicion=S
Antes=S
Visible=S





NombreEnBoton=S









Multiple=S
ListaAccionesMultiples=(Lista)
EjecucionCondicion=ConDatos(Cte:Cte.Cliente) y ConDatos(Cte:Cte.NIPCDI)
AntesExpresiones=Asigna(Info.Titulo,<T>Socios<T>)<BR>Asigna(Info.Personal,Cte:Cte.Cliente)<BR>Asigna(Info.Referencia,Cte:Cte.NIPCDI)
[ReglaNegocio.Cte.CDISubsidio]
Carpeta=ReglaNegocio
Clave=Cte.CDISubsidio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata


[ReglaNegocio.Cte.Agente]
Carpeta=ReglaNegocio
Clave=Cte.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.Agente.Nombre]
Carpeta=ReglaNegocio
Clave=Agente.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=$00C8D0D4





Efectos=[Negritas]






Pegado=S
[ReglaNegocio.CDINombreSocio]
Carpeta=ReglaNegocio
Clave=CDINombreSocio
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=$00C8D0D4
Efectos=[Negritas]










Pegado=S
[DatosBancarios.Cte.CDIAutorizacionCargos]
Carpeta=DatosBancarios
Clave=Cte.CDIAutorizacionCargos
Editar=N
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=30










[Acciones.CDICargosAutos]
Nombre=CDICargosAutos
Boton=0
Menu=&Edición
NombreDesplegar=Articulos con cargos automaticos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIArticulosCargos
Antes=S

































































Visible=S



















































ActivoCondicion=Cte:Cte.CDIAutorizacionCargos
AntesExpresiones=GuardarCambios<BR>Asigna( Info.Cliente, Cte:Cte.Cliente )
[Ficha.Cte.Familia]
Carpeta=Ficha
Clave=Cte.Familia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.Grupo]
Carpeta=Ficha
Clave=Cte.Grupo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco











[Economicos.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=CDINombreSocio
CDINombreSocio=Cte.CDIEcoSocioEmpresa
Cte.CDIEcoSocioEmpresa=Cte.CDIEcoPropietarioEmpresa
Cte.CDIEcoPropietarioEmpresa=Cte.CDIEcoAccionistaEmpresa
Cte.CDIEcoAccionistaEmpresa=Cte.CDIEcoEmpleadoEmpresa
Cte.CDIEcoEmpleadoEmpresa=Cte.CDIEcoNombreEmpresa
Cte.CDIEcoNombreEmpresa=Cte.CDIEcoNombreGiro
Cte.CDIEcoNombreGiro=Cte.CDIEcoDireccion
Cte.CDIEcoDireccion=Cte.CDIEcoDireccionNumero
Cte.CDIEcoDireccionNumero=Cte.CDIEcoDireccionNumeroInt
Cte.CDIEcoDireccionNumeroInt=Cte.CDIEcoObservaciones
Cte.CDIEcoObservaciones=Cte.CDIEcoEntreCalles
Cte.CDIEcoEntreCalles=Cte.CDIEcoPlano
Cte.CDIEcoPlano=Cte.CDIEcoDelegacion
Cte.CDIEcoDelegacion=Cte.CDIEcoColonia
Cte.CDIEcoColonia=Cte.CDIEcoCodigoPostal
Cte.CDIEcoCodigoPostal=Cte.CDIEcoPoblacion
Cte.CDIEcoPoblacion=Cte.CDIEcoEstado
Cte.CDIEcoEstado=Cte.CDIEcoPais
Cte.CDIEcoPais=Cte.CDIEcoMail
Cte.CDIEcoMail=Cte.CDIEcoTelefono
Cte.CDIEcoTelefono=Cte.CDIEcoFax
Cte.CDIEcoFax=Cte.CDIEcoIngresos
Cte.CDIEcoIngresos=Cte.CDIEcoCasa
Cte.CDIEcoCasa=Cte.CDIEcoMontoRenta
Cte.CDIEcoMontoRenta=Cte.CDIEcoMontoColegiatura
Cte.CDIEcoMontoColegiatura=Cte.CDIEcoColegio
Cte.CDIEcoColegio=Cte.CDIEcoGastosMensules
Cte.CDIEcoGastosMensules=Cte.CDIEcoAutomoviles
Cte.CDIEcoAutomoviles=(Fin)

[Transporte.ListaEnCaptura]
(Inicio)=Cte.CDITransServicio
Cte.CDITransServicio=Cte.CDITransHoraAscenso
Cte.CDITransHoraAscenso=Cte.CDITransMismaDir
Cte.CDITransMismaDir=Cte.CDITransDirOtroSocio
Cte.CDITransDirOtroSocio=Cte.CDITransDireccion
Cte.CDITransDireccion=Cte.CDITransNumero
Cte.CDITransNumero=Cte.CDITransNumeroInt
Cte.CDITransNumeroInt=Cte.CDITransEntreCalles
Cte.CDITransEntreCalles=Cte.CDITransPlano
Cte.CDITransPlano=Cte.CDITransDelegacion
Cte.CDITransDelegacion=Cte.CDITransColonia
Cte.CDITransColonia=Cte.CDITransCodigoPostal
Cte.CDITransCodigoPostal=Cte.CDITransPoblacion
Cte.CDITransPoblacion=Cte.CDITransEstado
Cte.CDITransEstado=Cte.CDITransNombreResp
Cte.CDITransNombreResp=Cte.CDITransTelefono
Cte.CDITransTelefono=Cte.CDITransLLevarDom
Cte.CDITransLLevarDom=Cte.CDITransHoraSalida
Cte.CDITransHoraSalida=Cte.CDITransMismaDir2
Cte.CDITransMismaDir2=Cte.CDITransDirOtroSocio2
Cte.CDITransDirOtroSocio2=Cte.CDITransDireccion2
Cte.CDITransDireccion2=Cte.CDITransNumero2
Cte.CDITransNumero2=Cte.CDITransNumeroInt2
Cte.CDITransNumeroInt2=Cte.CDITransEntreCalles2
Cte.CDITransEntreCalles2=Cte.CDITransPlano2
Cte.CDITransPlano2=Cte.CDITransDelegacion2
Cte.CDITransDelegacion2=Cte.CDITransColonia2
Cte.CDITransColonia2=Cte.CDITransCodigoPostal2
Cte.CDITransCodigoPostal2=Cte.CDITransPoblacion2
Cte.CDITransPoblacion2=Cte.CDITransEstado2
Cte.CDITransEstado2=Cte.CDITransNombreResp2
Cte.CDITransNombreResp2=Cte.CDITransTelefono2
Cte.CDITransTelefono2=(Fin)




[(Carpeta Abrir).NombreSocio]
Carpeta=(Carpeta Abrir)
Clave=NombreSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=120
ColorFondo=Blanco


















[DatosBancarios.Cte.Descripcion20]
Carpeta=DatosBancarios
Clave=Cte.Descripcion20
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=2
ColorFondo=Blanco












































[Acciones.Nuevo.Expresa]
Nombre=Expresa
Boton=0
TipoAccion=Expresion
Expresion=Asigna( Info.Cliente, <T><T> )
Activo=S
Visible=S

[Acciones.Nuevo.DocumentoN]
Nombre=DocumentoN
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S







[SociosCDI.CDINombreSocio]
Carpeta=SociosCDI
Clave=CDINombreSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=90
ColorFondo=Plata






Efectos=[Negritas]

[Ficha.Cte.Descripcion19]
Carpeta=Ficha
Clave=Cte.Descripcion19
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco





























[Acciones.CDISectorComunitario]
Nombre=CDISectorComunitario
Boton=0
Menu=&Maestros
NombreDesplegar=Sector Comunitario
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDISectorComunitario
Activo=S
Visible=S


























[Acciones.EditarNIPCDI]
Nombre=EditarNIPCDI
Boton=93
NombreEnBoton=S
NombreDesplegar=Editar NIPCDI
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIEditarNIPCDI
Activo=S
Antes=S
Visible=S









































AntesExpresiones=Asigna( Info.CDINIP,Cte:Cte.NIPCDI )<BR>Asigna( Info.Clave, Cte:Cte.Cliente )<BR>Asigna( Info.Forma, <T>Socio<T> )
[RolesCDI]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Roles Asignados
Clave=RolesCDI
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAsignacionRoles
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDIAsignacionRoles.NIPCDI
LlaveMaestra=Cte.NIPCDI
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)


CondicionVisible=Usuario.SoRolesAsignados
[RolesCDI.CDIAsignacionRoles.NIPCDI]
Carpeta=RolesCDI
Clave=CDIAsignacionRoles.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata

[RolesCDI.CDIAsignacionRoles.Catalogo]
Carpeta=RolesCDI
Clave=CDIAsignacionRoles.Catalogo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata

[RolesCDI.CDIAsignacionRoles.Rol]
Carpeta=RolesCDI
Clave=CDIAsignacionRoles.Rol
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata









[RolesCDI.Columnas]
NIPCDI=147
Catalogo=174
Rol=136


[Acciones.CDIRoles.Formas]
Nombre=Formas
Boton=0
TipoAccion=Formas
ClaveAccion=CDIAsignacionRoles
Activo=S
Visible=S

[Acciones.CDIRoles.Actualizar]
Nombre=Actualizar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S







[RolesCDI.ListaEnCaptura]
(Inicio)=CDIAsignacionRoles.NIPCDI
CDIAsignacionRoles.NIPCDI=CDIAsignacionRoles.Catalogo
CDIAsignacionRoles.Catalogo=CDIAsignacionRoles.Rol
CDIAsignacionRoles.Rol=(Fin)


[Acciones.Guardar.Exprecion]
Nombre=Exprecion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si<BR>  Info.CDINumero = 2<BR>Entonces<BR>     EjecutarSQL(<T>EXEC spCDICopiaDetalleSocio :nIDs, :tCliente, :nAccion<T>, Info.ID, Cte:Cte.Cliente, 1)<BR>Fin
[Acciones.Guardar.Guarda]
Nombre=Guarda
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S
























[(Carpeta Abrir).Cte.Membresia]
Carpeta=(Carpeta Abrir)
Clave=Cte.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





































































[Acciones.Documentacion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=GuardarCambios<BR>Asigna( Info.Cliente, Cte:Cte.Cliente )<BR>Asigna( Info.Pais, SQL(<T>SELECT TOP 1 c.Nacionalidad FROM CDINacionalidad c WHERE c.Cliente =:tCliente<T>, Info.Cliente) )<BR>EjecutarSQL(<T>EXEC spCDIInsertaDocumentosCTA :tCliente, :tNacional, :tTipo<T>, Info.Cliente, Info.Pais, Cte:Cte.Tipo)
[Acciones.Documentacion.Forma]
Nombre=Forma
Boton=0
TipoAccion=Formas
ClaveAccion=CDIDocSocioCta
Activo=S
Visible=S

[Acciones.Documentacion]
Nombre=Documentacion
Boton=17
NombreDesplegar=Documentación
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

























[Acciones.Documentacion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Forma
Forma=(Fin)
































































































[ReglaNegocio.Cte.CreditoEspecial]
Carpeta=ReglaNegocio
Clave=Cte.CreditoEspecial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco









EspacioPrevio=S
[DatosBancarios.Cte.Descripcion16]
Carpeta=DatosBancarios
Clave=Cte.Descripcion16
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco






[FormasPago.Columnas]
FormaPago=204












[DatosBancarios.Cte.Descripcion15]
Carpeta=DatosBancarios
Clave=Cte.Descripcion15
Editar=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco













[Condiciones.Columnas]
CondPago=249









[Ficha.Cte.Fecha1]
Carpeta=Ficha
Clave=Cte.Fecha1
Editar=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

Pegado=S










[Ficha.Cte.Fecha2]
Carpeta=Ficha
Clave=Cte.Fecha2
ValidaNombre=S
3D=S
Pegado=S
Tamano=22
ColorFondo=$00C8D0D4
Efectos=[Negritas]

































































































[Acciones.Guardar.ListaAccionesMultiples]
(Inicio)=Guarda
Guarda=Exprecion
Exprecion=(Fin)











[Acciones.Nuevo.ListaAccionesMultiples]
(Inicio)=Expresa
Expresa=DocumentoN
DocumentoN=(Fin)



































































[EstudioSocioeconomico.CDIEstudioSocioeconomico.TotalColegiaturas]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.TotalColegiaturas
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[EstudioSocioeconomico.CDIEstudioSocioeconomico.TotalIngresos]
Carpeta=EstudioSocioeconomico
Clave=CDIEstudioSocioeconomico.TotalIngresos
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00C8D0D4
Efectos=[Negritas]

[EstudioSocioeconomico.ListaAcciones]
(Inicio)=Expresion
Expresion=Actuazalir
Actuazalir=(Fin)

[EstudioSocioeconomico.ListaEnCaptura]
(Inicio)=CDIEstudioSocioeconomico.IngresoMensual
CDIEstudioSocioeconomico.IngresoMensual=CDIEstudioSocioeconomico.Alimentacion
CDIEstudioSocioeconomico.Alimentacion=CDIEstudioSocioeconomico.GastosMedicos
CDIEstudioSocioeconomico.GastosMedicos=CDIEstudioSocioeconomico.Gas
CDIEstudioSocioeconomico.Gas=CDIEstudioSocioeconomico.Recracion
CDIEstudioSocioeconomico.Recracion=CDIEstudioSocioeconomico.Agua
CDIEstudioSocioeconomico.Agua=CDIEstudioSocioeconomico.AbonosCreditos
CDIEstudioSocioeconomico.AbonosCreditos=CDIEstudioSocioeconomico.Predial
CDIEstudioSocioeconomico.Predial=CDIEstudioSocioeconomico.RopaCalzado
CDIEstudioSocioeconomico.RopaCalzado=CDIEstudioSocioeconomico.Telefono
CDIEstudioSocioeconomico.Telefono=CDIEstudioSocioeconomico.FondoAhorro
CDIEstudioSocioeconomico.FondoAhorro=CDIEstudioSocioeconomico.TelefonoCelular
CDIEstudioSocioeconomico.TelefonoCelular=CDIEstudioSocioeconomico.Transporte
CDIEstudioSocioeconomico.Transporte=CDIEstudioSocioeconomico.Otros
CDIEstudioSocioeconomico.Otros=CDIEstudioSocioeconomico.ViviendaPropia
CDIEstudioSocioeconomico.ViviendaPropia=CDIEstudioSocioeconomico.MontoRentaMes
CDIEstudioSocioeconomico.MontoRentaMes=CDIEstudioSocioeconomico.OtrosDependientes
CDIEstudioSocioeconomico.OtrosDependientes=CDIEstudioSocioeconomico.Colegiaturas
CDIEstudioSocioeconomico.Colegiaturas=CDIEstudioSocioeconomico.TotalColegiaturas
CDIEstudioSocioeconomico.TotalColegiaturas=CDIEstudioSocioeconomico.TotalIngresos
CDIEstudioSocioeconomico.TotalIngresos=(Fin)

[Acciones.CDIRoles.ListaAccionesMultiples]
(Inicio)=Formas
Formas=Actualizar
Actualizar=(Fin)

[ReglaNegocio.Cte.DescuentoRecargos]
Carpeta=ReglaNegocio
Clave=Cte.DescuentoRecargos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[ReglaNegocio.Cte.CDICargosRecurrentes]
Carpeta=ReglaNegocio
Clave=Cte.CDICargosRecurrentes
Editar=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
LineaNueva=S
Tamano=30
EspacioPrevio=S
Efectos=[Negritas]

[ReglaNegocio.Cte.Descripcion17]
Carpeta=ReglaNegocio
Clave=Cte.Descripcion17
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=2
ColorFondo=Blanco
LineaNueva=N

[ReglaNegocio.Cte.CDIFacturarA]
Carpeta=ReglaNegocio
Clave=Cte.CDIFacturarA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S


[DatosBancarios.Cte.ZonaImpuesto]
Carpeta=DatosBancarios
Clave=Cte.ZonaImpuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S



[Acciones.CDISocioTarjeta]
Nombre=CDISocioTarjeta
Boton=78
NombreEnBoton=S
NombreDesplegar=Tarjetas
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDISocioTarjeta
Activo=S
Antes=S
Visible=S













AntesExpresiones=Asigna(Temp.Texto, Cte:Cte.Cliente)<BR>Asigna(Info.Socio, Cte:Cte.Socio)









[Ficha.Cte.Descripcion12]
Carpeta=Ficha
Clave=Cte.Descripcion12
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.Descripcion11]
Carpeta=Ficha
Clave=Cte.Descripcion11
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco














[(Carpeta Abrir).Cte.Descripcion13]
Carpeta=(Carpeta Abrir)
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Descripcion15]
Carpeta=(Carpeta Abrir)
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco






























































































































[ReglaNegocio.Cte.CDIFormaPago]
Carpeta=ReglaNegocio
Clave=Cte.CDIFormaPago
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
EspacioPrevio=S



[DatosBancarios.ListaEnCaptura]
(Inicio)=Cte.CDIDatosBancarios
Cte.CDIDatosBancarios=Cte.CDIAutorizacionCargos
Cte.CDIAutorizacionCargos=Cte.Descripcion20
Cte.Descripcion20=Cte.Descripcion16
Cte.Descripcion16=Cte.Descripcion15
Cte.Descripcion15=Cte.ZonaImpuesto
Cte.ZonaImpuesto=(Fin)

























[Acciones.CDIArtCargosRecAutoma]
Nombre=CDIArtCargosRecAutoma
Boton=51
NombreEnBoton=S
NombreDesplegar=CDIArtCargosRecAutom
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIArtCargosRecAutoma
Activo=S
Visible=S





Antes=S





















































































































































AntesExpresiones=asigna(info.cliente,Cte:Cte.Cliente)
[ReglaNegocio.Cte.Tipo0]
Carpeta=ReglaNegocio
Clave=Cte.Tipo0
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[ReglaNegocio.Cte.Categoria0]
Carpeta=ReglaNegocio
Clave=Cte.Categoria0
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[ReglaNegocio.Cte.SubCategoria]
Carpeta=ReglaNegocio
Clave=Cte.SubCategoria
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNegocio.Cte.Aporta]
Carpeta=ReglaNegocio
Clave=Cte.Aporta
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[ReglaNegocio.Cte.Sede]
Carpeta=ReglaNegocio
Clave=Cte.Sede
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=N
EspacioPrevio=S
[ReglaNegocio.Cte.Actividad]
Carpeta=ReglaNegocio
Clave=Cte.Actividad
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNegocio.Cte.CargoCDI]
Carpeta=ReglaNegocio
Clave=Cte.CargoCDI
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNegocio.Cte.Tipo]
Carpeta=ReglaNegocio
Clave=Cte.Tipo
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNegocio.Cte.Categoria]
Carpeta=ReglaNegocio
Clave=Cte.Categoria
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNegocio.Cte.Clase]
Carpeta=ReglaNegocio
Clave=Cte.Clase
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=N
[ReglaNegocio.Cte.Estatus]
Carpeta=ReglaNegocio
Clave=Cte.Estatus
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

EspacioPrevio=S
[ReglaNegocio.Cte.Descripcion13]
Carpeta=ReglaNegocio
Clave=Cte.Descripcion13
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNegocio.Cte.Descripcion15]
Carpeta=ReglaNegocio
Clave=Cte.Descripcion15
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S

















[ReglaNegocio.Cte.Titular]
Carpeta=ReglaNegocio
Clave=Cte.Titular
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco

[ReglaNegocio.Cte.Membresia]
Carpeta=ReglaNegocio
Clave=Cte.Membresia
Editar=N
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco







[ReglaNegocio.Cte.RFC]
Carpeta=ReglaNegocio
Clave=Cte.RFC
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





[Foto.ListaEnCaptura]
(Inicio)=CDIImagen
CDIImagen=Cte.RutaImagen
Cte.RutaImagen=(Fin)




[SociosCDI.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=CDINombreSocio
CDINombreSocio=(Fin)






































[ReglaNeg]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Regla Negocio
Clave=ReglaNeg
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICteCat
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDICteCat.Cliente
LlaveMaestra=Cte.Cliente
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


AlinearTodaCarpeta=S
CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos) y (Usuario.SoReglaNegocio)
[ReglaNeg.CDICteCat.Tipo]
Carpeta=ReglaNeg
Clave=CDICteCat.Tipo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=15
[ReglaNeg.CDICteCat.Tipo0]
Carpeta=ReglaNeg
Clave=CDICteCat.Tipo0
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

EspacioPrevio=S
[ReglaNeg.CDICteCat.Categoria]
Carpeta=ReglaNeg
Clave=CDICteCat.Categoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNeg.CDICteCat.Categoria0]
Carpeta=ReglaNeg
Clave=CDICteCat.Categoria0
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

EspacioPrevio=N
[ReglaNeg.CDICteCat.Sede]
Carpeta=ReglaNeg
Clave=CDICteCat.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

EspacioPrevio=S
[ReglaNeg.CDICteCat.SubCategoria]
Carpeta=ReglaNeg
Clave=CDICteCat.SubCategoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNeg.CDICteCat.Aporta]
Carpeta=ReglaNeg
Clave=CDICteCat.Aporta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.Actividad]
Carpeta=ReglaNeg
Clave=CDICteCat.Actividad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNeg.CDICteCat.CargoCDI]
Carpeta=ReglaNeg
Clave=CDICteCat.CargoCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

EspacioPrevio=S
[ReglaNeg.CDICteCat.Clase]
Carpeta=ReglaNeg
Clave=CDICteCat.Clase
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNeg.CDICteCat.Membresia]
Carpeta=ReglaNeg
Clave=CDICteCat.Membresia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

























Pegado=S





[ReglaNeg.CDICteCat.Socio]
Carpeta=ReglaNeg
Clave=CDICteCat.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco











[ReglaNeg.Cte.Titular]
Carpeta=ReglaNeg
Clave=Cte.Titular
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[ReglaNeg.Cte.Descripcion13]
Carpeta=ReglaNeg
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=15
ColorFondo=Blanco

[ReglaNeg.Cte.Descripcion15]
Carpeta=ReglaNeg
Clave=Cte.Descripcion15
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco

[ReglaNeg.Cte.Descripcion19]
Carpeta=ReglaNeg
Clave=Cte.Descripcion19
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=15
ColorFondo=Blanco




[ReglaNeg.Cte.CDICargosRecurrentes]
Carpeta=ReglaNeg
Clave=Cte.CDICargosRecurrentes
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco

[ReglaNeg.Cte.CDIFacturarA]
Carpeta=ReglaNeg
Clave=Cte.CDIFacturarA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=15
ColorFondo=Blanco


Pegado=S
[ReglaNeg.Cte.Nombre]
Carpeta=ReglaNeg
Clave=Cte.Nombre
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Blanco

[ReglaNeg.Cte.Agente]
Carpeta=ReglaNeg
Clave=Cte.Agente
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[ReglaNeg.Cte.Estatus]
Carpeta=ReglaNeg
Clave=Cte.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

EspacioPrevio=S










[ReglaNeg.Cte.RFC]
Carpeta=ReglaNeg
Clave=Cte.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

EspacioPrevio=S
[ReglaNeg.Cte.CreditoEspecial]
Carpeta=ReglaNeg
Clave=Cte.CreditoEspecial
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S

[CDICargRec]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cargos Recurrentes
Clave=CDICargRec
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIArtCargosRecurrentes
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDIArtCargosRecurrentes.Cliente
LlaveMaestra=Cte.Cliente
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

HojaAjustarColumnas=S
[CDICargRec.CDIArtCargosRecurrentes.Articulo]
Carpeta=CDICargRec
Clave=CDIArtCargosRecurrentes.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICargRec.Descripcion1]
Carpeta=CDICargRec
Clave=Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICargRec.CDIArtCargosRecurrentes.FechaInicio]
Carpeta=CDICargRec
Clave=CDIArtCargosRecurrentes.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICargRec.CDIArtCargosRecurrentes.FechaFin]
Carpeta=CDICargRec
Clave=CDIArtCargosRecurrentes.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICargRec.CDIArtCargosRecurrentes.Ubicacion]
Carpeta=CDICargRec
Clave=CDIArtCargosRecurrentes.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDICargRec.CDIArtCargosRecurrentes.casillero]
Carpeta=CDICargRec
Clave=CDIArtCargosRecurrentes.casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICargRec.PrecioLista]
Carpeta=CDICargRec
Clave=PrecioLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDICargRec.Columnas]
Articulo=75
Descripcion1=176
FechaInicio=66
FechaFin=70
Ubicacion=246
casillero=43
PrecioLista=73









Cantidad=46
Automatico=90

PrecioSocio=94
[CDICargRec.CDIArtCargosRecurrentes.Cantidad]
Carpeta=CDICargRec
Clave=CDIArtCargosRecurrentes.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICargRec.Automatico]
Carpeta=CDICargRec
Clave=Automatico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco






[ReglaNeg.CDICteCat.Formato]
Carpeta=ReglaNeg
Clave=CDICteCat.Formato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=15
ColorFondo=Blanco

[ReglaNeg.CDICteCat.Situacion]
Carpeta=ReglaNeg
Clave=CDICteCat.Situacion
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNeg.CDICteCat.Recomendado]
Carpeta=ReglaNeg
Clave=CDICteCat.Recomendado
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S










[ReglaNegocio.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=CDINombreSocio
CDINombreSocio=Cte.CDISubsidio
Cte.CDISubsidio=Cte.Agente
Cte.Agente=Agente.Nombre
Agente.Nombre=Cte.CreditoEspecial
Cte.CreditoEspecial=Cte.DescuentoRecargos
Cte.DescuentoRecargos=Cte.CDIFormaPago
Cte.CDIFormaPago=Cte.CDICargosRecurrentes
Cte.CDICargosRecurrentes=Cte.Descripcion17
Cte.Descripcion17=Cte.RFC
Cte.RFC=Cte.CDIFacturarA
Cte.CDIFacturarA=Cte.Titular
Cte.Titular=Cte.Membresia
Cte.Membresia=Cte.Sede
Cte.Sede=Cte.Tipo0
Cte.Tipo0=Cte.Tipo
Cte.Tipo=Cte.Categoria0
Cte.Categoria0=Cte.Categoria
Cte.Categoria=Cte.SubCategoria
Cte.SubCategoria=Cte.Aporta
Cte.Aporta=Cte.Clase
Cte.Clase=Cte.Actividad
Cte.Actividad=Cte.CargoCDI
Cte.CargoCDI=Cte.Estatus
Cte.Estatus=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=(Fin)














[ReglaNeg.CDICteCat.CDIFormaPago]
Carpeta=ReglaNeg
Clave=CDICteCat.CDIFormaPago
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

Pegado=S
[ReglaNeg.CDICteCat.CDICuotaMembresia]
Carpeta=ReglaNeg
Clave=CDICteCat.CDICuotaMembresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[ReglaNeg.CDICteCat.CDISubsidio]
Carpeta=ReglaNeg
Clave=CDICteCat.CDISubsidio
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=15
[ReglaNeg.Edad]
Carpeta=ReglaNeg
Clave=Edad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S

















[ReglaNeg.CDICteCat.Descuento]
Carpeta=ReglaNeg
Clave=CDICteCat.Descuento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco










Pegado=S
Tamano=15
[ReglaNeg.FechaVigencia]
Carpeta=ReglaNeg
Clave=FechaVigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











Tamano=15

























[ReglaNeg.CcdiCuota]
Carpeta=ReglaNeg
Clave=CcdiCuota
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15


[Acciones.Tarjeton]
Nombre=Tarjeton
Boton=0
NombreDesplegar=Tarjeton
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIExpTarjeton
Activo=S
Visible=S





NombreEnBoton=S
Menu=&Ver
EspacioPrevio=S
Antes=S








AntesExpresiones=asigna(info.Cliente,Cte:Cte.Cliente)

















[ReglaNeg.CDICteCat.AgenteEspecifico]
Carpeta=ReglaNeg
Clave=CDICteCat.AgenteEspecifico
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco











Pegado=S
[ReglaNeg.CDICteCat.SitCxc]
Carpeta=ReglaNeg
Clave=CDICteCat.SitCxc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco










[ReglaNeg.ListaEnCaptura]
(Inicio)=CDICteCat.Socio
CDICteCat.Socio=Cte.Nombre
Cte.Nombre=Cte.Titular
Cte.Titular=CDICteCat.Membresia
CDICteCat.Membresia=CDICteCat.Tipo0
CDICteCat.Tipo0=CDICteCat.Tipo
CDICteCat.Tipo=CDICteCat.Categoria0
CDICteCat.Categoria0=CDICteCat.Categoria
CDICteCat.Categoria=CDICteCat.SubCategoria
CDICteCat.SubCategoria=CDICteCat.Aporta
CDICteCat.Aporta=CDICteCat.Clase
CDICteCat.Clase=CDICteCat.Sede
CDICteCat.Sede=CDICteCat.Actividad
CDICteCat.Actividad=CDICteCat.CargoCDI
CDICteCat.CargoCDI=Cte.Estatus
Cte.Estatus=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=Cte.Descripcion19
Cte.Descripcion19=Cte.RFC
Cte.RFC=Cte.CDIFacturarA
Cte.CDIFacturarA=CDICteCat.CDIFormaPago
CDICteCat.CDIFormaPago=CcdiCuota
CcdiCuota=CDICteCat.CDICuotaMembresia
CDICteCat.CDICuotaMembresia=CDICteCat.CDISubsidio
CDICteCat.CDISubsidio=CDICteCat.Descuento
CDICteCat.Descuento=FechaVigencia
FechaVigencia=Cte.CDICargosRecurrentes
Cte.CDICargosRecurrentes=Cte.CreditoEspecial
Cte.CreditoEspecial=CDICteCat.Formato
CDICteCat.Formato=CDICteCat.Situacion
CDICteCat.Situacion=CDICteCat.Recomendado
CDICteCat.Recomendado=Edad
Edad=CDICteCat.SitCxc
CDICteCat.SitCxc=Cte.Agente
Cte.Agente=CDICteCat.AgenteEspecifico
CDICteCat.AgenteEspecifico=(Fin)
















































[CDICteBitacora.CDICteBitacora.Observaciones]
Carpeta=CDICteBitacora
Clave=CDICteBitacora.Observaciones
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco





[CDICteBitacora.Columnas]
Observaciones=771













Fecha=122
Usuario=50

[CDIBITA2.CDICteBitacora.Observaciones]
Carpeta=CDIBITA2
Clave=CDICteBitacora.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50X3
ColorFondo=Blanco




































[Acciones.Expresion]
Nombre=Expresion
Boton=0
NombreDesplegar=Comentarios
GuardarConfirmar=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Antes=S
Visible=S






AntesExpresiones=Asigna(info.cliente,Cte:Cte.Cliente)<BR>Asigna(info.socio,Cte:Cte.Socio)<BR>FormaModal(<T>CDICteBitacora<T>)<BR>ActualizarForma





[CDICteBitacora.ListaEnCaptura]
(Inicio)=CDICteBitacora.Observaciones
CDICteBitacora.Observaciones=CDICteBitacora.Fecha
CDICteBitacora.Fecha=CDICteBitacora.Usuario
CDICteBitacora.Usuario=(Fin)























































[Acciones.detalle]
Nombre=detalle
Boton=0
NombreDesplegar=Detalle
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDICteBitacoraD
Activo=S
Visible=S

Antes=S
AntesExpresiones=asigna(Info.id,CDICteBitacora:CDICteBitacora.id)

[Ficha.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Membresia
Cte.Membresia=Cte.Socio
Cte.Socio=Cte.Parentesco
Cte.Parentesco=Cte.Grupo
Cte.Grupo=Cte.Familia
Cte.Familia=Cte.PersonalApellidoPaterno
Cte.PersonalApellidoPaterno=Cte.PersonalApellidoMaterno
Cte.PersonalApellidoMaterno=Cte.PersonalNombres
Cte.PersonalNombres=Cte.Alta
Cte.Alta=Cte.Sexo
Cte.Sexo=Cte.Nacionalidad
Cte.Nacionalidad=Cte.FechaNacimiento
Cte.FechaNacimiento=Edad
Edad=Cte.EstadoCivil
Cte.EstadoCivil=Cte.PersonalPais
Cte.PersonalPais=Cte.Descripcion12
Cte.Descripcion12=Cte.Descripcion11
Cte.Descripcion11=Cte.NIPCDI
Cte.NIPCDI=Cte.Fecha1
Cte.Fecha1=Cte.Fecha2
Cte.Fecha2=Cte.MismaDireccion
Cte.MismaDireccion=Cte.Ocupacion
Cte.Ocupacion=Cte.DireccionOtroSocio
Cte.DireccionOtroSocio=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=Cte.DireccionNumeroInt
Cte.DireccionNumeroInt=Cte.EntreCalles
Cte.EntreCalles=Cte.Plano
Cte.Plano=Cte.Delegacion
Cte.Delegacion=Cte.Colonia
Cte.Colonia=Cte.CodigoPostal
Cte.CodigoPostal=Cte.Poblacion
Cte.Poblacion=Cte.Estado
Cte.Estado=Cte.Pais
Cte.Pais=Cte.eMail1
Cte.eMail1=Cte.Telefonos
Cte.Telefonos=Cte.TelefonosLada
Cte.TelefonosLada=Cte.PersonalTelefonos
Cte.PersonalTelefonos=Cte.PersonalTelefonoMovil
Cte.PersonalTelefonoMovil=Cte.OtrosTelefonos
Cte.OtrosTelefonos=Cte.OtrasDirecciones
Cte.OtrasDirecciones=Cte.NumeroPasaporte
Cte.NumeroPasaporte=Cte.InstitucionEnSuPais
Cte.InstitucionEnSuPais=Cte.DireccionEnSuPais
Cte.DireccionEnSuPais=Cte.DireccionUltimoEmpleo
Cte.DireccionUltimoEmpleo=Cte.Descripcion19
Cte.Descripcion19=(Fin)












































[CDICteBitacora.ListaAcciones]
(Inicio)=Expresion
Expresion=detalle
detalle=(Fin)

























[CDICargRec.ListaEnCaptura]
(Inicio)=CDIArtCargosRecurrentes.Articulo
CDIArtCargosRecurrentes.Articulo=Descripcion1
Descripcion1=PrecioLista
PrecioLista=CDIArtCargosRecurrentes.Cantidad
CDIArtCargosRecurrentes.Cantidad=CDIArtCargosRecurrentes.FechaInicio
CDIArtCargosRecurrentes.FechaInicio=CDIArtCargosRecurrentes.FechaFin
CDIArtCargosRecurrentes.FechaFin=CDIArtCargosRecurrentes.casillero
CDIArtCargosRecurrentes.casillero=CDIArtCargosRecurrentes.Ubicacion
CDIArtCargosRecurrentes.Ubicacion=Automatico
Automatico=(Fin)






































[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=NombreSocio
NombreSocio=Cte.Membresia
Cte.Membresia=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQ_AVISO
BLOQ_AVISO=BLOQUEADO
BLOQUEADO=BAJA
BAJA=CONFIRMAR
CONFIRMAR=RECHAZADO
RECHAZADO=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=MapaTodos
MapaTodos=MapaSeleccion
MapaSeleccion=Campos
Campos=(Fin)

















[DatosMedicos1]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Medicos
Clave=DatosMedicos1
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteDatosM
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=$00D7D7D7
ListaEnCaptura=(Lista)


CondicionEdicion=usuario.grupotrabajo en (<T>Socios<T>)
Detalle=S
VistaMaestra=Cte
LlaveLocal=Cte.Cliente
LlaveMaestra=Cte.Cliente
CondicionVisible=Usuario.SoDatosMedicos
[DatosMedicos1.Cte.Cliente]
Carpeta=DatosMedicos1
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=$00D7D7D7

Editar=N
Efectos=[Negritas]
[DatosMedicos1.CDINombreSocio]
Carpeta=DatosMedicos1
Clave=CDINombreSocio
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=39
ColorFondo=$00D3D3D3
Efectos=[Negritas]

[DatosMedicos1.Cte.CDIMedEstatura]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedEstatura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosMedicos1.Cte.CDIMEdPeso]
Carpeta=DatosMedicos1
Clave=Cte.CDIMEdPeso
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=20
[DatosMedicos1.Cte.CDIMedTipoSangre]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedTipoSangre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco

Pegado=S
[DatosMedicos1.Cte.CDIMedDonador]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedDonador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00CDFEFC

[DatosMedicos1.Cte.CDIMedEnfermo]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedEnfermo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00CDFEFC

Pegado=S
[DatosMedicos1.Cte.CDIMedEnfermedad]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedEnfermedad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

Pegado=S
[DatosMedicos1.Cte.CDIMedAlergia]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedAlergia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00CDFEFC

[DatosMedicos1.Cte.CDIMedAlergias]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedAlergias
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

Pegado=S
[DatosMedicos1.Cte.CDIMedMedicamento]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedMedicamento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00CDFEFC

Pegado=S
[DatosMedicos1.Cte.CDIMedMedicamentos]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedMedicamentos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

Pegado=S
[DatosMedicos1.Cte.CDIMedAvisar]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedAvisar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=$00CDFEFC

[DatosMedicos1.Cte.CDIMedTelefono]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=$00CDFEFC

[DatosMedicos1.Cte.CDIMedCelular]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedCelular
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=29
ColorFondo=$00CDFEFC

Pegado=S
[DatosMedicos1.Cte.CDIMedNombreMedico]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedNombreMedico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco

[DatosMedicos1.Cte.CDIMedTeleMedico]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedTeleMedico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[DatosMedicos1.Cte.CDIMedCapacidades]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedCapacidades
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[DatosMedicos1.Cte.CDIMedCuidados]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedCuidados
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[DatosMedicos1.Cte.CDIMedRecomenda]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedRecomenda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

EspacioPrevio=S
[DatosMedicos1.Cte.CDIMedNoTarjeton]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedNoTarjeton
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosMedicos1.Cte.CDIMedVigencia]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedVigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosMedicos1.Cte.ParentescoAvisar]
Carpeta=DatosMedicos1
Clave=Cte.ParentescoAvisar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[DatosMedicos1.Cte.CDIMedAvisar2]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedAvisar2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[DatosMedicos1.Cte.ParentescoAvisar1]
Carpeta=DatosMedicos1
Clave=Cte.ParentescoAvisar1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[DatosMedicos1.Cte.CDIMedTelefono2]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedTelefono2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[DatosMedicos1.Cte.CDIMedCelular2]
Carpeta=DatosMedicos1
Clave=Cte.CDIMedCelular2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

































[DatosMedicos.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=CDINombreSocio
CDINombreSocio=Cte.CDIMedEstatura
Cte.CDIMedEstatura=Cte.CDIMEdPeso
Cte.CDIMEdPeso=Cte.CDIMedTipoSangre
Cte.CDIMedTipoSangre=Cte.CDIMedDonador
Cte.CDIMedDonador=Cte.CDIMedEnfermo
Cte.CDIMedEnfermo=Cte.CDIMedEnfermedad
Cte.CDIMedEnfermedad=Cte.CDIMedAlergia
Cte.CDIMedAlergia=Cte.CDIMedAlergias
Cte.CDIMedAlergias=Cte.CDIMedMedicamento
Cte.CDIMedMedicamento=Cte.CDIMedMedicamentos
Cte.CDIMedMedicamentos=Cte.CDIMedAvisar
Cte.CDIMedAvisar=Cte.CDIMedTelefono
Cte.CDIMedTelefono=Cte.CDIMedCelular
Cte.CDIMedCelular=Cte.CDIMedNombreMedico
Cte.CDIMedNombreMedico=Cte.CDIMedTeleMedico
Cte.CDIMedTeleMedico=Cte.CDIMedCapacidades
Cte.CDIMedCapacidades=Cte.CDIMedCuidados
Cte.CDIMedCuidados=Cte.CDIMedRecomenda
Cte.CDIMedRecomenda=Cte.CDIMedNoTarjeton
Cte.CDIMedNoTarjeton=Cte.CDIMedVigencia
Cte.CDIMedVigencia=(Fin)

[DatosMedicos1.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=CDINombreSocio
CDINombreSocio=Cte.CDIMedEstatura
Cte.CDIMedEstatura=Cte.CDIMEdPeso
Cte.CDIMEdPeso=Cte.CDIMedTipoSangre
Cte.CDIMedTipoSangre=Cte.CDIMedDonador
Cte.CDIMedDonador=Cte.CDIMedEnfermo
Cte.CDIMedEnfermo=Cte.CDIMedEnfermedad
Cte.CDIMedEnfermedad=Cte.CDIMedAlergia
Cte.CDIMedAlergia=Cte.CDIMedAlergias
Cte.CDIMedAlergias=Cte.CDIMedMedicamento
Cte.CDIMedMedicamento=Cte.CDIMedMedicamentos
Cte.CDIMedMedicamentos=Cte.CDIMedAvisar
Cte.CDIMedAvisar=Cte.CDIMedTelefono
Cte.CDIMedTelefono=Cte.CDIMedCelular
Cte.CDIMedCelular=Cte.CDIMedNombreMedico
Cte.CDIMedNombreMedico=Cte.CDIMedTeleMedico
Cte.CDIMedTeleMedico=Cte.CDIMedCapacidades
Cte.CDIMedCapacidades=Cte.CDIMedCuidados
Cte.CDIMedCuidados=Cte.CDIMedRecomenda
Cte.CDIMedRecomenda=Cte.CDIMedNoTarjeton
Cte.CDIMedNoTarjeton=Cte.CDIMedVigencia
Cte.CDIMedVigencia=Cte.ParentescoAvisar
Cte.ParentescoAvisar=Cte.CDIMedAvisar2
Cte.CDIMedAvisar2=Cte.ParentescoAvisar1
Cte.ParentescoAvisar1=Cte.CDIMedTelefono2
Cte.CDIMedTelefono2=Cte.CDIMedCelular2
Cte.CDIMedCelular2=(Fin)









[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=ReglaNeg
ReglaNeg=CDICargRec
CDICargRec=ReglaNegocio
ReglaNegocio=SociosCDI
SociosCDI=Economicos
Economicos=DatosMedicos
DatosMedicos=DatosMedicos1
DatosMedicos1=Preferencias
Preferencias=Transporte
Transporte=DatosBancarios
DatosBancarios=DatosAcademicos
DatosAcademicos=EstudioSocioeconomico
EstudioSocioeconomico=Foto
Foto=RolesCDI
RolesCDI=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=Situacion
Situacion=PlantillasOffice
PlantillasOffice=Eliminar
Eliminar=MovCte
MovCte=Cerrar
Cerrar=CteRelacion
CteRelacion=CteBonificacion
CteBonificacion=EspacioAsignacion
EspacioAsignacion=CteEvento
CteEvento=CteUEN
CteUEN=EnviarA
EnviarA=CteCto
CteCto=CamposExtras
CamposExtras=Agentes
Agentes=CtePedidoDef
CtePedidoDef=Conciliar
Conciliar=Tareas
Tareas=Propiedades
Propiedades=Evaluaciones
Evaluaciones=Anexos
Anexos=Politica
Politica=RefCta
RefCta=AgregarEvento
AgregarEvento=CteArt
CteArt=CapacidadPago
CapacidadPago=CteOtrosDatos
CteOtrosDatos=CteTel
CteTel=CtePension
CtePension=CteDepto
CteDepto=CteMapeoMov
CteMapeoMov=CteCFD
CteCFD=CteEntregaMercancia
CteEntregaMercancia=SugerirRFC
SugerirRFC=OtrosDatosCteRep
OtrosDatosCteRep=IntelisisSL
IntelisisSL=CteAcceso
CteAcceso=ListaPrecioEsp
ListaPrecioEsp=Bitacora
Bitacora=Informacion
Informacion=Tarjeton
Tarjeton=Cubos
Cubos=CDIRoles
CDIRoles=Mapa
Mapa=Mensajes
Mensajes=Movimientos
Movimientos=ListaNegra
ListaNegra=ListaPoliticos
ListaPoliticos=Historico
Historico=CteParecidos
CteParecidos=EditarNIPCDI
EditarNIPCDI=Documentacion
Documentacion=CDISocioTarjeta
CDISocioTarjeta=Navegador
Navegador=CteCat
CteCat=CteGrupo
CteGrupo=CteFam
CteFam=Cobrador
Cobrador=ExpedienteFamiliar
ExpedienteFamiliar=UsoServicio
UsoServicio=CteArtEmpaque
CteArtEmpaque=Otros1
Otros1=Otros2
Otros2=Otros3
Otros3=Otros4
Otros4=Otros5
Otros5=Otros6
Otros6=Otros7
Otros7=Otros8
Otros8=Otros9
Otros9=CDISocioTipo
CDISocioTipo=CDIEstadoCivil
CDIEstadoCivil=CDINacionalidad
CDINacionalidad=CDITipoSangre
CDITipoSangre=CDIInstitucionFin
CDIInstitucionFin=CDIInstitucionesAcademicas
CDIInstitucionesAcademicas=CDICargosAutos
CDICargosAutos=CDISectorComunitario
CDISectorComunitario=CDIArtCargosRecAutoma
CDIArtCargosRecAutoma=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=&Otros
&Otros=(Fin)

[Forma.PlantillasExcepciones]
(Inicio)=Cte:Cte.EnviarA
Cte:Cte.EnviarA=Cte:Cte.Estatus
Cte:Cte.Estatus=(Fin)
