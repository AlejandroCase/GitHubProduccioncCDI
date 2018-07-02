
[Forma]
Clave=CDITorneosEquipos
Icono=0
Modulos=(Todos)
Nombre=CDITorneosEquipos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDITorneosEquipos
CarpetaPrincipal=CDITorneosEquipos
PosicionInicialIzquierda=449
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=343
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Variables Asignar
[CDITorneosEquipos]
Estilo=Hoja
Clave=CDITorneosEquipos
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITorneosEquipos
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


[CDITorneosEquipos.CDITorneosEquipos.Equipo]
Carpeta=CDITorneosEquipos
Clave=CDITorneosEquipos.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDITorneosEquipos.Columnas]
Torneo=124
Equipo=304


[Acciones.Variables Asignar]
Nombre=Variables Asignar
Boton=23
NombreDesplegar=Variables Asignar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar/Aceptar
Activo=S
Visible=S

[CDITorneosEquipos.ListaEnCaptura]
(Inicio)=CDITorneosEquipos.Equipo
CDITorneosEquipos.Equipo=CDITorneosEquipos.Torneo
CDITorneosEquipos.Torneo=(Fin)

[CDITorneosEquipos.CDITorneosEquipos.Torneo]
Carpeta=CDITorneosEquipos
Clave=CDITorneosEquipos.Torneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
