
[Forma]
Clave=CDIColegiaturas
Icono=4
Modulos=(Todos)
Nombre=Colegiaturas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=341
PosicionInicialArriba=353
PosicionInicialAlturaCliente=290
PosicionInicialAncho=598
Comentarios=Info.Cliente
[Acciones.GuardaryCerrar]
Nombre=GuardaryCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=Aceptar
Antes=S
DespuesGuardar=S
AntesExpresiones=Asigna(Info.Monto,SQL(<T> SELECT isnull(sum(Monto), 0) FROM CDIColegiaturas c WHERE c.Cliente =:tSocio<T>, Info.Cliente))
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




[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIColegiaturas
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
FiltroGeneral=CDIColegiaturas.Cliente = <T>{Info.Cliente}<T>
[Lista.CDIColegiaturas.Institucion]
Carpeta=Lista
Clave=CDIColegiaturas.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIColegiaturas.Grado]
Carpeta=Lista
Clave=CDIColegiaturas.Grado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIColegiaturas.Monto]
Carpeta=Lista
Clave=CDIColegiaturas.Monto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Lista.Columnas]
Cliente=64
Institucion=252
Grado=190
Monto=124

Clave=41














[Acciones.GuardaryCerrar.ListaAccionesMultiples]
(Inicio)=Cerrar
Cerrar=Refrescar
Refrescar=(Fin)












[Acciones.GuardaryCerrar.Seleccionar]
Nombre=Seleccionar
Boton=0
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S
















[Lista.ListaEnCaptura]
(Inicio)=CDIColegiaturas.Institucion
CDIColegiaturas.Institucion=CDIColegiaturas.Grado
CDIColegiaturas.Grado=CDIColegiaturas.Monto
CDIColegiaturas.Monto=(Fin)




[Acciones.GuardaryCerrar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S



















[Forma.ListaAcciones]
(Inicio)=GuardaryCerrar
GuardaryCerrar=Eliminar
Eliminar=(Fin)
