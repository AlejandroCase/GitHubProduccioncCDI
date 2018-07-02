
[Forma]
Clave=CDISocioTarjeta
Icono=0
Modulos=(Todos)
MovModulo=SOC
Nombre=CDI Socio Tarjeta

ListaCarpetas=CDISocioTarjeta
CarpetaPrincipal=CDISocioTarjeta
PosicionInicialIzquierda=764
PosicionInicialArriba=184
PosicionInicialAlturaCliente=202
PosicionInicialAncho=265
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraHerramientas=S
Comentarios=<T>Socio: <T>&Temp.Texto
[CDISocioTarjeta]
Estilo=Hoja
PestanaNombre=Tarjetas Asignadas
Clave=CDISocioTarjeta
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocioTarjeta
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaConfirmarEliminar=S
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

FiltroGeneral=CDISocioTarjeta.Cte=<T>{Temp.Texto}<T>
[CDISocioTarjeta.Columnas]
Targeta=152

Tarjeta=155
Estatus=67
[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
EnBarraHerramientas=S

EspacioPrevio=S
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S














[CDISocioTarjeta.CDISocioTarjeta.Tarjeta]
Carpeta=CDISocioTarjeta
Clave=CDISocioTarjeta.Tarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






















[CDISocioTarjeta.ListaEnCaptura]
(Inicio)=CDISocioTarjeta.Tarjeta
CDISocioTarjeta.Tarjeta=CDISocioTarjeta.Estatus
CDISocioTarjeta.Estatus=(Fin)

[CDISocioTarjeta.CDISocioTarjeta.Estatus]
Carpeta=CDISocioTarjeta
Clave=CDISocioTarjeta.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco







[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
