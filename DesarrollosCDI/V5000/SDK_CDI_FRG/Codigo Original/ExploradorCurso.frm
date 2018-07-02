
[Forma]
Clave=ExploradorCurso
Icono=0
Modulos=(Todos)
MovModulo=COMS
Nombre=Explorador del Curso
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
BarraHerramientas=S
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=245
PosicionInicialArriba=257
PosicionInicialAlturaCliente=430
PosicionInicialAncho=789
ListaAcciones=(Lista)
ExpresionesAlActivar=asigna(Info.Proveedor,<T><T>)
[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ExploradorCurso
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
CarpetaVisible=S
OtroOrden=S

ListaOrden=Mov<TAB>(Acendente)
Paginacion=S
PaginacionTamano=50
FiltroEstatus=S
FiltroFechas=S
FiltroMovs=S
FiltroMonedas=S
FiltroSucursales=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=SINAFECTAR
FiltroFechasCampo=FechaEmision
FiltroFechasDefault=Hoy
BusquedaRapida=S
BusquedaEnLinea=S
FiltroGrupo1=Mov
FiltroValida1=Mov
FiltroTodo=S
FiltroTodoFinal=S
FiltroMonedasCampo=Moneda
IconosNombre=Mov+ <T> <T>+MovID
FiltroGeneral={si(condatos(info.proveedor),<T>vwExploradorCurso.Proveedor=<T>+comillas(Info.Proveedor),<T>1=1<T>)}<BR>AND<BR>{si(info.Ejercicio<>0,<T>YEAR(vwExploradorCurso.FechaEmision)=<T>+Info.Proveedor,<T>1=1<T>)}
[Lista.Proveedor]
Carpeta=Lista
Clave=Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.TipoCambio]
Carpeta=Lista
Clave=TipoCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Moneda]
Carpeta=Lista
Clave=Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.FechaEmision]
Carpeta=Lista
Clave=FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Importe]
Carpeta=Lista
Clave=Importe
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Impuestos]
Carpeta=Lista
Clave=Impuestos
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Lista.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2





[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S






[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=&Preliminar
EnBarraHerramientas=S
Carpeta=Lista
TipoAccion=controles Captura
ClaveAccion=presentacion preliminar
Activo=S
Visible=S


[Acciones.Excel]
Nombre=Excel
Boton=115
NombreDesplegar=&Excel
EnBarraHerramientas=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=enviar a Excel
Activo=S
Visible=S












[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=&Personalizar
EnBarraHerramientas=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S


[Acciones.Paginacion]
Nombre=Paginacion
Boton=0
NombreDesplegar=&Paginacion
EnBarraHerramientas=S
TipoAccion=herramientas Captura
ClaveAccion=Navegador Paginacion
Activo=S
Visible=S

























[Acciones.Proveedor.Proveedores]
Nombre=Proveedores
Boton=0
TipoAccion=formas
ClaveAccion=EspecificarProveedor
Activo=S
Visible=S

[Acciones.Proveedor.refrescar]
Nombre=refrescar
Boton=0
TipoAccion=controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Proveedor]
Nombre=Proveedor
Boton=80
NombreEnBoton=S
NombreDesplegar=Proveedor
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
[Acciones.Proveedor.ListaAccionesMultiples]
(Inicio)=Proveedores
Proveedores=refrescar
refrescar=(Fin)









[Acciones.Ejercicio]
Nombre=Ejercicio
Boton=9
NombreEnBoton=S
NombreDesplegar=&Ejercicio
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S

ListaAccionesMultiples=(Lista)

[Acciones.Ejercicio.Ejercicios]
Nombre=Ejercicios
Boton=0
TipoAccion=formas
ClaveAccion=EspecificarEjercicio
Activo=S
Visible=S

[Acciones.Ejercicio.Actualizar]
Nombre=Actualizar
Boton=0
TipoAccion=controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Ejercicio.ListaAccionesMultiples]
(Inicio)=Ejercicios
Ejercicios=Actualizar
Actualizar=(Fin)










[Lista.ListaEnCaptura]
(Inicio)=Proveedor
Proveedor=TipoCambio
TipoCambio=Moneda
Moneda=FechaEmision
FechaEmision=Importe
Importe=Impuestos
Impuestos=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=PENDIENTE
PENDIENTE=SINAFECTAR
SINAFECTAR=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)















[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Personalizar
Personalizar=Paginacion
Paginacion=Proveedor
Proveedor=Ejercicio
Ejercicio=(Fin)
