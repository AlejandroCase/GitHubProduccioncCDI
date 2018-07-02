
[Forma]
Clave=CDIRepComparativoRotacion
Icono=0
Modulos=(Todos)
Nombre=Comparativo Retenciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=477
PosicionInicialArriba=395
PosicionInicialAlturaCliente=132
PosicionInicialAncho=325
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaSinIconosMarco=S
[Lista]
Estilo=Ficha
Clave=Lista
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

[Lista.Info.Fecha]
Carpeta=Lista
Clave=Info.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Info.Almacen]
Carpeta=Lista
Clave=Info.Almacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Info.ArtCat]
Carpeta=Lista
Clave=Info.ArtCat
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
Categoria=234
Almacen=90
Nombre=229
Grupo=100
Sucursal=46

[Lista.ListaEnCaptura]
(Inicio)=Info.Fecha
Info.Fecha=Info.Almacen
Info.Almacen=Info.ArtCat
Info.ArtCat=(Fin)

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

[Acciones.Vista.Asigna]
Nombre=Asigna
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Vista.Rep]
Nombre=Rep
Boton=0
TipoAccion=Reportes Pantalla
Activo=S
Visible=S

ClaveAccion=CDIRepComparativoRotacion
[Acciones.Vista]
Nombre=Vista
Boton=6
NombreEnBoton=S
NombreDesplegar=&Vista Preliminar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
EspacioPrevio=S




[Acciones.Vista.ListaAccionesMultiples]
(Inicio)=Asigna
Asigna=Rep
Rep=(Fin)































































































[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Vista
Vista=(Fin)
