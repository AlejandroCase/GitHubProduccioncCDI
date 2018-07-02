
[Forma]
Clave=CDIDeporte
Icono=0
Modulos=(Todos)
Nombre=Deportes
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIDeporte
CarpetaPrincipal=CDIDeporte
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Documento Nuevo
PosicionInicialIzquierda=445
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=475
[CDIDeporte]
Estilo=Hoja
Clave=CDIDeporte
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIDeporte
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
CarpetaVisible=S

[CDIDeporte.CDIDeporte.Deporte]
Carpeta=CDIDeporte
Clave=CDIDeporte.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=3
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[CDIDeporte.Columnas]
Deporte=184

MaxEquiposTorneo=101
MaxJugadoresEquipo=147
[CDIDeporte.ListaEnCaptura]
(Inicio)=CDIDeporte.Deporte
CDIDeporte.Deporte=CDIDeporte.MaxEquiposTorneo
CDIDeporte.MaxEquiposTorneo=CDIDeporte.MaxJugadoresEquipo
CDIDeporte.MaxJugadoresEquipo=(Fin)

[CDIDeporte.CDIDeporte.MaxEquiposTorneo]
Carpeta=CDIDeporte
Clave=CDIDeporte.MaxEquiposTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIDeporte.CDIDeporte.MaxJugadoresEquipo]
Carpeta=CDIDeporte
Clave=CDIDeporte.MaxJugadoresEquipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
