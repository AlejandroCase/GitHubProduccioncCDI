
[Forma]
Clave=CDIRelacionProvNIPCDI
Icono=0
Modulos=(Todos)
Nombre=Ralacion de Proveedores con NIPCDI
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=460
PosicionInicialArriba=362
PosicionInicialAlturaCliente=273
PosicionInicialAncho=359
Comentarios=Info.Proveedor
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIRelacionProvNIPCDI
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

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIRelacionProvNIPCDI.Proveedor = <T>{Info.Proveedor}<T>
[Lista.CDIRelacionProvNIPCDI.NIPCDI]
Carpeta=Lista
Clave=CDIRelacionProvNIPCDI.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.CDIRelacionProvNIPCDI.Tipo]
Carpeta=Lista
Clave=CDIRelacionProvNIPCDI.Tipo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar y cerrar
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




EspacioPrevio=S
[Lista.Columnas]
NIPCDI=184
Tipo=124







Nombre=308
[Lista.ListaEnCaptura]
(Inicio)=CDIRelacionProvNIPCDI.NIPCDI
CDIRelacionProvNIPCDI.NIPCDI=CDIRelacionProvNIPCDI.Tipo
CDIRelacionProvNIPCDI.Tipo=(Fin)





















































































[Forma.ListaAcciones]
(Inicio)=GuardarCerrar
GuardarCerrar=Eliminar
Eliminar=(Fin)
