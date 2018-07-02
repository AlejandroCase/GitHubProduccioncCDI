
[Forma]
Clave=CDIDocSocio
Icono=4
Modulos=(Todos)
Nombre=Documentación Socios

ListaCarpetas=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
CarpetaPrincipal=Lista
ListaAcciones=GuardarCerrar
PosicionInicialIzquierda=310
PosicionInicialArriba=317
PosicionInicialAlturaCliente=389
PosicionInicialAncho=680
[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIDocSocio
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

FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
PermiteEditar=S

[Lista.CDIDocSocio.Documento]
Carpeta=Lista
Clave=CDIDocSocio.Documento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.CDIDocSocio.Nacionalidad]
Carpeta=Lista
Clave=CDIDocSocio.Nacionalidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CDIDocSocio.Tipo]
Carpeta=Lista
Clave=CDIDocSocio.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista.Columnas]
Documento=330
Nacionalidad=124
Tipo=124

[Lista.ListaEnCaptura]
(Inicio)=CDIDocSocio.Documento
CDIDocSocio.Documento=CDIDocSocio.Nacionalidad
CDIDocSocio.Nacionalidad=CDIDocSocio.Tipo
CDIDocSocio.Tipo=(Fin)
