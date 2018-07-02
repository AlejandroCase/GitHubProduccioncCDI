[Forma]
Clave=CDIPrecioPrograma
Icono=0
Modulos=(Todos)
MovModulo=CDIPrecioPrograma
Nombre=<T>Programa en Politica: <T>+Info.id
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
ListaCarpetas=(Lista)
CarpetaPrincipal=CDIPrecioPrograma
PosicionInicialIzquierda=243
PosicionInicialArriba=95
PosicionInicialAlturaCliente=539
PosicionInicialAncho=880
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionSec1=344
PosicionCol1=420

Comentarios=<T>Politica: <T>+Info.id
[CDIPrecioPrograma]
Estilo=Iconos
Clave=CDIPrecioPrograma
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEPrograma
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
BusquedaRapidaControles=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCampo=CEPrograma.FechaInicio
FiltroFechasDefault=Este Año
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
IconosSeleccionMultiple=S
IconosSubTitulo=Programa
PestanaNombre=Seleccionar
Pestana=S
PestanaOtroNombre=S
IconosNombre=CEPrograma:CEPrograma.Programa
CarpetaVisible=S

[CDIPrecioPrograma.Columnas]
0=105
1=43
2=84
3=84
IdPolitica=64
Programa=86
AplicaPolitica=65
Ciclo=55
FechaInicio=94
FechaFin=94
4=75
5=-2
6=-2
7=-2
8=-2

[CDIPrecioPrograma.CEPrograma.Ciclo]
Carpeta=CDIPrecioPrograma
Clave=CEPrograma.Ciclo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPrecioPrograma.CEPrograma.FechaInicio]
Carpeta=CDIPrecioPrograma
Clave=CEPrograma.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPrecioPrograma.CEPrograma.FechaFin]
Carpeta=CDIPrecioPrograma
Clave=CEPrograma.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Acciones.Seleccionar Todo]
Nombre=Seleccionar Todo
Boton=11
NombreDesplegar=Seleccionar Todo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
ConCondicion=S
EspacioPrevio=S
ActivoCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)=0
EjecucionCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)=0
VisibleCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)=0

[Acciones.Quitar Seleccion]
Nombre=Quitar Seleccion
Boton=12
NombreDesplegar=Quitar Seleccion
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
ConCondicion=S
EspacioPrevio=S
ActivoCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)=0
EjecucionCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)=0
VisibleCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)=0

[Acciones.Expresion]
Nombre=Expresion
Boton=54
NombreEnBoton=S
NombreDesplegar=Registrar Seleccion
EnBarraHerramientas=S
TipoAccion=Expresion
ConCondicion=S
EspacioPrevio=S
Expresion=RegistrarSeleccion<BR>ProcesarSql(<T>CDIPrecioProg :nId, :nEs<T>,Info.Id,EstacionTrabajo)<BR>ActualizarForma
ActivoCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)=0
EjecucionCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)=0
VisibleCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)=0

[CDIPrecioPrograma.CEPrograma.Estatus]
Carpeta=CDIPrecioPrograma
Clave=CEPrograma.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Seleccion.CDIPrecioPrograma.Programa]
Carpeta=Seleccion
Clave=CDIPrecioPrograma.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[Seleccion.Columnas]
Programa=64
Ciclo=95
FechaInicio=94
FechaFin=94
Estatus=94
IdPolitica=64

[Seleccion.CEPrograma.Ciclo]
Carpeta=Seleccion
Clave=CEPrograma.Ciclo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Seleccion.CEPrograma.FechaInicio]
Carpeta=Seleccion
Clave=CEPrograma.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Seleccion.CEPrograma.FechaFin]
Carpeta=Seleccion
Clave=CEPrograma.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Seleccion.CEPrograma.Estatus]
Carpeta=Seleccion
Clave=CEPrograma.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Seleccion.CDIPrecioPrograma.IdPolitica]
Carpeta=Seleccion
Clave=CDIPrecioPrograma.IdPolitica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Eliminar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=ProcesarSql(<T>CDIPrecioProgramaElim :nId<T>,Info.id)
Activo=S
Visible=S

[Acciones.Eliminar.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=Borrar Selección
Multiple=S
EnBarraHerramientas=S
TipoAccion=Expresion
ListaAccionesMultiples=(Lista)
NombreEnBoton=S
ConCondicion=S
EspacioPrevio=S
ActivoCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)>0
EjecucionCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)>0
VisibleCondicion=sql(<T>select count(idPolitica) from CDIPrecioPrograma where idPolitica=:nId<T>,info.id)>0

[Seleccion.ListaEnCaptura]
(Inicio)=CDIPrecioPrograma.IdPolitica
CDIPrecioPrograma.IdPolitica=CDIPrecioPrograma.Programa
CDIPrecioPrograma.Programa=CEPrograma.Ciclo
CEPrograma.Ciclo=CEPrograma.FechaInicio
CEPrograma.FechaInicio=CEPrograma.FechaFin
CEPrograma.FechaFin=CEPrograma.Estatus
CEPrograma.Estatus=(Fin)

[ConsultaSeleccion]
Estilo=Hoja
PestanaNombre=Seleccionados
Clave=ConsultaSeleccion
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDIPrecioPrograma
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
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
Pestana=S
PestanaOtroNombre=S
CarpetaVisible=S
OtroOrden=S
ListaOrden=CEPrograma.FechaInicio<TAB>(Acendente)
FiltroGeneral=CDIPrecioPrograma.IdPolitica={info.id}

[ConsultaSeleccion.CDIPrecioPrograma.Programa]
Carpeta=ConsultaSeleccion
Clave=CDIPrecioPrograma.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[ConsultaSeleccion.CEPrograma.Ciclo]
Carpeta=ConsultaSeleccion
Clave=CEPrograma.Ciclo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ConsultaSeleccion.CEPrograma.FechaInicio]
Carpeta=ConsultaSeleccion
Clave=CEPrograma.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[ConsultaSeleccion.CEPrograma.FechaFin]
Carpeta=ConsultaSeleccion
Clave=CEPrograma.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[ConsultaSeleccion.CEPrograma.Estatus]
Carpeta=ConsultaSeleccion
Clave=CEPrograma.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[ConsultaSeleccion.CDIPrecioPrograma.AplicaPolitica]
Carpeta=ConsultaSeleccion
Clave=CDIPrecioPrograma.AplicaPolitica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[ConsultaSeleccion.Columnas]
Programa=64
Ciclo=48
FechaInicio=80
FechaFin=84
Estatus=63
AplicaPolitica=65

[CDIPrecioPrograma.ListaEnCaptura]
(Inicio)=CEPrograma.Ciclo
CEPrograma.Ciclo=CEPrograma.FechaInicio
CEPrograma.FechaInicio=CEPrograma.FechaFin
CEPrograma.FechaFin=CEPrograma.Estatus
CEPrograma.Estatus=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
EspacioPrevio=S

[Acciones.Eliminar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Forma
Actualizar Forma=(Fin)

[ConsultaSeleccion.ListaEnCaptura]
(Inicio)=CDIPrecioPrograma.Programa
CDIPrecioPrograma.Programa=CEPrograma.Ciclo
CEPrograma.Ciclo=CEPrograma.FechaInicio
CEPrograma.FechaInicio=CEPrograma.FechaFin
CEPrograma.FechaFin=CEPrograma.Estatus
CEPrograma.Estatus=CDIPrecioPrograma.AplicaPolitica
CDIPrecioPrograma.AplicaPolitica=(Fin)











































[Forma.ListaCarpetas]
(Inicio)=CDIPrecioPrograma
CDIPrecioPrograma=ConsultaSeleccion
ConsultaSeleccion=(Fin)

[Forma.ListaAcciones]
(Inicio)=Seleccionar Todo
Seleccionar Todo=Quitar Seleccion
Quitar Seleccion=Expresion
Expresion=Eliminar
Eliminar=Aceptar
Aceptar=(Fin)
