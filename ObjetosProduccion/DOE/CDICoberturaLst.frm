
[Forma]
Clave=CDICoberturaLst
Icono=0
Modulos=(Todos)
Nombre=CDI Cobertura
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICobertura
CarpetaPrincipal=CDICobertura
PosicionInicialIzquierda=222
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=922
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDICobertura]
Estilo=Hoja
Clave=CDICobertura
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
HojaVistaOmision=Autom�tica
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

[CDICobertura.CDICobertura.Articulo]
Carpeta=CDICobertura
Clave=CDICobertura.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICobertura.Columnas]
Clave=101
Descripcion=304
Articulo=124

FechaInicio=71
FechaFin=69

Periodo=79
MesInicial=64
MesFinal=64
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

[Acciones.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=23
NombreDesplegar=Seleccionar/Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

EspacioPrevio=S



























[CDICobertura.ListaEnCaptura]
(Inicio)=CDICobertura.Clave
CDICobertura.Clave=CDICobertura.Descripcion
CDICobertura.Descripcion=CDICobertura.Articulo
CDICobertura.Articulo=CDICobertura.Periodo
CDICobertura.Periodo=CDICobertura.MesInicial
CDICobertura.MesInicial=CDICobertura.MesFinal
CDICobertura.MesFinal=CDICobertura.FechaInicio
CDICobertura.FechaInicio=CDICobertura.FechaFin
CDICobertura.FechaFin=(Fin)

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











[Forma.ListaAcciones]
(Inicio)=Seleccionar/Aceptar
Seleccionar/Aceptar=Cerrar
Cerrar=(Fin)