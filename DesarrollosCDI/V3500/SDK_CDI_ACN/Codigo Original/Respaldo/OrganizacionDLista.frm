
[Forma]
Clave=OrganizacionDLista
Icono=6
Modulos=(Todos)
Nombre=Posiciones de la Organización

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
Comentarios=Lista(Info.Organizacion, Info.Nombre)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=346
PosicionInicialArriba=138
PosicionInicialAlturaCliente=456
PosicionInicialAncho=750
[Lista]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Posiciones
Clave=Lista
Filtros=S
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=OrganizacionD
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Posición<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=OrganizacionD.Nombre

ListaOrden=OrganizacionD.Orden<TAB>(Acendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
IconosNombre=OrganizacionD:OrganizacionD.Posicion
FiltroGeneral=OrganizacionD.Organizacion={Info.Organizacion}
[Lista.ListaEnCaptura]
(Inicio)=OrganizacionD.Nombre
OrganizacionD.Nombre=OrganizacionD.Capacidad
OrganizacionD.Capacidad=OrganizacionD.RolEsp
OrganizacionD.RolEsp=(Fin)

[Lista.OrganizacionD.Nombre]
Carpeta=Lista
Clave=OrganizacionD.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



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

[Lista.Columnas]
0=108
1=469
2=-2
3=-2
