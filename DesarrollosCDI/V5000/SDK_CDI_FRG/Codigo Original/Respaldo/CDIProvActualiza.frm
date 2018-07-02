[Forma]
Clave=CDIProvActualiza
Nombre=Proveedores
Icono=4
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=239
PosicionInicialArriba=70
PosicionInicialAltura=591
PosicionInicialAncho=781
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionSeccion1=7
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraAyuda=S
MovModulo=CXP
PosicionInicialAlturaCliente=527
PosicionSec1=238
VentanaEstadoInicial=Normal

VentanaExclusiva=S
VentanaEscCerrar=S
VentanaExclusivaOpcion=0
VentanaColor=Plata
ExpresionesAlMostrar=Asigna(Info.Copiar, Falso)
[Lista.CDIProv.Proveedor]
Carpeta=Lista
Clave=CDIProv.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CDIProv.Nombre]
Carpeta=Lista
Clave=CDIProv.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Proveedor=100
Nombre=304
Fecha=148
Usuario=82
Sucursal=64
Nombre_1=154
Empresa=69
Estado=150
Delegacion=129
Colonia=189
CodigoPostal=71
Ruta=67
0=106
1=276

2=122
CentroCostos=127
Descripcion=235
[Ficha]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProv
Fuente={MS Sans Serif, 8, Negro, []}
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

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIProv.usuario=USUARIO  and<BR>CDIProv.Proveedor = <T>{info.proveedor}<T>
[Ficha.CDIProv.Proveedor]
Carpeta=Ficha
Clave=CDIProv.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
Efectos=[Negritas]
ColorFondo=Blanco

[Ficha.CDIProv.Nombre]
Carpeta=Ficha
Clave=CDIProv.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Blanco
EspacioPrevio=S

[Ficha.CDIProv.Direccion]
Carpeta=Ficha
Clave=CDIProv.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
EspacioPrevio=S
ColorFondo=Blanco

[Ficha.CDIProv.Colonia]
Carpeta=Ficha
Clave=CDIProv.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.CodigoPostal]
Carpeta=Ficha
Clave=CDIProv.CodigoPostal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.CDIProv.Poblacion]
Carpeta=Ficha
Clave=CDIProv.Poblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.CDIProv.Estado]
Carpeta=Ficha
Clave=CDIProv.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.Pais]
Carpeta=Ficha
Clave=CDIProv.Pais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=N
ColorFondo=Blanco

[Ficha.CDIProv.Telefonos]
Carpeta=Ficha
Clave=CDIProv.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=62
EspacioPrevio=S
ColorFondo=Blanco

[Ficha.CDIProv.Fax]
Carpeta=Ficha
Clave=CDIProv.Fax
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.Contacto1]
Carpeta=Ficha
Clave=CDIProv.Contacto1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
EspacioPrevio=N
ColorFondo=Blanco

[Ficha.CDIProv.Contacto2]
Carpeta=Ficha
Clave=CDIProv.Contacto2
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.eMail1]
Carpeta=Ficha
Clave=CDIProv.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.eMail2]
Carpeta=Ficha
Clave=CDIProv.eMail2
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.RFC]
Carpeta=Ficha
Clave=CDIProv.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.Categoria]
Carpeta=Ficha
Clave=CDIProv.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.Familia]
Carpeta=Ficha
Clave=CDIProv.Familia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=N
ColorFondo=Blanco

[Ficha.CDIProv.Tipo]
Carpeta=Ficha
Clave=CDIProv.Tipo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
Efectos=[Negritas]
EspacioPrevio=N
ColorFondo=Blanco
Pegado=N

[Notas.CDIProv.Notas]
Carpeta=Notas
Clave=CDIProv.Notas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70x20

[Notas.CDIProv.DirInternet]
Carpeta=Notas
Clave=CDIProv.DirInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70

[Ficha.CDIProv.PedirTono]
Carpeta=Ficha
Clave=CDIProv.PedirTono
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Visible=S
Activo=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+N

[Compras]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Compras y Pagos
Clave=Compras
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProv
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=110
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Plata
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
FiltroGeneral=CDIProv.usuario=USUARIO  and<BR>CDIProv.Proveedor = <T>{info.proveedor}<T>
[Compras.CDIProv.FormaEnvio]
Carpeta=Compras
Clave=CDIProv.FormaEnvio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Compras.CDIProv.Descuento]
Carpeta=Compras
Clave=CDIProv.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Notas.CDIProv.Mensaje]
Carpeta=Notas
Clave=CDIProv.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70

[ID.CDIProv.Nombre]
Carpeta=ID
Clave=CDIProv.Nombre
Editar=S
LineaNueva=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]

[ID.CDIProv.Proveedor]
Carpeta=ID
Clave=CDIProv.Proveedor
Editar=S
Pegado=S
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]

[Compras.CDIProv.Almacen]
Carpeta=Compras
Clave=CDIProv.Almacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Compras.CDIProv.Proveedor]
Carpeta=Compras
Clave=CDIProv.Proveedor
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]

[Compras.CDIProv.Nombre]
Carpeta=Compras
Clave=CDIProv.Nombre
ValidaNombre=N
3D=S
Tamano=62
ColorFondo=Plata
Pegado=N
Efectos=[Negritas]



[Ficha.CDIProv.NombreCorto]
Carpeta=Ficha
Clave=CDIProv.NombreCorto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.CDIProv.BeneficiarioNombre]
Carpeta=Ficha
Clave=CDIProv.BeneficiarioNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Ficha.CDIProv.EntreCalles]
Carpeta=Ficha
Clave=CDIProv.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.Plano]
Carpeta=Ficha
Clave=CDIProv.Plano
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.CDIProv.Observaciones]
Carpeta=Ficha
Clave=CDIProv.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Compras.CDIProv.Agente]
Carpeta=Compras
Clave=CDIProv.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Compras.Agente.Nombre]
Carpeta=Compras
Clave=Agente.Nombre
3D=S
Tamano=36
ColorFondo=Plata
Editar=S


[Ficha.CDIProv.Rama]
Carpeta=Ficha
Clave=CDIProv.Rama
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=25
ColorFondo=Blanco
Efectos=[Negritas]
LineaNueva=S


[Ficha.CDIProv.Estatus]
Carpeta=Ficha
Clave=CDIProv.Estatus
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=N

[Compras.CDIProv.ZonaImpuesto]
Carpeta=Compras
Clave=CDIProv.ZonaImpuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDIProvA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
Filtros=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
IconosSubTitulo=<T>Proveedor<T>
FiltroPredefinido=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=ProvCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=ProvFam
FiltroAplicaEn1=CDIProv.Categoria
FiltroAplicaEn2=CDIProv.Familia
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroTodoFinal=S
FiltroAncho=20
FiltroListas=S
FiltroListasRama=CXP
FiltroListasAplicaEn=CDIProv.Proveedor
FiltroRespetar=S
FiltroTipo=Múltiple (por grupos)
FiltroArbol=Proveedores
FiltroArbolAplica=CDIProv.Rama
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FiltroSituacionTodo=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
BusquedaRapida=S
BusquedaAncho=20
BusquedaEnLinea=S
ListaAcciones=(Lista)
PestanaOtroNombre=S
PestanaNombre=Proveedores
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=ProvTipo
FiltroAplicaEn3=CDIProv.Tipo

IconosNombre=ProvA:CDIProv.Proveedor
FuenteBusqueda={MS Sans Serif, 8, Negro, []}

[(Carpeta Abrir).Columnas]
0=114
1=362

[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

ConCondicion=S
EjecucionConError=S
Multiple=S
ListaAccionesMultiples=(Lista)
Antes=S
EjecucionCondicion=SI SQL(<T>SELECT ProdInterfazINFOR FROM EmpresaGral WHERE Empresa = :tEmpresa<T>, Empresa) ENTONCES<BR>    SI ConDatos(CDIProv:CDIProv.NombreCorto) Entonces Verdadero SINO Falso FIN<BR>SINO<BR>    Verdadero<BR>FIN
EjecucionMensaje=<T>El campo Nombre Corto es requerido<T>
AntesExpresiones=asigna(Info.Proveedor,CDIProv:CDIProv.Proveedor)
[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=Abrir...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S

[Acciones.Situacion]
Nombre=Situacion
Boton=71
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F12
NombreDesplegar=&Situación
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Visible=S
ActivoCondicion=Usuario.ModificarSituacion

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
NombreDesplegar=&Presentación preliminar
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


[Ficha.CDIProv.Delegacion]
Carpeta=Ficha
Clave=CDIProv.Delegacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.CDIProv.Ruta]
Carpeta=Ficha
Clave=CDIProv.Ruta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CDIProv.CURP]
Carpeta=Ficha
Clave=CDIProv.CURP
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Otros]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Otros datos
Clave=Otros
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProv
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
CarpetaVisible=S
ListaEnCaptura=(Lista)

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIProv.usuario=USUARIO  and<BR>CDIProv.Proveedor = <T>{info.proveedor}<T>
[Otros.CDIProv.Proveedor]
Carpeta=Otros
Clave=CDIProv.Proveedor
LineaNueva=S
3D=S
Tamano=16
ColorFondo=Plata
Efectos=[Negritas]

[Otros.CDIProv.Nombre]
Carpeta=Otros
Clave=CDIProv.Nombre
LineaNueva=N
3D=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]

[Otros.CDIProv.DirInternet]
Carpeta=Otros
Clave=CDIProv.DirInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Otros.CDIProv.Mensaje]
Carpeta=Otros
Clave=CDIProv.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Otros.CDIProv.NivelAcceso]
Carpeta=Otros
Clave=CDIProv.NivelAcceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[ReglaNegocio]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Regla Negocio
Clave=ReglaNegocio
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProv
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=141
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIProv.usuario=USUARIO  and<BR>CDIProv.Proveedor = <T>{info.proveedor}<T>
CondicionVisible=CDIProv:CDIProv.Tipo<><T>Estructura<T>
[ReglaNegocio.CDIProv.Proveedor]
Carpeta=ReglaNegocio
Clave=CDIProv.Proveedor
3D=S
Tamano=19
ColorFondo=Plata
Efectos=[Negritas]

[ReglaNegocio.CDIProv.Nombre]
Carpeta=ReglaNegocio
Clave=CDIProv.Nombre
3D=S
Tamano=57
ColorFondo=Plata
Efectos=[Negritas]

[ReglaNegocio.CDIProv.Proyecto]
Carpeta=ReglaNegocio
Clave=CDIProv.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.CDIProv.Condicion]
Carpeta=ReglaNegocio
Clave=CDIProv.Condicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.CDIProv.DefMoneda]
Carpeta=ReglaNegocio
Clave=CDIProv.DefMoneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.CDIProv.CtaDinero]
Carpeta=ReglaNegocio
Clave=CDIProv.CtaDinero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.CtaDinero.Descripcion]
Carpeta=ReglaNegocio
Clave=CtaDinero.Descripcion
3D=S
Tamano=35
ColorFondo=Plata

[ReglaNegocio.CDIProv.DescuentoRecargos]
Carpeta=ReglaNegocio
Clave=CDIProv.DescuentoRecargos
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
EspacioPrevio=S

[ReglaNegocio.CDIProv.Conciliar]
Carpeta=ReglaNegocio
Clave=CDIProv.Conciliar
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.CDIProv.CompraAutoCargos]
Carpeta=ReglaNegocio
Clave=CDIProv.CompraAutoCargos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=10
ColorFondo=Blanco
Pegado=S

[Compras.CDIProv.DiaRevision1]
Carpeta=Compras
Clave=CDIProv.DiaRevision1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco
EspacioPrevio=S

[Compras.CDIProv.DiaRevision2]
Carpeta=Compras
Clave=CDIProv.DiaRevision2
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco

[Compras.CDIProv.HorarioRevision]
Carpeta=Compras
Clave=CDIProv.HorarioRevision
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

[Compras.CDIProv.DiaPago1]
Carpeta=Compras
Clave=CDIProv.DiaPago1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[Compras.CDIProv.DiaPago2]
Carpeta=Compras
Clave=CDIProv.DiaPago2
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco

[Compras.CDIProv.HorarioPago]
Carpeta=Compras
Clave=CDIProv.HorarioPago
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

[Compras.CDIProv.ProvCuenta]
Carpeta=Compras
Clave=CDIProv.ProvCuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Compras.CDIProv.ProvBancoSucursal]
Carpeta=Compras
Clave=CDIProv.ProvBancoSucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[ReglaNegocio.CDIProv.Aforo]
Carpeta=ReglaNegocio
Clave=CDIProv.Aforo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
EspacioPrevio=N
Pegado=S

[ReglaNegocio.CDIProv.Pagares]
Carpeta=ReglaNegocio
Clave=CDIProv.Pagares
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=12
ColorFondo=Blanco

[Otros.CDIProv.Idioma]
Carpeta=Otros
Clave=CDIProv.Idioma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.CDIProv.MaximoAplicacionPagos]
Carpeta=ReglaNegocio
Clave=CDIProv.MaximoAplicacionPagos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=10
ColorFondo=Blanco

[ReglaNegocio.CDIProv.ListaPreciosEsp]
Carpeta=ReglaNegocio
Clave=CDIProv.ListaPreciosEsp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Otros.CDIProv.LeyendaCheque]
Carpeta=Otros
Clave=CDIProv.LeyendaCheque
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Otros.CDIProv.Contrasena]
Carpeta=Otros
Clave=CDIProv.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Compras.CDIProv.AutoEndoso]
Carpeta=Compras
Clave=CDIProv.AutoEndoso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
EspacioPrevio=N

[Compras.ProvRef.Nombre]
Carpeta=Compras
Clave=ProvRef.Nombre
Editar=S
3D=S
Tamano=36
ColorFondo=Plata

[Otros.CDIProv.Cuenta]
Carpeta=Otros
Clave=CDIProv.Cuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Otros.Cta.Descripcion]
Carpeta=Otros
Clave=Cta.Descripcion
Editar=S
3D=S
Tamano=39
ColorFondo=Plata


[Otros.CDIProv.CuentaRetencion]
Carpeta=Otros
Clave=CDIProv.CuentaRetencion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CtaRetencion.Descripcion]
Carpeta=Otros
Clave=CtaRetencion.Descripcion
Editar=S
ValidaNombre=N
3D=S
Tamano=39
ColorFondo=Plata

[ReglaNegocio.CDIProv.FormaPago]
Carpeta=ReglaNegocio
Clave=CDIProv.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[ReglaNegocio.CDIProv.CompraAutoCargosTipo]
Carpeta=ReglaNegocio
Clave=CDIProv.CompraAutoCargosTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Otros.CDIProv.wGastoSolicitud]
Carpeta=Otros
Clave=CDIProv.wGastoSolicitud
Editar=S
LineaNueva=N
3D=S
EspacioPrevio=N
Tamano=30
ColorFondo=Blanco

[ReglaNegocio.CDIProv.LimiteAnticiposMN]
Carpeta=ReglaNegocio
Clave=CDIProv.LimiteAnticiposMN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.CDIProv.ConLimiteAnticipos]
Carpeta=ReglaNegocio
Clave=CDIProv.ConLimiteAnticipos
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Ficha.CDIProv.eMailAuto]
Carpeta=Ficha
Clave=CDIProv.eMailAuto
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco

[ReglaNegocio.CDIProv.ChecarLimite]
Carpeta=ReglaNegocio
Clave=CDIProv.ChecarLimite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Fiscal]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Fiscal
Clave=Fiscal
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProv
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=110
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
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
FiltroGeneral=CDIProv.usuario=USUARIO  and<BR>CDIProv.Proveedor = <T>{info.proveedor}<T>
[Fiscal.CDIProv.FiscalRegimen]
Carpeta=Fiscal
Clave=CDIProv.FiscalRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Fiscal.CDIProv.RFC]
Carpeta=Fiscal
Clave=CDIProv.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Fiscal.CDIProv.CURP]
Carpeta=Fiscal
Clave=CDIProv.CURP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Fiscal.CDIProv.Proveedor]
Carpeta=Fiscal
Clave=CDIProv.Proveedor
LineaNueva=S
3D=S
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]

[Fiscal.CDIProv.Nombre]
Carpeta=Fiscal
Clave=CDIProv.Nombre
3D=S
Tamano=62
ColorFondo=Plata
Efectos=[Negritas]


[Ficha.CDIProv.DireccionNumero]
Carpeta=Ficha
Clave=CDIProv.DireccionNumero
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco


[Otros.CDIProv.Intercompania]
Carpeta=Otros
Clave=CDIProv.Intercompania
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=16
ColorFondo=Blanco


[ReglaNegocio.CDIProv.GarantiaCostos]
Carpeta=ReglaNegocio
Clave=CDIProv.GarantiaCostos
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
EspacioPrevio=S
Tamano=26
ColorFondo=Blanco

[ReglaNegocio.CDIProv.GarantiaCostosPlazo]
Carpeta=ReglaNegocio
Clave=CDIProv.GarantiaCostosPlazo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco
Pegado=S



[Fiscal.CDIProv.ImportadorRegimen]
Carpeta=Fiscal
Clave=CDIProv.ImportadorRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[Fiscal.CDIProv.ImportadorRegistro]
Carpeta=Fiscal
Clave=CDIProv.ImportadorRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CDIProv.Comision]
Carpeta=Otros
Clave=CDIProv.Comision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.CDIProv.DireccionNumeroInt]
Carpeta=Ficha
Clave=CDIProv.DireccionNumeroInt
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco


[FormaExtraValor]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Características
Clave=FormaExtraValor
Filtros=S
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaExtraValor
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaSinBorde=S
HojaFondoGris=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
ListaOrden=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
RefrescarAlEntrar=S
PermiteEditar=S
FiltroGeneral=FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaExtraVisibleProveedor(<T>{CDIProv:CDIProv.Categoria}<T>, <T>{CDIProv:CDIProv.Familia}<T>)) AND FormaExtraValor.Aplica=<T>Proveedor<T> AND FormaExtraValor.AplicaClave=<T>{CDIProv:CDIProv.Proveedor}<T>
CondicionVisible=General.CamposExtras<><T>Campos Extras<T>

[FormaExtraValor.VerCampo]
Carpeta=FormaExtraValor
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Plata
ColorFuente=Negro

[FormaExtraValor.VerValor]
Carpeta=FormaExtraValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
Efectos=[Negritas]

[FormaExtraValor.Columnas]
VerCampo=278
VerValor=303

[Otros.CDIProv.Importe1]
Carpeta=Otros
Clave=CDIProv.Importe1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CDIProv.Importe2]
Carpeta=Otros
Clave=CDIProv.Importe2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Detalle.Columnas]
CampoNombre=311
Valor=303
ValorAnterior=285



[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden	(Acendente)
GrupoOrden<TAB>(Acendente)=FormaExtraCampo.Orden<TAB>(Acendente)
FormaExtraCampo.Orden<TAB>(Acendente)=(Fin)
GrupoOrden	(Acendente)=FormaExtraCampo.Orden	(Acendente)
FormaExtraCampo.Orden	(Acendente)=(Fin)

[Acciones.MapaTodos]
Nombre=MapaTodos
Boton=0
NombreDesplegar=Ver Mapa (&Todos)
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>CDIProv.Proveedor<T>)<BR>Mapa.AgregarListaSt(<T>Proveedor<T>)<BR>PlugIn(<T>Mapa<T>, <T>Proveedor<T>, <T>Posicionar<T>)

[Acciones.MapaSeleccion]
Nombre=MapaSeleccion
Boton=0
NombreDesplegar=Ver Mapa (&Selección)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>CDIProv.Proveedor<T>, Verdadero)<BR>Mapa.AgregarListaSt(<T>Proveedor<T>)<BR>PlugIn(<T>Mapa<T>, <T>Proveedor<T>, <T>Posicionar<T>)

[SituacionCta]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Situaciones por Area
Clave=SituacionCta
Filtros=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
Zona=A1
Vista=SituacionCta
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosSubTitulo=<T>Area<T>
ListaEnCaptura=(Lista)
IconosNombre=SituacionCta:SituacionCta.Area
FiltroGeneral=SituacionCta.Rama=<T>CXP<T> AND SituacionCta.Cuenta=<T>{CDIProv:CDIProv.Proveedor}<T>
CondicionVisible=General.SituacionesPorArea

[SituacionCta.SituacionCta.Situacion]
Carpeta=SituacionCta
Clave=SituacionCta.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionFecha]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionUsuario]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionNota]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionNota
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[SituacionCta.Columnas]
0=188
1=148
2=-2
3=-2
4=-2

[SituacionCta.ListaEnCaptura]
(Inicio)=SituacionCta.Situacion
SituacionCta.Situacion=SituacionCta.SituacionFecha
SituacionCta.SituacionFecha=SituacionCta.SituacionUsuario
SituacionCta.SituacionUsuario=SituacionCta.SituacionNota
SituacionCta.SituacionNota=(Fin)

[Ecuador]
Estilo=Ficha
Pestana=S
Clave=Ecuador
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProv
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
PestanaOtroNombre=S
PestanaNombre=Ecuador
PermiteEditar=S
CondicionVisible=Empresa.EsEcuador

[Ecuador.CDIProv.TipoRegistro]
Carpeta=Ecuador
Clave=CDIProv.TipoRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ecuador.CDIProv.AutorizacionSRI]
Carpeta=Ecuador
Clave=CDIProv.AutorizacionSRI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ecuador.CDIProv.VigenciaSRI]
Carpeta=Ecuador
Clave=CDIProv.VigenciaSRI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=20

[Ecuador.ListaEnCaptura]
(Inicio)=CDIProv.TipoRegistro
CDIProv.TipoRegistro=CDIProv.AutorizacionSRI
CDIProv.AutorizacionSRI=CDIProv.VigenciaSRI
CDIProv.VigenciaSRI=(Fin)

[Fiscal.CDIProv.FiscalGenerar]
Carpeta=Fiscal
Clave=CDIProv.FiscalGenerar
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=N
Tamano=
ColorFondo=Blanco

ValidaNombre=S
[Fiscal.CDIProv.FiscalZona]
Carpeta=Fiscal
Clave=CDIProv.FiscalZona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[IntelisisMES]
Estilo=Ficha
Pestana=S
Clave=IntelisisMES
PermiteEditar=S
GuardarPorRegistro=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProv
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=Intelisis Factory
FichaEspacioEntreLineas=6
FichaEspacioNombres=95
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CondicionVisible=General.ProdInterfazINFOR

[IntelisisMES.CDIProv.INFORTallerExterior]
Carpeta=IntelisisMES
Clave=CDIProv.INFORTallerExterior
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=100

[IntelisisMES.CDIProv.INFORProveedorNal]
Carpeta=IntelisisMES
Clave=CDIProv.INFORProveedorNal
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=100
ColorFondo=Blanco

[IntelisisMES.Columnas]
INFORTallerExterior=172
INFORProveedorNal=490

[IntelisisMES.ListaEnCaptura]
(Inicio)=CDIProv.INFORProveedorNal
CDIProv.INFORProveedorNal=CDIProv.INFORTallerExterior
CDIProv.INFORTallerExterior=(Fin)




[WMS]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=WMS
Clave=WMS
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProv
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

CondicionVisible=General.WMS
[WMS.CDIProv.DefPosicionRecibo]
Carpeta=WMS
Clave=CDIProv.DefPosicionRecibo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

EspacioPrevio=S
[WMS.CDIProv.DefPosicionSurtido]
Carpeta=WMS
Clave=CDIProv.DefPosicionSurtido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[WMS.ListaEnCaptura]
(Inicio)=CDIProv.Almacen
CDIProv.Almacen=CDIProv.DefPosicionRecibo
CDIProv.DefPosicionRecibo=CDIProv.DefPosicionSurtido
CDIProv.DefPosicionSurtido=(Fin)

[WMS.CDIProv.Almacen]
Carpeta=WMS
Clave=CDIProv.Almacen
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata











[FiscalAvanzado.ListaEnCaptura]
(Inicio)=CDIProv.ClaveTipoTercero
CDIProv.ClaveTipoTercero=CDIProv.ClaveTipoOperacion
CDIProv.ClaveTipoOperacion=(Fin)

[FiscalAvanzado.CDIProv.ClaveTipoTercero]
Carpeta=Módulo Fiscal Avanzado
Clave=CDIProv.ClaveTipoTercero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FiscalAvanzado.CDIProv.ClaveTipoOperacion]
Carpeta=Módulo Fiscal Avanzado
Clave=CDIProv.ClaveTipoOperacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco







[Otros.CDIProv.CentroCostos]
Carpeta=Otros
Clave=CDIProv.CentroCostos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[Otros.CentroCostos.Descripcion]
Carpeta=Otros
Clave=CentroCostos.Descripcion
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata






[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=APROBAR
APROBAR=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=MapaTodos
MapaTodos=MapaSeleccion
MapaSeleccion=Campos
Campos=(Fin)
























































































































































































































































































































































[Forma.PlantillasExcepciones]
(Inicio)=CDIProv:CDIProv.Estatus
CDIProv:CDIProv.Estatus=CDIProv:CDIProv.TieneMovimientos
CDIProv:CDIProv.TieneMovimientos=(Fin)











































[Acciones.Navega]
Nombre=Navega
Boton=0
NombreDesplegar=&Navega
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S













[Acciones.Guardar.Guardar]
Nombre=Guardar
Boton=0
TipoAccion=controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Guardar.exp]
Nombre=exp
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

















Expresion=EjecutarSQL( <T>EXEC CDIActuProv :tProv, :tUsu<T>,Info.Proveedor,usuario )
[Acciones.Guardar.Actualiz]
Nombre=Actualiz
Boton=0
TipoAccion=Ventana
Activo=S
Visible=S








ClaveAccion=Cerrar
[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=(Fin)






[Acciones.Guardar.ListaAccionesMultiples]
(Inicio)=Guardar
Guardar=exp
exp=Actualiz
Actualiz=(Fin)





[Ficha.ListaEnCaptura]
(Inicio)=CDIProv.Proveedor
CDIProv.Proveedor=CDIProv.Tipo
CDIProv.Tipo=CDIProv.Rama
CDIProv.Rama=CDIProv.Estatus
CDIProv.Estatus=CDIProv.Nombre
CDIProv.Nombre=CDIProv.BeneficiarioNombre
CDIProv.BeneficiarioNombre=CDIProv.NombreCorto
CDIProv.NombreCorto=CDIProv.RFC
CDIProv.RFC=CDIProv.CURP
CDIProv.CURP=CDIProv.Categoria
CDIProv.Categoria=CDIProv.Familia
CDIProv.Familia=CDIProv.Direccion
CDIProv.Direccion=CDIProv.DireccionNumero
CDIProv.DireccionNumero=CDIProv.DireccionNumeroInt
CDIProv.DireccionNumeroInt=CDIProv.EntreCalles
CDIProv.EntreCalles=CDIProv.Plano
CDIProv.Plano=CDIProv.Observaciones
CDIProv.Observaciones=CDIProv.Delegacion
CDIProv.Delegacion=CDIProv.Colonia
CDIProv.Colonia=CDIProv.CodigoPostal
CDIProv.CodigoPostal=CDIProv.Ruta
CDIProv.Ruta=CDIProv.Poblacion
CDIProv.Poblacion=CDIProv.Estado
CDIProv.Estado=CDIProv.Pais
CDIProv.Pais=CDIProv.Telefonos
CDIProv.Telefonos=CDIProv.Fax
CDIProv.Fax=CDIProv.PedirTono
CDIProv.PedirTono=CDIProv.Contacto1
CDIProv.Contacto1=CDIProv.Contacto2
CDIProv.Contacto2=CDIProv.eMail1
CDIProv.eMail1=CDIProv.eMail2
CDIProv.eMail2=CDIProv.eMailAuto
CDIProv.eMailAuto=(Fin)

[ReglaNegocio.ListaEnCaptura]
(Inicio)=CDIProv.Proveedor
CDIProv.Proveedor=CDIProv.Nombre
CDIProv.Nombre=CDIProv.Proyecto
CDIProv.Proyecto=CDIProv.Condicion
CDIProv.Condicion=CDIProv.FormaPago
CDIProv.FormaPago=CDIProv.DefMoneda
CDIProv.DefMoneda=CDIProv.ListaPreciosEsp
CDIProv.ListaPreciosEsp=CDIProv.CtaDinero
CDIProv.CtaDinero=CtaDinero.Descripcion
CtaDinero.Descripcion=CDIProv.Pagares
CDIProv.Pagares=CDIProv.Aforo
CDIProv.Aforo=CDIProv.CompraAutoCargosTipo
CDIProv.CompraAutoCargosTipo=CDIProv.CompraAutoCargos
CDIProv.CompraAutoCargos=CDIProv.MaximoAplicacionPagos
CDIProv.MaximoAplicacionPagos=CDIProv.ConLimiteAnticipos
CDIProv.ConLimiteAnticipos=CDIProv.LimiteAnticiposMN
CDIProv.LimiteAnticiposMN=CDIProv.ChecarLimite
CDIProv.ChecarLimite=CDIProv.GarantiaCostos
CDIProv.GarantiaCostos=CDIProv.GarantiaCostosPlazo
CDIProv.GarantiaCostosPlazo=CDIProv.DescuentoRecargos
CDIProv.DescuentoRecargos=CDIProv.Conciliar
CDIProv.Conciliar=(Fin)

[Compras.ListaEnCaptura]
(Inicio)=CDIProv.Proveedor
CDIProv.Proveedor=CDIProv.Nombre
CDIProv.Nombre=CDIProv.FormaEnvio
CDIProv.FormaEnvio=CDIProv.ZonaImpuesto
CDIProv.ZonaImpuesto=CDIProv.Descuento
CDIProv.Descuento=CDIProv.Almacen
CDIProv.Almacen=CDIProv.Agente
CDIProv.Agente=Agente.Nombre
Agente.Nombre=CDIProv.AutoEndoso
CDIProv.AutoEndoso=ProvRef.Nombre
ProvRef.Nombre=CDIProv.DiaRevision1
CDIProv.DiaRevision1=CDIProv.DiaRevision2
CDIProv.DiaRevision2=CDIProv.HorarioRevision
CDIProv.HorarioRevision=CDIProv.DiaPago1
CDIProv.DiaPago1=CDIProv.DiaPago2
CDIProv.DiaPago2=CDIProv.HorarioPago
CDIProv.HorarioPago=CDIProv.ProvCuenta
CDIProv.ProvCuenta=CDIProv.ProvBancoSucursal
CDIProv.ProvBancoSucursal=(Fin)



[Fiscal.ListaEnCaptura]
(Inicio)=CDIProv.Proveedor
CDIProv.Proveedor=CDIProv.Nombre
CDIProv.Nombre=CDIProv.FiscalRegimen
CDIProv.FiscalRegimen=CDIProv.RFC
CDIProv.RFC=CDIProv.CURP
CDIProv.CURP=CDIProv.ImportadorRegimen
CDIProv.ImportadorRegimen=CDIProv.ImportadorRegistro
CDIProv.ImportadorRegistro=CDIProv.FiscalGenerar
CDIProv.FiscalGenerar=(Fin)

[Otros.ListaEnCaptura]
(Inicio)=CDIProv.Proveedor
CDIProv.Proveedor=CDIProv.Nombre
CDIProv.Nombre=CDIProv.DirInternet
CDIProv.DirInternet=CDIProv.Mensaje
CDIProv.Mensaje=CDIProv.LeyendaCheque
CDIProv.LeyendaCheque=CDIProv.Comision
CDIProv.Comision=CDIProv.Importe1
CDIProv.Importe1=CDIProv.Importe2
CDIProv.Importe2=CDIProv.Cuenta
CDIProv.Cuenta=Cta.Descripcion
Cta.Descripcion=CDIProv.CuentaRetencion
CDIProv.CuentaRetencion=CtaRetencion.Descripcion
CtaRetencion.Descripcion=CDIProv.NivelAcceso
CDIProv.NivelAcceso=CDIProv.Idioma
CDIProv.Idioma=CDIProv.Contrasena
CDIProv.Contrasena=CDIProv.Intercompania
CDIProv.Intercompania=CDIProv.wGastoSolicitud
CDIProv.wGastoSolicitud=CDIProv.CentroCostos
CDIProv.CentroCostos=CentroCostos.Descripcion
CentroCostos.Descripcion=(Fin)





[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=ReglaNegocio
ReglaNegocio=Compras
Compras=Fiscal
Fiscal=Otros
Otros=FormaExtraValor
FormaExtraValor=SituacionCta
SituacionCta=Ecuador
Ecuador=IntelisisMES
IntelisisMES=WMS
WMS=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=Situacion
Situacion=Navega
Navega=(Fin)
