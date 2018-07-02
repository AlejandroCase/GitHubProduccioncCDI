
[Forma]
Clave=CDICteMismaDireccion
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Misma Direccion
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Seleccionar
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=304
PosicionInicialArriba=132
PosicionInicialAlturaCliente=476
PosicionInicialAncho=757
EsConsultaExclusiva=S
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
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
BusquedaRapidaControles=S
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
BusquedaEnLinea=S
ElementosPorPagina=200
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
FiltroGeneral=Cte.Tipo = <T>Socio<T>  and  Cte.CDISocio=1
[Lista.Cte.Cliente]
Carpeta=Lista
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[Lista.Cte.Delegacion]
Carpeta=Lista
Clave=Cte.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Cte.Colonia]
Carpeta=Lista
Clave=Cte.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Cte.CodigoPostal]
Carpeta=Lista
Clave=Cte.CodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.Cte.Poblacion]
Carpeta=Lista
Clave=Cte.Poblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Cte.Estado]
Carpeta=Lista
Clave=Cte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.Cte.Pais]
Carpeta=Lista
Clave=Cte.Pais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Acciones.Seleccionar.Asiganar]
Nombre=Asiganar
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>EXEC spCDICopiaDireccionOtroSocio :tSocio, :tSocio1, :nSec<T>, Cte:Cte.Cliente, Info.Cliente, Info.Numero )<BR>OtraForma( <T>CDISocios<T>, Forma.ActualizarForma )
[Acciones.Seleccionar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[Lista.Columnas]
Cliente=54
PersonalNombre=414
Delegacion=184
Colonia=184
CodigoPostal=69
Poblacion=184
Estado=184
Pais=184



PersonalNombres=304
PersonalApellidoPaterno=304
PersonalApellidoMaterno=304

0=140
1=97
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2




[Acciones.Seleccionar.ListaAccionesMultiples]
(Inicio)=Asiganar
Asiganar=Cerrar
Cerrar=(Fin)







[Lista.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Delegacion
Cte.Delegacion=Cte.Colonia
Cte.Colonia=Cte.CodigoPostal
Cte.CodigoPostal=Cte.Poblacion
Cte.Poblacion=Cte.Estado
Cte.Estado=Cte.Pais
Cte.Pais=(Fin)
