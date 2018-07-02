
[Forma]
Clave=CDIFiltrosIntegracionPartidaPresComite
Icono=21
Modulos=(Todos)
Nombre=INTEGRACIÓN PARTIDA PRESUPUESTAL
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=596
PosicionInicialArriba=301
PosicionInicialAlturaCliente=128
PosicionInicialAncho=174
ListaAcciones=(Lista)
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

[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[(Variables).Info.ClavePresupuestal]
Carpeta=(Variables)
Clave=Info.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Lista.Columnas]
0=401
1=315


2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2
11=-2
12=-2
13=-2
14=-2
15=-2
16=-2
17=-2
18=-2
19=-2
20=-2
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
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
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
Visible=S



ListaAccionesMultiples=(Lista)

[Acciones.Preliminar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S



[(Variables).ListaEnCaptura]
(Inicio)=Info.ClavePresupuestal
Info.ClavePresupuestal=Info.Ejercicio
Info.Ejercicio=(Fin)




[Acciones.Preliminar.CDIRepIntegracionPartidaComite]
Nombre=CDIRepIntegracionPartidaComite
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIRepIntegracionPartidaComite
Activo=S
Visible=S





[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=CDIRepIntegracionPartidaComite
CDIRepIntegracionPartidaComite=(Fin)









[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
