
[Forma]
Clave=CDIDeporteLista
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
ListaAcciones=(Lista)
PosicionInicialIzquierda=445
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=475
[CDIDeporte]
Estilo=Hoja
Clave=CDIDeporte
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
HojaVistaOmision=Autom�tica
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


[CDIDeporte.Columnas]
Deporte=184

MaxEquiposTorneo=101
MaxJugadoresEquipo=147

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

[Acciones.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S


[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
















[CDIDeporte.ListaEnCaptura]
(Inicio)=CDIDeporte.Deporte
CDIDeporte.Deporte=CDIDeporte.MaxEquiposTorneo
CDIDeporte.MaxEquiposTorneo=CDIDeporte.MaxJugadoresEquipo
CDIDeporte.MaxJugadoresEquipo=(Fin)

[Forma.ListaAcciones]
(Inicio)=Seleccionar/Aceptar
Seleccionar/Aceptar=Cerrar
Cerrar=(Fin)