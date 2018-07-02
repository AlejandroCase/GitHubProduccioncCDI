
[Forma]
Clave=CDIConsComunic
Icono=0
CarpetaPrincipal=CDIConsComunic
Modulos=(Todos)
MovModulo=CDIConsComunic
Nombre=Fecha y Consecutivo

ListaCarpetas=CDIConsComunic
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar
PosicionInicialIzquierda=522
PosicionInicialArriba=304
PosicionInicialAlturaCliente=120
PosicionInicialAncho=322
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
[CDIConsComunic]
Estilo=Hoja
Clave=CDIConsComunic
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIConsComunic
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S


[CDIConsComunic.CDIConsComunic.Consecutivo]
Carpeta=CDIConsComunic
Clave=CDIConsComunic.Consecutivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIConsComunic.Columnas]
FechaAño=64
Consecutivo=64








Ejercicio=64
[CDIConsComunic.ListaEnCaptura]
(Inicio)=CDIConsComunic.Consecutivo
CDIConsComunic.Consecutivo=CDIConsComunic.Ejercicio
CDIConsComunic.Ejercicio=(Fin)

[CDIConsComunic.CDIConsComunic.Ejercicio]
Carpeta=CDIConsComunic
Clave=CDIConsComunic.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=ventana
ClaveAccion=aceptar
Activo=S
Visible=S















[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=(Fin)
