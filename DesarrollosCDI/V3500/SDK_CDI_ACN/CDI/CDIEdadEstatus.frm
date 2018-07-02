
[Forma]
Clave=CDIEdadEstatus
Icono=0
BarraHerramientas=S
Modulos=(Todos)
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=117
PosicionInicialAncho=237
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
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
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
NombreEnBoton=S
NombreDesplegar=&Preliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S


[(Variables).Info.CDIAnoD]
Carpeta=(Variables)
Clave=Info.CDIAnoD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIAnoA]
Carpeta=(Variables)
Clave=Info.CDIAnoA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[(Variables).ListaEnCaptura]
(Inicio)=Info.CDIAnoD
Info.CDIAnoD=Info.CDIAnoA
Info.CDIAnoA=Info.CDIEstatusSocio
Info.CDIEstatusSocio=(Fin)

[(Variables).Info.CDIEstatusSocio]
Carpeta=(Variables)
Clave=Info.CDIEstatusSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
