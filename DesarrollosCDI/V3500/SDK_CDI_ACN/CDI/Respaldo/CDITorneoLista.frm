
[Forma]
Clave=CDITorneoLista
Icono=0
Modulos=(Todos)
Nombre=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDITorneoLista
CarpetaPrincipal=CDITorneoLista
PosicionInicialIzquierda=303
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=760
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
[CDITorneoLista]
Estilo=Hoja
Clave=CDITorneoLista
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





[CDITorneoLista.Columnas]
Nombre=124
FechaInicio=94
FechaFin=94




Deporte=184
RamaDepor=60
Fuerza=94
NoJornadas=64
[CDITorneoLista.CDITorneosCat.Nombre]
Carpeta=CDITorneoLista
Clave=CDITorneosCat.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






[CDITorneoLista.ListaEnCaptura]
(Inicio)=CDITorneosCat.Nombre
CDITorneosCat.Nombre=CDITorneosCat.Deporte
CDITorneosCat.Deporte=CDITorneosCat.RamaDepor
CDITorneosCat.RamaDepor=CDITorneosCat.Fuerza
CDITorneosCat.Fuerza=CDITorneosCat.FechaInicio
CDITorneosCat.FechaInicio=CDITorneosCat.FechaFin
CDITorneosCat.FechaFin=CDITorneosCat.NoJornadas
CDITorneosCat.NoJornadas=(Fin)

[CDITorneoLista.CDITorneosCat.Deporte]
Carpeta=CDITorneoLista
Clave=CDITorneosCat.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDITorneoLista.CDITorneosCat.RamaDepor]
Carpeta=CDITorneoLista
Clave=CDITorneosCat.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDITorneoLista.CDITorneosCat.Fuerza]
Carpeta=CDITorneoLista
Clave=CDITorneosCat.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDITorneoLista.CDITorneosCat.FechaInicio]
Carpeta=CDITorneoLista
Clave=CDITorneosCat.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoLista.CDITorneosCat.FechaFin]
Carpeta=CDITorneoLista
Clave=CDITorneosCat.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoLista.CDITorneosCat.NoJornadas]
Carpeta=CDITorneoLista
Clave=CDITorneosCat.NoJornadas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
