
[Forma]
Clave=CDICPEstructura
Icono=25
Modulos=(Todos)
Nombre=Clave Presupuestal
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=390
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=499
ListaAcciones=(Lista)
AutoGuardar=S
VentanaExclusiva=S
ExpresionesAlMostrar=EjecutarSQL( <T>EXEC spCDICPEstructuraDelete :nEstacion1<T>, EstacionTrabajo  )
ExpresionesAlCerrar=OtraForma( <T>ClavePresupuestal<T>, Forma.ActualizarVista )
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPEstructura
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
Filtros=S
GuardarPorRegistro=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDICPEstructura.Estacion = { EstacionTrabajo }
[Lista.CDICPEstructura.ClavePresupuestal]
Carpeta=Lista
Clave=CDICPEstructura.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CDICPEstructura.Descripcion]
Carpeta=Lista
Clave=CDICPEstructura.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Columnas]
ClavePresupuestal=115
Descripcion=354


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Generar]
Nombre=Generar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Generar Estructura
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S







EspacioPrevio=S
















ListaAccionesMultiples=(Lista)

GuardarAntes=S
[Acciones.Generar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=Asigna( Info.Numero,  SQL( <T>EXEC spCDICPEstructuraInsert :NEstacionT<T>,  EstacionTrabajo  ))<BR><BR>Si<BR>  Info.Numero = 0<BR>Entonces<BR>  Informacion(<T>Proceso Correcto<T>)<BR>SiNo<BR>  Asigna( Info.Mensaje,  SQL( <T>SELECT Descripcion FROM MensajeLista WHERE Mensaje =:nMensaje1<T>,  Info.Numero  ))<BR>  Precaucion(Info.Mensaje)<BR>Fin<BR><BR>OtraForma( <T>ClavePresupuestal<T>, Forma.ActualizarVista )
[Lista.ListaEnCaptura]
(Inicio)=CDICPEstructura.ClavePresupuestal
CDICPEstructura.ClavePresupuestal=CDICPEstructura.Descripcion
CDICPEstructura.Descripcion=(Fin)






















[Acciones.Generar.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S











[Acciones.Generar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Generar
Generar=(Fin)
