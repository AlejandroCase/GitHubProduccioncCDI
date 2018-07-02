
[Forma]
Clave=CDIInfoTotalPresupuesto
Icono=86
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Información Presupuestal (Total Ejercicio)

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=242
PosicionInicialArriba=31
PosicionInicialAlturaCliente=629
PosicionInicialAncho=1059
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
Totalizadores=S
PosicionSec1=544
PosicionSec2=342
VentanaEscCerrar=S
Comentarios=Lista(Info.Ejercicio)
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPEjercicioPeriodoNeto
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S
ListaEnCaptura=(Lista)


Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
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
BusquedaAncho=30
BusquedaEnLinea=S
FiltroMovsTodos=S
FiltroProyectos=S
FiltroFechasCampo=ID
PermiteLocalizar=S
FiltroEmpresas=S

FiltroGeneral=Ejercicio = {Info.Ejercicio}
[Lista.ClavePresupuestal]
Carpeta=Lista
Clave=ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Presupuesto]
Carpeta=Lista
Clave=Presupuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata




[Lista.Ejercido]
Carpeta=Lista
Clave=Ejercido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata




[Lista.Disponible]
Carpeta=Lista
Clave=Disponible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata


[Lista.Columnas]
Proyecto=103
ClavePresupuestal=169
Presupuesto=140
Comprometido=117
Comprometido2=127
Devengado=116
Devengado2=105
Ejercido=112
EjercidoPagado=119
RemanenteDisponible=102
Anticipos=92
Sobrante=98
Disponible=113
ReservadoNeto=122






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
11=-2
12=-2
13=-2
Ejercicio=67
Periodo=55
Remanente=101
CPNombre=346

Mes13=90
[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S





[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, [Negritas]}
FichaEspacioEntreLineas=22
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S



































Totalizadores1=Total Presupuesto Asignado<BR>Total Ejercido<BR>Total Disponible<BR>Total Mes 13
Totalizadores2=SumaTotal( CDICPEjercicioPeriodoNeto:Presupuesto )<BR>SumaTotal( CDICPEjercicioPeriodoNeto:Ejercido )<BR>SumaTotal( CDICPEjercicioPeriodoNeto:Disponible )<BR>SumaTotal( CDICPEjercicioPeriodoNeto:Mes13 )
Totalizadores3=(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)
ListaEnCaptura=(Lista)
TotExpresionesEnSumas=S
TotAlCambiar=S
TotCarpetaRenglones=Lista
FichaAlineacionDerecha=S

ConFuenteEspecial=S
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
















[(Carpeta Totalizadores).Total Presupuesto Asignado]
Carpeta=(Carpeta Totalizadores)
Clave=Total Presupuesto Asignado
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

LineaNueva=N
EspacioPrevio=N
Efectos=[Negritas]


[(Carpeta Totalizadores).Total Ejercido]
Carpeta=(Carpeta Totalizadores)
Clave=Total Ejercido
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

Efectos=[Negritas]

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=&Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S



EspacioPrevio=S



































[Lista.CPNombre]
Carpeta=Lista
Clave=CPNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco




[Acciones.Ejercicio]
Nombre=Ejercicio
Boton=53
NombreEnBoton=S
NombreDesplegar=&Ejercicio
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S



Visible=S
Antes=S
AntesExpresiones=Forma(<T>EspecificarEjercicio<T>)


[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S































[Acciones.CDIInfo.CP]
Nombre=CDIInfo.CP
Boton=96
NombreDesplegar=&Información Presupuestal
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
ConCondicion=S
EjecucionConError=S
Antes=S
Visible=S



ListaAccionesMultiples=(Lista)

EjecucionCondicion=ConDatos( Info.Ejercicio )
EjecucionMensaje=SQL( <T>SELECT Descripcion FROM MensajeLista WHERE Mensaje =:nMensaje1<T>, 10050 )
AntesExpresiones=Asigna(Info.Proyecto,CDICPEjercicioPeriodoNeto:Proyecto)<BR>Asigna(Info.ID,     0)<BR>Asigna(Info.Modulo, <T>EXPLO<T>)<BR>Asigna(Info.ClavePresupuestal, CDICPEjercicioPeriodoNeto:ClavePresupuestal)<BR>Asigna(Info.Ejercicio, CDICPEjercicioPeriodoNeto:Ejercicio)
[Acciones.CDIInfo.CP.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.CDIInfo.CP.Formas]
Nombre=Formas
Boton=0
TipoAccion=Formas
ClaveAccion=CDIInfoCP
Activo=S
Visible=S



[Acciones.CDIInfo.CP.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Formas
Formas=(Fin)










[Lista.Mes13]
Carpeta=Lista
Clave=Mes13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[(Carpeta Totalizadores).Total Disponible]
Carpeta=(Carpeta Totalizadores)
Clave=Total Disponible
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

[(Carpeta Totalizadores).Total Mes 13]
Carpeta=(Carpeta Totalizadores)
Clave=Total Mes 13
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata


[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Total Presupuesto Asignado
Total Presupuesto Asignado=Total Ejercido
Total Ejercido=Total Disponible
Total Disponible=Total Mes 13
Total Mes 13=(Fin)




[Lista.ListaEnCaptura]
(Inicio)=ClavePresupuestal
ClavePresupuestal=CPNombre
CPNombre=Presupuesto
Presupuesto=Ejercido
Ejercido=Disponible
Disponible=Mes13
Mes13=(Fin)











[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Ejercicio
Ejercicio=Excel
Excel=Actualizar
Actualizar=Campos
Campos=CDIInfo.CP
CDIInfo.CP=(Fin)
