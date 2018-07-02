[Forma]
Clave=CEMateria
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=353
PosicionInicialAncho=739
Nombre=Modulos
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
PosicionInicialIzquierda=270
PosicionInicialArriba=286
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionColumna1=44
PosicionCol1=323
[CEMateria.Columnas]
Clave=64
Descripcion=317
Estatus=94
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEMateria
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CEMateria.Materia<BR>CEMateria.Descripcion
CarpetaVisible=S
Filtros=S
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroEstatus=S
FiltroListaEstatus=(Todos)<BR>ALTA<BR>BLOQUEADO<BR>BAJA
FiltroEstatusDefault=ALTA
[Lista.CEMateria.Descripcion]
Carpeta=Lista
Clave=CEMateria.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=56
ColorFondo=Blanco
ColorFuente=Negro
[Lista.Columnas]
Clave=67
Descripcion=222
Estatus=108
Grado=86
Materia=64
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
[Detalle]
Estilo=Ficha
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CEMateria
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CEMateria.Materia<BR>CEMateria.Descripcion<BR>CEMateria.Estatus<BR>CEMateria.Grado<BR>CEMateria.Precio
CarpetaVisible=S
[Detalle.CEMateria.Descripcion]
Carpeta=Detalle
Clave=CEMateria.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro
[Detalle.CEMateria.Estatus]
Carpeta=Detalle
Clave=CEMateria.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco
ColorFuente=Negro
[Detalle.CEMateria.Grado]
Carpeta=Detalle
Clave=CEMateria.Grado
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco
ColorFuente=Negro
[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreEnBoton=S
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S
Carpeta=Detalle
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Visible=S
ConfirmarAntes=S
Carpeta=Detalle
ActivoCondicion=no CEMateria:CEMateria.TieneMovimientos
[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 2 (Registros)
Activo=S
Visible=S
EspacioPrevio=S
[Lista.CEMateria.Materia]
Carpeta=Lista
Clave=CEMateria.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[Detalle.CEMateria.Materia]
Carpeta=Detalle
Clave=CEMateria.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco
ColorFuente=Negro
[Detalle.CEMateria.Precio]
Carpeta=Detalle
Clave=CEMateria.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco
ColorFuente=Negro
[Acciones.Precios]
Nombre=Precios
Boton=64
NombreEnBoton=S
NombreDesplegar=&Lista de Precios
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CEMateriaPrecio
Activo=S
Antes=S
Visible=S
EspacioPrevio=S
AntesExpresiones=Asigna(Info.Materia, CEMateria:CEMateria.Materia)















[Acciones.HHCEMateriaArt]
Nombre=HHCEMateriaArt
Boton=109
NombreEnBoton=S
NombreDesplegar=A&rtículos
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=HHCEMateriaArt
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Materia, CEMateria:CEMateria.Materia)
DespuesGuardar=S
Visible=S

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Nuevo
Nuevo=Eliminar
Eliminar=Precios
Precios=HHCEMateriaArt
HHCEMateriaArt=Navegador
Navegador=(Fin)
