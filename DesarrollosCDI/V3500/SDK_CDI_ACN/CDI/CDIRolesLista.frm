
[Forma]
Clave=CDIRolesLista
Icono=44
Modulos=(Todos)
Nombre=Lista Roles
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=442
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=396
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIRoles
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
HojaAjustarColumnas=S
HojaMantenerSeleccion=S
HojaTitulosEnBold=S


Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral={<BR>Si<BR>   ConDatos(Info.Titulo)<BR> Entonces<BR>   <T> CDIRoles.Catalogo =<T> & Comillas(Info.Titulo)<BR> Sino<BR>   <T>1=1<T><BR> Fin<BR>}
[Lista.CDIRoles.Catalogo]
Carpeta=Lista
Clave=CDIRoles.Catalogo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIRoles.Rol]
Carpeta=Lista
Clave=CDIRoles.Rol
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.Columnas]
Catalogo=151
Rol=214



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






[Lista.ListaOrden]
(Inicio)=CDIRoles.Catalogo	(Acendente)
CDIRoles.Catalogo	(Acendente)=CDIRoles.Rol	(Acendente)
CDIRoles.Rol	(Acendente)=(Fin)





























[Lista.ListaEnCaptura]
(Inicio)=CDIRoles.Catalogo
CDIRoles.Catalogo=CDIRoles.Rol
CDIRoles.Rol=(Fin)
