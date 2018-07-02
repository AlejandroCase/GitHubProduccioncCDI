
[Forma]
Clave=CDISedes
Icono=0
Modulos=(Todos)
Nombre=Sedes Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISedes
CarpetaPrincipal=CDISedes
PosicionInicialIzquierda=569
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=228
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDISedes]
Estilo=Hoja
Clave=CDISedes
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISedes
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
ListaEnCaptura=CDISedes.Sede
CarpetaVisible=S

[CDISedes.CDISedes.Sede]
Carpeta=CDISedes
Clave=CDISedes.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[CDISedes.Columnas]
Sede=187

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

EspacioPrevio=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





























[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar Cambios
Guardar Cambios=(Fin)
