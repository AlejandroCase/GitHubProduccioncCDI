
[Forma]
Clave=CFDINominaContratoTipo
Icono=0
Modulos=(Todos)

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=418
PosicionInicialArriba=170
PosicionInicialAlturaCliente=367
PosicionInicialAncho=545
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar
Nombre=Tipos de Contrato
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
CarpetaVisible=S
OtroOrden=S
BusquedaRapidaControles=S
PermiteEditar=S
ListaEnCaptura=(Lista)

ListaOrden=CFDINominaContratoTipo.TipoContrato<TAB>(Acendente)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
[Lista.ListaEnCaptura]
(Inicio)=CFDINominaContratoTipo.TipoContrato
CFDINominaContratoTipo.TipoContrato=CFDINominaContratoTipo.Descripcion
CFDINominaContratoTipo.Descripcion=(Fin)

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

[Lista.Columnas]
TipoContrato=110
Descripcion=357

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
