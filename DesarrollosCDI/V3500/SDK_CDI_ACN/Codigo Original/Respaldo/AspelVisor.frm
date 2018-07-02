[Forma]
Clave=AspelVisor
Nombre=Visor Importación Aspel
Icono=10
Modulos=(Lista)
ListaCarpetas=(Lista)
CarpetaPrincipal=Compras
PosicionInicialIzquierda=200
PosicionInicialArriba=59
PosicionInicialAlturaCliente=745
PosicionInicialAncho=1040
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionSec1=390
ListaAcciones=(Lista)
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
PosicionSec2=663
ExpresionesAlMostrar=Asigna(Info.Formato,SQL(<T>SELECT Valor FROM AspelCfgOpcion WHERE Descripcion = :tDescripcion<T>,<T>Formato Cuentas Contables<T>))<BR>Asigna(Info.Numero,SQL(<T>SELECT LEN(REPLACE(REPLACE(RTRIM(LTRIM(:tFormato)),:tGuion,:tVacio),:tDos,:tVac))<T>,Info.Formato,<T>-<T>,<T><T>,<T>;2<T>,<T><T>))<BR>ActualizarVista

[AspelRubro.AspelRubro.Valor]
Carpeta=AspelRubro
Clave=AspelRubro.Valor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[AspelRubro.AspelRubro.ValorNumero]
Carpeta=AspelRubro
Clave=AspelRubro.ValorNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[AspelRubro.AspelRubro.Rama]
Carpeta=AspelRubro
Clave=AspelRubro.Rama
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Rojo
Efectos=[Negritas]

[AspelRubro.Columnas]
Valor=352
ValorNumero=64
Rama=59
Descripcion=485

[AspelRubro.CtaLista.Descripcion]
Carpeta=AspelRubro
Clave=CtaLista.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Cuentas]
Estilo=Iconos
Pestana=S
Clave=Cuentas
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=AspelCuenta
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
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
PestanaOtroNombre=S
PestanaNombre=Cuentas Contables
MenuLocal=S
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Cuenta<T>
ElementosPorPagina=200
ListaAcciones=(Lista)
FiltroGrupo1=AspelCuenta.Valor
FiltroValida1=AspelCuenta.Valor
IconosNombre=AspelCuenta:CuentaConFormato
FiltroGeneral=AspelCuenta.Campo = <T>Cuenta<T>

[Cuentas.Columnas]
Valor=304
Nombre=632
Tipo=124
Estatus=94
CuentaConFormato=110
TipoDescrito=124
0=124
1=208

[Cuentas.AspelCuenta.Nombre]
Carpeta=Cuentas
Clave=AspelCuenta.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Cuentas.TipoDescrito]
Carpeta=Cuentas
Clave=TipoDescrito
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Cuentas.AspelCuenta.Estatus]
Carpeta=Cuentas
Clave=AspelCuenta.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Monedas]
Estilo=Iconos
Pestana=S
Clave=Monedas
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=AspelMoneda
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=Monedas
OtroOrden=S
ListaOrden=AspelMoneda.Orden<TAB>(Acendente)
MenuLocal=S
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Moneda<T>
ElementosPorPagina=200
ListaAcciones=(Lista)
IconosNombre=AspelMoneda:AspelMoneda.Valor
FiltroGeneral=AspelMoneda.Campo = <T>Moneda<T>

[Monedas.AspelMoneda.TipoCambio]
Carpeta=Monedas
Clave=AspelMoneda.TipoCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Monedas.AspelMoneda.Clave]
Carpeta=Monedas
Clave=AspelMoneda.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=3
ColorFondo=Blanco
ColorFuente=Negro

[Monedas.AspelMoneda.Nombre]
Carpeta=Monedas
Clave=AspelMoneda.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Monedas.Columnas]
Valor=141
Nombre=624
Clave=49
TipoCambio=143
0=130
1=277

[Almacenes]
Estilo=Iconos
Pestana=S
Clave=Almacenes
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=AspelAlmacenes
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Almacenes
MenuLocal=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Almacén<T>
ElementosPorPagina=200
ListaAcciones=(Lista)
IconosNombre=AspelAlmacenes:AspelAlmacenes.Valor
FiltroGeneral=AspelAlmacenes.Campo = <T>Almacen<T>

[Almacenes.AspelAlmacenes.Nombre]
Carpeta=Almacenes
Clave=AspelAlmacenes.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Almacenes.AspelAlmacenes.Estatus]
Carpeta=Almacenes
Clave=AspelAlmacenes.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Almacenes.Columnas]
Valor=304
Nombre=562
Estatus=94
0=119
1=459

[Agentes]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Agentes
Clave=Agentes
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=AspelAgentes
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Agente<T>
ElementosPorPagina=200
MenuLocal=S
ListaAcciones=(Lista)
IconosNombre=AspelAgentes:AspelAgentes.Valor
FiltroGeneral=AspelAgentes.Campo = <T>Agente<T>

[Agentes.AspelAgentes.Nombre]
Carpeta=Agentes
Clave=AspelAgentes.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Agentes.AspelAgentes.Tipo]
Carpeta=Agentes
Clave=AspelAgentes.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Agentes.AspelAgentes.eMail]
Carpeta=Agentes
Clave=AspelAgentes.eMail
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Agentes.AspelAgentes.TipoComision]
Carpeta=Agentes
Clave=AspelAgentes.TipoComision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Agentes.AspelAgentes.Estatus]
Carpeta=Agentes
Clave=AspelAgentes.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Agentes.Columnas]
Valor=72
Nombre=237
Tipo=84
eMail=270
TipoComision=115
Porcentaje=109
Estatus=103
PorcentajePorCien=74
0=90
1=224

[Agentes.PorcentajePorCien]
Carpeta=Agentes
Clave=PorcentajePorCien
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Clientes]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Clientes
Clave=Clientes
Filtros=S
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=AspelClientes
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
MenuLocal=S
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Cliente<T>
ElementosPorPagina=200
ListaAcciones=(Lista)
IconosNombre=AspelClientes:AspelClientes.Valor
FiltroGeneral=AspelClientes.Campo = <T>Cliente<T>

[Clientes.AspelClientes.Nombre]
Carpeta=Clientes
Clave=AspelClientes.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.RFC]
Carpeta=Clientes
Clave=AspelClientes.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.CURP]
Carpeta=Clientes
Clave=AspelClientes.CURP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.Telefonos]
Carpeta=Clientes
Clave=AspelClientes.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.Fax]
Carpeta=Clientes
Clave=AspelClientes.Fax
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.Direccion]
Carpeta=Clientes
Clave=AspelClientes.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.Colonia]
Carpeta=Clientes
Clave=AspelClientes.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.Poblacion]
Carpeta=Clientes
Clave=AspelClientes.Poblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.Zona]
Carpeta=Clientes
Clave=AspelClientes.Zona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.CodigoPostal]
Carpeta=Clientes
Clave=AspelClientes.CodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.eMail]
Carpeta=Clientes
Clave=AspelClientes.eMail
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.AspelClientes.Estatus]
Carpeta=Clientes
Clave=AspelClientes.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Clientes.Columnas]
Valor=84
Nombre=323
RFC=124
CURP=124
Telefonos=186
Fax=191
Direccion=319
Colonia=107
Poblacion=138
Zona=105
CodigoPostal=85
eMail=210
Estatus=94
0=98
1=256

[Proveedores]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Proveedores
Clave=Proveedores
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=AspelProveedores
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
MenuLocal=S
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
ListaAcciones=(Lista)
IconosNombre=AspelProveedores:AspelProveedores.Valor
IconosSubTitulo=<T>Proveedor<T>
FiltroGeneral=AspelProveedores.Campo = <T>Proveedor<T>

[Proveedores.AspelProveedores.Nombre]
Carpeta=Proveedores
Clave=AspelProveedores.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.RFC]
Carpeta=Proveedores
Clave=AspelProveedores.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.CURP]
Carpeta=Proveedores
Clave=AspelProveedores.CURP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.Telefonos]
Carpeta=Proveedores
Clave=AspelProveedores.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.Direccion]
Carpeta=Proveedores
Clave=AspelProveedores.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.Colonia]
Carpeta=Proveedores
Clave=AspelProveedores.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.Poblacion]
Carpeta=Proveedores
Clave=AspelProveedores.Poblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.Zona]
Carpeta=Proveedores
Clave=AspelProveedores.Zona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.CodigoPostal]
Carpeta=Proveedores
Clave=AspelProveedores.CodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.Fax]
Carpeta=Proveedores
Clave=AspelProveedores.Fax
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.eMail]
Carpeta=Proveedores
Clave=AspelProveedores.eMail
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.AspelProveedores.Estatus]
Carpeta=Proveedores
Clave=AspelProveedores.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Proveedores.Columnas]
Valor=106
Nombre=325
RFC=124
CURP=124
Telefonos=163
Direccion=244
Colonia=120
Poblacion=179
Zona=71
CodigoPostal=94
Fax=155
eMail=221
Estatus=94
0=64
1=322

[Articulos]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Artículos
Clave=Articulos
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=AspelArticulos
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
MenuLocal=S
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Artículos<T>
ElementosPorPagina=200
ListaAcciones=(Lista)
IconosNombre=AspelArticulos:AspelArticulos.Valor
FiltroGeneral=AspelArticulos.Campo = <T>Articulo<T>

[Articulos.AspelArticulos.Nombre]
Carpeta=Articulos
Clave=AspelArticulos.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Tipo]
Carpeta=Articulos
Clave=AspelArticulos.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Unidad]
Carpeta=Articulos
Clave=AspelArticulos.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.TiempoEntrega]
Carpeta=Articulos
Clave=AspelArticulos.TiempoEntrega
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.TiempoEntregaU]
Carpeta=Articulos
Clave=AspelArticulos.TiempoEntregaU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Peso]
Carpeta=Articulos
Clave=AspelArticulos.Peso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=100

[Articulos.AspelArticulos.Volumen]
Carpeta=Articulos
Clave=AspelArticulos.Volumen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Proveedor]
Carpeta=Articulos
Clave=AspelArticulos.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.PrecioLista]
Carpeta=Articulos
Clave=AspelArticulos.PrecioLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Precio2]
Carpeta=Articulos
Clave=AspelArticulos.Precio2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Precio3]
Carpeta=Articulos
Clave=AspelArticulos.Precio3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Precio4]
Carpeta=Articulos
Clave=AspelArticulos.Precio4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Precio5]
Carpeta=Articulos
Clave=AspelArticulos.Precio5
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Impuesto1]
Carpeta=Articulos
Clave=AspelArticulos.Impuesto1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.TipoCosteo]
Carpeta=Articulos
Clave=AspelArticulos.TipoCosteo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Estatus]
Carpeta=Articulos
Clave=AspelArticulos.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.Columnas]
Valor=117
Nombre=261
Tipo=63
Unidad=67
TiempoEntrega=85
TiempoEntregaU=115
Peso=40
Volumen=64
Proveedor=62
PrecioLista=64
Precio2=64
Precio3=64
Precio4=64
Precio5=64
Impuesto1=64
TipoCosteo=124
Estatus=94
0=147
1=160

[Ventas]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Ventas
Clave=Ventas
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AspelVentas
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroAutoCampo=AspelVentas.Mov
FiltroAutoValidar=AspelVentas.Mov
FiltroAutoOrden=AspelVentas.Mov
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
ListaEnCaptura=(Lista)
RefrescarAlEntrar=S
MenuLocal=S
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Fecha Emision<T>
ElementosPorPagina=200
ListaAcciones=(Lista)
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FiltroMovsTodos=S
FiltroMovDefault=(Todos)
FiltroTodo=S
FiltroMonedasCampo=AspelVentas.Moneda
FiltroGrupo1=AspelVentas.Moneda
FiltroValida1=AspelVentas.Moneda
FiltroGrupo2=AspelVentas.Mov
FiltroValida2=AspelVentas.Mov
FiltroGrupo3=AspelVentas.Cliente
FiltroValida3=AspelVentas.Cliente
IconosNombre=AspelVentas:AspelVentas.FechaEmision
FiltroGeneral=AspelVentas.Modulo = <T>VTAS<T>

[Ventas.Columnas]
FechaEmision=94
Mov=124
Cliente=56
Almacen=83
Moneda=64
TipoCambio=64
Estatus=94
Nombre=462
Importe=136
0=91
1=115

[Ventas.AspelVentas.Mov]
Carpeta=Ventas
Clave=AspelVentas.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Ventas.AspelVentas.Cliente]
Carpeta=Ventas
Clave=AspelVentas.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Ventas.AspelVentas.Almacen]
Carpeta=Ventas
Clave=AspelVentas.Almacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Ventas.Importe]
Carpeta=Ventas
Clave=Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Ventas.AspelClientes.Nombre]
Carpeta=Ventas
Clave=AspelClientes.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Compras]
Estilo=Iconos
Pestana=S
Clave=Compras
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AspelCompras
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
Filtros=S
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
PestanaOtroNombre=S
PestanaNombre=Compras
RefrescarAlEntrar=S
FiltroAutoCampo=Mov
FiltroAutoValidar=Mov
MenuLocal=S
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
ListaAcciones=(Lista)
FiltroTodo=S
FiltroGrupo1=Moneda
FiltroValida1=Moneda
FiltroGrupo2=Mov
FiltroValida2=Mov
FiltroGrupo3=AspelCompras.Proveedor
FiltroValida3=AspelCompras.Proveedor
IconosSubTitulo=<T>Fecha emisión<T>
IconosNombre=AspelCompras:FechaEmision
FiltroGeneral=Modulo = <T>COMS<T>

[Compras.Mov]
Carpeta=Compras
Clave=Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Compras.Columnas]
FechaEmision=94
Mov=124
Proveedor=64
Nombre=513
Almacen=51
Importe=112
0=103
1=111

[Compras.Nombre]
Carpeta=Compras
Clave=Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Compras.Almacen]
Carpeta=Compras
Clave=Almacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Compras.Importe]
Carpeta=Compras
Clave=Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Polizas]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Polizas Contables
Clave=Polizas
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AspelPolizas
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
ListaEnCaptura=(Lista)
MenuLocal=S
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Fecha Emisión<T>
ElementosPorPagina=200
ListaAcciones=(Lista)
IconosNombre=AspelPolizas:FechaEmision

[Polizas.Mov]
Carpeta=Polizas
Clave=Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Polizas.MovID]
Carpeta=Polizas
Clave=MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Polizas.DEBE]
Carpeta=Polizas
Clave=DEBE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Polizas.HABER]
Carpeta=Polizas
Clave=HABER
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Polizas.Columnas]
FechaEmision=166
Mov=128
MovID=66
DEBE=158
HABER=190
0=92
1=71

[Inventarios]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Inventarios
Clave=Inventarios
Filtros=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AspelInventarios
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Automático
CarpetaVisible=S
FiltroAutoCampo=AspelInventarios.Almacen
FiltroAutoValidar=AspelInventarios.Almacen
FiltroAutoOrden=AspelInventarios.Almacen
FiltroEstilo=Directorio
MenuLocal=S
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
ListaAcciones=(Lista)
FiltroTodo=S
IconosNombre=AspelInventarios:AspelInventarios.Mov
FiltroGeneral=Modulo = <T>INV<T>

[Inventarios.AspelInventarios.Articulo]
Carpeta=Inventarios
Clave=AspelInventarios.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Inventarios.AspelInventarios.Cantidad]
Carpeta=Inventarios
Clave=AspelInventarios.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Inventarios.AspelInventarios.Costo]
Carpeta=Inventarios
Clave=AspelInventarios.Costo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Inventarios.Importe]
Carpeta=Inventarios
Clave=Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Inventarios.Columnas]
Mov=218
Articulo=182
Cantidad=121
Costo=128
Importe=143
0=135
1=401

[Cxc]
Estilo=Iconos
Pestana=S
Clave=Cxc
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AspelCxc
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroAutoCampo=Mov
FiltroAutoValidar=Mov
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Cuentas x cobrar
MenuLocal=S
ListaAcciones=(Lista)
IconosSubTitulo=<T>Fecha Emision<T>
PermiteLocalizar=S
BusquedaRapidaControles=S
FiltroAutoOrden=Mov
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroMonedasCampo=Moneda
FiltroFechasNombre=&Fecha
FiltroTodo=S
FiltroGrupo1=Moneda
FiltroValida1=Moneda
FiltroGrupo2=Mov
FiltroValida2=Mov
FiltroGrupo3=Cliente
FiltroValida3=Cliente
IconosNombre=AspelCxc:FechaEmision

[Cxc.Mov]
Carpeta=Cxc
Clave=Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Cxc.Cliente]
Carpeta=Cxc
Clave=Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Cxc.Importe]
Carpeta=Cxc
Clave=Importe
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Cxc.Columnas]
0=91
1=90

[Cxc.Nombre]
Carpeta=Cxc
Clave=Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CxcLocalizar]
Nombre=CxcLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Cxc
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.CxcLocalizarSiguiente]
Nombre=CxcLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Cxc
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.CxcPreliminar]
Nombre=CxcPreliminar
Boton=0
NombreDesplegar=Presentación &Preliminar
EnMenu=S
Carpeta=Cxc
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.CxcExcel]
Nombre=CxcExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Cxc
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Cxp]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cuentas x pagar
Clave=Cxp
Filtros=S
PermiteLocalizar=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AspelCxp
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Fecha Emision<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
MenuLocal=S
ListaAcciones=(Lista)
BusquedaRapidaControles=S
FiltroGrupo1=Moneda
FiltroValida1=Moneda
FiltroGrupo2=Mov
FiltroValida2=Mov
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroMonedasCampo=Moneda
FiltroFechasNombre=&Fecha
FiltroAutoCampo=Moneda
FiltroAutoValidar=Moneda
FiltroTodo=S
FiltroAutoOrden=Mov
IconosNombre=AspelCxp:FechaEmision
FiltroGrupo3=AspelCxp.Proveedor
FiltroValida3=AspelCxp.Proveedor

[Cxp.Mov]
Carpeta=Cxp
Clave=Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Cxp.Importe]
Carpeta=Cxp
Clave=Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Cxp.Columnas]
0=105
1=113

[Cxp.Nombre]
Carpeta=Cxp
Clave=Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CxpLocalizar]
Nombre=CxpLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Cxp
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.CxpLocalizarSiguiente]
Nombre=CxpLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Cxp
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.CxpPreliminar]
Nombre=CxpPreliminar
Boton=0
NombreDesplegar=Presentación &Preliminar
EnMenu=S
Carpeta=Cxp
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.CxpExcel]
Nombre=CxpExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Cxp
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.AgentesLocalizar]
Nombre=AgentesLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Agentes
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.AgentesLocalizarSiguiente]
Nombre=AgentesLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Agentes
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.AgentesPreliminar]
Nombre=AgentesPreliminar
Boton=0
NombreDesplegar=Presentacion &Preliminar
EnMenu=S
Carpeta=Agentes
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.AgentesExcel]
Nombre=AgentesExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Agentes
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.AlmacenesLocalizar]
Nombre=AlmacenesLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Almacenes
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.AlmacenesLocalizarSiguiente]
Nombre=AlmacenesLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Almacenes
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.AlmacenesPreliminar]
Nombre=AlmacenesPreliminar
Boton=0
NombreDesplegar=Presentacion &Preliminar
EnMenu=S
Carpeta=Almacenes
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.AlmacenesExcel]
Nombre=AlmacenesExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Almacenes
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.ArticulosLocalizar]
Nombre=ArticulosLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Articulos
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.ArticulosLocalizarSiguiente]
Nombre=ArticulosLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Articulos
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.ArticulosPreliminar]
Nombre=ArticulosPreliminar
Boton=0
NombreDesplegar=Presentacion Preliminar
EnMenu=S
Carpeta=Articulos
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.ArticulosExcel]
Nombre=ArticulosExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Articulos
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.ClientesLocalizar]
Nombre=ClientesLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Clientes
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.ClientesLocalizarSiguiente]
Nombre=ClientesLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Clientes
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.ClientesPreliminar]
Nombre=ClientesPreliminar
Boton=0
NombreDesplegar=Presentacion &Preliminar
EnMenu=S
Carpeta=Clientes
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.ClientesExcel]
Nombre=ClientesExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Clientes
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.CuentasLocalizar]
Nombre=CuentasLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Cuentas
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.CuentasLocalizarSiguiente]
Nombre=CuentasLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Cuentas
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.CuentasPreliminar]
Nombre=CuentasPreliminar
Boton=0
NombreDesplegar=Presentacion &Preliminar
EnMenu=S
Carpeta=Cuentas
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.CuentasExcel]
Nombre=CuentasExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Cuentas
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.MonedasLocalizar]
Nombre=MonedasLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Monedas
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.MonedasLocalizarSiguiente]
Nombre=MonedasLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Monedas
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.MonedasPreliminar]
Nombre=MonedasPreliminar
Boton=0
NombreDesplegar=Presentacion &Preliminar
EnMenu=S
Carpeta=Monedas
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.MonedasExcel]
Nombre=MonedasExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Monedas
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.ProveedoresLocalizar]
Nombre=ProveedoresLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Proveedores
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.ProveedoresLocalizarSiguiente]
Nombre=ProveedoresLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Proveedores
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.ProveedoresPreliminar]
Nombre=ProveedoresPreliminar
Boton=0
NombreDesplegar=Presentacion &Preliminar
EnMenu=S
Carpeta=Proveedores
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.ProveedoresExcel]
Nombre=ProveedoresExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Proveedores
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.ComprasLocalizar]
Nombre=ComprasLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Compras
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.ComprasLocalizarSiguiente]
Nombre=ComprasLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Compras
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.ComprasPreliminar]
Nombre=ComprasPreliminar
Boton=0
NombreDesplegar=Presentacion &Preliminar
EnMenu=S
Carpeta=Compras
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.ComprasExcel]
Nombre=ComprasExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Compras
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.AspelComprasD]
Nombre=AspelComprasD
Boton=0
NombreDesplegar=&Detalle Compras
EnMenu=S
TipoAccion=Formas
ClaveAccion=AspelComprasD
Activo=S
Antes=S
Visible=S
AntesExpresiones=Asigna(Info.Empresa,AspelCompras:Empresa)<BR>Asigna(Info.Sucursal,AspelCompras:Sucursal)<BR>Asigna(Info.Proveedor,AspelCompras:AspelCompras.Proveedor)<BR>Asigna(Info.Almacen,AspelCompras:Almacen)<BR>Asigna(Info.Fecha,AspelCompras:FechaEmision)<BR>Asigna(Info.Mov,AspelCompras:Mov)<BR>Asigna(Info.Moneda,AspelCompras:Moneda)<BR>Asigna(Info.TipoCambio,AspelCompras:TipoCambio)<BR>Asigna(Info.Estatus,AspelCompras:Estatus)<BR>Asigna(Info.Modulo,AspelCompras:Modulo)

[Acciones.ArticulosSeries]
Nombre=ArticulosSeries
Boton=0
NombreDesplegar=Se&ries Articulos
EnMenu=S
TipoAccion=Expresion
Activo=S
Antes=S
Visible=S
Expresion=Forma(<T>AspelSeries<T>)<BR>Forma.ActualizarVista(<T>Articulos<T>)
AntesExpresiones=Asigna(Info.Articulo,AspelArticulos:AspelArticulos.Valor)<BR>Asigna(Info.Descripcion,AspelArticulos:AspelArticulos.Nombre)<BR>Asigna(Info.Observaciones,AspelArticulos:AspelArticulos.CargaGID)

[Acciones.InventariosLocalizar]
Nombre=InventariosLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Inventarios
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.InventariosLocalizarSiguiente]
Nombre=InventariosLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Inventarios
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.InventariosPreliminar]
Nombre=InventariosPreliminar
Boton=0
NombreDesplegar=Presentacion Preliminar
EnMenu=S
Carpeta=Inventarios
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.InventariosExcel]
Nombre=InventariosExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Inventarios
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.PolizasLocalizar]
Nombre=PolizasLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Polizas
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.PolizasLocalizarSiguiente]
Nombre=PolizasLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Polizas
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.PolizasPreliminar]
Nombre=PolizasPreliminar
Boton=0
NombreDesplegar=Presentacion &Preliminar
EnMenu=S
Carpeta=Polizas
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.PolizasExcel]
Nombre=PolizasExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Polizas
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.AspelPolizasD]
Nombre=AspelPolizasD
Boton=0
NombreDesplegar=Detalle de P&olizas
EnMenu=S
TipoAccion=Formas
ClaveAccion=AspelPolizasD
Activo=S
Antes=S
Visible=S
AntesExpresiones=Asigna(Info.Empresa,AspelPolizas:Empresa)<BR>Asigna(Info.Sucursal,AspelPolizas:Sucursal)<BR>Asigna(Info.Modulo,AspelPolizas:Modulo)<BR>Asigna(Info.Mov,AspelPolizas:Mov)<BR>Asigna(Info.Fecha,AspelPolizas:FechaEmision)<BR>Asigna(Info.Estatus,AspelPolizas:Estatus)

[Acciones.VentasLocalizar]
Nombre=VentasLocalizar
Boton=0
NombreDesplegar=&Localizar
EnMenu=S
Carpeta=Ventas
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S

[Acciones.VentasLocalizarSiguiente]
Nombre=VentasLocalizarSiguiente
Boton=0
NombreDesplegar=Localizar &Siguiente
EnMenu=S
Carpeta=Ventas
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S

[Acciones.VentasPreliminar]
Nombre=VentasPreliminar
Boton=0
NombreDesplegar=Presentacion &Preliminar
EnMenu=S
Carpeta=Ventas
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.VentasExcel]
Nombre=VentasExcel
Boton=0
NombreDesplegar=Enviar a &Excel
EnMenu=S
Carpeta=Ventas
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.AspelVentasD]
Nombre=AspelVentasD
Boton=0
NombreDesplegar=&Detalle De Ventas
EnMenu=S
TipoAccion=Formas
ClaveAccion=AspelVentasD
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Empresa,AspelVentas:AspelVentas.Empresa)<BR>Asigna(Info.Sucursal,AspelVentas:AspelVentas.Sucursal)<BR>Asigna(Info.Cliente,AspelVentas:AspelVentas.Cliente)<BR>Asigna(Info.Almacen,AspelVentas:AspelVentas.Almacen)<BR>Asigna(Info.Fecha,AspelVentas:AspelVentas.FechaEmision)<BR>Asigna(Info.Mov,AspelVentas:AspelVentas.Mov)<BR>Asigna(Info.Moneda,AspelVentas:AspelVentas.Moneda)<BR>Asigna(Info.TipoCambio,AspelVentas:AspelVentas.TipoCambio)<BR>Asigna(Info.Estatus,AspelVentas:AspelVentas.Estatus)<BR>Asigna(Info.Modulo,AspelVentas:AspelVentas.Modulo)
Visible=S

[Acciones.Importar]
Nombre=Importar
Boton=7
NombreDesplegar=&Importar Datos
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S
NombreEnBoton=S
EspacioPrevio=S
Expresion=SI Confirmacion(<T>Esta seguro que desea importar la información?<T>,BotonAceptar,BotonCancelar) = BotonAceptar Entonces<BR>  SI (SQL(<T>SELECT COUNT(*) FROM AspelCargaProp WHERE Campo = :tCampo AND Costo = 0<T>,<T>Serie<T>) = 0) Entonces<BR>    SQL(<T>spAspelInsertaTodo :nEstacion<T>,EstacionTrabajo)<BR>  SINO<BR>    Informacion(LISTA(<T>Los siguientes números de serie no tienen costo capturado: <T>,SQLENLISTA(<T>SELECT DISTINCT Articulo FROM AspelCargaProp WHERE Campo = :tCampo AND Costo = 0<T>,<T>Serie<T>)))<BR>  FIN<BR>Fin

[Acciones.AgentesPersonalizar]
Nombre=AgentesPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Agentes
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.AlmacenesPersonalizar]
Nombre=AlmacenesPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.ArticulosPersonalizar]
Nombre=ArticulosPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Articulos
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.ClientesPersonalizar]
Nombre=ClientesPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Clientes
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.CuentasPersonalizar]
Nombre=CuentasPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Cuentas
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.MonedasPersonalizar]
Nombre=MonedasPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Monedas
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.ProveedoresPersonalizar]
Nombre=ProveedoresPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Proveedores
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.ComprasPersonalizar]
Nombre=ComprasPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Compras
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.InventariosPersonalizar]
Nombre=InventariosPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Inventarios
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.PolizasPersonalizar]
Nombre=PolizasPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.VentasPersonalizar]
Nombre=VentasPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Ventas
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.CxcPersonalizar]
Nombre=CxcPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Cxc
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.CxpPersonalizar]
Nombre=CxpPersonalizar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=Cxp
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Ventas.ImporteTotal]
Carpeta=Ventas
Clave=ImporteTotal
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Compras.ImporteTotal]
Carpeta=Compras
Clave=ImporteTotal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Acciones.BorrarDatos]
Nombre=BorrarDatos
Boton=5
NombreEnBoton=S
NombreDesplegar=&Borrar datos Visor
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=EJECUTARSQL(<T>EXEC spAspelBorraPropReg<T>)<BR>ActualizarForma

[Acciones.PresentarDatos]
Nombre=PresentarDatos
Boton=59
NombreEnBoton=S
NombreDesplegar=&Llenar datos visor
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=EJECUTARSQL(<T>spAspelPresentaDatos<T>)<BR>ActualizarForma

[Acciones.Configurar]
Nombre=Configurar
Boton=45
NombreEnBoton=S
NombreDesplegar=&Configuración inicial
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=AspelCfg2
Activo=S
Visible=S

[Articulos.AspelSeriesTotal.Series]
Carpeta=Articulos
Clave=AspelSeriesTotal.Series
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Articulos.AspelArticulosTotal.Cantidad]
Carpeta=Articulos
Clave=AspelArticulosTotal.Cantidad
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.Diferencia]
Carpeta=Articulos
Clave=Diferencia
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Compras.AspelCompras.Proveedor]
Carpeta=Compras
Clave=AspelCompras.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Cxp.AspelCxp.Proveedor]
Carpeta=Cxp
Clave=AspelCxp.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Unidades]
Nombre=Unidades
Boton=0
NombreDesplegar=&Unidades de medida
EnMenu=S
TipoAccion=Formas
ClaveAccion=AspelUnidades
Activo=S
Visible=S
Antes=S
AntesExpresiones=Asigna(Info.Articulo,AspelArticulos:AspelArticulos.Valor)<BR>Asigna(Info.Descripcion,AspelArticulos:AspelArticulos.Nombre)

[Cuentas.AspelCuentasTotal.DEBE]
Carpeta=Cuentas
Clave=AspelCuentasTotal.DEBE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Cuentas.AspelCuentasTotal.HABER]
Carpeta=Cuentas
Clave=AspelCuentasTotal.HABER
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Cuentas.AspelCuentasTotal.SALDO]
Carpeta=Cuentas
Clave=AspelCuentasTotal.SALDO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Totalizador=1

[Articulos.AspelArticulos.Impuesto2]
Carpeta=Articulos
Clave=AspelArticulos.Impuesto2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Articulos.AspelArticulos.Impuesto3]
Carpeta=Articulos
Clave=AspelArticulos.Impuesto3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.ActualizaCostoSerie]
Nombre=ActualizaCostoSerie
Boton=0
NombreDesplegar=&Actualiza costo series
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=EJECUTARSQL(<T>SpAspelActualizaCostoSerie :tArticulo, :tAlmacen, :nCosto<T>,AspelInventarios:AspelInventarios.Articulo,AspelInventarios:AspelInventarios.Almacen,AspelInventarios:AspelInventarios.Costo)

[Avance.Info.Tabla]
Carpeta=Avance
Clave=Info.Tabla
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.AspelCfgFinal]
Nombre=AspelCfgFinal
Boton=93
NombreEnBoton=S
NombreDesplegar=Configuración &Final
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=AspelCfgFinal
Activo=S
Visible=S
Antes=S
AntesExpresiones=Asigna(Info.Formato,SQL(<T>SELECT Valor FROM AspelCfgOpcion WHERE Descripcion = :tDescripcion<T>,<T>Formato Cuentas Contables<T>))

[AspelPolizaAjuste]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Poliza Ajuste
Clave=AspelPolizaAjuste
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AspelPolizaAjuste
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Fecha Emisión<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
MenuLocal=S
IconosNombre=AspelPolizaAjuste:FechaEmision
ListaAcciones=VerDetalle

[AspelPolizaAjuste.Mov]
Carpeta=AspelPolizaAjuste
Clave=Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[AspelPolizaAjuste.MovID]
Carpeta=AspelPolizaAjuste
Clave=MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[AspelPolizaAjuste.DEBE]
Carpeta=AspelPolizaAjuste
Clave=DEBE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[AspelPolizaAjuste.HABER]
Carpeta=AspelPolizaAjuste
Clave=HABER
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[AspelPolizaAjuste.Columnas]
0=-2
1=118

[Acciones.VerDetalle]
Nombre=VerDetalle
Boton=0
NombreDesplegar=&Ver detalla Poliza Ajuste
EnMenu=S
TipoAccion=Formas
ClaveAccion=AspelPolizaAjusteD
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Empresa,AspelPolizaAjuste:Empresa)<BR>Asigna(Info.Sucursal,AspelPolizaAjuste:Sucursal)<BR>Asigna(Info.Modulo,AspelPolizaAjuste:Modulo)<BR>Asigna(Info.Mov,AspelPolizaAjuste:Mov)<BR>Asigna(Info.Fecha,AspelPolizaAjuste:FechaEmision)<BR>Asigna(Info.Estatus,AspelPolizaAjuste:Estatus)
Visible=S

[Acciones.GenerarPolizaAjuste]
Nombre=GenerarPolizaAjuste
Boton=96
NombreEnBoton=S
NombreDesplegar=&Generar Poliza Ajuste
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=EJECUTARSQL(<T>spGeneraAspelPolizaAjuste<T>)<BR>ActualizarVista(<T>AspelPolizaAjuste<T>)

[Forma.Modulos]
(Inicio)=(Todos)
(Todos)=VTAS
VTAS=SERV
SERV=CXC
CXC=DIN
DIN=INV
INV=CXP
CXP=COMS
COMS=CONT
CONT=GAS
GAS=EMB
EMB=AF
AF=CC
CC=CAM
CAM=NOM
NOM=RH
RH=VALE
VALE=CR
CR=PC
PC=AGENT
AGENT=ASIS
ASIS=REP
REP=ST
ST=PROD
PROD=PROY
PROY=ESP
ESP=AUTO
AUTO=MANT
MANT=CAP
CAP=AC
AC=WMS
WMS=CMP
CMP=FRM
FRM=OFER
OFER=INC
INC=CONC
CONC=CREDI
CREDI=PPTO
PPTO=ARO
ARO=AROP
AROP=(Fin)

[Forma.ListaCarpetas]
(Inicio)=Agentes
Agentes=Almacenes
Almacenes=Articulos
Articulos=Clientes
Clientes=Cuentas
Cuentas=Monedas
Monedas=Proveedores
Proveedores=Compras
Compras=Inventarios
Inventarios=Polizas
Polizas=Ventas
Ventas=Cxc
Cxc=Cxp
Cxp=AspelPolizaAjuste
AspelPolizaAjuste=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Configurar
Configurar=AspelCfgFinal
AspelCfgFinal=BorrarDatos
BorrarDatos=PresentarDatos
PresentarDatos=GenerarPolizaAjuste
GenerarPolizaAjuste=Importar
Importar=(Fin)

[Cuentas.ListaEnCaptura]
(Inicio)=AspelCuenta.Nombre
AspelCuenta.Nombre=TipoDescrito
TipoDescrito=AspelCuenta.Estatus
AspelCuenta.Estatus=AspelCuentasTotal.DEBE
AspelCuentasTotal.DEBE=AspelCuentasTotal.HABER
AspelCuentasTotal.HABER=AspelCuentasTotal.SALDO
AspelCuentasTotal.SALDO=(Fin)

[Cuentas.ListaAcciones]
(Inicio)=CuentasLocalizar
CuentasLocalizar=CuentasLocalizarSiguiente
CuentasLocalizarSiguiente=CuentasPreliminar
CuentasPreliminar=CuentasExcel
CuentasExcel=CuentasPersonalizar
CuentasPersonalizar=(Fin)

[Monedas.ListaEnCaptura]
(Inicio)=AspelMoneda.Nombre
AspelMoneda.Nombre=AspelMoneda.Clave
AspelMoneda.Clave=AspelMoneda.TipoCambio
AspelMoneda.TipoCambio=(Fin)

[Monedas.ListaAcciones]
(Inicio)=MonedasLocalizar
MonedasLocalizar=MonedasLocalizarSiguiente
MonedasLocalizarSiguiente=MonedasPreliminar
MonedasPreliminar=MonedasExcel
MonedasExcel=MonedasPersonalizar
MonedasPersonalizar=(Fin)

[Almacenes.ListaEnCaptura]
(Inicio)=AspelAlmacenes.Nombre
AspelAlmacenes.Nombre=AspelAlmacenes.Estatus
AspelAlmacenes.Estatus=(Fin)

[Almacenes.ListaAcciones]
(Inicio)=AlmacenesLocalizar
AlmacenesLocalizar=AlmacenesLocalizarSiguiente
AlmacenesLocalizarSiguiente=AlmacenesPreliminar
AlmacenesPreliminar=AlmacenesExcel
AlmacenesExcel=AlmacenesPersonalizar
AlmacenesPersonalizar=(Fin)

[Agentes.ListaEnCaptura]
(Inicio)=AspelAgentes.Nombre
AspelAgentes.Nombre=AspelAgentes.Tipo
AspelAgentes.Tipo=AspelAgentes.eMail
AspelAgentes.eMail=AspelAgentes.TipoComision
AspelAgentes.TipoComision=PorcentajePorCien
PorcentajePorCien=AspelAgentes.Estatus
AspelAgentes.Estatus=(Fin)

[Agentes.ListaAcciones]
(Inicio)=AgentesLocalizar
AgentesLocalizar=AgentesLocalizarSiguiente
AgentesLocalizarSiguiente=AgentesPreliminar
AgentesPreliminar=AgentesExcel
AgentesExcel=AgentesPersonalizar
AgentesPersonalizar=(Fin)

[Clientes.ListaEnCaptura]
(Inicio)=AspelClientes.Nombre
AspelClientes.Nombre=AspelClientes.RFC
AspelClientes.RFC=AspelClientes.CURP
AspelClientes.CURP=AspelClientes.Telefonos
AspelClientes.Telefonos=AspelClientes.Fax
AspelClientes.Fax=AspelClientes.Direccion
AspelClientes.Direccion=AspelClientes.Colonia
AspelClientes.Colonia=AspelClientes.Poblacion
AspelClientes.Poblacion=AspelClientes.Zona
AspelClientes.Zona=AspelClientes.CodigoPostal
AspelClientes.CodigoPostal=AspelClientes.eMail
AspelClientes.eMail=AspelClientes.Estatus
AspelClientes.Estatus=(Fin)

[Clientes.ListaAcciones]
(Inicio)=ClientesLocalizar
ClientesLocalizar=ClientesLocalizarSiguiente
ClientesLocalizarSiguiente=ClientesPreliminar
ClientesPreliminar=ClientesExcel
ClientesExcel=ClientesPersonalizar
ClientesPersonalizar=(Fin)

[Proveedores.ListaEnCaptura]
(Inicio)=AspelProveedores.Nombre
AspelProveedores.Nombre=AspelProveedores.RFC
AspelProveedores.RFC=AspelProveedores.CURP
AspelProveedores.CURP=AspelProveedores.Telefonos
AspelProveedores.Telefonos=AspelProveedores.Direccion
AspelProveedores.Direccion=AspelProveedores.Colonia
AspelProveedores.Colonia=AspelProveedores.Poblacion
AspelProveedores.Poblacion=AspelProveedores.Zona
AspelProveedores.Zona=AspelProveedores.CodigoPostal
AspelProveedores.CodigoPostal=AspelProveedores.Fax
AspelProveedores.Fax=AspelProveedores.eMail
AspelProveedores.eMail=AspelProveedores.Estatus
AspelProveedores.Estatus=(Fin)

[Proveedores.ListaAcciones]
(Inicio)=ProveedoresLocalizar
ProveedoresLocalizar=ProveedoresLocalizarSiguiente
ProveedoresLocalizarSiguiente=ProveedoresPreliminar
ProveedoresPreliminar=ProveedoresExcel
ProveedoresExcel=ProveedoresPersonalizar
ProveedoresPersonalizar=(Fin)

[Articulos.ListaEnCaptura]
(Inicio)=AspelArticulos.Nombre
AspelArticulos.Nombre=AspelArticulos.Tipo
AspelArticulos.Tipo=AspelArticulos.Unidad
AspelArticulos.Unidad=AspelArticulos.TiempoEntrega
AspelArticulos.TiempoEntrega=AspelArticulos.TiempoEntregaU
AspelArticulos.TiempoEntregaU=AspelArticulos.Peso
AspelArticulos.Peso=AspelArticulos.Volumen
AspelArticulos.Volumen=AspelArticulos.Proveedor
AspelArticulos.Proveedor=AspelArticulos.PrecioLista
AspelArticulos.PrecioLista=AspelArticulos.Precio2
AspelArticulos.Precio2=AspelArticulos.Precio3
AspelArticulos.Precio3=AspelArticulos.Precio4
AspelArticulos.Precio4=AspelArticulos.Precio5
AspelArticulos.Precio5=AspelArticulos.Impuesto1
AspelArticulos.Impuesto1=AspelArticulos.Impuesto2
AspelArticulos.Impuesto2=AspelArticulos.Impuesto3
AspelArticulos.Impuesto3=AspelArticulos.TipoCosteo
AspelArticulos.TipoCosteo=AspelArticulos.Estatus
AspelArticulos.Estatus=AspelSeriesTotal.Series
AspelSeriesTotal.Series=AspelArticulosTotal.Cantidad
AspelArticulosTotal.Cantidad=Diferencia
Diferencia=(Fin)

[Articulos.ListaAcciones]
(Inicio)=ArticulosLocalizar
ArticulosLocalizar=ArticulosLocalizarSiguiente
ArticulosLocalizarSiguiente=ArticulosPreliminar
ArticulosPreliminar=ArticulosExcel
ArticulosExcel=ArticulosSeries
ArticulosSeries=Unidades
Unidades=ArticulosPersonalizar
ArticulosPersonalizar=(Fin)

[Ventas.ListaEnCaptura]
(Inicio)=AspelVentas.Mov
AspelVentas.Mov=AspelVentas.Cliente
AspelVentas.Cliente=AspelClientes.Nombre
AspelClientes.Nombre=AspelVentas.Almacen
AspelVentas.Almacen=Importe
Importe=ImporteTotal
ImporteTotal=(Fin)

[Ventas.ListaAcciones]
(Inicio)=VentasLocalizar
VentasLocalizar=VentasLocalizarSiguiente
VentasLocalizarSiguiente=VentasPreliminar
VentasPreliminar=VentasExcel
VentasExcel=AspelVentasD
AspelVentasD=VentasPersonalizar
VentasPersonalizar=(Fin)

[Compras.ListaEnCaptura]
(Inicio)=Mov
Mov=AspelCompras.Proveedor
AspelCompras.Proveedor=Nombre
Nombre=Almacen
Almacen=Importe
Importe=ImporteTotal
ImporteTotal=(Fin)

[Compras.ListaAcciones]
(Inicio)=ComprasLocalizar
ComprasLocalizar=ComprasLocalizarSiguiente
ComprasLocalizarSiguiente=ComprasPreliminar
ComprasPreliminar=ComprasExcel
ComprasExcel=AspelComprasD
AspelComprasD=ComprasPersonalizar
ComprasPersonalizar=(Fin)

[Polizas.ListaEnCaptura]
(Inicio)=Mov
Mov=MovID
MovID=DEBE
DEBE=HABER
HABER=(Fin)

[Polizas.ListaAcciones]
(Inicio)=PolizasLocalizar
PolizasLocalizar=PolizasLocalizarSiguiente
PolizasLocalizarSiguiente=PolizasPreliminar
PolizasPreliminar=PolizasExcel
PolizasExcel=AspelPolizasD
AspelPolizasD=PolizasPersonalizar
PolizasPersonalizar=(Fin)

[Inventarios.ListaEnCaptura]
(Inicio)=AspelInventarios.Articulo
AspelInventarios.Articulo=AspelInventarios.Cantidad
AspelInventarios.Cantidad=AspelInventarios.Costo
AspelInventarios.Costo=Importe
Importe=(Fin)

[Inventarios.ListaAcciones]
(Inicio)=InventariosLocalizar
InventariosLocalizar=InventariosLocalizarSiguiente
InventariosLocalizarSiguiente=InventariosPreliminar
InventariosPreliminar=InventariosExcel
InventariosExcel=InventariosPersonalizar
InventariosPersonalizar=ActualizaCostoSerie
ActualizaCostoSerie=(Fin)

[Cxc.ListaEnCaptura]
(Inicio)=Mov
Mov=Cliente
Cliente=Nombre
Nombre=Importe
Importe=(Fin)

[Cxc.ListaAcciones]
(Inicio)=CxcLocalizar
CxcLocalizar=CxcLocalizarSiguiente
CxcLocalizarSiguiente=CxcPreliminar
CxcPreliminar=CxcExcel
CxcExcel=CxcPersonalizar
CxcPersonalizar=(Fin)

[Cxp.ListaEnCaptura]
(Inicio)=Mov
Mov=AspelCxp.Proveedor
AspelCxp.Proveedor=Nombre
Nombre=Importe
Importe=(Fin)

[Cxp.ListaAcciones]
(Inicio)=CxpLocalizar
CxpLocalizar=CxpLocalizarSiguiente
CxpLocalizarSiguiente=CxpPreliminar
CxpPreliminar=CxpExcel
CxpExcel=CxpPersonalizar
CxpPersonalizar=(Fin)

[AspelPolizaAjuste.ListaEnCaptura]
(Inicio)=Mov
Mov=MovID
MovID=DEBE
DEBE=HABER
HABER=(Fin)
