
[Forma]
Clave=cdictecomerP
Icono=0
Modulos=(Todos)
Nombre=cdictecomerP
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=cdictecomerP
CarpetaPrincipal=cdictecomerP
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1319
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ExpresionesAlMostrar=INFORMACION(ESTACIONTRABAJO)
[cdictecomerP]
Estilo=Iconos
PestanaOtroNombre=S
Clave=cdictecomerP
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICteComerv
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S

FiltroGrupo1=Cte.Categoria
FiltroTodo=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConRejilla=S
IconosSeleccionMultiple=S
ElementosPorPaginaEsp=200
IconosConPaginas=S
IconosNombre=CDICteComerv:Cte.Cliente
FiltroGeneral=Cte.Estatus=<T>BAJA<T> AND<BR>Cte.Titular=1
[cdictecomerP.Cte.Cliente]
Carpeta=cdictecomerP
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[cdictecomerP.CDICteComer.Socio]
Carpeta=cdictecomerP
Clave=CDICteComer.Socio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[cdictecomerP.CDICteComer.Contactado]
Carpeta=cdictecomerP
Clave=CDICteComer.Contactado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdictecomerP.CDICteComer.LlamarDespues]
Carpeta=cdictecomerP
Clave=CDICteComer.LlamarDespues
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdictecomerP.CDICteComer.LlamadaCuando]
Carpeta=cdictecomerP
Clave=CDICteComer.LlamadaCuando
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


EditarConBloqueo=N
[cdictecomerP.Columnas]
Cliente=64
Socio=64
Contactado=64
LlamarDespues=76
LlamadaCuando=81
Cliente_1=64









Nombre=184
Descripcion13=53
Descripcion15=84

Fecha1=79
Fecha2=73
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2
[cdictecomerP.Cte.Nombre]
Carpeta=cdictecomerP
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[cdictecomerP.Cte.Descripcion13]
Carpeta=cdictecomerP
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[cdictecomerP.Cte.Descripcion15]
Carpeta=cdictecomerP
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[cdictecomerP.Cte.Fecha1]
Carpeta=cdictecomerP
Clave=Cte.Fecha1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdictecomerP.Cte.Fecha2]
Carpeta=cdictecomerP
Clave=Cte.Fecha2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco









[cdictecomerP.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=CDICteComer.Socio
CDICteComer.Socio=Cte.Nombre
Cte.Nombre=Cte.Fecha1
Cte.Fecha1=Cte.Fecha2
Cte.Fecha2=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=CDICteComer.Contactado
CDICteComer.Contactado=CDICteComer.LlamarDespues
CDICteComer.LlamarDespues=CDICteComer.LlamadaCuando
CDICteComer.LlamadaCuando=(Fin)
