[Forma]
Clave=CtaSituacion
Nombre=<T>Situaciones - <T>+Info.Descripcion
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialAltura=356
PosicionInicialAncho=389
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=770
PosicionInicialArriba=417
PosicionInicialAlturaCliente=329
PosicionColumna1=79
PosicionCol1=297

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CtaSituacion
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CtaSituacion.Situacion
CarpetaVisible=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
HojaMantenerSeleccion=S
FiltroGeneral=CtaSituacion.Rama=<T>{Info.Rama}<T>

[Lista.CtaSituacion.Situacion]
Carpeta=Lista
Clave=CtaSituacion.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Situacion=262

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
ConCondicion=S
EjecucionCondicion=Asigna(Temp.Texto, ListaBuscarDuplicados(CampoEnLista(CtaSituacion:CtaSituacion.Situacion)))<BR>Vacio(Temp.Texto)
EjecucionMensaje=Comillas(Temp.Texto)+<T> Duplicada<T>
EjecucionConError=S

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Enviar/Recibir Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Visible=S
ActivoCondicion=Usuario.EnviarExcel

[Icono]
Estilo=Ficha
Clave=Icono
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CtaSituacion
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CtaSituacion.Icono
CarpetaVisible=S

[Icono.CtaSituacion.Icono]
Carpeta=Icono
Clave=CtaSituacion.Icono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Icono
Icono=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excel
Excel=(Fin)
