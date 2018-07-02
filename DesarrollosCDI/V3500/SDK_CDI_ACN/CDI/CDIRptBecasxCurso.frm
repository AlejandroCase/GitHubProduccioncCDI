
[Forma]
Clave=CDIRptBecasxCurso
Icono=0
Modulos=(Todos)
Nombre=Becas por Curso
MovModulo=(Todos)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaExclusiva=S

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
AccionesTamanoBoton=15x5
PosicionInicialIzquierda=557
PosicionInicialArriba=294
PosicionInicialAlturaCliente=142
PosicionInicialAncho=252
BarraAcciones=S
ListaAcciones=(Lista)
AccionesCentro=S
ExpresionesAlMostrar=Asigna(Info.CDIComite, <T>(TODOS)<T>)<BR>Asigna(Info.Programa, <T>(TODOS)<T>)<BR>Asigna(Info.CDIPlan, <T>(TODOS)<T>)
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
CarpetaVisible=S
PermiteEditar=S
FichaEspacioEntreLineas=9
FichaEspacioNombres=41
FichaEspacioNombresAuto=S
FichaColorFondo=Negro
FichaAlineacionDerecha=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
ListaEnCaptura=(Lista)


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

[(Variables).ListaEnCaptura]
(Inicio)=Info.CDIComite
Info.CDIComite=Info.Programa
Info.Programa=Info.CDIPlan
Info.CDIPlan=(Fin)

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








[Lista.Columnas]
0=135
1=192





[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
