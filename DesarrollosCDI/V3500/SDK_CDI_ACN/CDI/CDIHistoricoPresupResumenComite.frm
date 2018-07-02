
[Forma]
Clave=CDIHistoricoPresupResumenComite
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Historico del Presupuesto
Totalizadores=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
BarraAyuda=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialAlturaCliente=684
PosicionInicialAncho=1348
PosicionSec1=580
ListaAcciones=(Lista)
PosicionInicialIzquierda=16
PosicionInicialArriba=41
[Lista]
Estilo=Hoja
Pestana=S
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIHistoricoPresupResumen
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaMostrarSeleccionColoresEsp=S
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
BusquedaEnLinea=S
CarpetaVisible=S

FiltroGeneral=Ejercicio=<T>{Info.Ejercicio}<T>  and Proyecto=<T>{Usuario.DefProyecto}<T>
[Lista.Proyecto]
Carpeta=Lista
Clave=Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.ClavePresupuestal]
Carpeta=Lista
Clave=ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Nombre]
Carpeta=Lista
Clave=Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Anteproyecto]
Carpeta=Lista
Clave=Anteproyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Diferencia]
Carpeta=Lista
Clave=Diferencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.PresupuestoA]
Carpeta=Lista
Clave=PresupuestoA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Ampliaciones]
Carpeta=Lista
Clave=Ampliaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Reducciones]
Carpeta=Lista
Clave=Reducciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Ejercido]
Carpeta=Lista
Clave=Ejercido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Disponible]
Carpeta=Lista
Clave=Disponible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Ejercicio]
Carpeta=Lista
Clave=Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Lista.Columnas]
Proyecto=120
ClavePresupuestal=218
Nombre=278
Anteproyecto=132
PresupuestoA=157
Ampliaciones=151
Reducciones=131
Ejercido=134
Disponible=148
Ejercicio=132

[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
ConFuenteEspecial=S
Fuente={Tahoma, 8, Negro, [Negritas]}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Total Presupuesto Asignado<BR>Total Aplicaciones<BR>Total Reducciones<BR>Total Ejercido<BR>Total Disponible<BR>Total Anteproyecto<BR>Total +/- Anteproyecto
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S
Totalizadores2=SumaTotal(CDIHistoricoPresupResumen:PresupuestoA)<BR>SumaTotal(CDIHistoricoPresupResumen:Ampliaciones)<BR>SumaTotal(CDIHistoricoPresupResumen:Reducciones)<BR>SumaTotal(CDIHistoricoPresupResumen:Ejercido)<BR>SumaTotal(CDIHistoricoPresupResumen:Disponible)<BR>SumaTotal(CDIHistoricoPresupResumen:Anteproyecto)<BR>SumaTotal(CDIHistoricoPresupResumen:Diferencia)
Totalizadores3=(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)
TotExpresionesEnSumas=S
TotAlCambiar=S
ListaEnCaptura=(Lista)


[(Carpeta Totalizadores).Total Anteproyecto]
Carpeta=(Carpeta Totalizadores)
Clave=Total Anteproyecto
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[(Carpeta Totalizadores).Total +/- Anteproyecto]
Carpeta=(Carpeta Totalizadores)
Clave=Total +/- Anteproyecto
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[(Carpeta Totalizadores).Total Presupuesto Asignado]
Carpeta=(Carpeta Totalizadores)
Clave=Total Presupuesto Asignado
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[(Carpeta Totalizadores).Total Aplicaciones]
Carpeta=(Carpeta Totalizadores)
Clave=Total Aplicaciones
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[(Carpeta Totalizadores).Total Reducciones]
Carpeta=(Carpeta Totalizadores)
Clave=Total Reducciones
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

[(Carpeta Totalizadores).Total Disponible]
Carpeta=(Carpeta Totalizadores)
Clave=Total Disponible
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Total Anteproyecto
Total Anteproyecto=Total +/- Anteproyecto
Total +/- Anteproyecto=Total Presupuesto Asignado
Total Presupuesto Asignado=Total Aplicaciones
Total Aplicaciones=Total Reducciones
Total Reducciones=Total Ejercido
Total Ejercido=Total Disponible
Total Disponible=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

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



[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=E&xcel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=Lista
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










[Lista.ListaEnCaptura]
(Inicio)=Proyecto
Proyecto=ClavePresupuestal
ClavePresupuestal=Nombre
Nombre=Anteproyecto
Anteproyecto=Diferencia
Diferencia=PresupuestoA
PresupuestoA=Ampliaciones
Ampliaciones=Reducciones
Reducciones=Ejercido
Ejercido=Disponible
Disponible=Ejercicio
Ejercicio=(Fin)









[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Ejercicio
Ejercicio=Excel
Excel=Actualizar
Actualizar=(Fin)
