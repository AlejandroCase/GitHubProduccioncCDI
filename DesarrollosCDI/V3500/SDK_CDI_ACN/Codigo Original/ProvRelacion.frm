[Forma]
Clave=ProvRelacion
Nombre=Relación entre Proveedores
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialAltura=445
PosicionInicialAncho=679
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
PosicionInicialIzquierda=172
PosicionInicialArriba=161
Comentarios=Info.Proveedor

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ProvRelacion
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral={Si(ConDatos(Info.Proveedor), <T>ProvRelacion.Proveedor=<T>+Comillas(Info.Proveedor)+<T> OR ProvRelacion.Relacion=<T>+Comillas(Info.Proveedor),<T><T>)}

[Lista.ProvRelacion.Relacion]
Carpeta=Lista
Clave=ProvRelacion.Relacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Prov.Nombre]
Carpeta=Lista
Clave=Prov.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Gris

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

[Lista.Columnas]
Relacion=97
Nombre=204
Proveedor=109
Nombre_1=237

[Lista.ProvRelacion.Proveedor]
Carpeta=Lista
Clave=ProvRelacion.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ProvDestino.Nombre]
Carpeta=Lista
Clave=ProvDestino.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Gris

[Acciones.Todos]
Nombre=Todos
Boton=55
NombreEnBoton=S
NombreDesplegar=&Todas las Relaciones
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Proveedor, Nulo)
VisibleCondicion=ConDatos(Info.Proveedor)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Todos
Todos=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=ProvRelacion.Proveedor
ProvRelacion.Proveedor=Prov.Nombre
Prov.Nombre=ProvRelacion.Relacion
ProvRelacion.Relacion=ProvDestino.Nombre
ProvDestino.Nombre=(Fin)
