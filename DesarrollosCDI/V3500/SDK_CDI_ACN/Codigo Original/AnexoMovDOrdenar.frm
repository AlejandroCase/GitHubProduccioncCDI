[Forma]
Clave=AnexoMovDOrdenar
Icono=48
Modulos=(Todos)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
Nombre=Ordenar Anexos
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaCarpetas=Lista
CarpetaPrincipal=Lista
ListaAcciones=(Lista)
PosicionInicialIzquierda=302
PosicionInicialArriba=204
PosicionInicialAltura=360
PosicionInicialAncho=419
Comentarios=<T>Utilice arrastrar y soltar para cambiar el orden<T>

[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AnexoMovD
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Registros
OtroOrden=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
IconosSubTitulo=<T>Orden<T>
IconosCambiarOrden=S
ListaEnCaptura=AnexoMovD.Nombre
ListaOrden=AnexoMovD.Orden<TAB>(Acendente)
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosNombre=AnexoMovD:AnexoMovD.Orden
FiltroGeneral=AnexoMovD.Rama=<T>{Info.Rama}<T> AND AnexoMovD.ID={Info.ID} AND AnexoMovD.Cuenta=<T>{Info.Cuenta}<T>

[Acciones.Campos]
Nombre=Campos
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S
EspacioPrevio=S

[Acciones.Ordenar]
Nombre=Ordenar
Boton=3
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Antes=S
Visible=S
NombreDesplegar=&Guardar Nuevo Orden
NombreEnBoton=S
AntesExpresiones=RegistrarListaSt(<T>Lista<T>, <T>AnexoMovD.Nombre<T>)<BR>EjecutarSQL(<T>spOrdenarMaestro :nEstacion, :tTabla, :tModulo, :nID, :tCuenta<T>, EstacionTrabajo, <T>AnexoMovD<T>, Info.Rama, Info.ID, Info.Cuenta)

[Lista.Columnas]
0=52
1=269

[Lista.AnexoMovD.Nombre]
Carpeta=Lista
Clave=AnexoMovD.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Ordenar
Ordenar=Campos
Campos=(Fin)
