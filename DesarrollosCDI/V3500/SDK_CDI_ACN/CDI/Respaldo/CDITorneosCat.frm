
[Forma]
Clave=CDITorneosCat
Icono=0
Modulos=(Todos)
Nombre=CDITorneosCat
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDITorneosCat
CarpetaPrincipal=CDITorneosCat
PosicionInicialIzquierda=304
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=699
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar Cambios
[CDITorneosCat]
Estilo=Hoja
Clave=CDITorneosCat
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITorneosCat
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
ListaEnCaptura=(Lista)

PermiteEditar=S

[CDITorneosCat.CDITorneosCat.Nombre]
Carpeta=CDITorneosCat
Clave=CDITorneosCat.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDITorneosCat.CDITorneosCat.FechaInicio]
Carpeta=CDITorneosCat
Clave=CDITorneosCat.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneosCat.CDITorneosCat.FechaFin]
Carpeta=CDITorneosCat
Clave=CDITorneosCat.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneosCat.Columnas]
Nombre=124
FechaInicio=94
FechaFin=94

Deporte=95
RamaDepor=60
Fuerza=94
NoJornadas=74
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S




[CDITorneosCat.CDITorneosCat.Deporte]
Carpeta=CDITorneosCat
Clave=CDITorneosCat.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDITorneosCat.CDITorneosCat.RamaDepor]
Carpeta=CDITorneosCat
Clave=CDITorneosCat.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDITorneosCat.CDITorneosCat.Fuerza]
Carpeta=CDITorneosCat
Clave=CDITorneosCat.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDITorneosCat.CDITorneosCat.NoJornadas]
Carpeta=CDITorneosCat
Clave=CDITorneosCat.NoJornadas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneosCat.ListaEnCaptura]
(Inicio)=CDITorneosCat.Deporte
CDITorneosCat.Deporte=CDITorneosCat.Nombre
CDITorneosCat.Nombre=CDITorneosCat.FechaInicio
CDITorneosCat.FechaInicio=CDITorneosCat.FechaFin
CDITorneosCat.FechaFin=CDITorneosCat.RamaDepor
CDITorneosCat.RamaDepor=CDITorneosCat.Fuerza
CDITorneosCat.Fuerza=CDITorneosCat.NoJornadas
CDITorneosCat.NoJornadas=(Fin)
