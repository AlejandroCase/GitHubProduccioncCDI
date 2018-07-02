
[Forma]
Clave=CDIEjecAuto
Icono=0
Modulos=(Todos)
MovModulo=CDIEjecAuto
Nombre=CDIEjecAuto
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIEjecAuto
CarpetaPrincipal=CDIEjecAuto
PosicionInicialIzquierda=505
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=355
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIEjecAuto]
Estilo=Hoja
Clave=CDIEjecAuto
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEjecAuto
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
PermiteEditar=S

[CDIEjecAuto.CDIEjecAuto.Socio]
Carpeta=CDIEjecAuto
Clave=CDIEjecAuto.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIEjecAuto.CDIEjecAuto.Email]
Carpeta=CDIEjecAuto
Clave=CDIEjecAuto.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIEjecAuto.Columnas]
Socio=64
Email=251

[CDIEjecAuto.ListaEnCaptura]
(Inicio)=CDIEjecAuto.Socio
CDIEjecAuto.Socio=CDIEjecAuto.Email
CDIEjecAuto.Email=(Fin)

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

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
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
