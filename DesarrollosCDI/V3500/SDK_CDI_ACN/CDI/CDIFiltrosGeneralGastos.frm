
[Forma]
Clave=CDIFiltrosGeneralGastos
Icono=44
BarraHerramientas=S
Modulos=(Todos)
Nombre=Filtros General de Gastos
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialAlturaCliente=140
PosicionInicialAncho=242
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=519
PosicionInicialArriba=316
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
CarpetaVisible=S
ListaEnCaptura=(Lista)


[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Periodo]
Carpeta=(Variables)
Clave=Info.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).ListaEnCaptura]
(Inicio)=Info.Proyecto
Info.Proyecto=Info.Periodo
Info.Periodo=Info.Ejercicio
Info.Ejercicio=(Fin)

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

[Acciones.Preliminar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.Reporte]
Nombre=Reporte
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIRepGeneralGastos
Activo=S
Visible=S

ConCondicion=S
EjecucionCondicion=(Info.Ejercicio >  0) y (Info.Periodo > 0)
EjecucionMensaje=<T>Ejercicio o Periodo Incorrectos<T>
EjecucionConError=S
[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

[Lista.Columnas]
0=135
1=192






















[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Reporte
Reporte=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
