[Forma]
Clave=CDISocioC
Nombre=<T>Consecutivos - Socios<T>
Icono=0
Modulos=(Todos)
ListaCarpetas=Hoja
CarpetaPrincipal=Hoja
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
PosicionInicialIzquierda=778
PosicionInicialArriba=446
PosicionInicialAltura=300
PosicionInicialAncho=364
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=
VentanaEscCerrar=
Comentarios=Empresa
PosicionInicialAlturaCliente=273

[Hoja]
Estilo=Hoja
Clave=Hoja
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocioC
Fuente={MS Sans Serif, 8, Negro, []}
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
OtroOrden=S
ListaOrden=(Lista)
FiltroPredefinido=S
FiltroAncho=30
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Sucursal={Sucursal} AND CDISocioC.Empresa=<T>{Empresa}<T>

[Hoja.CDISocioC.Mov]
Carpeta=Hoja
Clave=CDISocioC.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Hoja.CDISocioC.Consecutivo]
Carpeta=Hoja
Clave=CDISocioC.Consecutivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Cerrar]
Nombre=Cerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Hoja.Columnas]
Mov=126
Serie=90
Periodo=43
Ejercicio=47
Consecutivo=99

[Hoja.CDISocioC.Serie]
Carpeta=Hoja
Clave=CDISocioC.Serie
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Hoja.ListaEnCaptura]
(Inicio)=CDISocioC.Mov
CDISocioC.Mov=CDISocioC.Serie
CDISocioC.Serie=CDISocioC.Consecutivo
CDISocioC.Consecutivo=(Fin)

[Hoja.ListaOrden]
(Inicio)=CDISocioC.Mov<TAB>(Acendente)
CDISocioC.Mov<TAB>(Acendente)=CDISocioC.Serie<TAB>(Acendente)
CDISocioC.Serie<TAB>(Acendente)=CDISocioC.Periodo<TAB>(Acendente)
CDISocioC.Periodo<TAB>(Acendente)=CDISocioC.Ejercicio<TAB>(Acendente)
CDISocioC.Ejercicio<TAB>(Acendente)=(Fin)
