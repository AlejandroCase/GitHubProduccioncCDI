
[Forma]
Clave=TipoContratoSAT
Icono=0
Modulos=(Todos)
MovModulo=TipoContratoSAT
Nombre=Tipo de Contrato

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=710
PosicionInicialArriba=364
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaColor=Negro
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=TipoContratoSAT
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
Filtros=S
PermiteEditar=S
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General

FiltroGeneral=TipoContratoSAT.Modulo = <T>NOM<T>
[Lista.TipoContratoSAT.Tipo]
Carpeta=Lista
Clave=TipoContratoSAT.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.TipoContratoSAT.ClaveSAT]
Carpeta=Lista
Clave=TipoContratoSAT.ClaveSAT
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[Lista.Columnas]
Tipo=304
ClaveSAT=53


[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=Guardar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

NombreEnBoton=S
[Lista.ListaEnCaptura]
(Inicio)=TipoContratoSAT.Tipo
TipoContratoSAT.Tipo=TipoContratoSAT.ClaveSAT
TipoContratoSAT.ClaveSAT=(Fin)

[Acciones.Cancelar]
Nombre=Cancelar
Boton=21
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar/Cancelar Cambios
Activo=S
Visible=S





EspacioPrevio=S










NombreEnBoton=S




[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cancelar
Cancelar=(Fin)
