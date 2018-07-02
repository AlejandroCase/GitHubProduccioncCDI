
[Forma]
Clave=vic_ContratoConsumos
Icono=4
Modulos=(Todos)
Nombre=Consumos

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=352
PosicionInicialArriba=278
PosicionInicialAlturaCliente=273
PosicionInicialAncho=448
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=<T>Contrato: <T> + Info.ID
[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Consumos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoConsumos
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

PermiteEditar=S
ListaEnCaptura=vic_ContratoConsumos.Consumo
Filtros=S
OtroOrden=S
ListaOrden=vic_ContratoConsumos.IDContrato<TAB>(Acendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=vic_ContratoConsumos.IDContrato = <T>{Info.ID}<T>
[Acciones.Aceptar]
Nombre=Aceptar
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
[Lista.vic_ContratoConsumos.Consumo]
Carpeta=Lista
Clave=vic_ContratoConsumos.Consumo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro


[Lista.Columnas]
Consumo=348








[vic_InmuebleConsumos.Columnas]
Consumo=304

























[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
