
[Forma]
Clave=HHCECambioLog
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Pospuestos Generados
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=455
PosicionInicialArriba=317
PosicionInicialAlturaCliente=292
PosicionInicialAncho=370
ListaAcciones=(Lista)
[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
MostrarConteoRegistros=S
Zona=A1
Vista=HHCECambioLog
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
IconosSubTitulo=<T>Movimiento<T>
ListaEnCaptura=CE.Programa

PestanaOtroNombre=S
PestanaNombre=movimientos
IconosNombre=HHCECambioLog:CE.Mov + <T> <T> + HHCECambioLog:CE.MovID
FiltroGeneral=HHCECambioLog.Estacion = {EstacionTrabajo}
[Lista.CE.Programa]
Carpeta=Lista
Clave=CE.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.Columnas]
0=209
1=136

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

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
TipoAccion=Reportes Impresora
ClaveAccion=HHPospuesto
Activo=S
Visible=S


ListaParametros1=HHCECambioLog:CE.ID
ListaParametros=S
ConCondicion=S
EjecucionCondicion=ConDatos(HHCECambioLog:CE.ID)
[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Excel
EnBarraHerramientas=S
TipoAccion=Reportes Excel
ClaveAccion=HHPospuesto
Activo=S
Visible=S











ListaParametros1=HHCECambioLog:CE.ID
ListaParametros=S







ConCondicion=S
EjecucionCondicion=ConDatos(HHCECambioLog:CE.ID)
[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Preliminar
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=HHPospuesto
Activo=S
Visible=S



EspacioPrevio=S
ListaParametros=S






















ListaParametros1=HHCECambioLog:CE.ID


















ConCondicion=S
EjecucionCondicion=ConDatos(HHCECambioLog:CE.ID)






[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=Imprimir
Imprimir=Excel
Excel=(Fin)
