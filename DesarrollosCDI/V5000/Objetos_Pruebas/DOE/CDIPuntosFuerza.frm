
[Forma]
Clave=CDIPuntosFuerza
Icono=0
Modulos=(Todos)
Nombre=Puntos por posicion
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIPuntosFuerza
CarpetaPrincipal=CDIPuntosFuerza
PosicionInicialIzquierda=555
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=256
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIPuntosFuerza]
Estilo=Hoja
Clave=CDIPuntosFuerza
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPuntosFuerza
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



FiltroGeneral=ClaveTorneo=<T>{Info.CDIDeporte}<T><BR>and Fuerza=<T>{Info.CDIFuerzaDeporte}<T><BR>and Rama=<T>{Info.CDIramaDeporte}<T>
[CDIPuntosFuerza.CDIPuntosFuerza.Posicion]
Carpeta=CDIPuntosFuerza
Clave=CDIPuntosFuerza.Posicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPuntosFuerza.CDIPuntosFuerza.Puntos]
Carpeta=CDIPuntosFuerza
Clave=CDIPuntosFuerza.Puntos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPuntosFuerza.Columnas]
ClaveTorneo=127
fuerza=129
Rama=103
Posicion=87
Puntos=82

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S









[CDIPuntosFuerza.ListaEnCaptura]
(Inicio)=CDIPuntosFuerza.Posicion
CDIPuntosFuerza.Posicion=CDIPuntosFuerza.Puntos
CDIPuntosFuerza.Puntos=(Fin)

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S









[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
