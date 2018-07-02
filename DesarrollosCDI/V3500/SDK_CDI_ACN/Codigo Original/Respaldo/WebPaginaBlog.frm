[Forma]
Clave=WebPaginaBlog
Nombre=Blog de la Página
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=524
PosicionInicialArriba=304
PosicionInicialAlturaCliente=511
PosicionInicialAncho=921
ListaAcciones=(Lista)
Comentarios=Lista(Info.Pagina, Info.Nombre)

[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=WebPaginaBlog
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Fecha/Hora<T>
ElementosPorPagina=200
ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=Comentarios
Filtros=S
OtroOrden=S
ListaOrden=WebPaginaBlog.Fecha<TAB>(Acendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosNombre=FechaEnTexto(WebPaginaBlog:WebPaginaBlog.Fecha, <T>dd/mmm/aaaa hh:nn am/pm<T>)
FiltroGeneral=WebPaginaBlog.Pagina=<T>{Info.Pagina}<T>

[Lista.WebPaginaBlog.Comentarios]
Carpeta=Lista
Clave=WebPaginaBlog.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
0=143
1=615

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

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

[Lista.WebPaginaBlog.Calificacion]
Carpeta=Lista
Clave=WebPaginaBlog.Calificacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Personalizar
Personalizar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=WebPaginaBlog.Comentarios
WebPaginaBlog.Comentarios=WebPaginaBlog.Calificacion
WebPaginaBlog.Calificacion=(Fin)
