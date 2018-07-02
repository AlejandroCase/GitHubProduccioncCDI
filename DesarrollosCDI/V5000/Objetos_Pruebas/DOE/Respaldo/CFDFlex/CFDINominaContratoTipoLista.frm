
[Forma]
Clave=CFDINominaContratoTipoLista
Icono=0
Modulos=(Todos)
MovModulo=CFDINominaContratoTipo
Nombre=Tipo de Contrato

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=444
PosicionInicialArriba=207
PosicionInicialAlturaCliente=275
PosicionInicialAncho=477
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaColor=Negro
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaContratoTipo
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

[Lista.CFDINominaContratoTipo.TipoContrato]
Carpeta=Lista
Clave=CFDINominaContratoTipo.TipoContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDINominaContratoTipo.Descripcion]
Carpeta=Lista
Clave=CFDINominaContratoTipo.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

GuardarAntes=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=21
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar/Cancelar Cambios
Activo=S
Visible=S


[Lista.Columnas]
TipoContrato=70
Descripcion=604

[Lista.ListaEnCaptura]
(Inicio)=CFDINominaContratoTipo.TipoContrato
CFDINominaContratoTipo.TipoContrato=CFDINominaContratoTipo.Descripcion
CFDINominaContratoTipo.Descripcion=(Fin)





































[Forma.ListaAcciones]
(Inicio)=Seleccionar
Seleccionar=Cancelar
Cancelar=(Fin)