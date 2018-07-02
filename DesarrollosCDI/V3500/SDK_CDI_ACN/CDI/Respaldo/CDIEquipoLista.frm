
[Forma]
Clave=CDIEquipoLista
Icono=0
Modulos=(Todos)
Nombre=CDIEquipoLista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIEquipoLista
CarpetaPrincipal=CDIEquipoLista
PosicionInicialIzquierda=434
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=475
[CDIEquipoLista]
Estilo=Hoja
Clave=CDIEquipoLista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEquipo
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

[CDIEquipoLista.CDIEquipo.Nombre]
Carpeta=CDIEquipoLista
Clave=CDIEquipo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIEquipoLista.CDIEquipo.Deporte]
Carpeta=CDIEquipoLista
Clave=CDIEquipo.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIEquipoLista.CDIEquipo.RamaDepor]
Carpeta=CDIEquipoLista
Clave=CDIEquipo.RamaDepor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[CDIEquipoLista.CDIEquipo.Fuerza]
Carpeta=CDIEquipoLista
Clave=CDIEquipo.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIEquipoLista.CDIEquipo.Torneo]
Carpeta=CDIEquipoLista
Clave=CDIEquipo.Torneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIEquipoLista.Columnas]
Nombre=133
Deporte=62
RamaDepor=67
Fuerza=94
Torneo=76



[CDIEquipoLista.ListaEnCaptura]
(Inicio)=CDIEquipo.Nombre
CDIEquipo.Nombre=CDIEquipo.Deporte
CDIEquipo.Deporte=CDIEquipo.RamaDepor
CDIEquipo.RamaDepor=CDIEquipo.Fuerza
CDIEquipo.Fuerza=CDIEquipo.Torneo
CDIEquipo.Torneo=(Fin)
