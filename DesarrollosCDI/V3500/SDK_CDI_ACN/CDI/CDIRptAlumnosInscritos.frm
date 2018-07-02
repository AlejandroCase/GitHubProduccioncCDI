
[Forma]
Clave=CDIRptAlumnosInscritos
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Alumnos Inscritos
BarraAcciones=S
AccionesTamanoBoton=15x5
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=560
PosicionInicialArriba=269
PosicionInicialAlturaCliente=191
PosicionInicialAncho=246
VentanaExclusiva=S
VentanaEscCerrar=S
ExpresionesAlMostrar=Asigna(Info.CDIComite, <T>(TODOS)<T>)<BR>Asigna(Info.Programa, <T>(TODOS)<T>)<BR>Asigna(Info.CDIPlan, <T>(TODOS)<T>)<BR>Asigna(Info.CDIMateria, <T>(TODOS)<T>)<BR>Asigna(Info.CDIGrupo, <T>(TODOS)<T>)
AccionesCentro=S
ListaAcciones=(Lista)
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

[(Variables).Info.CDIComite]
Carpeta=(Variables)
Clave=Info.CDIComite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Programa]
Carpeta=(Variables)
Clave=Info.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIPlan]
Carpeta=(Variables)
Clave=Info.CDIPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIMateria]
Carpeta=(Variables)
Clave=Info.CDIMateria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIGrupo]
Carpeta=(Variables)
Clave=Info.CDIGrupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Lista.Columnas]
0=135
1=192

[CEPrograma.Columnas]
0=92
1=210
2=74
3=70

[CEPlan.Columnas]
0=102
1=490

[CEMateria.Columnas]
0=91
1=333

[CEGrupoLista.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2

[(Variables).ListaEnCaptura]
(Inicio)=Info.CDIComite
Info.CDIComite=Info.Programa
Info.Programa=Info.CDIPlan
Info.CDIPlan=Info.CDIMateria
Info.CDIMateria=Info.CDIGrupo
Info.CDIGrupo=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S



















[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
