
[Forma]
Clave=CDIJaiEx
Icono=396
Modulos=(Todos)
Nombre=Registro llamadas JAI

ListaCarpetas=CDIJaiEx
CarpetaPrincipal=CDIJaiEx
PosicionInicialAlturaCliente=387
PosicionInicialAncho=1011
PosicionInicialIzquierda=219
PosicionInicialArriba=178
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionSec1=229
[CDIJaiEx]
Estilo=Hoja
Clave=CDIJaiEx
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIJaiEx
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
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
FiltroTipo=M�ltiple (por Grupos)
FiltroGrupo1=Cte.Tipo
HojaOrdenarColumnas=S
MenuLocal=S
ListaAcciones=(Lista)
OtroOrden=S
ListaOrden=Cte.Cliente<TAB>(Acendente)
FiltroPredefinido1=
FiltroPredefinido2=
FiltroRespetar=S
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
FiltroTodo=S
FiltroTodoFinal=S
FiltroGeneral=Titular=1 and<BR>Estatus=<T>ALTA<T> AND<BR>ISNULL(CDISubsidio,0)=0<BR>AND Cliente not in (select DISTINCT cliente from cxc where concepto like <T>%JAI%<T>)
[CDIJaiEx.Cte.Cliente]
Carpeta=CDIJaiEx
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[CDIJaiEx.Cte.Nombre]
Carpeta=CDIJaiEx
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIJaiEx.Cte.Tipo]
Carpeta=CDIJaiEx
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[CDIJaiEx.Cte.Descripcion13]
Carpeta=CDIJaiEx
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIJaiEx.Cte.Descripcion15]
Carpeta=CDIJaiEx
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIJaiEx.Columnas]
Cliente=52
CDISocio=64
Nombre=232
Tipo=60
Estatus=50
Descripcion13=67
Descripcion15=80







Socio=50
Categoria=89

Llamadas=52
Participa=46
LlamarDespues=76
CDILog1=64
CDILog2=79
CDILog3=44
[CDIJaiEx.Cte.Socio]
Carpeta=CDIJaiEx
Clave=Cte.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIJaiEx.Cte.Categoria]
Carpeta=CDIJaiEx
Clave=Cte.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[Acciones.RegLlamada]
Nombre=RegLlamada
Boton=0
NombreDesplegar=Registrar Llamada
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDISocAporJai
Antes=S
Visible=S















Multiple=S
ListaAccionesMultiples=cA
Activo=S
AntesExpresiones=asigna(info.cliente,CDIJaiEx:Cte.Cliente)<BR>ASigna(info.CDISocio,CDIJaiEx:Cte.Socio)
[CDIJaiEx.Cte.CDILog1]
Carpeta=CDIJaiEx
Clave=Cte.CDILog1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIJaiEx.Cte.CDILog2]
Carpeta=CDIJaiEx
Clave=Cte.CDILog2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco








[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

EspacioPrevio=S
[Acciones.Verllamadas]
Nombre=Verllamadas
Boton=0
NombreDesplegar=Ver llamadas
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDISocAporJaiD
Activo=S
Antes=S
Visible=S







AntesExpresiones=asigna(info.cliente,CDIJaiEx:Cte.Cliente)








[CDIJaiEx.Cte.CDILog3]
Carpeta=CDIJaiEx
Clave=Cte.CDILog3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.LlamadasHacer]
Nombre=LlamadasHacer
Boton=6
NombreEnBoton=S
NombreDesplegar=LLamadas por realizar
EnBarraHerramientas=S
TipoAccion=Formas
Activo=S
Visible=S


ClaveAccion=cdillamxhacer
[Acciones.LlamadasHechas]
Nombre=LlamadasHechas
Boton=6
NombreEnBoton=S
NombreDesplegar=Llamadas Realizadas
EnBarraHerramientas=S
TipoAccion=Formas
Activo=S
Visible=S



EspacioPrevio=S




























































































ClaveAccion=CDIllamHechas
[Acciones.RegLlamada.cA]
Nombre=cA
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=FormaModal(<T>CDISocAporJai<T>)<BR> actualizarForma
[Acciones.RegLlamada.ListaAccionesMultiples]
(Inicio)=cA
cA=Actualizar Forma
Actualizar Forma=(Fin)

























[CDIJaiEx.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Socio
Cte.Socio=Cte.Nombre
Cte.Nombre=Cte.Tipo
Cte.Tipo=Cte.Categoria
Cte.Categoria=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=Cte.CDILog3
Cte.CDILog3=Cte.CDILog1
Cte.CDILog1=Cte.CDILog2
Cte.CDILog2=(Fin)

[CDIJaiEx.ListaAcciones]
(Inicio)=RegLlamada
RegLlamada=Verllamadas
Verllamadas=(Fin)



















[Forma.ListaAcciones]
(Inicio)=LlamadasHacer
LlamadasHacer=LlamadasHechas
LlamadasHechas=Cerrar
Cerrar=(Fin)
