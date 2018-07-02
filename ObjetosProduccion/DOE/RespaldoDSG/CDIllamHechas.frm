
[Forma]
Clave=CDIllamHechas
Icono=0
Modulos=(Todos)
Nombre=Llamadas Realizadas
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
ListaAcciones=(Lista)
PosicionInicialIzquierda=555
PosicionInicialArriba=301
PosicionInicialAlturaCliente=127
PosicionInicialAncho=255
BarraHerramientas=S
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

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=Aceptar
EnBarraAcciones=S
TipoAccion=Reportes Pantalla
Activo=S
Visible=S

NombreEnBoton=S
EnBarraHerramientas=S
ClaveAccion=cdillamrealizadas
ListaParametros1=info.fechad<BR>info.fechaa
ListaParametros=S
Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=Salir
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S




EnBarraHerramientas=S


[(Variables).ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=(Fin)












[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.cambiar Situacion]
Nombre=cambiar Situacion
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=cdillamrealizadas
Activo=S
Visible=S

ListaParametros=S




[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=cambiar Situacion
cambiar Situacion=(Fin)









[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
