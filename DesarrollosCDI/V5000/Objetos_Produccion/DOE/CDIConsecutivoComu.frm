
[Forma]
Clave=CDIConsecutivoComu
Icono=0
CarpetaPrincipal=CDIConsecutivoComu
Modulos=(Todos)
MovModulo=CDIConsecutivoComu
Nombre=Fecha y Consecutivo

ListaCarpetas=CDIConsecutivoComu
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
[CDIConsecutivoComu]
Estilo=Hoja
Clave=CDIConsecutivoComu
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIConsecutivoComu
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


[CDIConsecutivoComu.CDIConsecutivoComu.Consecutivo]
Carpeta=CDIConsecutivoComu
Clave=CDIConsecutivoComu.Consecutivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIConsecutivoComu.Columnas]
FechaAño=64
Consecutivo=64








Ejercicio=64
[CDIConsecutivoComu.ListaEnCaptura]
(Inicio)=CDIConsecutivoComu.Consecutivo
CDIConsecutivoComu.Consecutivo=CDIConsecutivoComu.Ejercicio
CDIConsecutivoComu.Ejercicio=(Fin)

[CDIConsecutivoComu.CDIConsecutivoComu.Ejercicio]
Carpeta=CDIConsecutivoComu
Clave=CDIConsecutivoComu.Ejercicio
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
