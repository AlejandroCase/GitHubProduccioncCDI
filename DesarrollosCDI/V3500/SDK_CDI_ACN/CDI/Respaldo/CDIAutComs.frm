
[Forma]
Clave=CDIAutComs
Icono=0
Modulos=(Todos)
MovModulo=COMS
Nombre=Fecha
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Fecha
CarpetaPrincipal=Fecha
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=543
PosicionInicialArriba=302
PosicionInicialAlturaCliente=125
PosicionInicialAncho=279
[Fecha]
Estilo=Ficha
Clave=Fecha
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

[Fecha.Info.FechaD]
Carpeta=Fecha
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Fecha.Info.FechaA]
Carpeta=Fecha
Clave=Info.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Forma]
Nombre=Forma
Boton=23
NombreEnBoton=S
NombreDesplegar=Aceptar
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIFlComAuto
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S




[Acciones.Forma.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Forma.cA]
Nombre=cA
Boton=0
TipoAccion=Formas
ClaveAccion=CDIFlComAuto
Activo=S
Visible=S

[Acciones.Forma.ListaAccionesMultiples]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=cA
cA=(Fin)





























[Fecha.ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=(Fin)











[Forma.ListaAcciones]
(Inicio)=Forma
Forma=Cerrar
Cerrar=(Fin)
