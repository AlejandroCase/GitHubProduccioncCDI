
[Forma]
Clave=CDIFiltrosIntegracionPartidaPres
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
PosicionInicialIzquierda=481
PosicionInicialArriba=322
PosicionInicialAlturaCliente=128
PosicionInicialAncho=318
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

[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Lista.Columnas]
0=135
1=192


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

[Acciones.Preliminar.CDIRepIntegracionPartida]
Nombre=CDIRepIntegracionPartida
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIRepIntegracionPartida
Activo=S
Visible=S


[(Variables).ListaEnCaptura]
(Inicio)=Info.ClavePresupuestal
Info.ClavePresupuestal=Info.Proyecto
Info.Proyecto=Info.Ejercicio
Info.Ejercicio=(Fin)


[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=CDIRepIntegracionPartida
CDIRepIntegracionPartida=(Fin)

























[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
