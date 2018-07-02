
[Forma]
Clave=CDIEspecificarPrograma
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Programa
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
PosicionInicialIzquierda=561
PosicionInicialArriba=312
PosicionInicialAlturaCliente=106
PosicionInicialAncho=243
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




[CEPrograma.Columnas]
0=92
1=210
2=74
3=70


[(Variables).ListaEnCaptura]
(Inicio)=Info.Programa
Info.Programa=Info.Proyecto
Info.Proyecto=(Fin)

[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[Lista.Columnas]
0=135
1=192















[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
