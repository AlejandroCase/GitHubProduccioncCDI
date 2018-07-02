
[Forma]
Clave=CDIRelacionClienteNIPCDI
Icono=0
Modulos=(Todos)
Nombre=NIPCDI

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Info.Cliente
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIRelacionClienteNIPCDI
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
FiltroGeneral=CDIRelacionClienteNIPCDI.Cliente = <T>{Info.Cliente}<T>
[Lista.CDIRelacionClienteNIPCDI.NIPCDI]
Carpeta=Lista
Clave=CDIRelacionClienteNIPCDI.NIPCDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.CDIRelacionClienteNIPCDI.Tipo]
Carpeta=Lista
Clave=CDIRelacionClienteNIPCDI.Tipo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.GuardaryCerrar]
Nombre=GuardaryCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
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






[Lista.ListaEnCaptura]
(Inicio)=CDIRelacionClienteNIPCDI.NIPCDI
CDIRelacionClienteNIPCDI.NIPCDI=CDIRelacionClienteNIPCDI.Tipo
CDIRelacionClienteNIPCDI.Tipo=(Fin)

[Forma.ListaAcciones]
(Inicio)=GuardaryCerrar
GuardaryCerrar=Eliminar
Eliminar=(Fin)
