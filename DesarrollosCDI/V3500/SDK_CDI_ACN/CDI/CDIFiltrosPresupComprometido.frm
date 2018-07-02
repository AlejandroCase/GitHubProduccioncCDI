
[Forma]
Clave=CDIFiltrosPresupComprometido
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Presupuesto Comprometido
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaAcciones=(Lista)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=512
PosicionInicialArriba=328
PosicionInicialAlturaCliente=116
PosicionInicialAncho=248
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
[(Variables).ListaEnCaptura]
(Inicio)=Info.Proyecto
Info.Proyecto=Info.Ejercicio
Info.Ejercicio=(Fin)

[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
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
ClaveAccion=CDIRepPresupComprometido
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S
EspacioPrevio=S


[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Reporte
Reporte=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
