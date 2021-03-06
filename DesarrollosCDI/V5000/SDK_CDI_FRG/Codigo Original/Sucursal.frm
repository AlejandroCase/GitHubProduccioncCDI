[Forma]
Clave=Sucursal
Nombre=Sucursales
Icono=4
Modulos=(Todos)
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaCarpetas=(Lista)
PosicionInicialIzquierda=154
PosicionInicialArriba=53
PosicionInicialAltura=446
PosicionInicialAncho=818
CarpetaPrincipal=Detalle
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionColumna1=50
BarraHerramientas=S
Menus=S
BarraAyuda=S
DialogoAbrir=S
Plantillas=S
PermiteCopiarDoc=S
PlantillasExcepciones=Sucursal:Sucursal.Estatus
PosicionInicialAlturaCliente=731

VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Copiar, Falso)
MenuPrincipal=(Lista)
[Lista.Sucursal.Sucursal]
Carpeta=Lista
Clave=Sucursal.Sucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Sucursal.Nombre]
Carpeta=Lista
Clave=Sucursal.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Sucursal=93
Nombre=230
Grupo=135

SATEstado.Descripcion=129
SATMunicipio.Descripcion=123
SATColonia.Descripcion=296
SATCatCP.ClaveCP=104
SATLocalidad.Descripcion=137
[Detalle]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Sucursal
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=127
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
CondicionEdicion=FormaNormal

FichaEspacioNombresAuto=S
[Detalle.Sucursal.Sucursal]
Carpeta=Detalle
Clave=Sucursal.Sucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
Efectos=[Negritas]

[Detalle.Sucursal.Nombre]
Carpeta=Detalle
Clave=Sucursal.Nombre
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=24
Efectos=[Negritas]
ColorFondo=Blanco
EspacioPrevio=N

[Detalle.Sucursal.Direccion]
Carpeta=Detalle
Clave=Sucursal.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=56
EspacioPrevio=S
ColorFondo=Blanco

[Detalle.Sucursal.Colonia]
Carpeta=Detalle
Clave=Sucursal.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.Sucursal.CodigoPostal]
Carpeta=Detalle
Clave=Sucursal.CodigoPostal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Sucursal.Poblacion]
Carpeta=Detalle
Clave=Sucursal.Poblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.Sucursal.Estado]
Carpeta=Detalle
Clave=Sucursal.Estado
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Sucursal.Pais]
Carpeta=Detalle
Clave=Sucursal.Pais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.Sucursal.Telefonos]
Carpeta=Detalle
Clave=Sucursal.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.Sucursal.Fax]
Carpeta=Detalle
Clave=Sucursal.Fax
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Columnas]
Sucursal=51
Nombre=604
Direccion=1204
Colonia=184
CodigoPostal=66
Poblacion=184
Estado=184
Pais=184
Telefonos=604
Fax=304
Notas=304

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
EnBarraHerramientas=S
Visible=S
Menu=&Archivo
EnMenu=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=E&liminar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S
EspacioPrevio=S
Menu=&Archivo
EnMenu=S
EnBarraHerramientas=S

[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Visible=S
Activo=S

[Lista.Sucursal.Grupo]
Carpeta=Lista
Clave=Sucursal.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
EnMenu=S
ConCondicion=S
EjecucionConError=S
EjecucionCondicion=(no Sucursal:Sucursal.EnLinea) o ConDatos(Sucursal:Sucursal.SucursalPrincipal)
EjecucionMensaje=<T>Falta Indicar Sucursal Principal<T>

[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Cerrar
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edici�n
UsaTeclaRapida=S
TeclaRapida=F4
NombreDesplegar=Ane&xos
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=AnexoCta
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
ConCondicion=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(Sucursal:Sucursal.Sucursal)
AntesExpresiones=Asigna(Info.Rama, <T>SUC<T>)<BR>Asigna(Info.AnexoCfg, Verdadero)<BR>Asigna(Info.Cuenta, Sucursal:Sucursal.Sucursal)<BR>Asigna(Info.Descripcion, Sucursal:Sucursal.Nombre)
RefrescarDespues=S

[Detalle.Sucursal.Region]
Carpeta=Detalle
Clave=Sucursal.Region
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
Pegado=N
EspacioPrevio=S

[Detalle.Sucursal.Estatus]
Carpeta=Detalle
Clave=Sucursal.Estatus
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[(Carpeta Abrir)]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Sucursales
Clave=(Carpeta Abrir)
Filtros=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=SucursalA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Sucursal<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Sucursal.Nombre
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todas
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=SucursalRegion
FiltroAplicaEn1=Sucursal.Region
FiltroTodo=S
FiltroEstatus=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
ListaAcciones=(Lista)
IconosNombre=SucursalA:Sucursal.Sucursal

[(Carpeta Abrir).Sucursal.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Sucursal.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Actualizar]
Nombre=Actualizar
Boton=0
UsaTeclaRapida=S
TeclaRapida=F5
NombreDesplegar=&Actualizar
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Actualizar Arbol
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=0
NombreDesplegar=&Presentaci�n preliminar
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Campos]
Nombre=Campos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S

[(Carpeta Abrir).Columnas]
0=62
1=424

[Detalle.Sucursal.Prefijo]
Carpeta=Detalle
Clave=Sucursal.Prefijo
Editar=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
Efectos=[Negritas]
Pegado=N
LineaNueva=S

[Detalle.Sucursal.Encargado]
Carpeta=Detalle
Clave=Sucursal.Encargado
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco

[Detalle.Sucursal.EnLinea]
Carpeta=Detalle
Clave=Sucursal.EnLinea
Editar=S
LineaNueva=N
3D=S
EspacioPrevio=N
Tamano=10
ColorFondo=Blanco

[Detalle.Sucursal.SucursalPrincipal]
Carpeta=Detalle
Clave=Sucursal.SucursalPrincipal
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=7
ColorFondo=Blanco
Pegado=S

[Acciones.SucursalMovSeguimiento]
Nombre=SucursalMovSeguimiento
Boton=30
Menu=&Edici�n
NombreDesplegar=&1: Movimientos Seguimiento Especial
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=SucursalMovSeguimiento
Activo=S
ConCondicion=S
Antes=S
Visible=S

EjecucionCondicion=ConDatos(Sucursal:Sucursal.Sucursal)
AntesExpresiones=Asigna(Info.Sucursal, Sucursal:Sucursal.Sucursal)<BR>Asigna(Info.Descripcion, Sucursal:Sucursal.Nombre)
[Configuracion.Sucursal.Sucursal]
Carpeta=Configuracion
Clave=Sucursal.Sucursal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Plata
ColorFuente=Negro

[Configuracion.Sucursal.Nombre]
Carpeta=Configuracion
Clave=Sucursal.Nombre
ValidaNombre=N
3D=S
Tamano=50
ColorFondo=Plata
ColorFuente=Negro

[Configuracion.Sucursal.ListaPreciosEsp]
Carpeta=Configuracion
Clave=Sucursal.ListaPreciosEsp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CfgNomina]
Nombre=CfgNomina
Boton=0
Menu=&Edici�n
NombreDesplegar=&2: Propiedades de la N�mina
EnMenu=S
TipoAccion=Formas
ClaveAccion=PersonalPropValor
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Sucursal:Sucursal.Sucursal)
AntesExpresiones=Asigna(Info.Rama, <T>SUC<T>)<BR>Asigna(Info.Cuenta, Sucursal:Sucursal.Sucursal)<BR>Asigna(Info.Descripcion, Sucursal:Sucursal.Nombre)

[Detalle.Sucursal.Cajeros]
Carpeta=Detalle
Clave=Sucursal.Cajeros
Editar=S
LineaNueva=S
3D=S
Tamano=15
ColorFondo=Blanco
EspacioPrevio=S

[Detalle.Sucursal.OperacionContinua]
Carpeta=Detalle
Clave=Sucursal.OperacionContinua
Editar=S
LineaNueva=N
3D=S
Tamano=18
ColorFondo=Blanco
ValidaNombre=N
EspacioPrevio=N

[Web]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Configuraci�n Web
Clave=Web
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Sucursal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Web.Sucursal.Sucursal]
Carpeta=Web
Clave=Sucursal.Sucursal
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata
ColorFuente=Negro

[Web.Sucursal.Nombre]
Carpeta=Web
Clave=Sucursal.Nombre
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=45
ColorFondo=Plata
ColorFuente=Negro

[Web.Sucursal.wMovVentas]
Carpeta=Web
Clave=Sucursal.wMovVentas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Web.Sucursal.wAlmacen]
Carpeta=Web
Clave=Sucursal.wAlmacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Web.Sucursal.wUsuario]
Carpeta=Web
Clave=Sucursal.wUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Web.Sucursal.wUEN]
Carpeta=Web
Clave=Sucursal.wUEN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Web.Sucursal.wConcepto]
Carpeta=Web
Clave=Sucursal.wConcepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Sucursal.CentralRegional]
Carpeta=Detalle
Clave=Sucursal.CentralRegional
Editar=S
LineaNueva=N
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Sucursal.ZonaEconomica]
Carpeta=Detalle
Clave=Sucursal.ZonaEconomica
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Grupos]
Nombre=Grupos
Boton=0
Menu=&Maestros
NombreDesplegar=&Grupos
EnMenu=S
TipoAccion=Formas
ClaveAccion=SucursalGrupo
Activo=S
Visible=S

[Acciones.Regiones]
Nombre=Regiones
Boton=0
Menu=&Maestros
NombreDesplegar=&Regiones
EnMenu=S
TipoAccion=Formas
ClaveAccion=SucursalRegion
Activo=S
Visible=S

[Detalle.Sucursal.Grupo]
Carpeta=Detalle
Clave=Sucursal.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.Sucursal.Servidor]
Carpeta=Detalle
Clave=Sucursal.Servidor
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
EspacioPrevio=N

[Detalle.Sucursal.BaseDatos]
Carpeta=Detalle
Clave=Sucursal.BaseDatos
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[Detalle.SucursalDestino.Prefijo]
Carpeta=Detalle
Clave=SucursalDestino.Prefijo
Editar=S
3D=S
Tamano=7
ColorFondo=Plata
Pegado=S

[Acciones.SucursalCfgCR]
Nombre=SucursalCfgCR
Boton=0
Menu=&Edici�n
NombreDesplegar=&3: Plantilla - Cajas Registradoras
EnMenu=S
TipoAccion=Formas
ClaveAccion=SucursalCfgCR
Activo=S
Visible=S
Antes=S
AntesExpresiones=Asigna(Info.Sucursal, Sucursal:Sucursal.Sucursal)<BR>Asigna(Info.Nombre, Sucursal:Sucursal.Nombre)

[Acciones.SucursalOtrosDatos]
Nombre=SucursalOtrosDatos
Boton=0
Menu=&Edici�n
NombreDesplegar=&Otros Datos...
EnMenu=S
TipoAccion=Formas
ClaveAccion=SucursalOtrosDatos
Activo=S
Visible=S
Antes=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+O
AntesExpresiones=Asigna(Info.Sucursal, Sucursal:Sucursal.Sucursal)<BR>Asigna(Info.Nombre, Sucursal:Sucursal.Nombre)

[Acciones.SucursalBanco]
Nombre=SucursalBanco
Boton=0
Menu=&Edici�n
NombreDesplegar=&4: Sucursales Bancarias V�lidas
EnMenu=S
TipoAccion=Formas
ClaveAccion=SucursalBanco
Visible=S
Antes=S
ActivoCondicion=Config.DineroConciliarPorSucursales
AntesExpresiones=Asigna(Info.Sucursal, Sucursal:Sucursal.Sucursal)<BR>Asigna(Info.Nombre, Sucursal:Sucursal.Nombre)

[Detalle.Sucursal.ZonaImpuesto]
Carpeta=Detalle
Clave=Sucursal.ZonaImpuesto
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Sucursal.Alta]
Carpeta=Detalle
Clave=Sucursal.Alta
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=N

[Fiscal]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Fiscal
Clave=Fiscal
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Sucursal
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
ListaEnCaptura=(Lista)
CarpetaVisible=S
PermiteEditar=S

[Fiscal.Sucursal.Sucursal]
Carpeta=Fiscal
Clave=Sucursal.Sucursal
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata
Tamano=5

[Fiscal.Sucursal.Nombre]
Carpeta=Fiscal
Clave=Sucursal.Nombre
Editar=N
ValidaNombre=N
3D=S
Tamano=45
ColorFondo=Plata

[Fiscal.Sucursal.RFC]
Carpeta=Fiscal
Clave=Sucursal.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Fiscal.Sucursal.RegistroPatronal]
Carpeta=Fiscal
Clave=Sucursal.RegistroPatronal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Default]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Valores por omisi�n
Clave=Default
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Sucursal
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
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Default.Sucursal.ListaPreciosEsp]
Carpeta=Default
Clave=Sucursal.ListaPreciosEsp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Default.Sucursal.CentroCostos]
Carpeta=Default
Clave=Sucursal.CentroCostos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Default.CentroCostos.Descripcion]
Carpeta=Default
Clave=CentroCostos.Descripcion
Editar=S
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Default.Sucursal.AlmacenPrincipal]
Carpeta=Default
Clave=Sucursal.AlmacenPrincipal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Default.Alm.Nombre]
Carpeta=Default
Clave=Alm.Nombre
Editar=S
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Default.Sucursal.Usuario]
Carpeta=Default
Clave=Sucursal.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Default.Usuario.Nombre]
Carpeta=Default
Clave=Usuario.Nombre
Editar=S
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Default.Sucursal.CajaCentral]
Carpeta=Default
Clave=Sucursal.CajaCentral
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Default.CtaDinero.Descripcion]
Carpeta=Default
Clave=CtaDinero.Descripcion
Editar=S
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Default.Sucursal.Sucursal]
Carpeta=Default
Clave=Sucursal.Sucursal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata
ColorFuente=Negro

[Default.Sucursal.Nombre]
Carpeta=Default
Clave=Sucursal.Nombre
3D=S
Tamano=45
ColorFondo=Plata
ColorFuente=Negro

[CR]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Caja Registradora
Clave=CR
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Sucursal
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
CondicionVisible=General.CR

[CR.Sucursal.CRTipoCredito]
Carpeta=CR
Clave=Sucursal.CRTipoCredito
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[CR.Sucursal.Sucursal]
Carpeta=CR
Clave=Sucursal.Sucursal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Plata
ColorFuente=Negro

[CR.Sucursal.Nombre]
Carpeta=CR
Clave=Sucursal.Nombre
3D=S
Tamano=45
ColorFondo=Plata
ColorFuente=Negro

[Detalle.Sucursal.Categoria]
Carpeta=Detalle
Clave=Sucursal.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Acciones.SucursalCat]
Nombre=SucursalCat
Boton=0
Menu=&Maestros
NombreDesplegar=&Categorias
EnMenu=S
TipoAccion=Formas
ClaveAccion=SucursalCat
Activo=S
Visible=S

[Default.Sucursal.Acreedor]
Carpeta=Default
Clave=Sucursal.Acreedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Default.Acreedor.Nombre]
Carpeta=Default
Clave=Acreedor.Nombre
Editar=S
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Detalle.Sucursal.LocalidadCNBV]
Carpeta=Detalle
Clave=Sucursal.LocalidadCNBV
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Doc]
Nombre=Doc
Boton=17
Menu=&Edici�n
NombreDesplegar=&Documentaci�n
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
Expresion=EditarDocumentacion(<T>SUC<T>, Sucursal:Sucursal.Sucursal, <T>Documentaci�n - <T>+ Sucursal:Sucursal.Nombre)
EjecucionCondicion=ConDatos(Sucursal:Sucursal.Sucursal)

[Default.Sucursal.Cliente]
Carpeta=Default
Clave=Sucursal.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Default.Cte.Nombre]
Carpeta=Default
Clave=Cte.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata
ColorFuente=Negro

[Detalle.Sucursal.Tipo]
Carpeta=Detalle
Clave=Sucursal.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
EspacioPrevio=N

[Detalle.Sucursal.FechaApertura]
Carpeta=Detalle
Clave=Sucursal.FechaApertura
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Sucursal.Metros]
Carpeta=Detalle
Clave=Sucursal.Metros
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.Sucursal.VencimientoContrato]
Carpeta=Detalle
Clave=Sucursal.VencimientoContrato
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.SucursalTipo]
Nombre=SucursalTipo
Boton=0
Menu=&Maestros
NombreDesplegar=&Tipos
EnMenu=S
TipoAccion=Formas
ClaveAccion=SucursalTipo
Activo=S
Visible=S

[Detalle.Sucursal.DireccionNumero]
Carpeta=Detalle
Clave=Sucursal.DireccionNumero
Editar=S
3D=S
Tamano=6
ColorFondo=Blanco
Pegado=S

[Detalle.Sucursal.Delegacion]
Carpeta=Detalle
Clave=Sucursal.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.Sucursal.GLN]
Carpeta=Detalle
Clave=Sucursal.GLN
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Sucursal.DireccionNumeroInt]
Carpeta=Detalle
Clave=Sucursal.DireccionNumeroInt
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco

[Default.Sucursal.CostoBase]
Carpeta=Default
Clave=Sucursal.CostoBase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Detalle.Sucursal.UltimaSincronizacion]
Carpeta=Detalle
Clave=Sucursal.UltimaSincronizacion
LineaNueva=N
3D=S
Tamano=20
ColorFondo=Plata
ValidaNombre=S

[Detalle.Sucursal.IP]
Carpeta=Detalle
Clave=Sucursal.IP
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[Detalle.Sucursal.IPPuerto]
Carpeta=Detalle
Clave=Sucursal.IPPuerto
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=30
ColorFondo=Blanco
LineaNueva=S

[Detalle.Sucursal.IPDinamica]
Carpeta=Detalle
Clave=Sucursal.IPDinamica
Editar=S
3D=S
Tamano=11
ColorFondo=Blanco

[Detalle.Sucursal.ComunicacionEncriptada]
Carpeta=Detalle
Clave=Sucursal.ComunicacionEncriptada
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco





[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Campos
Campos=(Fin)

[Web.ListaEnCaptura]
(Inicio)=Sucursal.Sucursal
Sucursal.Sucursal=Sucursal.Nombre
Sucursal.Nombre=Sucursal.wMovVentas
Sucursal.wMovVentas=Sucursal.wAlmacen
Sucursal.wAlmacen=Sucursal.wUsuario
Sucursal.wUsuario=Sucursal.wUEN
Sucursal.wUEN=Sucursal.wConcepto
Sucursal.wConcepto=(Fin)


[Default.ListaEnCaptura]
(Inicio)=Sucursal.Sucursal
Sucursal.Sucursal=Sucursal.Nombre
Sucursal.Nombre=Sucursal.ListaPreciosEsp
Sucursal.ListaPreciosEsp=Sucursal.CentroCostos
Sucursal.CentroCostos=CentroCostos.Descripcion
CentroCostos.Descripcion=Sucursal.AlmacenPrincipal
Sucursal.AlmacenPrincipal=Alm.Nombre
Alm.Nombre=Sucursal.Usuario
Sucursal.Usuario=Usuario.Nombre
Usuario.Nombre=Sucursal.CajaCentral
Sucursal.CajaCentral=CtaDinero.Descripcion
CtaDinero.Descripcion=Sucursal.Cliente
Sucursal.Cliente=Cte.Nombre
Cte.Nombre=Sucursal.Acreedor
Sucursal.Acreedor=Acreedor.Nombre
Acreedor.Nombre=Sucursal.CostoBase
Sucursal.CostoBase=(Fin)

[CR.ListaEnCaptura]
(Inicio)=Sucursal.Sucursal
Sucursal.Sucursal=Sucursal.Nombre
Sucursal.Nombre=Sucursal.CRTipoCredito
Sucursal.CRTipoCredito=(Fin)







[Acciones.Mapa]
Nombre=Mapa
Boton=105
Menu=&Ver
NombreDesplegar=&Mapa
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Expresion=Mapa.Borrar<BR>Mapa.Agregar(<T>Sucursal<T>, Sucursal:Sucursal.Sucursal)<BR>PlugIn(<T>Mapa<T>, <T>Sucursal<T>, <T>Posicionar<T>)
Activo=S
Visible=S








[Detalle.Sucursal.BloquearCobroTarjeta]
Carpeta=Detalle
Clave=Sucursal.BloquearCobroTarjeta
Editar=S
LineaNueva=N
3D=S
Tamano=20
ColorFondo=Blanco








[Fiscal.Sucursal.FiscalRegimen]
Carpeta=Fiscal
Clave=Sucursal.FiscalRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
















[Acciones.SincroISRetraso]
Nombre=SincroISRetraso
Boton=15
Menu=&Edici�n
NombreDesplegar=&Retraso Sincro IS
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=SincroISSucursalRetraso
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Sucursal,Sucursal:Sucursal.Sucursal)
Visible=S



















[Fiscal.ListaEnCaptura]
(Inicio)=Sucursal.Sucursal
Sucursal.Sucursal=Sucursal.Nombre
Sucursal.Nombre=Sucursal.RFC
Sucursal.RFC=Sucursal.RegistroPatronal
Sucursal.RegistroPatronal=Sucursal.FiscalRegimen
Sucursal.FiscalRegimen=Sucursal.FiscalZona
Sucursal.FiscalZona=(Fin)

[Fiscal.Sucursal.FiscalZona]
Carpeta=Fiscal
Clave=Sucursal.FiscalZona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco











[Detalle.Sucursal.CFDFlex]
Carpeta=Detalle
Clave=Sucursal.CFDFlex
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










[CFDFlex]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=CFD Flexible
Clave=CFDFlex
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Sucursal
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
ListaEnCaptura=(Lista)


CondicionVisible=(General.CFDFlex) y (Sucursal:Sucursal.CFDFlex)
[CFDFlex.Sucursal.noCertificado]
Carpeta=CFDFlex
Clave=Sucursal.noCertificado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CFDFlex.Sucursal.Llave]
Carpeta=CFDFlex
Clave=Sucursal.Llave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco

[CFDFlex.Sucursal.ContrasenaSello]
Carpeta=CFDFlex
Clave=Sucursal.ContrasenaSello
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CFDFlex.Sucursal.CertificadoBase64]
Carpeta=CFDFlex
Clave=Sucursal.CertificadoBase64
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=70x7
[CFDFlex.Sucursal.RutaCertificado]
Carpeta=CFDFlex
Clave=Sucursal.RutaCertificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco



























[Acciones.Registrar]
Nombre=Registrar
Boton=83
NombreEnBoton=S
NombreDesplegar=&Registrar Certificado CFD
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S













EspacioPrevio=S

























GuardarAntes=S
Expresion=ProcesarSQL(<T>EXEC spCFDFlexRegistrarCertificadoXML :nEstacion, :tEmpresa, :tSucursal, :tTipo, 0<T>,EstacionTrabajo,Empresa, Sucursal:Sucursal.Sucursal, <T>Sucursal<T>)<BR>ActualizarForma
VisibleCondicion=(General.CFDFlex) y (Sucursal:Sucursal.CFDFlex)

[CFDFlex.ListaEnCaptura]
(Inicio)=Sucursal.noCertificado
Sucursal.noCertificado=Sucursal.ContrasenaSello
Sucursal.ContrasenaSello=Sucursal.CertificadoBase64
Sucursal.CertificadoBase64=Sucursal.Llave
Sucursal.Llave=Sucursal.RutaCertificado
Sucursal.RutaCertificado=(Fin)


































[Acciones.SucursalMovBloquearCambio]
Nombre=SucursalMovBloquearCambio
Boton=21
Menu=&Edici�n
NombreDesplegar=&Bloquear Cambio Sucursal
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=SucursalMovBloquearCambio
Activo=S
Visible=S




ConCondicion=S






Antes=S





















EspacioPrevio=S
EjecucionCondicion=ConDatos(Sucursal:Sucursal.Sucursal)
AntesExpresiones=Asigna(Info.Sucursal, Sucursal:Sucursal.Sucursal)<BR>Asigna(Info.Descripcion, Sucursal:Sucursal.Nombre)


























[Detalle.Sucursal.SucursalLDI]
Carpeta=Detalle
Clave=Sucursal.SucursalLDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco





[POS]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=POS
Clave=POS
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Sucursal
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
ListaEnCaptura=(Lista)


CondicionVisible=General.POS
[POS.Sucursal.POSMensajeLimiteCaja]
Carpeta=POS
Clave=Sucursal.POSMensajeLimiteCaja
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=30
[POS.Sucursal.POSLimiteCaja]
Carpeta=POS
Clave=Sucursal.POSLimiteCaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[POS.Sucursal.HOST]
Carpeta=POS
Clave=Sucursal.HOST
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco












[POS.ListaEnCaptura]
(Inicio)=Sucursal.POSMensajeLimiteCaja
Sucursal.POSMensajeLimiteCaja=Sucursal.POSLimiteCaja
Sucursal.POSLimiteCaja=Sucursal.HOST
Sucursal.HOST=(Fin)
















[Acciones.POSLTipoCambioRef]
Nombre=POSLTipoCambioRef
Boton=0
Menu=&Edici�n
NombreDesplegar=POS Tipos de Cambio
GuardarAntes=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=POSLTipoCambioRef
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Sucursal,Sucursal:Sucursal.Sucursal)
DespuesGuardar=S
VisibleCondicion=General.POS




[Acciones.POSCobroFormasPago]
Nombre=POSCobroFormasPago
Boton=0
Menu=&Edici�n
NombreDesplegar=POS Formas de Pago Cobro
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=POSCobroFormasPago
Activo=S
Antes=S
DespuesGuardar=S
Visible=S




AntesExpresiones=Asigna(Info.Sucursal,Sucursal:Sucursal.Sucursal)










[Detalle.Sucursal.ReferenciaIntelisisService]
Carpeta=Detalle
Clave=Sucursal.ReferenciaIntelisisService
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco








[Detalle.Sucursal.ParamAccDirIntelisisMES]
Carpeta=Detalle
Clave=Sucursal.ParamAccDirIntelisisMES
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[Detalle.ListaEnCaptura]
(Inicio)=Sucursal.Sucursal
Sucursal.Sucursal=Sucursal.Nombre
Sucursal.Nombre=Sucursal.Servidor
Sucursal.Servidor=Sucursal.Prefijo
Sucursal.Prefijo=Sucursal.EnLinea
Sucursal.EnLinea=Sucursal.SucursalPrincipal
Sucursal.SucursalPrincipal=SucursalDestino.Prefijo
SucursalDestino.Prefijo=Sucursal.BaseDatos
Sucursal.BaseDatos=Sucursal.IP
Sucursal.IP=Sucursal.UltimaSincronizacion
Sucursal.UltimaSincronizacion=Sucursal.IPPuerto
Sucursal.IPPuerto=Sucursal.ComunicacionEncriptada
Sucursal.ComunicacionEncriptada=Sucursal.IPDinamica
Sucursal.IPDinamica=Sucursal.Direccion
Sucursal.Direccion=Sucursal.DireccionNumero
Sucursal.DireccionNumero=Sucursal.DireccionNumeroInt
Sucursal.DireccionNumeroInt=Sucursal.Delegacion
Sucursal.Delegacion=Sucursal.GLN
Sucursal.GLN=Sucursal.Colonia
Sucursal.Colonia=Sucursal.CodigoPostal
Sucursal.CodigoPostal=Sucursal.Poblacion
Sucursal.Poblacion=Sucursal.Estado
Sucursal.Estado=Sucursal.Pais
Sucursal.Pais=Sucursal.Encargado
Sucursal.Encargado=Sucursal.Telefonos
Sucursal.Telefonos=Sucursal.Fax
Sucursal.Fax=Sucursal.Region
Sucursal.Region=Sucursal.ZonaImpuesto
Sucursal.ZonaImpuesto=Sucursal.Grupo
Sucursal.Grupo=Sucursal.ZonaEconomica
Sucursal.ZonaEconomica=Sucursal.Categoria
Sucursal.Categoria=Sucursal.LocalidadCNBV
Sucursal.LocalidadCNBV=Sucursal.Estatus
Sucursal.Estatus=Sucursal.Alta
Sucursal.Alta=Sucursal.Tipo
Sucursal.Tipo=Sucursal.FechaApertura
Sucursal.FechaApertura=Sucursal.Metros
Sucursal.Metros=Sucursal.VencimientoContrato
Sucursal.VencimientoContrato=Sucursal.SucursalLDI
Sucursal.SucursalLDI=Sucursal.Cajeros
Sucursal.Cajeros=Sucursal.OperacionContinua
Sucursal.OperacionContinua=Sucursal.CentralRegional
Sucursal.CentralRegional=Sucursal.BloquearCobroTarjeta
Sucursal.BloquearCobroTarjeta=Sucursal.CFDFlex
Sucursal.CFDFlex=Sucursal.ReferenciaIntelisisService
Sucursal.ReferenciaIntelisisService=Sucursal.ParamAccDirIntelisisMES
Sucursal.ParamAccDirIntelisisMES=(Fin)
















[Forma.ListaCarpetas]
(Inicio)=Detalle
Detalle=CR
CR=Default
Default=Fiscal
Fiscal=Web
Web=CFDFlex
CFDFlex=POS
POS=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=Eliminar
Eliminar=SucursalMovSeguimiento
SucursalMovSeguimiento=CfgNomina
CfgNomina=SucursalCfgCR
SucursalCfgCR=SucursalBanco
SucursalBanco=Anexos
Anexos=Doc
Doc=SucursalOtrosDatos
SucursalOtrosDatos=Mapa
Mapa=SincroISRetraso
SincroISRetraso=SucursalMovBloquearCambio
SucursalMovBloquearCambio=Registrar
Registrar=Navegador
Navegador=Regiones
Regiones=Grupos
Grupos=SucursalCat
SucursalCat=SucursalTipo
SucursalTipo=Cerrar
Cerrar=POSLTipoCambioRef
POSLTipoCambioRef=POSCobroFormasPago
POSCobroFormasPago=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edici�n
&Edici�n=&Maestros
&Maestros=&Ver
&Ver=(Fin)
