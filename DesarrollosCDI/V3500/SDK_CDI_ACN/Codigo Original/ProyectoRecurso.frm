[Forma]
Clave=ProyectoRecurso
Nombre=Recursos Asignados al Movimiento
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=464
PosicionInicialArriba=364
PosicionInicialAlturaCliente=436
PosicionInicialAncho=991
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
Comentarios=Info.Proyecto
PosicionCol1=351

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ProyectoRecurso
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Gris
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
HojaMantenerSeleccion=S
FiltroGeneral=ProyectoRecurso.ID={Info.ID}

[Lista.ProyectoRecurso.Recurso]
Carpeta=Lista
Clave=ProyectoRecurso.Recurso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Recurso=70
Nombre=249
Puesto=132
Grupo=181
HorasDia=54
PrecioHora=73
CostoHora=75
Rol=134
Comienzo=94
Fin=94
Estatus=94

[Acciones.Info]
Nombre=Info
Boton=34
NombreDesplegar=&Información
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
Activo=S
Visible=S
ClaveAccion=RecursoInfo
ConCondicion=S
Antes=S
NombreEnBoton=S
EjecucionCondicion=ConDatos(ProyectoRecurso:ProyectoRecurso.Recurso)
AntesExpresiones=Asigna(Info.Recurso, ProyectoRecurso:ProyectoRecurso.Recurso)

[Lista.Recurso.Nombre]
Carpeta=Lista
Clave=Recurso.Nombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Gris

[Acciones.Asignar]
Nombre=Asignar
Boton=75
NombreEnBoton=S
NombreDesplegar=&Asignar Actividades
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
ConCondicion=S
Antes=S
Visible=S
RefrescarDespues=S
DespuesGuardar=S
GuardarAntes=S
Expresion=Forma(<T>ProyectoDAsignar<T>)<BR>ActualizarVista
ActivoCondicion=ProyectoRecurso:ProyectoRecurso.Estatus = EstatusAlta
EjecucionCondicion=ConDatos(ProyectoRecurso:ProyectoRecurso.Recurso)
AntesExpresiones=Asigna(Info.Recurso, ProyectoRecurso:ProyectoRecurso.Recurso)<BR>Asigna(Info.Nombre, ProyectoRecurso:Recurso.Nombre)

[Acciones.Transferir]
Nombre=Transferir
Boton=81
NombreEnBoton=S
NombreDesplegar=&Transferir Actividades Pendientes
EnBarraHerramientas=S
TipoAccion=Expresion
ConCondicion=S
RefrescarDespues=S
Expresion=Asigna(Info.Recurso, Nulo)<BR>Si<BR>  Forma(<T>EspecificarRecurso<T>)<BR>Entonces  <BR>  ProcesarSQL(<T>spProyectoDTransferir :nID, :tRecursoD, :tRecursoA<T>, Info.ID, ProyectoRecurso:ProyectoRecurso.Recurso, Info.Recurso)<BR>Fin<BR>ActualizarVista
ActivoCondicion=ProyectoRecurso:ProyectoRecurso.Estatus = EstatusAlta
EjecucionCondicion=ConDatos(ProyectoRecurso:ProyectoRecurso.Recurso)

[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=ProyectoRecurso
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

[Ficha.ProyectoRecurso.Recurso]
Carpeta=Ficha
Clave=ProyectoRecurso.Recurso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Recurso.Nombre]
Carpeta=Ficha
Clave=Recurso.Nombre
Editar=S
3D=S
Pegado=N
Tamano=34
ColorFondo=Plata
ColorFuente=Negro
IgnoraFlujo=S

[Ficha.ProyectoRecurso.Rol]
Carpeta=Ficha
Clave=ProyectoRecurso.Rol
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.ProyectoRecurso.HorasDia]
Carpeta=Ficha
Clave=ProyectoRecurso.HorasDia
Editar=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.ProyectoRecurso.PrecioHora]
Carpeta=Ficha
Clave=ProyectoRecurso.PrecioHora
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.ProyectoRecurso.CostoHora]
Carpeta=Ficha
Clave=ProyectoRecurso.CostoHora
Editar=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.ProyectoRecurso.Comienzo]
Carpeta=Ficha
Clave=ProyectoRecurso.Comienzo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Ficha.ProyectoRecurso.Fin]
Carpeta=Ficha
Clave=ProyectoRecurso.Fin
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Ficha.ProyectoRecurso.Estatus]
Carpeta=Ficha
Clave=ProyectoRecurso.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
Carpeta=Ficha
TipoAccion=Controles Captura
ClaveAccion=Registro Insertar
Visible=S
NombreEnBoton=S
EspacioPrevio=S
Activo=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Visible=S
EspacioPrevio=S
ConCondicion=S
EjecucionConError=S
ActivoCondicion=(Info.Estatus en (EstatusSinAfectar, EstatusBorrador, EstatusPorConfirmar)) y (no ProyectoRecurso:ProyectoRecurso.TieneMovimientos)
EjecucionCondicion=no ProyectoRecurso:ProyectoRecurso.TieneMovimientos
EjecucionMensaje=<T>No se Puede Eliminar, Tiene Movimientos<T>

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S
NombreEnBoton=S

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

[Acciones.Desasignar]
Nombre=Desasignar
Boton=79
NombreEnBoton=S
NombreDesplegar=&Desasignar Actividades Pendientes
EnBarraHerramientas=S
TipoAccion=Expresion
ConCondicion=S
RefrescarDespues=S
ConfirmarAntes=S
DialogoMensaje=EstaSeguro
Expresion=EjecutarSQL(<T>spProyectoRecursoDesasignar :nID, :tRecurso<T>, ProyectoRecurso:ProyectoRecurso.ID, ProyectoRecurso:ProyectoRecurso.Recurso)<BR>ActualizarVista
ActivoCondicion=ProyectoRecurso:ProyectoRecurso.Estatus = EstatusAlta
EjecucionCondicion=ConDatos(ProyectoRecurso:ProyectoRecurso.Recurso)

[Ficha.ProyectoRecurso.ComienzoProgramado]
Carpeta=Ficha
Clave=ProyectoRecurso.ComienzoProgramado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.ProyectoRecurso.FinProgramado]
Carpeta=Ficha
Clave=ProyectoRecurso.FinProgramado
Editar=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Ficha
Ficha=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Nuevo
Nuevo=Guardar
Guardar=Eliminar
Eliminar=Info
Info=Asignar
Asignar=Transferir
Transferir=Desasignar
Desasignar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=ProyectoRecurso.Recurso
ProyectoRecurso.Recurso=Recurso.Nombre
Recurso.Nombre=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=ProyectoRecurso.Recurso
ProyectoRecurso.Recurso=Recurso.Nombre
Recurso.Nombre=ProyectoRecurso.Estatus
ProyectoRecurso.Estatus=ProyectoRecurso.Comienzo
ProyectoRecurso.Comienzo=ProyectoRecurso.Fin
ProyectoRecurso.Fin=ProyectoRecurso.ComienzoProgramado
ProyectoRecurso.ComienzoProgramado=ProyectoRecurso.FinProgramado
ProyectoRecurso.FinProgramado=ProyectoRecurso.Rol
ProyectoRecurso.Rol=ProyectoRecurso.HorasDia
ProyectoRecurso.HorasDia=ProyectoRecurso.PrecioHora
ProyectoRecurso.PrecioHora=ProyectoRecurso.CostoHora
ProyectoRecurso.CostoHora=(Fin)
