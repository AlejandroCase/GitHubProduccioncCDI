
[Forma]
Clave=CDICorreoWebLista
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=CDI Correos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICorreoLista
CarpetaPrincipal=CDICorreoLista
PosicionInicialIzquierda=236
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=894
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar/Aceptar
[CDICorreoLista]
Estilo=Hoja
Clave=CDICorreoLista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICorreoWeb
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
[CDICorreoLista.ListaEnCaptura]
(Inicio)=CDICorreoWeb.IdCorreo
CDICorreoWeb.IdCorreo=CDICorreoWeb.Modulo
CDICorreoWeb.Modulo=CDICorreoWeb.Titulo
CDICorreoWeb.Titulo=CDICorreoWeb.Descripcion
CDICorreoWeb.Descripcion=(Fin)

[CDICorreoLista.CDICorreoWeb.IdCorreo]
Carpeta=CDICorreoLista
Clave=CDICorreoWeb.IdCorreo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICorreoLista.CDICorreoWeb.Modulo]
Carpeta=CDICorreoLista
Clave=CDICorreoWeb.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDICorreoLista.CDICorreoWeb.Titulo]
Carpeta=CDICorreoLista
Clave=CDICorreoWeb.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDICorreoLista.CDICorreoWeb.Descripcion]
Carpeta=CDICorreoLista
Clave=CDICorreoWeb.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDICorreoLista.Columnas]
IdCorreo=64
Modulo=76
Titulo=297
Descripcion=396

[Acciones.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S
