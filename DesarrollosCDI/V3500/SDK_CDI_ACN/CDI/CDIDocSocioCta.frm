
[Forma]
Clave=CDIDocSocioCta
Icono=0
Modulos=(Todos)
Nombre=Documentos Cliente

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=GuardarCerrar
PosicionInicialIzquierda=455
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=456
Menus=S
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIDocSocioCta
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
FiltroGeneral=CDIDocSocioCta.Cliente = <T>{Info.Cliente}<T>
[Lista.CDIDocSocioCta.Documento]
Carpeta=Lista
Clave=CDIDocSocioCta.Documento
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[Lista.CDIDocSocioCta.Entregado]
Carpeta=Lista
Clave=CDIDocSocioCta.Entregado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardary cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista.Columnas]
Documento=284
Nacionalidad=86
Entregado=54













[Lista.ListaEnCaptura]
(Inicio)=CDIDocSocioCta.Nacionalidad
CDIDocSocioCta.Nacionalidad=CDIDocSocioCta.Documento
CDIDocSocioCta.Documento=CDIDocSocioCta.Entregado
CDIDocSocioCta.Entregado=(Fin)

[Lista.CDIDocSocioCta.Nacionalidad]
Carpeta=Lista
Clave=CDIDocSocioCta.Nacionalidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
