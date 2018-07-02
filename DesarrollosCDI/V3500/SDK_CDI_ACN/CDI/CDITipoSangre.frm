
[Forma]
Clave=CDITipoSangre
Icono=4
Modulos=(Todos)
Nombre=Tipo Sangre
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=538
PosicionInicialArriba=362
PosicionInicialAlturaCliente=273
PosicionInicialAncho=204
[Acciones.GuardaryCerrar]
Nombre=GuardaryCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S




[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITipoSangre
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
ListaEnCaptura=CDITipoSangre.TipoSangre
CarpetaVisible=S

[Lista.CDITipoSangre.TipoSangre]
Carpeta=Lista
Clave=CDITipoSangre.TipoSangre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[Lista.Columnas]
TipoSangre=175















[Forma.ListaAcciones]
(Inicio)=GuardaryCerrar
GuardaryCerrar=Eliminar
Eliminar=(Fin)
