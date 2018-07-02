
[Forma]
Clave=AtributoTipo
Icono=0
Modulos=(Todos)
Nombre=Tipos Atributos

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
PosicionInicialIzquierda=481
PosicionInicialArriba=201
PosicionInicialAlturaCliente=330
PosicionInicialAncho=404
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AtributoTipo
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

OtroOrden=S
HojaTitulos=S
HojaMostrarColumnas=S
ListaOrden=AtributoTipo.Orden<TAB>(Acendente)
[Lista.AtributoTipo.Tipo]
Carpeta=Lista
Clave=AtributoTipo.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco


[Lista.Columnas]
Tipo=323


Orden=43
[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Atributo
Atributo=(Fin)


[Lista.AtributoTipo.Orden]
Carpeta=Lista
Clave=AtributoTipo.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=AtributoTipo.Tipo
AtributoTipo.Tipo=AtributoTipo.Orden
AtributoTipo.Orden=(Fin)

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
