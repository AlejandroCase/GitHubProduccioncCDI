[Forma]
Clave=AtributoNivel
Icono=0
Modulos=(Todos)
Nombre=Niveles del Atributo

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
Comentarios=Info.Atributo
PosicionInicialIzquierda=438
PosicionInicialArriba=177
PosicionInicialAlturaCliente=377
PosicionInicialAncho=549
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AtributoNivel
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
CarpetaVisible=S
PermiteEditar=S
ListaEnCaptura=(Lista)

Filtros=S
OtroOrden=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
ListaOrden=AtributoNivel.Orden<TAB>(Acendente)
FiltroGeneral=AtributoNivel.Atributo=<T>{Info.Atributo}<T>
[Lista.AtributoNivel.Nivel]
Carpeta=Lista
Clave=AtributoNivel.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.AtributoNivel.Valor]
Carpeta=Lista
Clave=AtributoNivel.Valor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
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

[Lista.Columnas]
Nivel=343
Valor=64

Orden=42

Descalifica=59
[Lista.AtributoNivel.Orden]
Carpeta=Lista
Clave=AtributoNivel.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Lista.AtributoNivel.Descalifica]
Carpeta=Lista
Clave=AtributoNivel.Descalifica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=AtributoNivel.Nivel
AtributoNivel.Nivel=AtributoNivel.Valor
AtributoNivel.Valor=AtributoNivel.Descalifica
AtributoNivel.Descalifica=AtributoNivel.Orden
AtributoNivel.Orden=(Fin)
