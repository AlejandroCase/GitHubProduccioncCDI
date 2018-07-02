
[Forma]
Clave=CDIRepCasilleros
Icono=0
Modulos=(Todos)
Nombre=<T>Casilleros<T>

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=550
PosicionInicialArriba=392
PosicionInicialAlturaCliente=197
PosicionInicialAncho=247
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
BarraAcciones=S
AccionesCentro=S
[(Variables)]
Estilo=Ficha
Clave=(Variables)
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[(Variables).Info.CDIMembresia]
Carpeta=(Variables)
Clave=Info.CDIMembresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDISocio]
Carpeta=(Variables)
Clave=Info.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[(Variables).ListaEnCaptura]
(Inicio)=Info.CDIMembresia
Info.CDIMembresia=Info.CDISocio
Info.CDISocio=Info.CDIUbicacion
Info.CDIUbicacion=Info.CDISeccion
Info.CDISeccion=Info.CDICasillero
Info.CDICasillero=(Fin)

[(Variables).Info.CDIUbicacion]
Carpeta=(Variables)
Clave=Info.CDIUbicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDISeccion]
Carpeta=(Variables)
Clave=Info.CDISeccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDICasillero]
Carpeta=(Variables)
Clave=Info.CDICasillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

EnBarraAcciones=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S









EnBarraAcciones=S










[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
