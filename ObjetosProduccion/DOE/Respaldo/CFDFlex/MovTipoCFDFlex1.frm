
[Forma]
Clave=MovTipoCFDFlex1
Icono=0
Modulos=(Todos)
Nombre=CFD Flexible

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
Comentarios=Lista(Info.Modulo,Info.Mov)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=353
PosicionInicialArriba=226
PosicionInicialAlturaCliente=381
PosicionInicialAncho=888
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=MovTipoCFDFlex1
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
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General

FiltroGeneral=MovTipoCFDFlex1.Modulo = {Comillas(Info.Modulo)} AND MovTipoCFDFlex1.Mov = {Comillas(Info.Mov)}
[Lista.MovTipoCFDFlex1.Comprobante]
Carpeta=Lista
Clave=MovTipoCFDFlex1.Comprobante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.MovTipoCFDFlex1.Adenda]
Carpeta=Lista
Clave=MovTipoCFDFlex1.Adenda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.MovTipoCFDFlex1.XSD]
Carpeta=Lista
Clave=MovTipoCFDFlex1.XSD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista.Columnas]
Cliente=80
Comprobante=161
Adenda=179
XSD=139




Contacto=64
Estatus=94
OrigenModulo=73
OrigenMov=124
[Lista.MovTipoCFDFlex1.Contacto]
Carpeta=Lista
Clave=MovTipoCFDFlex1.Contacto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco




[Lista.MovTipoCFDFlex1.Estatus]
Carpeta=Lista
Clave=MovTipoCFDFlex1.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=MovTipoCFDFlex1.Contacto
MovTipoCFDFlex1.Contacto=MovTipoCFDFlex1.Comprobante
MovTipoCFDFlex1.Comprobante=MovTipoCFDFlex1.Adenda
MovTipoCFDFlex1.Adenda=MovTipoCFDFlex1.Estatus
MovTipoCFDFlex1.Estatus=MovTipoCFDFlex1.XSD
MovTipoCFDFlex1.XSD=MovTipoCFDFlex1.OrigenModulo
MovTipoCFDFlex1.OrigenModulo=MovTipoCFDFlex1.OrigenMov
MovTipoCFDFlex1.OrigenMov=(Fin)

[Lista.MovTipoCFDFlex1.OrigenModulo]
Carpeta=Lista
Clave=MovTipoCFDFlex1.OrigenModulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Lista.MovTipoCFDFlex1.OrigenMov]
Carpeta=Lista
Clave=MovTipoCFDFlex1.OrigenMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
