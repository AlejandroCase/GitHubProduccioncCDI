
[Forma]
Clave=vic_LocalImagenesLista
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Imágenes del Local
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=515
PosicionInicialAncho=744
PosicionCol1=272
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=204
PosicionInicialArriba=157
ListaAcciones=Aceptar
Comentarios=<T>Local: <T>+Info.Local
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_LocalImagenes
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=AnexoCta.Nombre
CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=AnexoCta.Cuenta=<T>{Info.Local}<T><BR>AND AnexoCta.Rama=<T>VICLO<T>
[Lista.AnexoCta.Nombre]
Carpeta=Lista
Clave=AnexoCta.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Detalle]
Estilo=Ficha
Clave=Detalle
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=vic_LocalImagenes
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Imagen
CarpetaVisible=S

[Detalle.Imagen]
Carpeta=Detalle
Clave=Imagen
Editar=S
LineaNueva=S
ValidaNombre=N
3D=N
Tamano=60x30
ColorFondo=Plata
ColorFuente=Negro


[Lista.Columnas]
Nombre=234










[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



































[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=(Fin)
