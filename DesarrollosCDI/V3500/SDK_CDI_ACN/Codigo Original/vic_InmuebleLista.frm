[Forma]
Clave=vic_InmuebleLista
Nombre=Inmuebles
Icono=6
Modulos=(Todos)
MovModulo=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=273
PosicionInicialAncho=756
PosicionInicialIzquierda=198
PosicionInicialArriba=278
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_InmuebleA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
IconosSubTitulo=<T>Desarrollo<T>
PestanaOtroNombre=S
PestanaNombre=Inmuebles
ListaEnCaptura=(Lista)
IconosNombre=vic_InmuebleA:vic_Inmueble.Inmueble
[Lista.Columnas]
0=101
1=300
2=-2
[Lista.vic_Inmueble.Nombre]
Carpeta=Lista
Clave=vic_Inmueble.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco
ColorFuente=Negro
[Lista.vic_Inmueble.NombreCorto]
Carpeta=Lista
Clave=vic_Inmueble.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro


[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S



[Lista.ListaEnCaptura]
(Inicio)=vic_Inmueble.Nombre
vic_Inmueble.Nombre=vic_Inmueble.NombreCorto
vic_Inmueble.NombreCorto=(Fin)