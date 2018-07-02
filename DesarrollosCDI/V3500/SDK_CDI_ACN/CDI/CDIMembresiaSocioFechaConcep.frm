
[Forma]
Clave=CDIMembresiaSocioFechaConcep
Icono=0
BarraHerramientas=S
Modulos=(Todos)
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Variables)
ListaAcciones=(Lista)
CarpetaPrincipal=(Variables)
PosicionInicialAlturaCliente=147
PosicionInicialAncho=503
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

[(Variables).ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Info.CDIMembresiaListaD
Info.CDIMembresiaListaD=Info.CDIMembresiaListaA
Info.CDIMembresiaListaA=Info.CDISocioListaD
Info.CDISocioListaD=Info.CDISocioListaA
Info.CDISocioListaA=Info.CDIConceptoLista
Info.CDIConceptoLista=(Fin)

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
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

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
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

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

[(Variables).Info.CDIConceptoLista]
Carpeta=(Variables)
Clave=Info.CDIConceptoLista
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
