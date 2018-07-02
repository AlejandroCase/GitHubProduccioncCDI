[Forma]
Clave=CampanaD
Nombre=Detalle Campaña
Icono=1
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialIzquierda=475
PosicionInicialArriba=232
PosicionInicialAlturaCliente=700
PosicionInicialAncho=969
PosicionCol1=505
PosicionSec1=405
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Mov, Info.MovID, Info.Tipo)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CampanaD
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
HojaAjustarColumnas=S
HojaMantenerSeleccion=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Automático
PermiteEditar=S
HojaIndicador=S
BusquedaRapidaControles=S
FiltroUsuarios=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroUsuarioDefault=(Todos)
FiltroFechasCampo=CampanaD.SituacionFecha
FiltroFechasDefault=(Todo)
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FiltroAplicaEn=CampanaD.Situacion
FiltroAutoCampo=CampanaD.Situacion
FiltroAutoValidar=CampanaD.Situacion
FiltroTodo=S
FiltroEstilo=Folder (1 línea)
OtroOrden=S
ListaOrden=ContactoNombre<TAB>(Acendente)
MenuLocal=S
ListaAcciones=ListaContacto
FiltroGeneral=CampanaD.ID={Info.ID}

[Lista.ContactoNombre]
Carpeta=Lista
Clave=ContactoNombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ContactoSubTipo]
Carpeta=Lista
Clave=ContactoSubTipo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CampanaD.Situacion]
Carpeta=Lista
Clave=CampanaD.Situacion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CampanaD.SituacionFecha]
Carpeta=Lista
Clave=CampanaD.SituacionFecha
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CampanaD.Calificacion]
Carpeta=Lista
Clave=CampanaD.Calificacion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
ContactoNombre=295
ContactoSubTipo=108
Situacion=135
SituacionFecha=95
Calificacion=62

[Tareas]
Estilo=Hoja
Clave=Tareas
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CampanaTarea
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CampanaD
LlaveLocal=(Lista)
LlaveMaestra=CampanaD.ID<BR>CampanaD.RID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Tareas
ListaEnCaptura=(Lista)
CondicionEdicion=Info.Estatus<>EstatusCancelado
OtroOrden=S
ListaOrden=CampanaTarea.FechaHora<TAB>(Acendente)
Pestana=S

[Tareas.CampanaTarea.Asunto]
Carpeta=Tareas
Clave=CampanaTarea.Asunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco
ColorFuente=Negro

[Tareas.Columnas]
Asunto=453
Inicio=86
Vencimiento=96
Estado=129
Avance=55
FechaConclusion=89
Orden=38

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S
NombreEnBoton=S

[Tareas.CampanaTarea.Inicio]
Carpeta=Tareas
Clave=CampanaTarea.Inicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Tareas.CampanaTarea.Vencimiento]
Carpeta=Tareas
Clave=CampanaTarea.Vencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Tareas.CampanaTarea.Estado]
Carpeta=Tareas
Clave=CampanaTarea.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Tareas.CampanaTarea.Avance]
Carpeta=Tareas
Clave=CampanaTarea.Avance
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Tareas.CampanaTarea.FechaConclusion]
Carpeta=Tareas
Clave=CampanaTarea.FechaConclusion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 2 (Registros)
Activo=S
Visible=S

[Acciones.Contacto]
Nombre=Contacto
Boton=35
NombreEnBoton=S
NombreDesplegar=C&ontacto
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
ConCondicion=S
Visible=S
Expresion=Asigna(Info.RID, CampanaD:CampanaD.RID)<BR>Asigna(Info.PuedeEditar, Info.Estatus noen (EstatusConcluido, EstatusCancelado))<BR>Asigna(Info.Clave, CampanaD:CampanaD.Contacto)<BR>Asigna(Info.Nombre, CampanaD:ContactoNombre)<BR>Si<BR>  Caso CampanaD:CampanaD.ContactoTipo<BR>    Es <T>Prospecto<T> Entonces Forma(<T>CampanaProspecto<T>)<BR>    Es <T>Cliente<T>   Entonces Forma(<T>CampanaCte<T>)<BR>  Sino<BR>    Falso<BR>  Fin<BR>Entonces<BR>  Asigna(CampanaD:CampanaD.Calificacion, SQL(<T>spCampanaDCalificacion :nID, :nRID<T>, CampanaD:CampanaD.ID, CampanaD:CampanaD.RID))<BR>  Asigna(CampanaD:CampanaD.Situacion, SQL(<T>spCampanaDSituacion :nID, :nRID<T>, CampanaD:CampanaD.ID, CampanaD:CampanaD.RID))<BR>  Asigna(CampanaD:CampanaD.SituacionFecha, SQL(<T>spCampanaDSituacionFecha :nID, :nRID<T>, CampanaD:CampanaD.ID, CampanaD:CampanaD.RID))<BR>  Asigna(CampanaD:CampanaD.Observaciones, SQL(<T>spCampanaDObservaciones :nID, :nRID<T>, CampanaD:CampanaD.ID, CampanaD:CampanaD.RID))<BR>  GuardarCambios<BR>  Forma.ActualizarVista(<T>Tareas<T>)<BR>  Forma.ActualizarVista(<T>Bitacora<T>)<BR>Fin
ActivoCondicion=Info.Estatus<>EstatusCancelado
EjecucionCondicion=ConDatos(CampanaD:CampanaD.Contacto)

[Bitacora]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Bitácora
Clave=Bitacora
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CampanaEvento
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Tipo<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=(Lista)
Detalle=S
VistaMaestra=CampanaD
LlaveLocal=(Lista)
LlaveMaestra=CampanaD.ID<BR>CampanaD.RID
MenuLocal=S
ListaAcciones=EventoInfo
IconosNombre=CampanaEvento:CampanaEvento.Tipo

[Bitacora.Columnas]
0=95
1=79

[Bitacora.CampanaEvento.FechaHora]
Carpeta=Bitacora
Clave=CampanaEvento.FechaHora
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Bitacora.CampanaEvento.Situacion]
Carpeta=Bitacora
Clave=CampanaEvento.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Bitacora.CampanaEvento.SituacionFecha]
Carpeta=Bitacora
Clave=CampanaEvento.SituacionFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Bitacora.CampanaEvento.Observaciones]
Carpeta=Bitacora
Clave=CampanaEvento.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.EventoInfo]
Nombre=EventoInfo
Boton=0
NombreDesplegar=&Información del Evento
EnMenu=S
TipoAccion=Formas
ClaveAccion=CampanaEventoInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(CampanaEvento:CampanaEvento.EventoID)
AntesExpresiones=Asigna(Info.ID, CampanaEvento:CampanaEvento.ID)<BR>Asigna(Info.RID, CampanaEvento:CampanaEvento.RID)<BR>Asigna(Info.EventoID, CampanaEvento:CampanaEvento.EventoID)

[Acciones.ListaContacto]
Nombre=ListaContacto
Boton=0
NombreDesplegar=Contacto
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=F7
EsDefault=S
Expresion=Forma.Accion(<T>Contacto<T>)
EjecucionCondicion=ConDatos(CampanaD:CampanaD.Contacto)

[Acciones.AgregarEvento]
Nombre=AgregarEvento
Boton=56
NombreEnBoton=S
NombreDesplegar=Agregar E&vento
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S
ConCondicion=S
EspacioPrevio=S
Expresion=Asigna(Info.RID, CampanaD:CampanaD.RID)<BR>Asigna(Info.PuedeEditar, Info.Estatus noen (EstatusConcluido, EstatusCancelado))<BR>Asigna(Info.Clave, CampanaD:CampanaD.Contacto)<BR>Asigna(Info.Nombre, CampanaD:ContactoNombre)<BR>Si<BR>  Forma(<T>CampanaEvento<T>)<BR>Entonces<BR>  Asigna(CampanaD:CampanaD.Calificacion, SQL(<T>spCampanaDCalificacion :nID, :nRID<T>, CampanaD:CampanaD.ID, CampanaD:CampanaD.RID))<BR>  Asigna(CampanaD:CampanaD.Situacion, SQL(<T>spCampanaDSituacion :nID, :nRID<T>, CampanaD:CampanaD.ID, CampanaD:CampanaD.RID))<BR>  Asigna(CampanaD:CampanaD.SituacionFecha, SQL(<T>spCampanaDSituacionFecha :nID, :nRID<T>, CampanaD:CampanaD.ID, CampanaD:CampanaD.RID))<BR>  Asigna(CampanaD:CampanaD.Observaciones, SQL(<T>spCampanaDObservaciones :nID, :nRID<T>, CampanaD:CampanaD.ID, CampanaD:CampanaD.RID))<BR>  GuardarCambios<BR>  Forma.ActualizarVista(<T>Tareas<T>)<BR>  Forma.ActualizarVista(<T>Bitacora<T>)<BR>Fin
ActivoCondicion=Info.Estatus noen (EstatusConcluido, EstatusCancelado)
EjecucionCondicion=ConDatos(CampanaD:CampanaD.Contacto)

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Bitacora
Bitacora=Tareas
Tareas=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Guardar Cambios
Guardar Cambios=Contacto
Contacto=AgregarEvento
AgregarEvento=Navegador
Navegador=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=ContactoNombre
ContactoNombre=ContactoSubTipo
ContactoSubTipo=CampanaD.Situacion
CampanaD.Situacion=CampanaD.SituacionFecha
CampanaD.SituacionFecha=CampanaD.Calificacion
CampanaD.Calificacion=(Fin)

[Tareas.LlaveLocal]
(Inicio)=CampanaTarea.ID
CampanaTarea.ID=CampanaTarea.RID
CampanaTarea.RID=(Fin)

[Tareas.ListaEnCaptura]
(Inicio)=CampanaTarea.Asunto
CampanaTarea.Asunto=CampanaTarea.Avance
CampanaTarea.Avance=CampanaTarea.Estado
CampanaTarea.Estado=CampanaTarea.Inicio
CampanaTarea.Inicio=CampanaTarea.Vencimiento
CampanaTarea.Vencimiento=CampanaTarea.FechaConclusion
CampanaTarea.FechaConclusion=(Fin)

[Bitacora.ListaEnCaptura]
(Inicio)=CampanaEvento.FechaHora
CampanaEvento.FechaHora=CampanaEvento.Situacion
CampanaEvento.Situacion=CampanaEvento.SituacionFecha
CampanaEvento.SituacionFecha=CampanaEvento.Observaciones
CampanaEvento.Observaciones=(Fin)

[Bitacora.LlaveLocal]
(Inicio)=CampanaEvento.ID
CampanaEvento.ID=CampanaEvento.RID
CampanaEvento.RID=(Fin)
