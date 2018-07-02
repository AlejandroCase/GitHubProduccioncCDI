
[Forma]
Clave=CDICEAsistencia
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Lista de Asistencias
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
AccionesTamanoBoton=15x5

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
BarraAcciones=S
PosicionInicialIzquierda=554
PosicionInicialArriba=264
PosicionInicialAlturaCliente=201
PosicionInicialAncho=258
AccionesCentro=S
AccionesDivision=S
ListaAcciones=(Lista)
ExpresionesAlMostrar=Asigna(Info.CDIPago, <T>(Todos)<T>)
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

[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[(Variables).Info.CEGrupo]
Carpeta=(Variables)
Clave=Info.CEGrupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CEPrograma.Columnas]
0=92
1=210
2=74
3=70

[Lista.Columnas]
0=135
1=192


[(Variables).Info.CDIPlan]
Carpeta=(Variables)
Clave=Info.CDIPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CEPlan.Columnas]
0=102
1=490

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
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S





















[(Variables).ListaEnCaptura]
(Inicio)=Info.Programa
Info.Programa=Info.Proyecto
Info.Proyecto=Info.CDIPlan
Info.CDIPlan=Info.CEGrupo
Info.CEGrupo=Info.CDIPago
Info.CDIPago=(Fin)

[(Variables).Info.CDIPago]
Carpeta=(Variables)
Clave=Info.CDIPago
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
