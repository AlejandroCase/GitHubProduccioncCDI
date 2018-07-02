
[Forma]
Clave=CDIInfoTotalPresupuestoComite
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=<T>Información Presupuestal (Total Ejercicio)<T>
BarraHerramientas=S
BarraAyuda=S
Totalizadores=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=730
PosicionInicialAncho=1275
ListaAcciones=(Lista)
PosicionInicialIzquierda=25
PosicionInicialArriba=0
PosicionSec1=611
Comentarios=Lista(Info.Ejercicio)
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPEjercicioPeriodoNeto
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
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
FiltroEmpresas=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=30
BusquedaEnLinea=S
CarpetaVisible=S

FiltroGeneral=Ejercicio = <T>{Info.Ejercicio}<T> and Proyecto=<T>{Usuario.DefProyecto}<T>
[Lista.Proyecto]
Carpeta=Lista
Clave=Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Comprometido2]
Carpeta=Lista
Clave=Comprometido2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.ClavePresupuestal]
Carpeta=Lista
Clave=ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50

Efectos=[Negritas]
ColorFondo=Blanco
[Lista.CPNombre]
Carpeta=Lista
Clave=CPNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Presupuesto]
Carpeta=Lista
Clave=Presupuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.Comprometido]
Carpeta=Lista
Clave=Comprometido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.Devengado]
Carpeta=Lista
Clave=Devengado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.Devengado2]
Carpeta=Lista
Clave=Devengado2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.Ejercido]
Carpeta=Lista
Clave=Ejercido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.EjercidoPagado]
Carpeta=Lista
Clave=EjercidoPagado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.Anticipos]
Carpeta=Lista
Clave=Anticipos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.Remanente]
Carpeta=Lista
Clave=Remanente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.Sobrante]
Carpeta=Lista
Clave=Sobrante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.Disponible]
Carpeta=Lista
Clave=Disponible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5

[Lista.Columnas]
Proyecto=98
ClavePresupuestal=222
CPNombre=347
Presupuesto=134
Comprometido=92
Devengado=105
Ejercido=91
EjercidoPagado=98
Anticipos=109
Remanente=105
Sobrante=95
Disponible=110

Ejercicio=124
[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
ConFuenteEspecial=S
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Total Presupuesto Asignado<BR>Total Comprometido<BR>Total Devengado<BR>Total Ejercido<BR>Total Presupuesto Disponible<BR>Total Sobrante<BR>Total ADEFAS<BR>Total Pre-Comprometido
Totalizadores=S
TotCarpetaRenglones=Lista
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S

Totalizadores2=SumaTotal(CDICPEjercicioPeriodoNeto:Presupuesto)<BR>SumaTotal(CDICPEjercicioPeriodoNeto:Comprometido)<BR>SumaTotal(CDICPEjercicioPeriodoNeto:Devengado)<BR>SumaTotal(CDICPEjercicioPeriodoNeto:Ejercido)<BR>SumaTotal(CDICPEjercicioPeriodoNeto:Disponible)<BR>SumaTotal(CDICPEjercicioPeriodoNeto:Sobrante)<BR>SumaTotal(CDICPEjercicioPeriodoNeto:Devengado2)<BR>SumaTotal(CDICPEjercicioPeriodoNeto:Comprometido2)
Totalizadores3=(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)
ListaEnCaptura=(Lista)
TotExpresionesEnSumas=S
TotAlCambiar=S

[(Carpeta Totalizadores).Total Presupuesto Asignado]
Carpeta=(Carpeta Totalizadores)
Clave=Total Presupuesto Asignado
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata


[(Carpeta Totalizadores).Total Pre-Comprometido]
Carpeta=(Carpeta Totalizadores)
Clave=Total Pre-Comprometido
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[(Carpeta Totalizadores).Total Comprometido]
Carpeta=(Carpeta Totalizadores)
Clave=Total Comprometido
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[(Carpeta Totalizadores).Total Devengado]
Carpeta=(Carpeta Totalizadores)
Clave=Total Devengado
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[(Carpeta Totalizadores).Total Ejercido]
Carpeta=(Carpeta Totalizadores)
Clave=Total Ejercido
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[(Carpeta Totalizadores).Total Presupuesto Disponible]
Carpeta=(Carpeta Totalizadores)
Clave=Total Presupuesto Disponible
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata


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

[Acciones.Ejercicio]
Nombre=Ejercicio
Boton=53
NombreEnBoton=S
NombreDesplegar=&Ejercicio
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S





Antes=S



EspacioPrevio=S
AntesExpresiones=Forma(<T>EspecificarEjercicio<T>)
[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=&Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S


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


[Acciones.Campos]
Nombre=Campos
Boton=45
NombreDesplegar=Personalizar &Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S


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


[Lista.Ejercicio]
Carpeta=Lista
Clave=Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00E5E5E5









[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Total Presupuesto Asignado
Total Presupuesto Asignado=Total Pre-Comprometido
Total Pre-Comprometido=Total Comprometido
Total Comprometido=Total Devengado
Total Devengado=Total Ejercido
Total Ejercido=Total Presupuesto Disponible
Total Presupuesto Disponible=(Fin)






[Lista.ListaEnCaptura]
(Inicio)=Proyecto
Proyecto=ClavePresupuestal
ClavePresupuestal=CPNombre
CPNombre=Presupuesto
Presupuesto=Comprometido2
Comprometido2=Comprometido
Comprometido=Devengado
Devengado=Devengado2
Devengado2=Ejercido
Ejercido=EjercidoPagado
EjercidoPagado=Anticipos
Anticipos=Remanente
Remanente=Sobrante
Sobrante=Disponible
Disponible=Ejercicio
Ejercicio=(Fin)

























[Acciones.CDIInfo.CP]
Nombre=CDIInfo.CP
Boton=96
NombreDesplegar=&Información Presupuestal
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
Visible=S





ListaAccionesMultiples=(Lista)

ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Info.Ejercicio)
EjecucionMensaje=SQL( <T>SELECT Descripcion FROM MensajeLista WHERE Mensaje =:nMensaje1<T>, 10050 )
EjecucionConError=S
AntesExpresiones=Asigna(Info.Proyecto,CDICPEjercicioPeriodoNeto:Proyecto)<BR>Asigna(Info.ID,     0)<BR>Asigna(Info.Modulo, <T>EXPLO<T>)<BR>Asigna(Info.ClavePresupuestal, CDICPEjercicioPeriodoNeto:ClavePresupuestal)<BR>Asigna(Info.Ejercicio, CDICPEjercicioPeriodoNeto:Ejercicio)
[Acciones.CDIInfo.CP.Variables Asignar CDI]
Nombre=Variables Asignar CDI
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S






[Acciones.CDIInfo.CP.FormasCDICP]
Nombre=FormasCDICP
Boton=0
TipoAccion=Formas
ClaveAccion=CDIInfoCP
Activo=S
Visible=S













[Acciones.CDIInfo.CP.ListaAccionesMultiples]
(Inicio)=Variables Asignar CDI
Variables Asignar CDI=FormasCDICP
FormasCDICP=(Fin)













[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Ejercicio
Ejercicio=Excel
Excel=Actualizar
Actualizar=Campos
Campos=CDIInfo.CP
CDIInfo.CP=(Fin)
