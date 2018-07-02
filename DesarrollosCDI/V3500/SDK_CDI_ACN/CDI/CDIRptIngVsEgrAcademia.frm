
[Forma]
Clave=CDIRptIngVsEgrAcademia
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Ingresos Vs Egresos
BarraAcciones=S
AccionesTamanoBoton=15x5

ListaAcciones=(Lista)
AccionesCentro=S
PosicionInicialAlturaCliente=99
PosicionInicialAncho=340
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=513
PosicionInicialArriba=309
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaExclusiva=S
VentanaEscCerrar=S
ExpresionesAlMostrar=Asigna(Info.CDIComite, <T>(TODOS)<T>)<BR>Asigna(Info.Programa, <T>(TODOS)<T>)
[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreDesplegar=Aceptar
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
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro

FichaNombres=Arriba
FichaAlineacion=Centrado
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
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[CEPrograma.Columnas]
0=92
1=210
2=74
3=70




[(Variables).ListaEnCaptura]
(Inicio)=Info.CDIComite
Info.CDIComite=Info.Programa
Info.Programa=(Fin)







[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
