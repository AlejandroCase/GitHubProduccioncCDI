
[Forma]
Clave=CDIExpAsistePersComite
Icono=0
Modulos=(Todos)
Nombre=Explorar Checadas Personal
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIExpAsistePers
PosicionInicialIzquierda=113
PosicionInicialArriba=0
PosicionInicialAlturaCliente=728
PosicionInicialAncho=1139
PosicionCol1=928
PosicionSec1=541
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionCol2=791
Comentarios=Hoy
ExpresionesAlMostrar=asigna(Info.Proyecto,sql(<T>Select GrupoTrabajo FROM Usuario where usuario=:tU<T>,usuario))
[CDIExpAsistePers]
Estilo=Hoja
Clave=CDIExpAsistePers
BusquedaRapidaControles=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIExpAsistePers
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

FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CDIExpAsistePers.FechaEmision
FiltroFechasDefault=Hoy
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
Filtros=S


FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
FiltroTodo=S
OtroOrden=S
ListaOrden=CDIExpAsistePers.FechaEmision<TAB>(Decendente)
FiltroGrupo1=CDIExpAsistePers.Tipo



ListaEnCaptura=(Lista)
MenuLocal=S
ListaAcciones=Jornada
HojaOrdenarColumnas=S
FiltroGeneral=CDIExpAsistePers.Proyecto=<T>{info.Proyecto}<T> <BR>and CDIExpAsistePers.Tipo<><T>EXTERNO<T>
[CDIExpAsistePers.Columnas]
FechaD=94
Personal=64
HoraRegistro=67


















Registro=64



PersonalEntrada=48
RegistroEntrada=82
HoraEntrada=70
FechaEntrada=73
PersonalSalida=73
RegistroSalida=72
HoraSalida=57
FechaSalida=94



Jornada=76
DiaLaboral=53
Estatus=94
EstatusPersonal=42
Nombre=111
ApellidoPaterno=101
ApellidoMaterno=105
[CDIExpAsistePers.CDIExpAsistePers.PersonalEntrada]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.PersonalEntrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[CDIExpAsistePers.CDIExpAsistePers.HoraEntrada]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.HoraEntrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIExpAsistePers.CDIExpAsistePers.FechaEntrada]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.FechaEntrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIExpAsistePers.CDIExpAsistePers.HoraSalida]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.HoraSalida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco


[CDIExpAsistePers.ListaOrden]
(Inicio)=CDIExpAsistePers.FechaEmision	(Decendente)
CDIExpAsistePers.FechaEmision	(Decendente)=CDIExpAsistePers.PersonalEntrada	(Acendente)
CDIExpAsistePers.PersonalEntrada	(Acendente)=(Fin)





[Acciones.Jornada]
Nombre=Jornada
Boton=0
NombreDesplegar=Jornada
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIVjornadaD
Activo=S
Antes=S
AntesExpresiones=asigna(info.Jornada,CDIExpAsistePers:CDIExpAsistePers.Jornada)
Visible=S






[CDIVjornadaD]
Estilo=Hoja
Clave=CDIVjornadaD
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVjornadaD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIExpAsistePers
LlaveLocal=CDIVjornadaD.Jornada
LlaveMaestra=CDIExpAsistePers.Jornada
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

[CDIVjornadaD.CDIVjornadaD.Jornada]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIVjornadaD.CDIVjornadaD.Dia]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Dia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco

[CDIVjornadaD.CDIVjornadaD.Entrada]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Entrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIVjornadaD.CDIVjornadaD.Salida]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Salida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco


[CDIVjornadaD.Columnas]
Jornada=87
Dia=56
Entrada=47
Salida=49


Descanso=52
[CDIExpAsistePers.CDIExpAsistePers.DiaLaboral]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.DiaLaboral
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco





[CDIVjornadaD.CDIVjornadaD.Descanso]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Descanso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco




[CDIExpAsistePers.CDIExpAsistePers.Jornada]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






[Imagen]
Estilo=Ficha
Clave=Imagen
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDIExpAsistePers
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Imagen.Imagen]
Carpeta=Imagen
Clave=Imagen
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ConScroll=S
SinRecapitular=S
Tamano=25x15
ColorFondo=Blanco




[Imagen.Personal.CDIPerImagen]
Carpeta=Imagen
Clave=Personal.CDIPerImagen
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=3
ColorFondo=Blanco







[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Listado Checadas Empleado
EnBarraHerramientas=S
Carpeta=CDIExpAsistePers
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S



NombreEnBoton=S



[Acciones.PresentacionJornada]
Nombre=PresentacionJornada
Boton=6
NombreEnBoton=S
NombreDesplegar=Jornada Pesonal
EnBarraHerramientas=S
Carpeta=CDIVjornadaD
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S









EspacioPrevio=S
[CDIVjornadaD.ListaEnCaptura]
(Inicio)=CDIVjornadaD.Jornada
CDIVjornadaD.Jornada=CDIVjornadaD.Dia
CDIVjornadaD.Dia=CDIVjornadaD.Entrada
CDIVjornadaD.Entrada=CDIVjornadaD.Salida
CDIVjornadaD.Salida=CDIVjornadaD.Descanso
CDIVjornadaD.Descanso=(Fin)





[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreEnBoton=S
NombreDesplegar=Enviar a Excel Checadas
EnBarraHerramientas=S
Carpeta=CDIExpAsistePers
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

EspacioPrevio=S






[Imagen.ListaEnCaptura]
(Inicio)=Personal.CDIPerImagen
Personal.CDIPerImagen=Imagen
Imagen=(Fin)











[CDIExpAsistePers.CDIExpAsistePers.EstatusPersonal]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.EstatusPersonal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco




















[CDIExpAsistePers.ListaCamposAValidar]
(Inicio)=CDIExpAsistePers.Nombre
CDIExpAsistePers.Nombre=CDIExpAsistePers.ApellidoPaterno
CDIExpAsistePers.ApellidoPaterno=CDIExpAsistePers.ApellidoMaterno
CDIExpAsistePers.ApellidoMaterno=CDIExpAsistePers.Tipo
CDIExpAsistePers.Tipo=(Fin)






[CDIExpAsistePers.CDIExpAsistePers.Nombre]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIExpAsistePers.CDIExpAsistePers.ApellidoPaterno]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.ApellidoPaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIExpAsistePers.CDIExpAsistePers.ApellidoMaterno]
Carpeta=CDIExpAsistePers
Clave=CDIExpAsistePers.ApellidoMaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco





[CDIExpAsistePers.ListaEnCaptura]
(Inicio)=CDIExpAsistePers.PersonalEntrada
CDIExpAsistePers.PersonalEntrada=CDIExpAsistePers.Nombre
CDIExpAsistePers.Nombre=CDIExpAsistePers.ApellidoPaterno
CDIExpAsistePers.ApellidoPaterno=CDIExpAsistePers.ApellidoMaterno
CDIExpAsistePers.ApellidoMaterno=CDIExpAsistePers.DiaLaboral
CDIExpAsistePers.DiaLaboral=CDIExpAsistePers.FechaEntrada
CDIExpAsistePers.FechaEntrada=CDIExpAsistePers.EstatusPersonal
CDIExpAsistePers.EstatusPersonal=CDIExpAsistePers.HoraEntrada
CDIExpAsistePers.HoraEntrada=CDIExpAsistePers.HoraSalida
CDIExpAsistePers.HoraSalida=CDIExpAsistePers.Jornada
CDIExpAsistePers.Jornada=(Fin)







[Forma.ListaCarpetas]
(Inicio)=CDIExpAsistePers
CDIExpAsistePers=Imagen
Imagen=CDIVjornadaD
CDIVjornadaD=(Fin)

[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=PresentacionJornada
PresentacionJornada=Enviar a Excel
Enviar a Excel=(Fin)
