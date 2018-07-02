
[Forma]
Clave=CDIFechaPlanesBajar
Icono=0
CarpetaPrincipal=CDIFechaPlanesBajar
Modulos=(Todos)
MovModulo=CDIFechaPlanesBajar
Nombre=Fecha Planes

ListaCarpetas=CDIFechaPlanesBajar
PosicionInicialIzquierda=250
PosicionInicialArriba=338
PosicionInicialAlturaCliente=92
PosicionInicialAncho=272
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
[CDIFechaPlanesBajar]
Estilo=Ficha
Clave=CDIFechaPlanesBajar
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIFechaPlanesBajar
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Centrado
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[CDIFechaPlanesBajar.CDIFechaPlanesBajar.FechaInicio]
Carpeta=CDIFechaPlanesBajar
Clave=CDIFechaPlanesBajar.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=12
[CDIFechaPlanesBajar.CDIFechaPlanesBajar.FechaFin]
Carpeta=CDIFechaPlanesBajar
Clave=CDIFechaPlanesBajar.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



Tamano=12

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
GuardarAntes=S

















NombreEnBoton=S
[CDIFechaPlanesBajar.ListaEnCaptura]
(Inicio)=CDIFechaPlanesBajar.FechaInicio
CDIFechaPlanesBajar.FechaInicio=CDIFechaPlanesBajar.FechaFin
CDIFechaPlanesBajar.FechaFin=(Fin)
