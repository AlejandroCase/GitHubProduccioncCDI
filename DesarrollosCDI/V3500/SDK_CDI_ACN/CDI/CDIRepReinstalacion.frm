
[Forma]
Clave=CDIRepReinstalacion
Icono=0
Modulos=(Todos)
Nombre=<T>Reinstalacion de Socios<T>

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=441
PosicionInicialArriba=287
PosicionInicialAlturaCliente=105
PosicionInicialAncho=423
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.CDISocioListaD, SQL(<T>SELECT MIN(Socio) FROM Cte WHERE CDISocio = :tSocio<T>, 1))<BR>Asigna(Info.CDISocioListaA, SQL(<T>SELECT MAX(Socio) FROM Cte WHERE CDISocio = :tSocio<T>, 1))
[(Variables)]
Estilo=Ficha
PestanaOtroNombre=S
PestanaNombre=<T>Bajas y Reinstalaciones<T>
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

[Acciones.Imprimir]
Nombre=Imprimir
Boton=46
NombreEnBoton=S
NombreDesplegar=&Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
Visible=S


Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Preliminar]
Nombre=Preliminar
Boton=68
NombreEnBoton=S
NombreDesplegar=&Preliminar
EnBarraHerramientas=S
Activo=S
Visible=S








Multiple=S
ListaAccionesMultiples=(Lista)
[(Variables).Info.Fecha]
Carpeta=(Variables)
Clave=Info.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[Lista.Columnas]
0=108
1=286

Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76




[(Variables).Info.CDISocioListaD]
Carpeta=(Variables)
Clave=Info.CDISocioListaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDISocioListaA]
Carpeta=(Variables)
Clave=Info.CDISocioListaA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[(Variables).ListaEnCaptura]
(Inicio)=Info.CDISocioListaD
Info.CDISocioListaD=Info.CDISocioListaA
Info.CDISocioListaA=Info.Fecha
Info.Fecha=(Fin)




[Acciones.Preliminar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.Preliminar]
Nombre=Preliminar
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIRepReinstalaciones
Activo=S
Visible=S

[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Preliminar
Preliminar=(Fin)


[Acciones.Imprimir.Asigna]
Nombre=Asigna
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Imprimir.Imprimir]
Nombre=Imprimir
Boton=0
TipoAccion=Reportes Impresora
ClaveAccion=CDIRepReinstalaciones
Activo=S
Visible=S

[Acciones.Imprimir.ListaAccionesMultiples]
(Inicio)=Asigna
Asigna=Imprimir
Imprimir=(Fin)





























[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=(Fin)
