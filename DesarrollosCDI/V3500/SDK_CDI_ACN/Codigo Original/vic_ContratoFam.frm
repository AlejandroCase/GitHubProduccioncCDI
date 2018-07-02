[Forma]
Clave=vic_ContratoFam
Nombre=Familias de Contrato
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
Vista=vic_ContratoFam
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=vic_ContratoFam.Familia
CarpetaVisible=S
PermiteEditar=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaMostrarRenglones=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S

[Lista.vic_ContratoFam.Familia]
Carpeta=Lista
Clave=vic_ContratoFam.Familia
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=45
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_ContratoFam.Familia]
Carpeta=Detalle
Clave=vic_ContratoFam.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
Efectos=[Negritas]

[Detalle.vic_ContratoFam.Icono]
Carpeta=Detalle
Clave=vic_ContratoFam.Icono
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
EjecucionCondicion=Asigna(Temp.Texto, ListaBuscarDuplicados(CampoEnLista(vic_ContratoFam:vic_ContratoFam.Familia)))<BR>Vacio(Temp.Texto)
EjecucionMensaje=Comillas(Temp.Texto)+<T> Duplicado<T>
EjecucionConError=S

[Detalle.Columnas]
Familia=64
Descripcion=304
Icono=64

[Detalle.vic_ContratoFam.FamiliaMaestra]
Carpeta=Detalle
Clave=vic_ContratoFam.FamiliaMaestra
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[vic_ContratoFamD.vic_ContratoFam.TipoPropiedad]
Carpeta=vic_ContratoFam
Clave=vic_ContratoFam.TipoPropiedad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[vic_ContratoFamD.Columnas]
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

