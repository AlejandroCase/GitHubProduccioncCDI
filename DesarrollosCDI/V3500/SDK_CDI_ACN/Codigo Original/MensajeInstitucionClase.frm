[Forma]
Clave=MensajeInstitucionClase
Nombre=Clasificaciones
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
PosicionInicialIzquierda=520
PosicionInicialArriba=340
PosicionInicialAlturaCliente=484
PosicionInicialAncho=880
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=MensajeInstitucionClase
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
OtroOrden=S
HojaTitulos=S
HojaMostrarColumnas=S
ListaOrden=MensajeInstitucionClase.Orden<TAB>(Acendente)

[Lista.MensajeInstitucionClase.Clasificacion]
Carpeta=Lista
Clave=MensajeInstitucionClase.Clasificacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

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

[Lista.Columnas]
Clasificacion=289
Descripcion=518
Orden=34

[Lista.MensajeInstitucionClase.Descripcion]
Carpeta=Lista
Clave=MensajeInstitucionClase.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Lista.MensajeInstitucionClase.Orden]
Carpeta=Lista
Clave=MensajeInstitucionClase.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ListaEnCaptura]
(Inicio)=MensajeInstitucionClase.Clasificacion
MensajeInstitucionClase.Clasificacion=MensajeInstitucionClase.Descripcion
MensajeInstitucionClase.Descripcion=MensajeInstitucionClase.Orden
MensajeInstitucionClase.Orden=(Fin)
