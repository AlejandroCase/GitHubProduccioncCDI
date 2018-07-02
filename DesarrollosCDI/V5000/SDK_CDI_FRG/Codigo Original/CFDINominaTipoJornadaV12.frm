[Forma]
Clave=CFDINominaTipoJornadaV12
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Mapeo Tipo de Jornada

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=539
PosicionInicialArriba=353
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Jornada
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

[Lista.Jornada.Jornada]
Carpeta=Lista
Clave=Jornada.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Lista.Columnas]
Jornada=304
Tipo=124

TipoJornada=76
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


[Lista.Jornada.TipoJornada]
Carpeta=Lista
Clave=Jornada.TipoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ListaTipoJornadaSAT.Columnas]
Clave=31
Descripcion=304


[Acciones.Cancelar]
Nombre=Cancelar
Boton=21
NombreEnBoton=S
NombreDesplegar=Cancelar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar/Cancelar Cambios
Activo=S
Visible=S










[Lista.ListaEnCaptura]
(Inicio)=Jornada.Jornada
Jornada.Jornada=Jornada.TipoJornada
Jornada.TipoJornada=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cancelar
Cancelar=(Fin)
