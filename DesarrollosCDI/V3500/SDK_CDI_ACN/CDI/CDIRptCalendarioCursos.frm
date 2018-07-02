
[Forma]
Clave=CDIRptCalendarioCursos
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Calendario

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=520
PosicionInicialArriba=282
PosicionInicialAlturaCliente=168
PosicionInicialAncho=326
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
BarraAcciones=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
AccionesIzq=S
ExpresionesAlMostrar=Asigna(Info.CDIComite, <T>(TODOS)<T>)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PermiteEditar=S
FichaEspacioEntreLineas=4
FichaEspacioNombres=0
FichaColorFondo=Negro

[(Variables).Info.CDIComite]
Carpeta=(Variables)
Clave=Info.CDIComite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

EspacioPrevio=N
[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


EspacioPrevio=N
[Lista.Columnas]
0=135
1=192
UEN=44
Nombre=269

[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S
EnBarraAcciones=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S































[(Variables).Info.CDIPlan]
Carpeta=(Variables)
Clave=Info.CDIPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[(Variables).Info.CDICoordinacion]
Carpeta=(Variables)
Clave=Info.CDICoordinacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






[Coordinacion.Columnas]
Coordinacion=304

[(Variables).ListaEnCaptura]
(Inicio)=Info.CDIComite
Info.CDIComite=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Info.CDIPlan
Info.CDIPlan=Info.CDICoordinacion
Info.CDICoordinacion=(Fin)







[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
