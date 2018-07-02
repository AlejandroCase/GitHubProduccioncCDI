
[Forma]
Clave=CDIUltimoCostoArt
Icono=0
CarpetaPrincipal=CDIUltimoCostoArt
Modulos=(Todos)
Nombre=Ultimo Costo Art.

ListaCarpetas=CDIUltimoCostoArt
PosicionInicialAlturaCliente=174
PosicionInicialAncho=453
PosicionInicialIzquierda=1938
PosicionInicialArriba=281
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
BarraHerramientas=S
[CDIUltimoCostoArt]
Estilo=Ficha
Clave=CDIUltimoCostoArt
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIUltimoCostoArt
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=12
FichaEspacioNombres=64
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Gris
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S



OtroOrden=S
ListaOrden=CDIUltimoCostoArt.ultimocambio<TAB>(Decendente)
RefrescarAlEntrar=S
FiltroGeneral=CDIUltimoCostoArt.ARTICULO =<T>{Info.Articulo}<T>
[CDIUltimoCostoArt.CDIUltimoCostoArt.MOV]
Carpeta=CDIUltimoCostoArt
Clave=CDIUltimoCostoArt.MOV
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Gris

[CDIUltimoCostoArt.CDIUltimoCostoArt.MOVID]
Carpeta=CDIUltimoCostoArt
Clave=CDIUltimoCostoArt.MOVID
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIUltimoCostoArt.CDIUltimoCostoArt.ultimocambio]
Carpeta=CDIUltimoCostoArt
Clave=CDIUltimoCostoArt.ultimocambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDIUltimoCostoArt.CDIUltimoCostoArt.CONCEPTO]
Carpeta=CDIUltimoCostoArt
Clave=CDIUltimoCostoArt.CONCEPTO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIUltimoCostoArt.CDIUltimoCostoArt.PROYECTO]
Carpeta=CDIUltimoCostoArt
Clave=CDIUltimoCostoArt.PROYECTO
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIUltimoCostoArt.CDIUltimoCostoArt.COSTO]
Carpeta=CDIUltimoCostoArt
Clave=CDIUltimoCostoArt.COSTO
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=$0080FFFF

Tamano=10
[CDIUltimoCostoArt.CDIUltimoCostoArt.ARTICULO]
Carpeta=CDIUltimoCostoArt
Clave=CDIUltimoCostoArt.ARTICULO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




























[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
EnBarraHerramientas=S
EspacioPrevio=S







[CDIUltimoCostoArt.ListaEnCaptura]
(Inicio)=CDIUltimoCostoArt.MOV
CDIUltimoCostoArt.MOV=CDIUltimoCostoArt.MOVID
CDIUltimoCostoArt.MOVID=CDIUltimoCostoArt.CONCEPTO
CDIUltimoCostoArt.CONCEPTO=CDIUltimoCostoArt.PROYECTO
CDIUltimoCostoArt.PROYECTO=CDIUltimoCostoArt.ARTICULO
CDIUltimoCostoArt.ARTICULO=CDIUltimoCostoArt.COSTO
CDIUltimoCostoArt.COSTO=CDIUltimoCostoArt.ultimocambio
CDIUltimoCostoArt.ultimocambio=(Fin)
