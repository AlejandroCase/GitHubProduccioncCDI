
[Forma]
Clave=cdillamxhacer
Icono=0
Modulos=(Todos)
Nombre=Llamadas por hacer
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=559
PosicionInicialArriba=270
PosicionInicialAlturaCliente=189
PosicionInicialAncho=247
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
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
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro

PermiteEditar=S
[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Acciones.Expresion.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S


[Acciones.Expresion]
Nombre=Expresion
Boton=23
NombreDesplegar=Aceptar
Multiple=S
EnBarraHerramientas=S
TipoAccion=Expresion
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S



NombreEnBoton=S
[Acciones.Expresion.cambiar Situacion]
Nombre=cambiar Situacion
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=cdillamxhacer
ListaParametros1=info.fechad<BR>info.fechaa
ListaParametros=S
Activo=S
Visible=S








[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreDesplegar=Salir
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



NombreEnBoton=S

















[(Variables).ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=(Fin)












[Acciones.Expresion.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=cambiar Situacion
cambiar Situacion=(Fin)









[Forma.ListaAcciones]
(Inicio)=Expresion
Expresion=Cerrar
Cerrar=(Fin)
