
[Forma]
Clave=vic_TipoPlanoLista
Icono=4
Modulos=(Todos)
Nombre=Tipo Plano
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaExclusiva=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=116
PosicionInicialArriba=288
PosicionInicialAlturaCliente=253
PosicionInicialAncho=919
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar

[vic_TipoPlano.Columnas]
TipoPlano=201
FiltroLista=231
TotalCamposFiltroLista=69
FiltroElemento=355
TotalCamposFiltroElemento=91
FiltroElementoEspecial=604
TotalCamposFEE=85

0=108
1=127
2=85
3=149
4=103
5=136
6=-2



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

[vic_TipoPlano.ListaEnCaptura]
(Inicio)=vic_TipoPlano.FiltroLista
vic_TipoPlano.FiltroLista=vic_TipoPlano.TotalCamposFiltroLista
vic_TipoPlano.TotalCamposFiltroLista=vic_TipoPlano.FiltroElemento
vic_TipoPlano.FiltroElemento=vic_TipoPlano.TotalCamposFiltroElemento
vic_TipoPlano.TotalCamposFiltroElemento=vic_TipoPlano.FiltroElementoEspecial
vic_TipoPlano.FiltroElementoEspecial=vic_TipoPlano.TotalCamposFEE
vic_TipoPlano.TotalCamposFEE=(Fin)


[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Tipos de Plano
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_TipoPlano
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosNombre=vic_TipoPlano:vic_TipoPlano.TipoPlano
IconosSubTitulo=<T>Tipo Plano<T>
IconosConPaginas=S
ElementosPorPagina=200

[Lista.Columnas]
TipoPlano=183

FiltroLista=604
TotalCamposFiltroLista=69
FiltroElemento=604
TotalCamposFiltroElemento=91
FiltroElementoEspecial=604
TotalCamposFEE=85

0=148
1=165
2=-2
3=158
4=103
5=151
6=-2
[Lista.vic_TipoPlano.FiltroLista]
Carpeta=Lista
Clave=vic_TipoPlano.FiltroLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_TipoPlano.TotalCamposFiltroLista]
Carpeta=Lista
Clave=vic_TipoPlano.TotalCamposFiltroLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_TipoPlano.FiltroElemento]
Carpeta=Lista
Clave=vic_TipoPlano.FiltroElemento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_TipoPlano.TotalCamposFiltroElemento]
Carpeta=Lista
Clave=vic_TipoPlano.TotalCamposFiltroElemento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_TipoPlano.FiltroElementoEspecial]
Carpeta=Lista
Clave=vic_TipoPlano.FiltroElementoEspecial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_TipoPlano.TotalCamposFEE]
Carpeta=Lista
Clave=vic_TipoPlano.TotalCamposFEE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ListaEnCaptura]
(Inicio)=vic_TipoPlano.FiltroLista
vic_TipoPlano.FiltroLista=vic_TipoPlano.TotalCamposFiltroLista
vic_TipoPlano.TotalCamposFiltroLista=vic_TipoPlano.FiltroElemento
vic_TipoPlano.FiltroElemento=vic_TipoPlano.TotalCamposFiltroElemento
vic_TipoPlano.TotalCamposFiltroElemento=vic_TipoPlano.FiltroElementoEspecial
vic_TipoPlano.FiltroElementoEspecial=vic_TipoPlano.TotalCamposFEE
vic_TipoPlano.TotalCamposFEE=(Fin)
