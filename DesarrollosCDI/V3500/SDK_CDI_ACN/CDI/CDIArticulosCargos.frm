
[Forma]
Clave=CDIArticulosCargos
Icono=0
Modulos=(Todos)
Nombre=Articulos con Cargos Automaticos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=352
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=662
ListaAcciones=(Lista)
ExpresionesAlMostrar=asigna(info.cliente,<T>0006700<T>)
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIArticulosCargos
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=CDIArticulosCargos.Cliente = <T>{Info.Cliente}<T>
[Lista.CDIArticulosCargos.Articulo]
Carpeta=Lista
Clave=CDIArticulosCargos.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[Lista.Columnas]
Articulo=124
Descripcion1=244

DescripcionArt=398
NoTarjeta=100
[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Salir
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar








[Lista.DescripcionArt]
Carpeta=Lista
Clave=DescripcionArt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco








[Lista.ListaEnCaptura]
(Inicio)=CDIArticulosCargos.Articulo
CDIArticulosCargos.Articulo=DescripcionArt
DescripcionArt=CDIArticulosCargos.NoTarjeta
CDIArticulosCargos.NoTarjeta=(Fin)

[Lista.CDIArticulosCargos.NoTarjeta]
Carpeta=Lista
Clave=CDIArticulosCargos.NoTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco









































[Forma.ListaAcciones]
(Inicio)=GuardarCerrar
GuardarCerrar=Eliminar
Eliminar=(Fin)
