[Forma]
Clave=vic_LocalGrp
Nombre=Grupos de Local
Icono=0
Modulos=(Todos)
AccionesTamanoBoton=14x5
AccionesDerecha=S
ListaCarpetas=Lista
CarpetaPrincipal=Lista
ListaAcciones=Aceptar<BR>Excel
PosicionInicialIzquierda=381
PosicionInicialArriba=226
PosicionInicialAltura=309
PosicionInicialAncho=262
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
ExpresionesAlMostrar=
ExpresionesAlCerrar=
BarraHerramientas=S
PosicionSeccion1=43
PosicionColumna1=46
PosicionInicialAlturaCliente=282

[Lista]
Estilo=Hoja
PestanaNombre=Lista
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_LocalGrp
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=vic_LocalGrp.Grupo
CarpetaVisible=S
PermiteEditar=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaMostrarRenglones=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S

[Lista.vic_LocalGrp.Grupo]
Carpeta=Lista
Clave=vic_LocalGrp.Grupo
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=45
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_LocalGrp.Grupo]
Carpeta=Detalle
Clave=vic_LocalGrp.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
Efectos=[Negritas]

[Detalle.vic_LocalGrp.Icono]
Carpeta=Detalle
Clave=vic_LocalGrp.Icono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10

[Lista.Columnas]
Familia=233
Descripcion=310

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
NombreEnBoton=S
EnBarraHerramientas=S
Visible=S
ConCondicion=S
EjecucionCondicion=Asigna(Temp.Texto, ListaBuscarDuplicados(CampoEnLista(vic_LocalGrp:vic_LocalGrp.Grupo)))<BR>Vacio(Temp.Texto)
EjecucionMensaje=Comillas(Temp.Texto)+<T> Duplicado<T>
EjecucionConError=S

[Detalle.Columnas]
Familia=64
Descripcion=304
Icono=64

[Detalle.vic_LocalGrp.GrupoMaestra]
Carpeta=Detalle
Clave=vic_LocalGrp.GrupoMaestra
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[vic_LocalGrpD.vic_LocalGrp.TipoPropiedad]
Carpeta=vic_LocalGrp
Clave=vic_LocalGrp.TipoPropiedad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[vic_LocalGrpD.Columnas]
TipoPropiedad=194

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Visible=S
EspacioPrevio=S
ActivoCondicion=Usuario.EnviarExcel

