
[Forma]
Clave=eDocDOrden1
Icono=48
BarraHerramientas=S
Modulos=(Todos)
Nombre=Ordenar Secciones
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Orden
CarpetaPrincipal=Orden
PosicionInicialAlturaCliente=338
PosicionInicialAncho=599
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=508
PosicionInicialArriba=249
ListaAcciones=Ordenar
Comentarios=<T>Utilice arrastrar y soltar para cambiar el orden<T>
[Orden]
Estilo=Iconos
Clave=Orden
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=eDocD1
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
OtroOrden=S
IconosSubTitulo=<T>Orden<T>
IconosCambiarOrden=S
ListaEnCaptura=eDocD1.Seccion
ListaOrden=eDocD1.Orden<TAB>(Acendente)

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosNombre=eDocD1:eDocD1.Orden
FiltroGeneral=eDocD1.Modulo = {Comillas(Info.Modulo)} AND eDocD1.eDoc = {Comillas(Info.Descripcion)}
[Orden.eDocD1.Seccion]
Carpeta=Orden
Clave=eDocD1.Seccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Orden.Columnas]
0=-2
1=538

[Acciones.Ordenar]
Nombre=Ordenar
Boton=3
NombreDesplegar=&Guardar Nuevo Orden
EnBarraHerramientas=S
TipoAccion=Ventana
Activo=S
Visible=S
NombreEnBoton=S
ClaveAccion=Cerrar
Antes=S
AntesExpresiones=RegistrarListaSt(<T>Lista<T>, <T>eDocD1.Seccion<T>)<BR>EjecutarSQL(<T>speDocOrdenarSeccion :nEstacion, :tModulo, :teDoc<T>, EstacionTrabajo,Info.Modulo, Info.Descripcion)
