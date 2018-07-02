
[Forma]
Clave=CDISocioEstatusporTipo
Icono=0
Modulos=(Todos)
Nombre=Socio Estatus Tipo

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialAlturaCliente=127
PosicionInicialAncho=498
BarraHerramientas=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=109
PosicionInicialArriba=50
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




[(Variables).Info.CteTipo]
Carpeta=(Variables)
Clave=Info.CteTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Lista.Columnas]
Tipo=163



Orden=64
[(Variables).Info.CDIMembresiaListaD]
Carpeta=(Variables)
Clave=Info.CDIMembresiaListaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIMembresiaListaA]
Carpeta=(Variables)
Clave=Info.CDIMembresiaListaA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[ListaMembresia.Columnas]
Membresia=64


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
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco








[(Variables).Info.CDIEstatusSocio]
Carpeta=(Variables)
Clave=Info.CDIEstatusSocio
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco











[(Variables).ListaEnCaptura]
(Inicio)=Info.CteTipo
Info.CteTipo=Info.CDIEstatusSocio
Info.CDIEstatusSocio=Info.CDIMembresiaListaD
Info.CDIMembresiaListaD=Info.CDIMembresiaListaA
Info.CDIMembresiaListaA=Info.CDISocioListaD
Info.CDISocioListaD=Info.CDISocioListaA
Info.CDISocioListaA=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
