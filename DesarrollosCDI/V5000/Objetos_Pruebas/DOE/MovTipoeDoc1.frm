
[Forma]
Clave=MovTipoeDoc1
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=MovTipo - Documento Electr�nico
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Aceptar
Comentarios=Lista(Info.Modulo,Info.Mov)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=390
PosicionInicialArriba=212
PosicionInicialAlturaCliente=411
PosicionInicialAncho=495
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

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=MovTipoeDoc1
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=MovTipoeDoc1.Modulo = {Comillas(Info.Modulo)} AND MovTipoeDoc1.Mov = {Comillas(Info.Mov)}
[Lista.MovTipoeDoc1.Contacto]
Carpeta=Lista
Clave=MovTipoeDoc1.Contacto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.MovTipoeDoc1.eDoc]
Carpeta=Lista
Clave=MovTipoeDoc1.eDoc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.MovTipoeDoc1.Estatus]
Carpeta=Lista
Clave=MovTipoeDoc1.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=MovTipoeDoc1.Contacto
MovTipoeDoc1.Contacto=MovTipoeDoc1.eDoc
MovTipoeDoc1.eDoc=MovTipoeDoc1.Estatus
MovTipoeDoc1.Estatus=(Fin)

[Lista.Columnas]
Contacto=105
eDoc=173
Estatus=185
