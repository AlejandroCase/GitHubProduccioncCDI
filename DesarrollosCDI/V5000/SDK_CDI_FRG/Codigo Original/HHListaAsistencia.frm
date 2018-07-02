
[Forma]
Clave=HHListaAsistencia
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Lista de Asistencia
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraAcciones=S
AccionesTamanoBoton=15x5

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
AccionesCentro=S
AccionesDivision=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=524
PosicionInicialArriba=381
PosicionInicialAlturaCliente=163
PosicionInicialAncho=231
ExpresionesAlMostrar=Asigna(Info.Materia, <T>(TODOS)<T>)<BR>Asigna(Info.CEGrupo, <T>(TODOS)<T>)
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

[(Variables).Info.Programa]
Carpeta=(Variables)
Clave=Info.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Plan]
Carpeta=(Variables)
Clave=Info.Plan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Materia]
Carpeta=(Variables)
Clave=Info.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S




[CEPrograma.Columnas]
0=92
1=210
2=74
3=70

[CEPlan.Columnas]
0=102
1=490

[Lista.Columnas]
0=233




[(Variables).ListaEnCaptura]
(Inicio)=Info.Programa
Info.Programa=Info.Plan
Info.Plan=Info.Materia
Info.Materia=Info.CEGrupo
Info.CEGrupo=(Fin)

[(Variables).Info.CEGrupo]
Carpeta=(Variables)
Clave=Info.CEGrupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco













[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
