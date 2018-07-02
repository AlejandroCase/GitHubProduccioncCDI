
[Forma]
Clave=vic_Rep_EstadoCuentasCxc
Icono=0
Modulos=(Todos)
Nombre=Estado de Cuentas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=482
PosicionInicialArriba=391
PosicionInicialAlturaCliente=208
PosicionInicialAncho=316
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
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
[Ficha.ListaEnCaptura]
(Inicio)=RepParam.InfoEmpresa
RepParam.InfoEmpresa=RepParam.InfoCliente
RepParam.InfoCliente=RepParam.InfoSucursal
RepParam.InfoSucursal=RepParam.InfoFechaD
RepParam.InfoFechaD=RepParam.InfoEstatus
RepParam.InfoEstatus=RepParam.InfoMoneda
RepParam.InfoMoneda=RepParam.InfoContrato
RepParam.InfoContrato=(Fin)

[Ficha.RepParam.InfoEmpresa]
Carpeta=Ficha
Clave=RepParam.InfoEmpresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.RepParam.InfoCliente]
Carpeta=Ficha
Clave=RepParam.InfoCliente
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.RepParam.InfoSucursal]
Carpeta=Ficha
Clave=RepParam.InfoSucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.RepParam.InfoFechaD]
Carpeta=Ficha
Clave=RepParam.InfoFechaD
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.RepParam.InfoEstatus]
Carpeta=Ficha
Clave=RepParam.InfoEstatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.RepParam.InfoMoneda]
Carpeta=Ficha
Clave=RepParam.InfoMoneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.RepParam.InfoContrato]
Carpeta=Ficha
Clave=RepParam.InfoContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Cliente=117
Nombre=293
RFC=107
0=69
1=-2
Empresa=71
2=72
3=-2
4=81
5=85
6=156
7=199
8=54

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S

ListaAccionesMultiples=(Lista)
GuardarAntes=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S




[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=Browser(General.RSReportASPX+<T>/ReportesInmobiliaria/CXCEstadoCuentas&Estacion=<T> + EstacionTrabajo,<T>Estado de Cuentas<T>)
Activo=S
Visible=S




[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S



[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Aceptar
Aceptar=(Fin)







[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
