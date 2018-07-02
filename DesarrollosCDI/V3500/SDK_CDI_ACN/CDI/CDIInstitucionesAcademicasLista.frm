
[Forma]
Clave=CDIInstitucionesAcademicasLista
Icono=4
Modulos=(Todos)
Nombre=Instituciones Academicas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Seleccionar
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=461
PosicionInicialArriba=245
PosicionInicialAlturaCliente=507
PosicionInicialAncho=358
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIInstitucionesAcademicas
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
[Lista.ListaEnCaptura]
(Inicio)=CDIInstitucionesAcademicas.Clave
CDIInstitucionesAcademicas.Clave=CDIInstitucionesAcademicas.Institucion
CDIInstitucionesAcademicas.Institucion=(Fin)

[Lista.CDIInstitucionesAcademicas.Clave]
Carpeta=Lista
Clave=CDIInstitucionesAcademicas.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.CDIInstitucionesAcademicas.Institucion]
Carpeta=Lista
Clave=CDIInstitucionesAcademicas.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.Columnas]
Clave=41
Institucion=285
