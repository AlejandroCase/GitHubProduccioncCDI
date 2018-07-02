
[Forma]
Clave=Vic_ListaPrecios
Icono=140
Modulos=(Todos)
DialogoAbrir=S
Nombre=<T>Lista de precios<T>

Menus=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaCarpetas=Vic_ListaPrecios
CarpetaPrincipal=Vic_ListaPrecios
PosicionInicialAlturaCliente=196
PosicionInicialAncho=524
BarraAyuda=S
PosicionInicialIzquierda=259
PosicionInicialArriba=415
ListaAcciones=(Lista)
MenuPrincipal=(Lista)
[(Carpeta Abrir)]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Lista Precios
Clave=(Carpeta Abrir)
Filtros=S
OtroOrden=S
BusquedaRapidaControles=S
MenuLocal=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=Vic_ListaPrecios
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
CarpetaVisible=S

FiltroMonedasCampo=vic_ListaPrecios.Moneda




ListaOrden=vic_ListaPrecios.IdListaPrecios<TAB>(Acendente)
BusquedaEnLinea=S
IconosSubTitulo=<T>Moneda<T>
FiltroMonedas=S
IconosNombre=Vic_ListaPrecios:vic_ListaPrecios.Moneda
[(Carpeta Abrir).Columnas]
0=-2
1=-2
2=-2
3=-2


4=-2
5=-2
6=-2
[Ficha.ListaEnCaptura]
(Inicio)=Vic_generaListaPrecios.ListaPrecio
Vic_generaListaPrecios.ListaPrecio=Vic_generaListaPrecios.Inmueble
Vic_generaListaPrecios.Inmueble=Vic_generaListaPrecios.Moneda
Vic_generaListaPrecios.Moneda=Vic_generaListaPrecios.Mov
Vic_generaListaPrecios.Mov=(Fin)






[Vic_generaListaPrecios.ListaEnCaptura]
(Inicio)=Vic_generaListaPrecios.ListaPrecio
Vic_generaListaPrecios.ListaPrecio=Vic_generaListaPrecios.Inmueble
Vic_generaListaPrecios.Inmueble=Vic_generaListaPrecios.Moneda
Vic_generaListaPrecios.Moneda=Vic_generaListaPrecios.Mov
Vic_generaListaPrecios.Mov=(Fin)





[Vic_ListaPrecios]
Estilo=Ficha
Clave=Vic_ListaPrecios
MenuLocal=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Vic_ListaPrecios
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=52
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco

CarpetaVisible=S












ListaEnCaptura=(Lista)




[Lista.Columnas]
0=101
1=300
2=-2

Moneda=144
TipoCambio=69









[Vic_listaPreciosGrp.Columnas]
GrupoLp=304

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S
NombreEnBoton=S
Menu=&Archivo
UsaTeclaRapida=S


[Acciones.Abrir]
Nombre=Abrir
Boton=2
NombreEnBoton=S
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S



[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
Menu=&Archivo
UsaTeclaRapida=S
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
Activo=S
Visible=S








ConCondicion=S
ClaveAccion=Guardar Cambios
EjecucionConError=S
EjecucionCondicion=SQL(<T>SELECT 1 FROM Vic_ListaPrecios Where Inmueble =:tInm and Moneda = :tMoneda and Grupo = :tGrupo and Mov = :tMov<T>, Vic_ListaPrecios:vic_ListaPrecios.Inmueble,Vic_ListaPrecios:vic_ListaPrecios.Moneda,Vic_ListaPrecios:vic_ListaPrecios.Grupo,Vic_ListaPrecios:vic_ListaPrecios.Mov) <> 1
EjecucionMensaje=<T>Esta Lista de Precios ya exise<T>
[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreEnBoton=S
Menu=&Archivo
UsaTeclaRapida=S
NombreDesplegar=&Imprimir
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S











EspacioPrevio=S
[Acciones.EditarLista]
Nombre=EditarLista
Boton=17
NombreEnBoton=S
NombreDesplegar=Editar Lista de Precios
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S























EspacioPrevio=S
Expresion=Asigna(  Info.Vic_listaPrecios, Vic_ListaPrecios:vic_ListaPrecios.IdListaPrecios )<BR><BR>Ejecutar(<T>PlugIns/vic_listaprecios/vic_intelisis_listaprecios.exe <T>+ SQL(<T>SELECT @@SERVERNAME<T>)+<T>&<T>+BaseDatos+<T>&<T>+SQL(<T>SELECT system_user<T>)+<T>&<T>+Info.Vic_listaPrecios+<T>&<T>+ EstacionTrabajo)
ActivoCondicion=SQL(<T>SELECT 1 FROM Vic_ListaPrecios Where Inmueble =:tInm and Moneda = :tMoneda and Grupo = :tGrupo and Mov = :tMov<T>, Vic_ListaPrecios:vic_ListaPrecios.Inmueble,Vic_ListaPrecios:vic_ListaPrecios.Moneda,Vic_ListaPrecios:vic_ListaPrecios.Grupo,Vic_ListaPrecios:vic_ListaPrecios.Mov)=1
[Acciones.GrupoLp]
Nombre=GrupoLp
Boton=71
NombreEnBoton=S
NombreDesplegar=Grupos
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ListaPrecioGrp
Activo=S
Visible=S





Menu=&Maestros





























































[Vic_ListaPrecios.vic_ListaPrecios.Inmueble]
Carpeta=Vic_ListaPrecios
Clave=vic_ListaPrecios.Inmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Vic_ListaPrecios.vic_Inmueble.Nombre]
Carpeta=Vic_ListaPrecios
Clave=vic_Inmueble.Nombre
Editar=S
OcultaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

Pegado=S
[Vic_ListaPrecios.vic_ListaPrecios.Mov]
Carpeta=Vic_ListaPrecios
Clave=vic_ListaPrecios.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Vic_ListaPrecios.vic_ListaPrecios.Moneda]
Carpeta=Vic_ListaPrecios
Clave=vic_ListaPrecios.Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Vic_ListaPrecios.vic_ListaPrecios.Grupo]
Carpeta=Vic_ListaPrecios
Clave=vic_ListaPrecios.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco








[Vic_ListaPrecios.ListaEnCaptura]
(Inicio)=vic_ListaPrecios.Inmueble
vic_ListaPrecios.Inmueble=vic_Inmueble.Nombre
vic_Inmueble.Nombre=vic_ListaPrecios.Mov
vic_ListaPrecios.Mov=vic_ListaPrecios.Moneda
vic_ListaPrecios.Moneda=vic_ListaPrecios.Grupo
vic_ListaPrecios.Grupo=(Fin)






























[(Carpeta Abrir).vic_ListaPrecios.Inmueble]
Carpeta=(Carpeta Abrir)
Clave=vic_ListaPrecios.Inmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco






[(Carpeta Abrir).vic_ListaPrecios.Grupo]
Carpeta=(Carpeta Abrir)
Clave=vic_ListaPrecios.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


































[(Carpeta Abrir).vic_Inmueble.Nombre]
Carpeta=(Carpeta Abrir)
Clave=vic_Inmueble.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco


[(Carpeta Abrir).vic_ListaPrecios.Mov]
Carpeta=(Carpeta Abrir)
Clave=vic_ListaPrecios.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco























[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=vic_ListaPrecios.Grupo
vic_ListaPrecios.Grupo=vic_ListaPrecios.Inmueble
vic_ListaPrecios.Inmueble=vic_Inmueble.Nombre
vic_Inmueble.Nombre=vic_ListaPrecios.Mov
vic_ListaPrecios.Mov=(Fin)





































































































































































[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=EditarLista
EditarLista=Imprimir
Imprimir=GrupoLp
GrupoLp=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Maestros
&Maestros=(Fin)
