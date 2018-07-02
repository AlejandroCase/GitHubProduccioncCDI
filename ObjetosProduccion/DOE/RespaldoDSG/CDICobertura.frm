
[Forma]
Clave=CDICobertura
Icono=0
Modulos=(Todos)
Nombre=CDI Coberturas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICobertura
CarpetaPrincipal=CDICobertura
PosicionInicialIzquierda=73
PosicionInicialArriba=181
PosicionInicialAlturaCliente=367
PosicionInicialAncho=1220
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDICobertura]
Estilo=Hoja
Clave=CDICobertura
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICobertura
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

[CDICobertura.CDICobertura.Clave]
Carpeta=CDICobertura
Clave=CDICobertura.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICobertura.CDICobertura.Descripcion]
Carpeta=CDICobertura
Clave=CDICobertura.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDICobertura.CDICobertura.Estatus]
Carpeta=CDICobertura
Clave=CDICobertura.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICobertura.Columnas]
Clave=110
Descripcion=304
Importe=64
Porcentaje=64
Estatus=43

Articulo=92

FechaInicio=65
FechaFin=65
Periodo=86
MesInicial=79
MesFinal=70
NoPeriodo=53
DescripcionArt=141
[CDICobertura.CDICobertura.Articulo]
Carpeta=CDICobertura
Clave=CDICobertura.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
Articulo=131
Descripcion1=244


[CDICobertura.CDICobertura.FechaInicio]
Carpeta=CDICobertura
Clave=CDICobertura.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICobertura.CDICobertura.FechaFin]
Carpeta=CDICobertura
Clave=CDICobertura.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S













[CDICobertura.CDICobertura.Periodo]
Carpeta=CDICobertura
Clave=CDICobertura.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco











[CDICobertura.CDICobertura.MesInicial]
Carpeta=CDICobertura
Clave=CDICobertura.MesInicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICobertura.CDICobertura.MesFinal]
Carpeta=CDICobertura
Clave=CDICobertura.MesFinal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco































[CDICobertura.CDICobertura.NoPeriodo]
Carpeta=CDICobertura
Clave=CDICobertura.NoPeriodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

















[CDICobertura.CDICobertura.Importe]
Carpeta=CDICobertura
Clave=CDICobertura.Importe
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

















Editar=S



[CDICobertura.ListaEnCaptura]
(Inicio)=CDICobertura.Clave
CDICobertura.Clave=CDICobertura.Descripcion
CDICobertura.Descripcion=CDICobertura.Articulo
CDICobertura.Articulo=CDICobertura.DescripcionArt
CDICobertura.DescripcionArt=CDICobertura.Importe
CDICobertura.Importe=CDICobertura.Periodo
CDICobertura.Periodo=CDICobertura.NoPeriodo
CDICobertura.NoPeriodo=CDICobertura.MesInicial
CDICobertura.MesInicial=CDICobertura.MesFinal
CDICobertura.MesFinal=CDICobertura.FechaInicio
CDICobertura.FechaInicio=CDICobertura.FechaFin
CDICobertura.FechaFin=CDICobertura.Estatus
CDICobertura.Estatus=(Fin)

[CDICobertura.CDICobertura.DescripcionArt]
Carpeta=CDICobertura
Clave=CDICobertura.DescripcionArt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
