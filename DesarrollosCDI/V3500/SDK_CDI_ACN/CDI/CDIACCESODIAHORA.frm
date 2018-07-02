
[Forma]
Clave=CDIACCESODIAHORA
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=ACCESO DIA Y HORA
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=99
PosicionInicialAncho=468
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
CarpetaVisible=S

ListaEnCaptura=(Lista)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreEnBoton=S
NombreDesplegar=&Preliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S







[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[(Variables).ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Info.CDIHoraD
Info.CDIHoraD=Info.CDIHoraA
Info.CDIHoraA=(Fin)

[(Variables).Info.CDIHoraD]
Carpeta=(Variables)
Clave=Info.CDIHoraD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIHoraA]
Carpeta=(Variables)
Clave=Info.CDIHoraA
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
