[Forma]
Clave=vic_DesarrolloLista
Nombre=Desarrollo
Icono=6
Modulos=(Todos)
MovModulo=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=273
PosicionInicialAncho=555
PosicionInicialIzquierda=362
PosicionInicialArriba=358
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_DesarrolloA
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
ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=Lista de Desarrollos
IconosNombre=vic_DesarrolloA:vic_Desarrollo.Desarrollo
[Lista.vic_Desarrollo.Nombre]
Carpeta=Lista
Clave=vic_Desarrollo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco
[Lista.vic_Desarrollo.NombreCorto]
Carpeta=Lista
Clave=vic_Desarrollo.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
[Lista.Columnas]
0=96
1=216
2=-2


3=-2
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
(Inicio)=vic_Desarrollo.Nombre
vic_Desarrollo.Nombre=vic_Desarrollo.NombreCorto
vic_Desarrollo.NombreCorto=vic_Desarrollo.Estatus
vic_Desarrollo.Estatus=(Fin)

[Lista.vic_Desarrollo.Estatus]
Carpeta=Lista
Clave=vic_Desarrollo.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
