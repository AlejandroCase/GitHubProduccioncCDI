
[Forma]
Clave=vic_ConfRentaSVenta
Icono=4
Modulos=(Todos)
Nombre=Parametrización de Renta sobre Venta
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
ListaAcciones=(Lista)
PosicionInicialIzquierda=300
PosicionInicialArriba=278
PosicionInicialAlturaCliente=273
PosicionInicialAncho=552
Comentarios=<T>Condición <T> + Info.ID + <T> del Contrato <T> + Info.Numero
VentanaExclusiva=S
[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Conceptos
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ConfRentaSVenta
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
FiltroGeneral=vic_ConfRentaSVenta.IDCondicion = <T>{Info.ID}<T><BR>and vic_ConfRentaSVenta.IDContrato = <T>{Info.Numero}<T>
[Lista.vic_ConfRentaSVenta.Tipo]
Carpeta=Lista
Clave=vic_ConfRentaSVenta.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

Efectos=[Negritas]
[Lista.vic_ConfRentaSVenta.Concepto]
Carpeta=Lista
Clave=vic_ConfRentaSVenta.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_ConfRentaSVenta.Porcentaje]
Carpeta=Lista
Clave=vic_ConfRentaSVenta.Porcentaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

EspacioPrevio=S



[Lista.Columnas]
Tipo=244
Concepto=184
Porcentaje=64







[Lista.ListaEnCaptura]
(Inicio)=vic_ConfRentaSVenta.Tipo
vic_ConfRentaSVenta.Tipo=vic_ConfRentaSVenta.Concepto
vic_ConfRentaSVenta.Concepto=vic_ConfRentaSVenta.Porcentaje
vic_ConfRentaSVenta.Porcentaje=(Fin)



[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cancelar
Cancelar=(Fin)
