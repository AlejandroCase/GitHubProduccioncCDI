
[Forma]
Clave=CDIAccesoOrigen
Icono=0
Modulos=(Todos)
MovModulo=SOC
Nombre=Acceso Origen

ListaCarpetas=Origen
CarpetaPrincipal=Origen
PosicionInicialAlturaCliente=241
PosicionInicialAncho=247
PosicionInicialIzquierda=352
PosicionInicialArriba=91
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraAyuda=S
BarraAyudaBold=S
BarraAyudaEsp=S
BarraAyuda1=Empresa
[Origen]
Estilo=Hoja
Clave=Origen
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAccesoOrigen
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=CDIAccesoOrigen.Empresa=<T>{Empresa}<T>
FiltroRespetar=S
FiltroTipo=General
[Origen.CDIAccesoOrigen.Tipo]
Carpeta=Origen
Clave=CDIAccesoOrigen.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Origen.CDIAccesoOrigen.Origen]
Carpeta=Origen
Clave=CDIAccesoOrigen.Origen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Origen.CDIAccesoOrigen.Clave]
Carpeta=Origen
Clave=CDIAccesoOrigen.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[Origen.Columnas]
Tipo=64
Origen=64
Clave=64

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S










[Origen.ListaEnCaptura]
(Inicio)=CDIAccesoOrigen.Tipo
CDIAccesoOrigen.Tipo=CDIAccesoOrigen.Origen
CDIAccesoOrigen.Origen=CDIAccesoOrigen.Clave
CDIAccesoOrigen.Clave=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
