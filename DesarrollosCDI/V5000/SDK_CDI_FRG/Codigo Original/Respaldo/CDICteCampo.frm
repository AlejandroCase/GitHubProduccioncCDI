[Forma]
Clave=CDICteCampo
Nombre=<T>Clientes<T>
Icono=4
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=293
PosicionInicialArriba=21
PosicionInicialAltura=593
PosicionInicialAncho=753
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionSeccion1=7
BarraAyuda=S
MovModulo=CXC
PosicionInicialAlturaCliente=625
BarraAyudaBold=S
VentanaEstadoInicial=Normal
PosicionSec1=238

ExpresionesAlMostrar=Asigna(Info.Copiar, Falso)<BR>Asigna(Info.Tipo,<T>Cliente<T>)
ListaAcciones=Cerrar
[Lista.Cte.Cliente]
Carpeta=Lista
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cte.Nombre]
Carpeta=Lista
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Cliente=110
Nombre=304
0=-2
1=-2
Fecha=148
Usuario=82
Sucursal=64
Nombre_1=154
Empresa=69

[Ficha]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
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
FiltroGeneral=Cte.Cliente=<T>{info.cliente}<T>
[Ficha.Cte.Cliente]
Carpeta=Ficha
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
Efectos=[Negritas]

[Ficha.Cte.Categoria]
Carpeta=Ficha
Clave=Cte.Categoria
Editar=S
ValidaNombre=S
3D=S
Tamano=40
LineaNueva=S
ColorFondo=Blanco

[Ficha.Cte.Nombre]
Carpeta=Ficha
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
Efectos=[Negritas]
EspacioPrevio=S
ColorFondo=Blanco

[Ficha.Cte.RFC]
Carpeta=Ficha
Clave=Cte.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.Direccion]
Carpeta=Ficha
Clave=Cte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.CodigoPostal]
Carpeta=Ficha
Clave=Cte.CodigoPostal
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Ficha.Cte.Colonia]
Carpeta=Ficha
Clave=Cte.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.Poblacion]
Carpeta=Ficha
Clave=Cte.Poblacion
Editar=S
ValidaNombre=S
3D=S
Tamano=40
LineaNueva=S
ColorFondo=Blanco

[Ficha.Cte.Estado]
Carpeta=Ficha
Clave=Cte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.Pais]
Carpeta=Ficha
Clave=Cte.Pais
Editar=S
ValidaNombre=S
3D=S
Tamano=40
LineaNueva=S
ColorFondo=Blanco

[Ficha.Cte.Telefonos]
Carpeta=Ficha
Clave=Cte.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.Fax]
Carpeta=Ficha
Clave=Cte.Fax
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.PedirTono]
Carpeta=Ficha
Clave=Cte.PedirTono
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Ficha.Cte.Contacto1]
Carpeta=Ficha
Clave=Cte.Contacto1
Editar=S
3D=S
Tamano=40
LineaNueva=S
ValidaNombre=S
ColorFondo=Blanco

[Ficha.Cte.Contacto2]
Carpeta=Ficha
Clave=Cte.Contacto2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.eMail1]
Carpeta=Ficha
Clave=Cte.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.Familia]
Carpeta=Ficha
Clave=Cte.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.Grupo]
Carpeta=Ficha
Clave=Cte.Grupo
Editar=S
ValidaNombre=S
3D=S
Tamano=40
LineaNueva=S
ColorFondo=Blanco

[Notas.Cte.Notas]
Carpeta=Notas
Clave=Cte.Notas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75x18

[Notas.Cte.DirInternet]
Carpeta=Notas
Clave=Cte.DirInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75

[RevisiónPagos.Cte.DiaRevision1]
Carpeta=RevisiónPagos
Clave=Cte.DiaRevision1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[RevisiónPagos.Cte.DiaRevision2]
Carpeta=RevisiónPagos
Clave=Cte.DiaRevision2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[RevisiónPagos.Cte.HorarioRevision]
Carpeta=RevisiónPagos
Clave=Cte.HorarioRevision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[RevisiónPagos.Cte.DiaPago1]
Carpeta=RevisiónPagos
Clave=Cte.DiaPago1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
EspacioPrevio=S

[RevisiónPagos.Cte.DiaPago2]
Carpeta=RevisiónPagos
Clave=Cte.DiaPago2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[RevisiónPagos.Cte.HorarioPago]
Carpeta=RevisiónPagos
Clave=Cte.HorarioPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30




[EnviarA.Cte.EnviarA]
Carpeta=EnviarA
Clave=Cte.EnviarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[EnviarA.CteEnviarA.Nombre]
Carpeta=EnviarA
Clave=CteEnviarA.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

[EnviarA.CteEnviarA.Direccion]
Carpeta=EnviarA
Clave=CteEnviarA.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=56
ColorFondo=Plata

[Venta]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Ventas
Clave=Venta
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos)
[Venta.Cte.EnviarA]
Carpeta=Venta
Clave=Cte.EnviarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Venta.Cte.Agente]
Carpeta=Venta
Clave=Cte.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Venta.Agente.Nombre]
Carpeta=Venta
Clave=Agente.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
[Venta.Cte.DiaRevision1]
Carpeta=Venta
Clave=Cte.DiaRevision1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=40
ColorFondo=Blanco

[Venta.Cte.DiaRevision2]
Carpeta=Venta
Clave=Cte.DiaRevision2
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Venta.Cte.HorarioRevision]
Carpeta=Venta
Clave=Cte.HorarioRevision
Editar=S
ValidaNombre=S
3D=S
Tamano=40
Pegado=N
ColorFondo=Blanco

LineaNueva=S
[Venta.Cte.DiaPago1]
Carpeta=Venta
Clave=Cte.DiaPago1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Venta.Cte.DiaPago2]
Carpeta=Venta
Clave=Cte.DiaPago2
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Venta.Cte.HorarioPago]
Carpeta=Venta
Clave=Cte.HorarioPago
Editar=S
ValidaNombre=S
3D=S
Tamano=40
Pegado=N
ColorFondo=Blanco

LineaNueva=S
[Notas.Cte.Mensaje]
Carpeta=Notas
Clave=Cte.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75

[ID.Cte.Cliente]
Carpeta=ID
Clave=Cte.Cliente
Editar=S
LineaNueva=S
3D=N
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]
Pegado=S

[ID.Cte.Nombre]
Carpeta=ID
Clave=Cte.Nombre
Editar=S
3D=N
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]
LineaNueva=S


[Venta.Cte.Cliente]
Carpeta=Venta
Clave=Cte.Cliente
Editar=N
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]
ValidaNombre=S

LineaNueva=S
[Venta.Cte.Nombre]
Carpeta=Venta
Clave=Cte.Nombre
Editar=N
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]
ValidaNombre=S



LineaNueva=S
[Ficha.Cte.NombreCorto]
Carpeta=Ficha
Clave=Cte.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.eMail2]
Carpeta=Ficha
Clave=Cte.eMail2
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Ficha.Cte.Tipo]
Carpeta=Ficha
Clave=Cte.Tipo
Editar=S
ValidaNombre=S
3D=S
Tamano=40
Efectos=[Negritas]
ColorFondo=Blanco
Pegado=N


LineaNueva=S
[Ficha.Cte.EntreCalles]
Carpeta=Ficha
Clave=Cte.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.Plano]
Carpeta=Ficha
Clave=Cte.Plano
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Ficha.Cte.Observaciones]
Carpeta=Ficha
Clave=Cte.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Venta.Cte.AgenteServicio]
Carpeta=Venta
Clave=Cte.AgenteServicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Venta.AgenteServicio.Nombre]
Carpeta=Venta
Clave=AgenteServicio.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata


LineaNueva=S
[Credito.Cte.Cliente]
Carpeta=Credito
Clave=Cte.Cliente
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
ValidaNombre=S

[Credito.Cte.Nombre]
Carpeta=Credito
Clave=Cte.Nombre
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
ValidaNombre=S

[Credito.Cte.CreditoConLimite]
Carpeta=Credito
Clave=Cte.CreditoConLimite
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=30

[Credito.Cte.CreditoLimite]
Carpeta=Credito
Clave=Cte.CreditoLimite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Credito.Cte.CreditoMoneda]
Carpeta=Credito
Clave=Cte.CreditoMoneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Credito.Cte.CreditoConDias]
Carpeta=Credito
Clave=Cte.CreditoConDias
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=30

[Credito.Cte.CreditoDias]
Carpeta=Credito
Clave=Cte.CreditoDias
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Credito.Cte.CreditoConCondiciones]
Carpeta=Credito
Clave=Cte.CreditoConCondiciones
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Credito.Cte.CreditoCondiciones]
Carpeta=Credito
Clave=Cte.CreditoCondiciones
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro



[Ficha.Cte.Rama]
Carpeta=Ficha
Clave=Cte.Rama
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=40
ColorFondo=Blanco
Efectos=[Negritas]
LineaNueva=S



[ReglaNegocio]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Regla Negocio
Clave=ReglaNegocio
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos)
[ReglaNegocio.Cte.Cliente]
Carpeta=ReglaNegocio
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[ReglaNegocio.Cte.Nombre]
Carpeta=ReglaNegocio
Clave=Cte.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[ReglaNegocio.Cte.ListaPreciosEsp]
Carpeta=ReglaNegocio
Clave=Cte.ListaPreciosEsp
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S

[ReglaNegocio.Cte.Descuento]
Carpeta=ReglaNegocio
Clave=Cte.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.Condicion]
Carpeta=ReglaNegocio
Clave=Cte.Condicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.CreditoEspecial]
Carpeta=ReglaNegocio
Clave=Cte.CreditoEspecial
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S

[ReglaNegocio.Cte.FormaEnvio]
Carpeta=ReglaNegocio
Clave=Cte.FormaEnvio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.VtasConsignacion]
Carpeta=ReglaNegocio
Clave=Cte.VtasConsignacion
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=N

ValidaNombre=S
[ReglaNegocio.Cte.AlmacenVtasConsignacion]
Carpeta=ReglaNegocio
Clave=Cte.AlmacenVtasConsignacion
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[ReglaNegocio.Cte.ChecarCredito]
Carpeta=ReglaNegocio
Clave=Cte.ChecarCredito
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.BloquearMorosos]
Carpeta=ReglaNegocio
Clave=Cte.BloquearMorosos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=N

[ReglaNegocio.Cte.ModificarVencimiento]
Carpeta=ReglaNegocio
Clave=Cte.ModificarVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.Credito]
Carpeta=ReglaNegocio
Clave=Cte.Credito
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.PedidosParciales]
Carpeta=ReglaNegocio
Clave=Cte.PedidosParciales
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[ReglaNegocio.Cte.Proyecto]
Carpeta=ReglaNegocio
Clave=Cte.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Venta.CteEnviarA.Nombre]
Carpeta=Venta
Clave=CteEnviarA.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
[Venta.Cte.DefMoneda]
Carpeta=Venta
Clave=Cte.DefMoneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco




[ReglaNegocio.Cte.ZonaImpuesto]
Carpeta=ReglaNegocio
Clave=Cte.ZonaImpuesto
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Ficha.Cte.Estatus]
Carpeta=Ficha
Clave=Cte.Estatus
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco


LineaNueva=S
[(Carpeta Abrir).Cte.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro



[(Carpeta Abrir).Columnas]
0=106
1=283


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
NombreDesplegar=&Presentacion preliminar
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

[ReglaNegocio.Cte.CreditoConLimite]
Carpeta=ReglaNegocio
Clave=Cte.CreditoConLimite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
EspacioPrevio=S
Tamano=40

[ReglaNegocio.Cte.CreditoConDias]
Carpeta=ReglaNegocio
Clave=Cte.CreditoConDias
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[ReglaNegocio.Cte.CreditoConCondiciones]
Carpeta=ReglaNegocio
Clave=Cte.CreditoConCondiciones
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[ReglaNegocio.Cte.CreditoLimite]
Carpeta=ReglaNegocio
Clave=Cte.CreditoLimite
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=N
Tamano=40
ColorFondo=Blanco
ValidaNombre=S

[ReglaNegocio.Cte.CreditoMoneda]
Carpeta=ReglaNegocio
Clave=Cte.CreditoMoneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
Pegado=N

[ReglaNegocio.Cte.CreditoDias]
Carpeta=ReglaNegocio
Clave=Cte.CreditoDias
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[ReglaNegocio.Cte.CreditoCondiciones]
Carpeta=ReglaNegocio
Clave=Cte.CreditoCondiciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.CreditoConLimitePedidos]
Carpeta=ReglaNegocio
Clave=Cte.CreditoConLimitePedidos
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[ReglaNegocio.Cte.CreditoLimitePedidos]
Carpeta=ReglaNegocio
Clave=Cte.CreditoLimitePedidos
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco










LineaNueva=S
ValidaNombre=S
[ReglaNegocio.Cte.Conciliar]
Carpeta=ReglaNegocio
Clave=Cte.Conciliar
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco

ValidaNombre=S
[Ficha.Cte.Delegacion]
Carpeta=Ficha
Clave=Cte.Delegacion
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Ficha.Cte.Ruta]
Carpeta=Ficha
Clave=Cte.Ruta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.DescuentoRecargos]
Carpeta=ReglaNegocio
Clave=Cte.DescuentoRecargos
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco

ValidaNombre=S
[Ficha.Cte.CURP]
Carpeta=Ficha
Clave=Cte.CURP
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[ReglaNegocio.Cte.RecorrerVencimiento]
Carpeta=ReglaNegocio
Clave=Cte.RecorrerVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Venta.Cte.SucursalEmpresa]
Carpeta=Venta
Clave=Cte.SucursalEmpresa
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S

[Venta.Sucursal.Nombre]
Carpeta=Venta
Clave=Sucursal.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata
ValidaNombre=S


LineaNueva=S
[Otros]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Otros
Clave=Otros
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CondicionVisible=no Usuario.CteBloquearOtrosDatos
[Otros.Cte.Cliente]
Carpeta=Otros
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Otros.Cte.Nombre]
Carpeta=Otros
Clave=Cte.Nombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Otros.Cte.Mensaje]
Carpeta=Otros
Clave=Cte.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Otros.Cte.DirInternet]
Carpeta=Otros
Clave=Cte.DirInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Otros.Cte.NivelAcceso]
Carpeta=Otros
Clave=Cte.NivelAcceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Internet]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Internet
Clave=Internet
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos)
[Internet.Cte.Cliente]
Carpeta=Internet
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata

[Internet.Cte.Nombre]
Carpeta=Internet
Clave=Cte.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Internet.Cte.Contrasena]
Carpeta=Internet
Clave=Cte.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Internet.Cte.wVerDisponible]
Carpeta=Internet
Clave=Cte.wVerDisponible
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco

[Otros.Cte.Idioma]
Carpeta=Otros
Clave=Cte.Idioma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.Bonificacion]
Carpeta=ReglaNegocio
Clave=Cte.Bonificacion
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=CRM
Clave=CRM
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos)
[CRM.Cte.Cliente]
Carpeta=CRM
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[CRM.Cte.Nombre]
Carpeta=CRM
Clave=Cte.Nombre
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

LineaNueva=S
[CRM.Cte.Descripcion1]
Carpeta=CRM
Clave=Cte.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion2]
Carpeta=CRM
Clave=Cte.Descripcion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion3]
Carpeta=CRM
Clave=Cte.Descripcion3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion4]
Carpeta=CRM
Clave=Cte.Descripcion4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion5]
Carpeta=CRM
Clave=Cte.Descripcion5
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.BonificacionTipo]
Carpeta=ReglaNegocio
Clave=Cte.BonificacionTipo
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco


LineaNueva=S
[CRM.Cte.Descripcion6]
Carpeta=CRM
Clave=Cte.Descripcion6
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion7]
Carpeta=CRM
Clave=Cte.Descripcion7
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion8]
Carpeta=CRM
Clave=Cte.Descripcion8
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion9]
Carpeta=CRM
Clave=Cte.Descripcion9
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion10]
Carpeta=CRM
Clave=Cte.Descripcion10
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[ReglaNegocio.Cte.FormasPagoRestringidas]
Carpeta=ReglaNegocio
Clave=Cte.FormasPagoRestringidas
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco

ValidaNombre=S
[ReglaNegocio.Cte.AlmacenDef]
Carpeta=ReglaNegocio
Clave=Cte.AlmacenDef
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Otros.Cte.Alta]
Carpeta=Otros
Clave=Cte.Alta
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=40
Editar=S
ColorFondo=Blanco

[Otros.Cte.UltimoCambio]
Carpeta=Otros
Clave=Cte.UltimoCambio
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
[CRM.Cte.Descripcion11]
Carpeta=CRM
Clave=Cte.Descripcion11
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion12]
Carpeta=CRM
Clave=Cte.Descripcion12
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[CRM.Cte.Descripcion13]
Carpeta=CRM
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion14]
Carpeta=CRM
Clave=Cte.Descripcion14
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[CRM.Cte.Descripcion15]
Carpeta=CRM
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion16]
Carpeta=CRM
Clave=Cte.Descripcion16
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[CRM.Cte.Descripcion17]
Carpeta=CRM
Clave=Cte.Descripcion17
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion18]
Carpeta=CRM
Clave=Cte.Descripcion18
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[CRM.Cte.Descripcion19]
Carpeta=CRM
Clave=Cte.Descripcion19
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.Descripcion20]
Carpeta=CRM
Clave=Cte.Descripcion20
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Otros.Cte.CBDir]
Carpeta=Otros
Clave=Cte.CBDir
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Personal]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Personales
Clave=Personal
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

CondicionVisible=General.CteDatosPersonales
[Personal.Cte.Cliente]
Carpeta=Personal
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Personal.Cte.Nombre]
Carpeta=Personal
Clave=Cte.Nombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Personal.Columnas]
Cliente=64
Nombre=244

[Personal.Cte.PersonalDireccion]
Carpeta=Personal
Clave=Cte.PersonalDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Personal.Cte.PersonalEntreCalles]
Carpeta=Personal
Clave=Cte.PersonalEntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalPlano]
Carpeta=Personal
Clave=Cte.PersonalPlano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalDelegacion]
Carpeta=Personal
Clave=Cte.PersonalDelegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalColonia]
Carpeta=Personal
Clave=Cte.PersonalColonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalPoblacion]
Carpeta=Personal
Clave=Cte.PersonalPoblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalEstado]
Carpeta=Personal
Clave=Cte.PersonalEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalPais]
Carpeta=Personal
Clave=Cte.PersonalPais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalCodigoPostal]
Carpeta=Personal
Clave=Cte.PersonalCodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalTelefonos]
Carpeta=Personal
Clave=Cte.PersonalTelefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Personal.Cte.FechaNacimiento]
Carpeta=Personal
Clave=Cte.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
EspacioPrevio=S
Tamano=40

[Personal.Cte.FechaMatrimonio]
Carpeta=Personal
Clave=Cte.FechaMatrimonio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Personal.Cte.Conyuge]
Carpeta=Personal
Clave=Cte.Conyuge
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=N

[Personal.Cte.Sexo]
Carpeta=Personal
Clave=Cte.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.Fuma]
Carpeta=Personal
Clave=Cte.Fuma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
EspacioPrevio=N
Tamano=40

[Personal.Cte.Profesion]
Carpeta=Personal
Clave=Cte.Profesion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.Puesto]
Carpeta=Personal
Clave=Cte.Puesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.NumeroHijos]
Carpeta=Personal
Clave=Cte.NumeroHijos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40
Pegado=N

[Seguro]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Seguro
Clave=Seguro
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos) y General.CteDatosAseguradora
[Seguro.Cte.Cliente]
Carpeta=Seguro
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Seguro.Cte.Nombre]
Carpeta=Seguro
Clave=Cte.Nombre
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

LineaNueva=S
ValidaNombre=S
[Seguro.Cte.Aseguradora]
Carpeta=Seguro
Clave=Cte.Aseguradora
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Seguro.Cte.PolizaTipo]
Carpeta=Seguro
Clave=Cte.PolizaTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Seguro.Cte.PolizaNumero]
Carpeta=Seguro
Clave=Cte.PolizaNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Seguro.Cte.PolizaReferencia]
Carpeta=Seguro
Clave=Cte.PolizaReferencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Seguro.Cte.Deducible]
Carpeta=Seguro
Clave=Cte.Deducible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=40
ColorFondo=Blanco

[Seguro.Cte.DeducibleMoneda]
Carpeta=Seguro
Clave=Cte.DeducibleMoneda
Editar=S
3D=S
Pegado=N
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Seguro.Cte.Coaseguro]
Carpeta=Seguro
Clave=Cte.Coaseguro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Seguro.CteAseguradora.Nombre]
Carpeta=Seguro
Clave=CteAseguradora.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
ValidaNombre=S
[Personal.Cte.Responsable]
Carpeta=Personal
Clave=Cte.Responsable
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=N

[Personal.Cte.Parentesco]
Carpeta=Personal
Clave=Cte.Parentesco
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S

[Personal.Cte.Religion]
Carpeta=Personal
Clave=Cte.Religion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.Alergias]
Carpeta=Personal
Clave=Cte.Alergias
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=N

[Seguro.Cte.NombreAsegurado]
Carpeta=Seguro
Clave=Cte.NombreAsegurado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.EstadoCivil]
Carpeta=Personal
Clave=Cte.EstadoCivil
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=40
ColorFondo=Blanco

[Personal.Edad]
Carpeta=Personal
Clave=Edad
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
[Otros.Cte.Espacio]
Carpeta=Otros
Clave=Cte.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Otros.Espacio.Nombre]
Carpeta=Otros
Clave=Espacio.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata
ValidaNombre=S


LineaNueva=S
[Personal.Cte.FacturarCte]
Carpeta=Personal
Clave=Cte.FacturarCte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Personal.CteFacturarA.Nombre]
Carpeta=Personal
Clave=CteFacturarA.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
ValidaNombre=S
[Personal.Cte.FacturarCteEnviarA]
Carpeta=Personal
Clave=Cte.FacturarCteEnviarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40
Pegado=N

[Personal.CteEnviarAFacturarA.Nombre]
Carpeta=Personal
Clave=CteEnviarAFacturarA.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
ValidaNombre=S
[ReglaNegocio.Cte.OtrosCargos]
Carpeta=ReglaNegocio
Clave=Cte.OtrosCargos
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Venta.Cte.PersonalCobrador]
Carpeta=Venta
Clave=Cte.PersonalCobrador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=40
ColorFondo=Blanco

[Venta.PersonalNombre]
Carpeta=Venta
Clave=PersonalNombre
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata


LineaNueva=S
[Internet.Cte.wVerArtListaPreciosEsp]
Carpeta=Internet
Clave=Cte.wVerArtListaPreciosEsp
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.CRMImporte]
Carpeta=CRM
Clave=Cte.CRMImporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.CRMCantidad]
Carpeta=CRM
Clave=Cte.CRMCantidad
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[CRM.Cte.CRMPresupuestoAsignado]
Carpeta=CRM
Clave=Cte.CRMPresupuestoAsignado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.CRMEtapa]
Carpeta=CRM
Clave=Cte.CRMEtapa
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[CRM.Cte.CRMCierreProbabilidad]
Carpeta=CRM
Clave=Cte.CRMCierreProbabilidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CRM.Cte.CRMCierreFechaAprox]
Carpeta=CRM
Clave=Cte.CRMCierreFechaAprox
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[CRM.Cte.CRMCompetencia]
Carpeta=CRM
Clave=Cte.CRMCompetencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[CRM.Cte.CRMInfluencia]
Carpeta=CRM
Clave=Cte.CRMInfluencia
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S

[CRM.Cte.CRMFuente]
Carpeta=CRM
Clave=Cte.CRMFuente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Internet.Cte.Contrasena2]
Carpeta=Internet
Clave=Cte.Contrasena2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalTelefonoMovil]
Carpeta=Personal
Clave=Cte.PersonalTelefonoMovil
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Personal.Cte.Titulo]
Carpeta=Personal
Clave=Cte.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=40
ColorFondo=Blanco

[Ford]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Ford
Clave=Ford
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CondicionVisible=General.Ford
[Ford.Cte.Cliente]
Carpeta=Ford
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Ford.Cte.Nombre]
Carpeta=Ford
Clave=Cte.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Ford.Cte.FordDistribuidor]
Carpeta=Ford
Clave=Cte.FordDistribuidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ford.Cte.Flotilla]
Carpeta=Ford
Clave=Cte.Flotilla
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

ValidaNombre=S
[ReglaNegocio.Cte.ExcentoISAN]
Carpeta=ReglaNegocio
Clave=Cte.ExcentoISAN
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Ficha.Cte.Extencion1]
Carpeta=Ficha
Clave=Cte.Extencion1
Editar=S
3D=S
Pegado=N
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Ficha.Cte.Extencion2]
Carpeta=Ficha
Clave=Cte.Extencion2
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco
Pegado=N

LineaNueva=S
ValidaNombre=S
[Ford.Cte.Fecha1]
Carpeta=Ford
Clave=Cte.Fecha1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ford.Cte.Fecha2]
Carpeta=Ford
Clave=Cte.Fecha2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ford.Cte.Fecha3]
Carpeta=Ford
Clave=Cte.Fecha3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ford.Cte.Fecha4]
Carpeta=Ford
Clave=Cte.Fecha4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ford.Cte.Fecha5]
Carpeta=Ford
Clave=Cte.Fecha5
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalNombres]
Carpeta=Personal
Clave=Cte.PersonalNombres
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Personal.Cte.PersonalApellidoPaterno]
Carpeta=Personal
Clave=Cte.PersonalApellidoPaterno
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Personal.Cte.PersonalApellidoMaterno]
Carpeta=Personal
Clave=Cte.PersonalApellidoMaterno
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco
Pegado=N

LineaNueva=S
ValidaNombre=S
[Perfiles]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Perfiles
Clave=Perfiles
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Perfiles.Cte.EsProveedor]
Carpeta=Perfiles
Clave=Cte.EsProveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Cte.EsPersonal]
Carpeta=Perfiles
Clave=Cte.EsPersonal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Cte.EsAgente]
Carpeta=Perfiles
Clave=Cte.EsAgente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Cte.EsAlmacen]
Carpeta=Perfiles
Clave=Cte.EsAlmacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Cte.EsEspacio]
Carpeta=Perfiles
Clave=Cte.EsEspacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Cte.EsCentroCostos]
Carpeta=Perfiles
Clave=Cte.EsCentroCostos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Cte.EsProyecto]
Carpeta=Perfiles
Clave=Cte.EsProyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Cte.EsCentroTrabajo]
Carpeta=Perfiles
Clave=Cte.EsCentroTrabajo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Cte.EsEstacionTrabajo]
Carpeta=Perfiles
Clave=Cte.EsEstacionTrabajo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Perfiles.Cte.Cliente]
Carpeta=Perfiles
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Perfiles.Cte.Nombre]
Carpeta=Perfiles
Clave=Cte.Nombre
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]


LineaNueva=S
[Seguro.Cte.PolizaImporte]
Carpeta=Seguro
Clave=Cte.PolizaImporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=40
ColorFondo=Blanco

[Venta.Cte.Licencias]
Carpeta=Venta
Clave=Cte.Licencias
Editar=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

LineaNueva=S
[Venta.Cte.LicenciasTipo]
Carpeta=Venta
Clave=Cte.LicenciasTipo
Editar=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]


LineaNueva=S
[Otros.Cte.Cuenta]
Carpeta=Otros
Clave=Cte.Cuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Otros.Cta.Descripcion]
Carpeta=Otros
Clave=Cta.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=0
ColorFondo=Plata



LineaNueva=S
[Otros.Cte.CuentaRetencion]
Carpeta=Otros
Clave=Cte.CuentaRetencion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Otros.CtaRetencion.Descripcion]
Carpeta=Otros
Clave=CtaRetencion.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
[ReglaNegocio.Cte.PreciosInferioresMinimo]
Carpeta=ReglaNegocio
Clave=Cte.PreciosInferioresMinimo
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
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
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=152
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Fiscal.Cte.Cliente]
Carpeta=Fiscal
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Fiscal.Cte.Nombre]
Carpeta=Fiscal
Clave=Cte.Nombre
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

LineaNueva=S
ValidaNombre=S
[Fiscal.Cte.FiscalRegimen]
Carpeta=Fiscal
Clave=Cte.FiscalRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Fiscal.Cte.RFC]
Carpeta=Fiscal
Clave=Cte.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Fiscal.Cte.CURP]
Carpeta=Fiscal
Clave=Cte.CURP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ford.Cte.FordZona]
Carpeta=Ford
Clave=Cte.FordZona
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco


LineaNueva=S
[ReglaNegocio.Cte.PedidoDef]
Carpeta=ReglaNegocio
Clave=Cte.PedidoDef
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.eMailAuto]
Carpeta=Ficha
Clave=Cte.eMailAuto
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco


ValidaNombre=S
[Ficha.Cte.DireccionNumero]
Carpeta=Ficha
Clave=Cte.DireccionNumero
Editar=S
3D=S
Pegado=N
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Ficha.Cte.TelefonosLada]
Carpeta=Ficha
Clave=Cte.TelefonosLada
Editar=S
3D=S
Pegado=N
Tamano=40
ColorFondo=Blanco
ValidaNombre=S

LineaNueva=S
[Personal.Cte.PersonalTelefonosLada]
Carpeta=Personal
Clave=Cte.PersonalTelefonosLada
Editar=S
3D=S
Pegado=N
Tamano=40
ColorFondo=Blanco



LineaNueva=S
ValidaNombre=S
[Fiscal.Cte.IEPS]
Carpeta=Fiscal
Clave=Cte.IEPS
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Internet.Cte.wMovVentas]
Carpeta=Internet
Clave=Cte.wMovVentas
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Fiscal.Cte.PITEX]
Carpeta=Fiscal
Clave=Cte.PITEX
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco



[AC.Cte.Cliente]
Carpeta=AC
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[AC.Cte.Nombre]
Carpeta=AC
Clave=Cte.Nombre
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[AC.Cte.CapacidadPago]
Carpeta=AC
Clave=Cte.CapacidadPago
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFuente=Negro
ColorFondo=Plata


[Otros.Cte.Intercompania]
Carpeta=Otros
Clave=Cte.Intercompania
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=40
ColorFondo=Blanco

[Venta.Cte.Agente3]
Carpeta=Venta
Clave=Cte.Agente3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Venta.Agente3.Nombre]
Carpeta=Venta
Clave=Agente3.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
[Venta.Cte.Agente4]
Carpeta=Venta
Clave=Cte.Agente4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Venta.Agente4.Nombre]
Carpeta=Venta
Clave=Agente4.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
[Venta.Cte.Publico]
Carpeta=Venta
Clave=Cte.Publico
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco


LineaNueva=S
[Personal.Cte.Extranjero]
Carpeta=Personal
Clave=Cte.Extranjero
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[ReglaNegocio.Cte.DocumentacionCompleta]
Carpeta=ReglaNegocio
Clave=Cte.DocumentacionCompleta
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco

ValidaNombre=S
[ReglaNegocio.Cte.OperacionLimite]
Carpeta=ReglaNegocio
Clave=Cte.OperacionLimite
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[ReglaNegocio.Cte.CRMovVenta]
Carpeta=ReglaNegocio
Clave=Cte.CRMovVenta
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco



LineaNueva=S
[Fiscal.Cte.ImportadorRegimen]
Carpeta=Fiscal
Clave=Cte.ImportadorRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=40
ColorFondo=Blanco

[Fiscal.Cte.ImportadorRegistro]
Carpeta=Fiscal
Clave=Cte.ImportadorRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.Cte.Grado]
Carpeta=Ficha
Clave=Cte.Grado
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco


LineaNueva=S
ValidaNombre=S
[Ficha.Cte.GLN]
Carpeta=Ficha
Clave=Cte.GLN
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Personal.Cte.PersonalSMS]
Carpeta=Personal
Clave=Cte.PersonalSMS
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Ficha.Cte.DireccionNumeroInt]
Carpeta=Ficha
Clave=Cte.DireccionNumeroInt
Editar=S
3D=S
Pegado=N
Tamano=40
ColorFondo=Blanco



LineaNueva=S
ValidaNombre=S
[Fiscal.Cte.RPU]
Carpeta=Fiscal
Clave=Cte.RPU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Fiscal.Cte.SIRAC]
Carpeta=Fiscal
Clave=Cte.SIRAC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Valores.Columnas]
0=278
1=234
VerCampo=340
VerValor=318

[FormaExtraValor]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Características
Clave=FormaExtraValor
Filtros=S
OtroOrden=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaExtraValor
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
ListaOrden=(Lista)
FiltroAplicaEn=FormaExtraCampo.Grupo
FiltroPredefinido=S
FiltroAutoCampo=FormaExtraCampo.Grupo
FiltroAutoValidar=FormaExtraCampo.Grupo
FiltroAutoOrden=FormaExtraCampo.Orden
FiltroGrupo1=FormaExtraCampo.Grupo
FiltroValida1=FormaExtraCampo.Grupo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
HojaFondoGris=S
HojaSinBorde=S
PermiteEditar=S

FiltroGeneral=FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaExtraVisibleCliente(<T>{Cte:Cte.Categoria}<T>, <T>{Cte:Cte.Grupo}<T>, <T>{Cte:Cte.Familia}<T>)) AND FormaExtraValor.Aplica=<T>Cliente<T> AND FormaExtraValor.AplicaClave=<T>{Cte:Cte.Cliente}<T>
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
IgnoraFlujo=N

[FormaExtraValor.VerValor]
Carpeta=FormaExtraValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
Efectos=[Negritas]

[FormaExtraValor.Columnas]
VerCampo=346
VerValor=364


[Comentarios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Comentarios
Clave=Comentarios
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
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
ListaEnCaptura=Cte.Comentarios
CarpetaVisible=S
AlinearTodaCarpeta=S

[Comentarios.Cte.Comentarios]
Carpeta=Comentarios
Clave=Cte.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100x10
ColorFondo=Blanco
ColorFuente=Negro

[Fiscal.Cte.IFE]
Carpeta=Fiscal
Clave=Cte.IFE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Fiscal.Cte.Pasaporte]
Carpeta=Fiscal
Clave=Cte.Pasaporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Seguro.Cte.PolizaFechaEmision]
Carpeta=Seguro
Clave=Cte.PolizaFechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Seguro.Cte.PolizaVencimiento]
Carpeta=Seguro
Clave=Cte.PolizaVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=40

[Seguro.Cte.NotificarA]
Carpeta=Seguro
Clave=Cte.NotificarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Seguro.Cte.NoriticarATelefonos]
Carpeta=Seguro
Clave=Cte.NoriticarATelefonos
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S

[Foto.Cte.Foto]
Carpeta=Foto
Clave=Cte.Foto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100x100
ColorFondo=Blanco
ColorFuente=Negro

[Personal.Cte.Peso]
Carpeta=Personal
Clave=Cte.Peso
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[Personal.Cte.Estatura]
Carpeta=Personal
Clave=Cte.Estatura
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
Pegado=N

LineaNueva=S
[Personal.Cte.GrupoSanguineo]
Carpeta=Personal
Clave=Cte.GrupoSanguineo
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

LineaNueva=S
[Personal.Cte.GrupoSanguineoRH]
Carpeta=Personal
Clave=Cte.GrupoSanguineoRH
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=40
ColorFondo=Blanco


LineaNueva=S
[Personal.Cte.RFC]
Carpeta=Personal
Clave=Cte.RFC
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]


LineaNueva=S
ValidaNombre=S
[Personal.Cte.ExpedienteFamiliar]
Carpeta=Personal
Clave=Cte.ExpedienteFamiliar
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
LineaNueva=S

[Personal.ExpedienteFamiliar.Nombre]
Carpeta=Personal
Clave=ExpedienteFamiliar.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata


LineaNueva=S
ValidaNombre=S
[Ficha.Cte.SIC]
Carpeta=Ficha
Clave=Cte.SIC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Ficha.SIC.Nombre]
Carpeta=Ficha
Clave=SIC.Nombre
3D=S
Tamano=40
ColorFondo=Plata

LineaNueva=S
ValidaNombre=S
[Ficha.Cte.ReferenciaBancaria]
Carpeta=Ficha
Clave=Cte.ReferenciaBancaria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
EspacioPrevio=S

[Oportunidad.CteOportunidad.ImporteEstimado]
Carpeta=Oportunidad
Clave=CteOportunidad.ImporteEstimado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.Etapa]
Carpeta=Oportunidad
Clave=CteOportunidad.Etapa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Oportunidad.CteOportunidad.Avance]
Carpeta=Oportunidad
Clave=CteOportunidad.Avance
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.ProbabilidadCierre]
Carpeta=Oportunidad
Clave=CteOportunidad.ProbabilidadCierre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.FechaEstimadaCierre]
Carpeta=Oportunidad
Clave=CteOportunidad.FechaEstimadaCierre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.PresupuestoAsignado]
Carpeta=Oportunidad
Clave=CteOportunidad.PresupuestoAsignado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Competidores.CteCompetidor.Competidor]
Carpeta=Competidores
Clave=CteCompetidor.Competidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Producto]
Carpeta=Competidores
Clave=CteCompetidor.Producto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Orden]
Carpeta=Competidores
Clave=CteCompetidor.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Importe]
Carpeta=Competidores
Clave=CteCompetidor.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Moneda]
Carpeta=Competidores
Clave=CteCompetidor.Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Situacion]
Carpeta=Competidores
Clave=CteCompetidor.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Fecha]
Carpeta=Competidores
Clave=CteCompetidor.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Observaciones]
Carpeta=Competidores
Clave=CteCompetidor.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.Columnas]
Competidor=191
Producto=120
Orden=36
Importe=90
Moneda=64
Situacion=134
Fecha=64
Observaciones=438

[Oportunidad.CteOportunidad.Observaciones]
Carpeta=Oportunidad
Clave=CteOportunidad.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=80x3
ColorFondo=Blanco
ColorFuente=Negro

[UsoServicio]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Uso de Servicios
Clave=UsoServicio
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteUsoServicio
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CteUsoServicio.Cliente
LlaveMaestra=Cte.Cliente
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

HojaColorFondo=Plata
CondicionVisible=General.CteUsoServicio
[UsoServicio.CteUsoServicio.Servicio]
Carpeta=UsoServicio
Clave=CteUsoServicio.Servicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Fecha]
Carpeta=UsoServicio
Clave=CteUsoServicio.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Porcentaje]
Carpeta=UsoServicio
Clave=CteUsoServicio.Porcentaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Evaluacion]
Carpeta=UsoServicio
Clave=CteUsoServicio.Evaluacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Observaciones]
Carpeta=UsoServicio
Clave=CteUsoServicio.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[UsoServicio.Columnas]
Servicio=293
Fecha=94
Porcentaje=38
Evaluacion=87
Observaciones=189


[Detalle.Columnas]
CampoNombre=311
Valor=303
ValorAnterior=285

[Acciones.MapaTodos]
Nombre=MapaTodos
Boton=0
NombreDesplegar=Ver Mapa (&Todos)
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>Cte.Cliente<T>)<BR>Mapa.AgregarListaSt(<T>Cliente<T>)<BR>PlugIn(<T>Mapa<T>, <T>Cliente<T>, <T>Posicionar<T>)

[Acciones.MapaSeleccion]
Nombre=MapaSeleccion
Boton=0
NombreDesplegar=Ver Mapa (&Selección)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>Cte.Cliente<T>, Verdadero)<BR>Mapa.AgregarListaSt(<T>Cliente<T>)<BR>PlugIn(<T>Mapa<T>, <T>Cliente<T>, <T>Posicionar<T>)





[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQ_AVISO
BLOQ_AVISO=BLOQUEADO
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
FiltroGeneral=SituacionCta.Rama=<T>CXC<T> AND SituacionCta.Cuenta=<T>{Cte:Cte.Cliente}<T>
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

[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden	(Acendente)
GrupoOrden	(Acendente)=FormaExtraCampo.Orden	(Acendente)
FormaExtraCampo.Orden	(Acendente)=(Fin)


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
PestanaOtroNombre=S
PestanaNombre=Ecuador
Clave=Ecuador
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
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
ListaEnCaptura=Cte.TipoRegistro

CondicionVisible=Empresa.EsEcuador
[Ecuador.Cte.TipoRegistro]
Carpeta=Ecuador
Clave=Cte.TipoRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



































































































[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=&Otros
&Otros=(Fin)

[Forma.PlantillasExcepciones]
(Inicio)=Cte:Cte.EnviarA
Cte:Cte.EnviarA=Cte:Cte.Estatus
Cte:Cte.Estatus=(Fin)






































































































































[Forma.ListaAcciones]
(Inicio)=Anexos
Anexos=Otros9
Otros9=(Fin)









[Seguro.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Aseguradora
Cte.Aseguradora=CteAseguradora.Nombre
CteAseguradora.Nombre=Cte.NombreAsegurado
Cte.NombreAsegurado=Cte.PolizaTipo
Cte.PolizaTipo=Cte.PolizaNumero
Cte.PolizaNumero=Cte.PolizaReferencia
Cte.PolizaReferencia=Cte.PolizaImporte
Cte.PolizaImporte=Cte.PolizaFechaEmision
Cte.PolizaFechaEmision=Cte.PolizaVencimiento
Cte.PolizaVencimiento=Cte.Deducible
Cte.Deducible=Cte.DeducibleMoneda
Cte.DeducibleMoneda=Cte.Coaseguro
Cte.Coaseguro=Cte.NotificarA
Cte.NotificarA=Cte.NoriticarATelefonos
Cte.NoriticarATelefonos=(Fin)



[Fiscal.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.FiscalRegimen
Cte.FiscalRegimen=Cte.RFC
Cte.RFC=Cte.CURP
Cte.CURP=Cte.IFE
Cte.IFE=Cte.Pasaporte
Cte.Pasaporte=Cte.IEPS
Cte.IEPS=Cte.PITEX
Cte.PITEX=Cte.RPU
Cte.RPU=Cte.SIRAC
Cte.SIRAC=Cte.ImportadorRegimen
Cte.ImportadorRegimen=Cte.ImportadorRegistro
Cte.ImportadorRegistro=(Fin)



[Personal.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.PersonalNombres
Cte.PersonalNombres=Cte.PersonalApellidoPaterno
Cte.PersonalApellidoPaterno=Cte.PersonalApellidoMaterno
Cte.PersonalApellidoMaterno=Cte.RFC
Cte.RFC=Cte.Parentesco
Cte.Parentesco=Cte.Responsable
Cte.Responsable=Cte.ExpedienteFamiliar
Cte.ExpedienteFamiliar=ExpedienteFamiliar.Nombre
ExpedienteFamiliar.Nombre=Cte.PersonalDireccion
Cte.PersonalDireccion=Cte.PersonalEntreCalles
Cte.PersonalEntreCalles=Cte.PersonalPlano
Cte.PersonalPlano=Cte.PersonalDelegacion
Cte.PersonalDelegacion=Cte.PersonalColonia
Cte.PersonalColonia=Cte.PersonalCodigoPostal
Cte.PersonalCodigoPostal=Cte.PersonalPoblacion
Cte.PersonalPoblacion=Cte.PersonalEstado
Cte.PersonalEstado=Cte.PersonalPais
Cte.PersonalPais=Cte.PersonalTelefonos
Cte.PersonalTelefonos=Cte.PersonalTelefonosLada
Cte.PersonalTelefonosLada=Cte.PersonalTelefonoMovil
Cte.PersonalTelefonoMovil=Cte.PersonalSMS
Cte.PersonalSMS=Cte.FechaNacimiento
Cte.FechaNacimiento=Edad
Edad=Cte.Extranjero
Cte.Extranjero=Cte.Sexo
Cte.Sexo=Cte.Religion
Cte.Religion=Cte.Profesion
Cte.Profesion=Cte.Puesto
Cte.Puesto=Cte.Titulo
Cte.Titulo=Cte.EstadoCivil
Cte.EstadoCivil=Cte.Conyuge
Cte.Conyuge=Cte.FechaMatrimonio
Cte.FechaMatrimonio=Cte.NumeroHijos
Cte.NumeroHijos=Cte.Peso
Cte.Peso=Cte.Estatura
Cte.Estatura=Cte.GrupoSanguineo
Cte.GrupoSanguineo=Cte.GrupoSanguineoRH
Cte.GrupoSanguineoRH=Cte.Alergias
Cte.Alergias=Cte.Fuma
Cte.Fuma=Cte.FacturarCte
Cte.FacturarCte=CteFacturarA.Nombre
CteFacturarA.Nombre=Cte.FacturarCteEnviarA
Cte.FacturarCteEnviarA=CteEnviarAFacturarA.Nombre
CteEnviarAFacturarA.Nombre=(Fin)




[Venta.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.EnviarA
Cte.EnviarA=CteEnviarA.Nombre
CteEnviarA.Nombre=Cte.DefMoneda
Cte.DefMoneda=Cte.Licencias
Cte.Licencias=Cte.LicenciasTipo
Cte.LicenciasTipo=Cte.Agente
Cte.Agente=Agente.Nombre
Agente.Nombre=Cte.AgenteServicio
Cte.AgenteServicio=AgenteServicio.Nombre
AgenteServicio.Nombre=Cte.Agente3
Cte.Agente3=Agente3.Nombre
Agente3.Nombre=Cte.Agente4
Cte.Agente4=Agente4.Nombre
Agente4.Nombre=Cte.PersonalCobrador
Cte.PersonalCobrador=PersonalNombre
PersonalNombre=Cte.SucursalEmpresa
Cte.SucursalEmpresa=Sucursal.Nombre
Sucursal.Nombre=Cte.Publico
Cte.Publico=Cte.DiaRevision1
Cte.DiaRevision1=Cte.DiaRevision2
Cte.DiaRevision2=Cte.HorarioRevision
Cte.HorarioRevision=Cte.DiaPago1
Cte.DiaPago1=Cte.DiaPago2
Cte.DiaPago2=Cte.HorarioPago
Cte.HorarioPago=(Fin)

[ReglaNegocio.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.ListaPreciosEsp
Cte.ListaPreciosEsp=Cte.Descuento
Cte.Descuento=Cte.BonificacionTipo
Cte.BonificacionTipo=Cte.Bonificacion
Cte.Bonificacion=Cte.Condicion
Cte.Condicion=Cte.FormaEnvio
Cte.FormaEnvio=Cte.ZonaImpuesto
Cte.ZonaImpuesto=Cte.Proyecto
Cte.Proyecto=Cte.AlmacenDef
Cte.AlmacenDef=Cte.OperacionLimite
Cte.OperacionLimite=Cte.VtasConsignacion
Cte.VtasConsignacion=Cte.AlmacenVtasConsignacion
Cte.AlmacenVtasConsignacion=Cte.BloquearMorosos
Cte.BloquearMorosos=Cte.ChecarCredito
Cte.ChecarCredito=Cte.RecorrerVencimiento
Cte.RecorrerVencimiento=Cte.ModificarVencimiento
Cte.ModificarVencimiento=Cte.CreditoEspecial
Cte.CreditoEspecial=Cte.Credito
Cte.Credito=Cte.OtrosCargos
Cte.OtrosCargos=Cte.CRMovVenta
Cte.CRMovVenta=Cte.CreditoConLimite
Cte.CreditoConLimite=Cte.CreditoConLimitePedidos
Cte.CreditoConLimitePedidos=Cte.CreditoConDias
Cte.CreditoConDias=Cte.CreditoConCondiciones
Cte.CreditoConCondiciones=Cte.CreditoLimite
Cte.CreditoLimite=Cte.CreditoMoneda
Cte.CreditoMoneda=Cte.CreditoLimitePedidos
Cte.CreditoLimitePedidos=Cte.CreditoDias
Cte.CreditoDias=Cte.CreditoCondiciones
Cte.CreditoCondiciones=Cte.PedidosParciales
Cte.PedidosParciales=Cte.DescuentoRecargos
Cte.DescuentoRecargos=Cte.ExcentoISAN
Cte.ExcentoISAN=Cte.Conciliar
Cte.Conciliar=Cte.FormasPagoRestringidas
Cte.FormasPagoRestringidas=Cte.PreciosInferioresMinimo
Cte.PreciosInferioresMinimo=Cte.PedidoDef
Cte.PedidoDef=Cte.DocumentacionCompleta
Cte.DocumentacionCompleta=(Fin)

[UsoServicio.ListaEnCaptura]
(Inicio)=CteUsoServicio.Servicio
CteUsoServicio.Servicio=CteUsoServicio.Fecha
CteUsoServicio.Fecha=CteUsoServicio.Porcentaje
CteUsoServicio.Porcentaje=CteUsoServicio.Evaluacion
CteUsoServicio.Evaluacion=CteUsoServicio.Observaciones
CteUsoServicio.Observaciones=(Fin)

[Perfiles.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.EsProveedor
Cte.EsProveedor=Cte.EsPersonal
Cte.EsPersonal=Cte.EsAgente
Cte.EsAgente=Cte.EsAlmacen
Cte.EsAlmacen=Cte.EsCentroCostos
Cte.EsCentroCostos=Cte.EsProyecto
Cte.EsProyecto=Cte.EsCentroTrabajo
Cte.EsCentroTrabajo=Cte.EsEstacionTrabajo
Cte.EsEstacionTrabajo=Cte.EsEspacio
Cte.EsEspacio=(Fin)


[Ford.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.FordDistribuidor
Cte.FordDistribuidor=Cte.FordZona
Cte.FordZona=Cte.Fecha1
Cte.Fecha1=Cte.Fecha2
Cte.Fecha2=Cte.Fecha3
Cte.Fecha3=Cte.Fecha4
Cte.Fecha4=Cte.Fecha5
Cte.Fecha5=Cte.Flotilla
Cte.Flotilla=(Fin)

[CRM.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.CRMImporte
Cte.CRMImporte=Cte.CRMCantidad
Cte.CRMCantidad=Cte.CRMPresupuestoAsignado
Cte.CRMPresupuestoAsignado=Cte.CRMEtapa
Cte.CRMEtapa=Cte.CRMCierreProbabilidad
Cte.CRMCierreProbabilidad=Cte.CRMCierreFechaAprox
Cte.CRMCierreFechaAprox=Cte.CRMCompetencia
Cte.CRMCompetencia=Cte.CRMInfluencia
Cte.CRMInfluencia=Cte.CRMFuente
Cte.CRMFuente=Cte.Descripcion1
Cte.Descripcion1=Cte.Descripcion2
Cte.Descripcion2=Cte.Descripcion3
Cte.Descripcion3=Cte.Descripcion4
Cte.Descripcion4=Cte.Descripcion5
Cte.Descripcion5=Cte.Descripcion6
Cte.Descripcion6=Cte.Descripcion7
Cte.Descripcion7=Cte.Descripcion8
Cte.Descripcion8=Cte.Descripcion9
Cte.Descripcion9=Cte.Descripcion10
Cte.Descripcion10=Cte.Descripcion11
Cte.Descripcion11=Cte.Descripcion12
Cte.Descripcion12=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion14
Cte.Descripcion14=Cte.Descripcion15
Cte.Descripcion15=Cte.Descripcion16
Cte.Descripcion16=Cte.Descripcion17
Cte.Descripcion17=Cte.Descripcion18
Cte.Descripcion18=Cte.Descripcion19
Cte.Descripcion19=Cte.Descripcion20
Cte.Descripcion20=(Fin)

[Internet.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Contrasena
Cte.Contrasena=Cte.Contrasena2
Cte.Contrasena2=Cte.wMovVentas
Cte.wMovVentas=Cte.wVerDisponible
Cte.wVerDisponible=Cte.wVerArtListaPreciosEsp
Cte.wVerArtListaPreciosEsp=(Fin)

[Otros.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Espacio
Cte.Espacio=Espacio.Nombre
Espacio.Nombre=Cte.Cuenta
Cte.Cuenta=Cta.Descripcion
Cta.Descripcion=Cte.CuentaRetencion
Cte.CuentaRetencion=CtaRetencion.Descripcion
CtaRetencion.Descripcion=Cte.Mensaje
Cte.Mensaje=Cte.DirInternet
Cte.DirInternet=Cte.NivelAcceso
Cte.NivelAcceso=Cte.CBDir
Cte.CBDir=Cte.Idioma
Cte.Idioma=Cte.Alta
Cte.Alta=Cte.UltimoCambio
Cte.UltimoCambio=Cte.Intercompania
Cte.Intercompania=(Fin)











[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[Ficha.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Tipo
Cte.Tipo=Cte.Rama
Cte.Rama=Cte.Estatus
Cte.Estatus=Cte.Nombre
Cte.Nombre=Cte.Grado
Cte.Grado=Cte.Categoria
Cte.Categoria=Cte.NombreCorto
Cte.NombreCorto=Cte.Grupo
Cte.Grupo=Cte.RFC
Cte.RFC=Cte.GLN
Cte.GLN=Cte.Familia
Cte.Familia=Cte.CURP
Cte.CURP=Cte.SIC
Cte.SIC=SIC.Nombre
SIC.Nombre=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=Cte.DireccionNumeroInt
Cte.DireccionNumeroInt=Cte.EntreCalles
Cte.EntreCalles=Cte.Plano
Cte.Plano=Cte.Observaciones
Cte.Observaciones=Cte.Delegacion
Cte.Delegacion=Cte.Colonia
Cte.Colonia=Cte.CodigoPostal
Cte.CodigoPostal=Cte.Ruta
Cte.Ruta=Cte.Poblacion
Cte.Poblacion=Cte.Estado
Cte.Estado=Cte.Pais
Cte.Pais=Cte.Telefonos
Cte.Telefonos=Cte.TelefonosLada
Cte.TelefonosLada=Cte.Fax
Cte.Fax=Cte.PedirTono
Cte.PedirTono=Cte.Contacto1
Cte.Contacto1=Cte.Extencion1
Cte.Extencion1=Cte.Contacto2
Cte.Contacto2=Cte.Extencion2
Cte.Extencion2=Cte.eMail1
Cte.eMail1=Cte.eMail2
Cte.eMail2=Cte.eMailAuto
Cte.eMailAuto=Cte.ReferenciaBancaria
Cte.ReferenciaBancaria=(Fin)





[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Personal
Personal=Fiscal
Fiscal=Seguro
Seguro=Venta
Venta=ReglaNegocio
ReglaNegocio=UsoServicio
UsoServicio=Perfiles
Perfiles=Ford
Ford=CRM
CRM=Internet
Internet=Otros
Otros=Comentarios
Comentarios=FormaExtraValor
FormaExtraValor=SituacionCta
SituacionCta=Ecuador
Ecuador=(Fin)
