[Forma]
Clave=GestionMov
Nombre=Modificar Agenda
Icono=65
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Mov, Info.MovID)
PosicionInicialIzquierda=467
PosicionInicialArriba=327
PosicionInicialAlturaCliente=510
PosicionInicialAncho=985
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaExclusiva=S

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=GestionMov
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
OtroOrden=S
ListaOrden=GestionMov.Orden<TAB>(Acendente)
HojaAjustarColumnas=S
FiltroGeneral=GestionMov.ID={Info.ID}

[Lista.GestionMov.Mov]
Carpeta=Lista
Clave=GestionMov.Mov
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Editar=S

[Lista.GestionMov.MovID]
Carpeta=Lista
Clave=GestionMov.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.GestionMov.Orden]
Carpeta=Lista
Clave=GestionMov.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Gestion.Avance]
Carpeta=Lista
Clave=Gestion.Avance
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Lista.EstatusNombre]
Carpeta=Lista
Clave=EstatusNombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Gris

[Lista.Gestion.Asunto]
Carpeta=Lista
Clave=Gestion.Asunto
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Gris

[Lista.Gestion.Espacio]
Carpeta=Lista
Clave=Gestion.Espacio
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Gris

[Lista.Gestion.FechaA]
Carpeta=Lista
Clave=Gestion.FechaA
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Lista.Gestion.Duracion]
Carpeta=Lista
Clave=Gestion.Duracion
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Gris

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista.Columnas]
Mov=148
MovID=135
Orden=35
Avance=56
EstatusNombre=91
Asunto=255
Espacio=94
FechaA=79
Duracion=46

[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cancelar.Cancelar]
Nombre=Cancelar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=<T>&Cancelar<T>
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=Cancelar Cambios<BR>Cancelar
Activo=S
Visible=S

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=GestionMov.Mov
GestionMov.Mov=GestionMov.MovID
GestionMov.MovID=GestionMov.Orden
GestionMov.Orden=Gestion.Avance
Gestion.Avance=EstatusNombre
EstatusNombre=Gestion.Asunto
Gestion.Asunto=Gestion.Espacio
Gestion.Espacio=Gestion.FechaA
Gestion.FechaA=Gestion.Duracion
Gestion.Duracion=(Fin)
