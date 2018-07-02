
[Forma]
Clave=CDIFiltrosPagosNoRecuperables
Icono=35
Modulos=(Todos)

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialAlturaCliente=100
PosicionInicialAncho=341
PosicionInicialIzquierda=469
PosicionInicialArriba=336
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Nombre=Filtros Pagos No Recuperables
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

[(Variables).Info.Periodo]
Carpeta=(Variables)
Clave=Info.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco


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
Boton=88
NombreEnBoton=S
NombreDesplegar=&Preliminar Desglosado
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

[Acciones.Preliminar.Reporte]
Nombre=Reporte
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIRepPagosNoRecDesglosado
Activo=S
Visible=S


[Acciones.PreeliminarTotales]
Nombre=PreeliminarTotales
Boton=53
NombreEnBoton=S
NombreDesplegar=&Preliminar Totales
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S



ListaAccionesMultiples=(Lista)

EspacioPrevio=S
[Acciones.PreeliminarTotales.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S










[(Variables).ListaEnCaptura]
(Inicio)=Info.Periodo
Info.Periodo=Info.Ejercicio
Info.Ejercicio=(Fin)


















[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Reporte
Reporte=(Fin)




































[Acciones.PreeliminarTotales.Reportes]
Nombre=Reportes
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIRepPagosNoRecTotales
Activo=S
Visible=S

[Acciones.PreeliminarTotales.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Reportes
Reportes=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=PreeliminarTotales
PreeliminarTotales=(Fin)
