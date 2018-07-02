
[Forma]
Clave=CDIUsuarioAutorizaRelacion
Icono=48
Modulos=(Todos)
Nombre=<T>Usuarios para Autorizar <T> +  SQL(<T>EXEC spCDIRelacionesRestringidasRoles :nid<T>, Info.ID )
PosicionInicialAlturaCliente=273
PosicionInicialAncho=474
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=403
PosicionInicialArriba=250
ListaAcciones=Guardar
AutoGuardar=S
SinTransacciones=S
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIUsuarioAutorizaRelacion
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

HojaAjustarColumnas=S
HojaMantenerSeleccion=S
HojaTitulosEnBold=S
GuardarPorRegistro=S
FiltroGeneral=CDIUsuarioAutorizaRelacion.ID = {Info.ID}
[Lista.CDIUsuarioAutorizaRelacion.Usuario]
Carpeta=Lista
Clave=CDIUsuarioAutorizaRelacion.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.Columnas]
Usuario=158
0=99
1=375

Nombre=283
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


[Lista.Nombre]
Carpeta=Lista
Clave=Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Plata
Efectos=[Negritas]







[Lista.ListaEnCaptura]
(Inicio)=CDIUsuarioAutorizaRelacion.Usuario
CDIUsuarioAutorizaRelacion.Usuario=Nombre
Nombre=(Fin)
