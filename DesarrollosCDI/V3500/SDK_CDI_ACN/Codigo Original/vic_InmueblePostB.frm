
[Forma]
Clave=vic_InmueblePostB
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Proceso Post Batch - Inmueble

ListaCarpetas=Selecciona
CarpetaPrincipal=Selecciona
PosicionInicialIzquierda=429
PosicionInicialArriba=197
PosicionInicialAlturaCliente=273
PosicionInicialAncho=405
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraHerramientas=S
[Selecciona]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Inmuebles
Clave=Selecciona
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_InmuebleA
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=vic_Inmueble.Nombre

CarpetaVisible=S

IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
IconosSeleccionMultiple=S
IconosSeleccionPorLlave=S

IconosSubTitulo=<T>Inmueble<T>
MenuLocal=S
ListaAcciones=(Lista)
BusquedaRapidaControles=S
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
IconosNombre=vic_InmuebleA:vic_Inmueble.Inmueble
[Selecciona.Columnas]
Inmueble=94
Nombre=604


0=118
1=275
2=-2
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnMenu=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
NombreEnBoton=S
EnBarraHerramientas=S












[Selecciona.vic_Inmueble.Nombre]
Carpeta=Selecciona
Clave=vic_Inmueble.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco





























[Selecciona.ListaEnCaptura]
(Inicio)=vic_Inmueble.Inmueble
vic_Inmueble.Inmueble=vic_Inmueble.Nombre
vic_Inmueble.Nombre=(Fin)


[Acciones.Seleccionar Todo]
Nombre=Seleccionar Todo
Boton=0
NombreDesplegar=Seleccionar &Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S

[Acciones.Quitar Seleccion]
Nombre=Quitar Seleccion
Boton=0
NombreDesplegar=&Quitar Seleccion
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S


[Acciones.Afectar]
Nombre=Afectar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Procesar Selección
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S


Antes=S
AntesExpresiones=RegistrarSeleccion<BR>ProcesarSQL(<T>vic_spPBPorInmueble :nEstacion<T>, EstacionTrabajo)
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=55
NombreEnBoton=S
NombreDesplegar=Seleccionar &Todo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S






































[Selecciona.ListaAcciones]
(Inicio)=Seleccionar Todo
Seleccionar Todo=Quitar Seleccion
Quitar Seleccion=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Afectar
Afectar=Seleccionar
Seleccionar=(Fin)
