
[Forma]
Clave=CDIMarbetes
Icono=0
Modulos=(Todos)

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=325
PosicionInicialArriba=210
PosicionInicialAlturaCliente=115
PosicionInicialAncho=323
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
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
CarpetaVisible=S
PermiteEditar=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro
ListaEnCaptura=(Lista)


[(Variables).Info.ArtCat]
Carpeta=(Variables)
Clave=Info.ArtCat
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Almacen]
Carpeta=(Variables)
Clave=Info.Almacen
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



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
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S







[(Variables).Info.ArticuloD]
Carpeta=(Variables)
Clave=Info.ArticuloD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.ArticuloA]
Carpeta=(Variables)
Clave=Info.ArticuloA
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[(Variables).ListaEnCaptura]
(Inicio)=Info.ArtCat
Info.ArtCat=Info.Almacen
Info.Almacen=Info.ArticuloD
Info.ArticuloD=Info.ArticuloA
Info.ArticuloA=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
