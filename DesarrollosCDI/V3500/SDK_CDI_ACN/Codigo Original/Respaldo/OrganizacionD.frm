
[Forma]
Clave=OrganizacionD
Icono=0
Modulos=(Todos)
Nombre=Posiciones de la Organización

ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Organizacion, Info.Nombre)
PosicionInicialIzquierda=248
PosicionInicialArriba=103
PosicionInicialAlturaCliente=525
PosicionInicialAncho=869
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionSec1=368
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
OtroOrden=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=OrganizacionD
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=OrganizacionD.Orden<TAB>(Acendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

HojaIndicador=S
FiltroGeneral=OrganizacionD.Organizacion={Info.Organizacion}
[Lista.OrganizacionD.Posicion]
Carpeta=Lista
Clave=OrganizacionD.Posicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[Lista.OrganizacionD.RolEsp]
Carpeta=Lista
Clave=OrganizacionD.RolEsp
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
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


[Lista.OrganizacionD.Nombre]
Carpeta=Lista
Clave=OrganizacionD.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Columnas]
Posicion=124
Nombre=377
CapacidadEsp=104
RolEsp=251

Capacidad=55

[Lista.OrganizacionD.Capacidad]
Carpeta=Lista
Clave=OrganizacionD.Capacidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=E&liminar
EnBarraHerramientas=S
ConfirmarAntes=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Visible=S

NombreEnBoton=S
ActivoCondicion=no OrganizacionD:OrganizacionD.TieneMovimientos


[Acciones.Insertar]
Nombre=Insertar
Boton=1
NombreEnBoton=S
NombreDesplegar=&Insertar
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Insertar
Activo=S
Visible=S
















[Entidades]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Entidades
Clave=Entidades
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=EntidadPosicion
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=OrganizacionD
LlaveLocal=(Lista)

LlaveMaestra=(Lista)
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Entidad<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
MenuLocal=S


IconosNombre=EntidadPosicion:EntidadPosicion.Entidad

ListaAcciones=EntidadPersonalizar
[Entidades.Entidad.Nombre]
Carpeta=Entidades
Clave=Entidad.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Entidades.EntidadPosicion.Rol]
Carpeta=Entidades
Clave=EntidadPosicion.Rol
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[Entidades.Columnas]
0=109
1=404
2=259

[Lista.ListaEnCaptura]
(Inicio)=OrganizacionD.Posicion
OrganizacionD.Posicion=OrganizacionD.Nombre
OrganizacionD.Nombre=OrganizacionD.Capacidad
OrganizacionD.Capacidad=OrganizacionD.RolEsp
OrganizacionD.RolEsp=(Fin)





[Acciones.EntidadPersonalizar]
Nombre=EntidadPersonalizar
Boton=0
NombreDesplegar=Personalizar Vista
EnMenu=S
Carpeta=Entidades
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Entidades.LlaveLocal]
(Inicio)=EntidadPosicion.Organizacion
EntidadPosicion.Organizacion=EntidadPosicion.Posicion
EntidadPosicion.Posicion=(Fin)

[Entidades.LlaveMaestra]
(Inicio)=OrganizacionD.Organizacion
OrganizacionD.Organizacion=OrganizacionD.Posicion
OrganizacionD.Posicion=(Fin)

[Entidades.ListaEnCaptura]
(Inicio)=Entidad.Nombre
Entidad.Nombre=EntidadPosicion.Rol
EntidadPosicion.Rol=(Fin)











[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Entidades
Entidades=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Insertar
Insertar=Eliminar
Eliminar=(Fin)
