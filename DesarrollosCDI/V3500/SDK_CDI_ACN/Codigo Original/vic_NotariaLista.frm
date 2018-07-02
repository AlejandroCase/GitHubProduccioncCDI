
[Forma]
Clave=vic_NotariaLista
Icono=4
Modulos=(Todos)
Nombre=Notarías
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal

ListaCarpetas=vic_Notaria
CarpetaPrincipal=vic_Notaria
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
PosicionInicialIzquierda=230
PosicionInicialArriba=353
PosicionInicialAlturaCliente=283
PosicionInicialAncho=820
[vic_Notaria]
Estilo=Iconos
Clave=vic_Notaria
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Notaria
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Núm Notaria<T>
ElementosPorPagina=200

PestanaOtroNombre=S
PestanaNombre=Notarías
IconosNombre=vic_Notaria:vic_Notaria.NumNotaria
[vic_Notaria.vic_Notaria.NombreCorto]
Carpeta=vic_Notaria
Clave=vic_Notaria.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[vic_Notaria.vic_Notaria.Nombre]
Carpeta=vic_Notaria
Clave=vic_Notaria.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco

[vic_Notaria.vic_Notaria.Notario]
Carpeta=vic_Notaria
Clave=vic_Notaria.Notario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[vic_Notaria.vic_Notaria.Estatus]
Carpeta=vic_Notaria
Clave=vic_Notaria.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[vic_Notaria.Columnas]
NumNotaria=121
NombreCorto=147
Nombre=307
Notario=144
Estatus=94

0=129
1=166
2=162
3=155
4=113




[vic_Notaria.ListaEnCaptura]
(Inicio)=vic_Notaria.NombreCorto
vic_Notaria.NombreCorto=vic_Notaria.Nombre
vic_Notaria.Nombre=vic_Notaria.Notario
vic_Notaria.Notario=vic_Notaria.Estatus
vic_Notaria.Estatus=(Fin)
