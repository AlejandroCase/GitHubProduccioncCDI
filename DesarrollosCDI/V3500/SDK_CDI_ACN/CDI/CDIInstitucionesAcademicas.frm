
[Forma]
Clave=CDIInstitucionesAcademicas
Icono=4
Modulos=(Todos)
Nombre=Instituciones Academicas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=361
PosicionInicialArriba=317
PosicionInicialAlturaCliente=362
PosicionInicialAncho=558
Comentarios=Info.Cliente
[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
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
PermiteEditar=S

[Lista.CDIInstitucionesAcademicas.Clave]
Carpeta=Lista
Clave=CDIInstitucionesAcademicas.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Lista.Columnas]
Clave=124
Institucion=403


[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S
















[Lista.ListaEnCaptura]
(Inicio)=CDIInstitucionesAcademicas.Clave
CDIInstitucionesAcademicas.Clave=CDIInstitucionesAcademicas.Institucion
CDIInstitucionesAcademicas.Institucion=(Fin)

[Lista.CDIInstitucionesAcademicas.Institucion]
Carpeta=Lista
Clave=CDIInstitucionesAcademicas.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





















[Forma.ListaAcciones]
(Inicio)=GuardarCerrar
GuardarCerrar=Eliminar
Eliminar=(Fin)
