
[Forma]
Clave=CDIMembresiasAltaBebe
Icono=0
Modulos=(Todos)
Nombre=Cumpleaños de Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIMembresiasAltaBebe
CarpetaPrincipal=CDIMembresiasAltaBebe
PosicionInicialIzquierda=433
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIMembresiasAltaBebe]
Estilo=Hoja
Clave=CDIMembresiasAltaBebe
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMembresiasAltaBebe
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
BusquedaRapidaControles=S

FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CDIMembresiasAltaBebe.Fecha
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FiltroFechasDefault=Hoy
[CDIMembresiasAltaBebe.CDIMembresiasAltaBebe.Membresia]
Carpeta=CDIMembresiasAltaBebe
Clave=CDIMembresiasAltaBebe.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMembresiasAltaBebe.CDIMembresiasAltaBebe.Socio]
Carpeta=CDIMembresiasAltaBebe
Clave=CDIMembresiasAltaBebe.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIMembresiasAltaBebe.CDIMembresiasAltaBebe.FechaNacimiento]
Carpeta=CDIMembresiasAltaBebe
Clave=CDIMembresiasAltaBebe.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMembresiasAltaBebe.CDIMembresiasAltaBebe.Edad]
Carpeta=CDIMembresiasAltaBebe
Clave=CDIMembresiasAltaBebe.Edad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMembresiasAltaBebe.CDIMembresiasAltaBebe.Fecha]
Carpeta=CDIMembresiasAltaBebe
Clave=CDIMembresiasAltaBebe.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMembresiasAltaBebe.Columnas]
Membresia=96
Socio=85
FechaNacimiento=103
Edad=71
Fecha=94

[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



EspacioPrevio=S









[CDIMembresiasAltaBebe.ListaEnCaptura]
(Inicio)=CDIMembresiasAltaBebe.Membresia
CDIMembresiasAltaBebe.Membresia=CDIMembresiasAltaBebe.Socio
CDIMembresiasAltaBebe.Socio=CDIMembresiasAltaBebe.FechaNacimiento
CDIMembresiasAltaBebe.FechaNacimiento=CDIMembresiasAltaBebe.Edad
CDIMembresiasAltaBebe.Edad=CDIMembresiasAltaBebe.Fecha
CDIMembresiasAltaBebe.Fecha=(Fin)






[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S



[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=Cerrar
Cerrar=Presentacion preliminar
Presentacion preliminar=(Fin)
