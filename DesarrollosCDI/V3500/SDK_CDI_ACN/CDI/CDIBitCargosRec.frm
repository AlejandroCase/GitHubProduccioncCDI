
[Forma]
Clave=CDIBitCargosRec
Icono=0
Modulos=(Todos)
Nombre=Bitacora

ListaCarpetas=CDIBitCargosRec
CarpetaPrincipal=CDIBitCargosRec
VentanaTipoMarco=Sencillo
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=270
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=826
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraHerramientas=S
[CDIBitCargosRec]
Estilo=Hoja
Clave=CDIBitCargosRec
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIBitCargosRec
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
OtroOrden=S
ListaOrden=CDIBitCargosRec.Fecha<TAB>(Decendente)
FiltroGeneral=CDIBitCargosRec.Cliente=<T>{Info.cliente}<T>
[CDIBitCargosRec.CDIBitCargosRec.Cliente]
Carpeta=CDIBitCargosRec
Clave=CDIBitCargosRec.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIBitCargosRec.CDIBitCargosRec.ArticuloAnterior]
Carpeta=CDIBitCargosRec
Clave=CDIBitCargosRec.ArticuloAnterior
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIBitCargosRec.CDIBitCargosRec.MovCambio]
Carpeta=CDIBitCargosRec
Clave=CDIBitCargosRec.MovCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CDIBitCargosRec.CDIBitCargosRec.Usuario]
Carpeta=CDIBitCargosRec
Clave=CDIBitCargosRec.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIBitCargosRec.CDIBitCargosRec.Fecha]
Carpeta=CDIBitCargosRec
Clave=CDIBitCargosRec.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIBitCargosRec.Columnas]
Cliente=64
ArticuloAnterior=90
MovCambio=244
Usuario=75
Fecha=127





Descripcion1=184
[CDIBitCargosRec.ListaEnCaptura]
(Inicio)=CDIBitCargosRec.Cliente
CDIBitCargosRec.Cliente=CDIBitCargosRec.ArticuloAnterior
CDIBitCargosRec.ArticuloAnterior=Art.Descripcion1
Art.Descripcion1=CDIBitCargosRec.MovCambio
CDIBitCargosRec.MovCambio=CDIBitCargosRec.Usuario
CDIBitCargosRec.Usuario=CDIBitCargosRec.Fecha
CDIBitCargosRec.Fecha=(Fin)

[CDIBitCargosRec.Art.Descripcion1]
Carpeta=CDIBitCargosRec
Clave=Art.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraAcciones=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

EnBarraHerramientas=S
EspacioPrevio=S
[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraAcciones=S
Carpeta=CDIBitCargosRec
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S







EnBarraHerramientas=S





EspacioPrevio=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



























[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=(Fin)