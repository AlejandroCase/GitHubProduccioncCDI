
[Forma]
Clave=EntidadPosicion
Icono=0
Modulos=(Todos)
Nombre=Posiciones de la Entidad

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=325
PosicionInicialArriba=146
PosicionInicialAlturaCliente=456
PosicionInicialAncho=734
Comentarios=Info.Entidad
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Posiciones
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EntidadPosicion
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Posición<T>
ElementosPorPagina=200
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
IconosNombre=EntidadPosicion:EntidadPosicion.Posicion
FiltroGeneral=EntidadPosicion.Entidad=<T>{Info.Entidad}<T> AND EntidadPosicion.Estatus=<T>ALTA<T>
[Lista.EntidadPosicion.Rol]
Carpeta=Lista
Clave=EntidadPosicion.Rol
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.EntidadPosicion.Observaciones]
Carpeta=Lista
Clave=EntidadPosicion.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=<T>&Cerrar<T>
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[Lista.Columnas]
0=143
1=143
2=181

[Lista.ListaEnCaptura]
(Inicio)=EntidadPosicion.Rol
EntidadPosicion.Rol=EntidadPosicion.Observaciones
EntidadPosicion.Observaciones=(Fin)

[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=Personalizar Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Personalizar
Personalizar=(Fin)
