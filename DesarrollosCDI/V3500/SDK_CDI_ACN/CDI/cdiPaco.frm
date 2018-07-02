
[Forma]
Clave=cdiPaco
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=forma de paco

ListaCarpetas=cdiPaco
CarpetaPrincipal=cdiPaco
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=167
PosicionInicialAncho=276
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=589
PosicionInicialArriba=281
[cdiPaco]
Estilo=Hoja
Pestana=S
Clave=cdiPaco
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=cdiPaco
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=cdiPaco.nombre
CarpetaVisible=S

[cdiPaco.cdiPaco.nombre]
Carpeta=cdiPaco
Clave=cdiPaco.nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S


[cdiPaco.Columnas]
nombre=116









[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=(Fin)
