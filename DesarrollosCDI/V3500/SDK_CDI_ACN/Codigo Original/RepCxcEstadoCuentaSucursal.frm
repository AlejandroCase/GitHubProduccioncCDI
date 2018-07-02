
[Forma]
Clave=RepCxcEstadoCuentaSucursal
Icono=0
Modulos=(Todos)
Nombre=RepCxcEstadoCuentaSucursal

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=242
PosicionInicialAncho=325
PosicionInicialIzquierda=477
PosicionInicialArriba=261
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
[Ficha]
Estilo=Ficha
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=RepParam
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
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


PestanaOtroNombre=S
PestanaNombre=Estado De Cuentas
PermiteEditar=S
FiltroGeneral=RepParam.Estacion = {EstacionTrabajo}
[Ficha.RepParam.InfoFechaD]
Carpeta=Ficha
Clave=RepParam.InfoFechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


Tamano=20

[Ficha.RepParam.InfoSucursal]
Carpeta=Ficha
Clave=RepParam.InfoSucursal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco


Tamano=20
[Ficha.RepParam.InfoEstatusEspecifico]
Carpeta=Ficha
Clave=RepParam.InfoEstatusEspecifico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Acciones.RepPan]
Nombre=RepPan
Boton=6
NombreEnBoton=S
NombreDesplegar=&Preliminar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=RepCxcEstadoCuentaSucursal
Activo=S
Visible=S










Multiple=S
ListaAccionesMultiples=Preliminar
GuardarAntes=S
[Ficha.RepParam.InfoMoneda]
Carpeta=Ficha
Clave=RepParam.InfoMoneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreEnBoton=S
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S







[Ficha.RepParam.RepTitulo]
Carpeta=Ficha
Clave=RepParam.RepTitulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco


[Lista.Columnas]
Cliente=117
Nombre=293
RFC=107



























0=66
1=56
2=86
3=-2
[Acciones.RepPan.Preliminar]
Nombre=Preliminar
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CxcEstadoCuenta3
Activo=S
Visible=S



























[Ficha.RepParam.InfoClienteEnviarA]
Carpeta=Ficha
Clave=RepParam.InfoClienteEnviarA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco



Tamano=20












[Acciones.Guardar]
Nombre=Guardar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S





[Ficha.RepParam.InfoCliente]
Carpeta=Ficha
Clave=RepParam.InfoCliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco










[Ficha.ListaEnCaptura]
(Inicio)=RepParam.InfoCliente
RepParam.InfoCliente=RepParam.InfoSucursal
RepParam.InfoSucursal=RepParam.InfoFechaD
RepParam.InfoFechaD=RepParam.InfoClienteEnviarA
RepParam.InfoClienteEnviarA=RepParam.InfoEstatusEspecifico
RepParam.InfoEstatusEspecifico=RepParam.InfoMoneda
RepParam.InfoMoneda=RepParam.RepTitulo
RepParam.RepTitulo=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Imprimir
Imprimir=RepPan
RepPan=(Fin)
