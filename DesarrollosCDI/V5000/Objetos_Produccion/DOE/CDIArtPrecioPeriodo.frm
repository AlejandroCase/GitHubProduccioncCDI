
[Forma]
Clave=CDIArtPrecioPeriodo
Icono=0
Modulos=(Todos)
Nombre=Precios por Periodo Articulos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIArtPrecioPeriodo
CarpetaPrincipal=CDIArtPrecioPeriodo
PosicionInicialIzquierda=502
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=361
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIArtPrecioPeriodo]
Estilo=Hoja
Clave=CDIArtPrecioPeriodo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIArtPrecioPeriodo
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
ListaEnCaptura=(Lista)

CarpetaVisible=S
HojaConfirmarEliminar=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Articulo=<T>{Info.Articulo}<T>
[CDIArtPrecioPeriodo.CDIArtPrecioPeriodo.Articulo]
Carpeta=CDIArtPrecioPeriodo
Clave=CDIArtPrecioPeriodo.Articulo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIArtPrecioPeriodo.CDIArtPrecioPeriodo.Periodo]
Carpeta=CDIArtPrecioPeriodo
Clave=CDIArtPrecioPeriodo.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[CDIArtPrecioPeriodo.CDIArtPrecioPeriodo.Monto]
Carpeta=CDIArtPrecioPeriodo
Clave=CDIArtPrecioPeriodo.Monto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIArtPrecioPeriodo.Columnas]
Articulo=124
Periodo=94
DescuentoTipo=75
Monto=99

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





[CDIArtPrecioPeriodo.ListaEnCaptura]
(Inicio)=CDIArtPrecioPeriodo.Articulo
CDIArtPrecioPeriodo.Articulo=CDIArtPrecioPeriodo.Periodo
CDIArtPrecioPeriodo.Periodo=CDIArtPrecioPeriodo.Monto
CDIArtPrecioPeriodo.Monto=(Fin)









[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
