
[Forma]
Clave=vic_InmuebleCargoConsumos
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Info.Descripcion
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Encabezado
PosicionInicialIzquierda=237
PosicionInicialArriba=41
PosicionInicialAlturaCliente=604
PosicionInicialAncho=806
PosicionSec1=272
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
Comentarios=<T>Inmueble: <T> + Info.Nombre
ListaAcciones=(Lista)
VentanaExclusiva=S
ExpresionesAlMostrar=EjecutarSQL(<T>vic_spBorrarCargo :tInmueble, :tReferencia<T>,Info.Inmueble,Info.Descripcion)
[Encabezado]
Estilo=Ficha
Clave=Encabezado
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_InmuebleCargoConsumos
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

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
OtroOrden=S
ListaOrden=vic_InmuebleCargoConsumos.ID<TAB>(Decendente)
FiltroGeneral=vic_InmuebleCargoConsumos.Inmueble = <T>{Info.Inmueble}<T>
[Encabezado.vic_InmuebleCargoConsumos.Fecha]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleCargoConsumos.Articulo]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Encabezado.vic_InmuebleCargoConsumos.Consumo]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.Consumo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleCargoConsumos.TipoImporte]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.TipoImporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleCargoConsumos.Importe]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.Importe
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleCargoConsumos.CargoAbono]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.CargoAbono
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

LineaNueva=S
[Encabezado.vic_InmuebleCargoConsumos.AgrupadorFactura]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.AgrupadorFactura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleCargoConsumos.SerieFactura]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.SerieFactura
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

LineaNueva=S
[Encabezado.vic_InmuebleCargoConsumos.Empresa]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.Empresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Encabezado.vic_InmuebleCargoConsumos.MonCotizacion]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.MonCotizacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleCargoConsumos.MonFacturacion]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.MonFacturacion
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Detalle.vic_InmuebleCargoConsumosD.IDContrato]
Carpeta=Detalle
Clave=vic_InmuebleCargoConsumosD.IDContrato
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata
ColorFuente=Negro

[Detalle.vic_InmuebleCargoConsumosD.RazonSocial]
Carpeta=Detalle
Clave=vic_InmuebleCargoConsumosD.RazonSocial
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
ColorFuente=Negro

[Detalle.vic_InmuebleCargoConsumosD.LecturaAnterior]
Carpeta=Detalle
Clave=vic_InmuebleCargoConsumosD.LecturaAnterior
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata
ColorFuente=Negro

[Detalle.vic_InmuebleCargoConsumosD.LecturaActual]
Carpeta=Detalle
Clave=vic_InmuebleCargoConsumosD.LecturaActual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_InmuebleCargoConsumosD.Consumo]
Carpeta=Detalle
Clave=vic_InmuebleCargoConsumosD.Consumo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_InmuebleCargoConsumosD.Importe]
Carpeta=Detalle
Clave=vic_InmuebleCargoConsumosD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_InmuebleCargoConsumosD.ImporteImpuestos]
Carpeta=Detalle
Clave=vic_InmuebleCargoConsumosD.ImporteImpuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro



[Detalle.Columnas]
IDContrato=79
RazonSocial=242
LecturaAnterior=108
LecturaActual=114
Consumo=81
Importe=90
ImporteImpuestos=91






[Detalle]
Estilo=Hoja
Clave=Detalle
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_InmuebleCargoConsumosD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_InmuebleCargoConsumos
LlaveLocal=vic_InmuebleCargoConsumosD.ID
LlaveMaestra=vic_InmuebleCargoConsumos.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CarpetaVisible=S
ControlRenglon=S
CampoRenglon=vic_InmuebleCargoConsumosD.Renglon

[Acciones.CargarDetalle.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>vic_spCargaDetalleConsumos :nID, :tInmueble, :tConsumo, :fFecha<T>, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.ID, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.Inmueble, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.Consumo, Hoy)
[Acciones.CargarDetalle.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.CargarDetalle]
Nombre=CargarDetalle
Boton=55
NombreEnBoton=S
NombreDesplegar=&Cargar Detalle
GuardarAntes=S
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Visible=S

EspacioPrevio=S
ActivoCondicion=ConDatos(vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.TipoImporte)
[Acciones.Facturar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Confirmacion(<T>¿ Seguro desea Facturar estos Conceptos ?<T>, BotonAceptar,BotonCancelar) = BotonAceptar<BR>Entonces<BR>ProcesarSQL(<T>vic_spFacturarInmuebleConsumos :nID, :fFecha, :tUsuario, :tConsumo, :tArticulo, :tEmpresa, :tMonFact, :nEstacionTrabajo, :tConcepto, :tMov<T>,<BR>vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.ID, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.Fecha,<BR>Usuario, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.Consumo, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.Articulo,<BR>vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.Empresa, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.MonFacturacion, EstacionTrabajo,<BR>vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.ConceptoVenta, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.SerieFactura)<BR>Sino<BR><T><T><BR>Fin
[Acciones.Facturar.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Facturar]
Nombre=Facturar
Boton=92
NombreEnBoton=S
NombreDesplegar=&Facturar
GuardarAntes=S
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Visible=S
EspacioPrevio=S


Activo=S
ConCondicion=S
EjecucionConError=S
EjecucionCondicion=(SQL(<T>SELECT Count(IDContrato) FROM vic_InmuebleCargoConsumosD WHERE ID=:nID<T>, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.ID)>0)
EjecucionMensaje=<T>No hay nada que Facturar<T>
[Lista.Columnas]
Articulo=131
Descripcion1=244


Empresa=71
Nombre=371
Mov=200

Concepto=218
Cuenta=112
Numero=44
[Acciones.ProcesarDatos.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>vic_spProcesaDetalleConsumos :nID, :tTipoImporte, :tTipoConsumo, :nPrecio,  :nImporte<T>, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.ID, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.TipoImporte, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.Consumo, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.Precio, vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.Importe)
[Acciones.ProcesarDatos.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.ProcesarDatos]
Nombre=ProcesarDatos
Boton=7
NombreEnBoton=S
NombreDesplegar=&Procesar Datos
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

Visible=S
GuardarAntes=S

ActivoCondicion=ConDatos(vic_InmuebleCargoConsumos:vic_InmuebleCargoConsumos.TipoImporte)
[vic_InmuebleConsumos.Columnas]
Consumo=304







[Encabezado.vic_InmuebleCargoConsumos.Precio]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.Precio
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

LineaNueva=S



[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
Activo=S
Visible=S



Multiple=S
ListaAccionesMultiples=(Lista)

RefrescarDespues=S
[Acciones.Guardar.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Guardar.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S





[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cancelar.Cancelar]
Nombre=Cancelar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S


[Detalle.ListaEnCaptura]
(Inicio)=vic_InmuebleCargoConsumosD.IDContrato
vic_InmuebleCargoConsumosD.IDContrato=vic_InmuebleCargoConsumosD.RazonSocial
vic_InmuebleCargoConsumosD.RazonSocial=vic_InmuebleCargoConsumosD.LecturaAnterior
vic_InmuebleCargoConsumosD.LecturaAnterior=vic_InmuebleCargoConsumosD.LecturaActual
vic_InmuebleCargoConsumosD.LecturaActual=vic_InmuebleCargoConsumosD.Consumo
vic_InmuebleCargoConsumosD.Consumo=vic_InmuebleCargoConsumosD.Importe
vic_InmuebleCargoConsumosD.Importe=vic_InmuebleCargoConsumosD.ImporteImpuestos
vic_InmuebleCargoConsumosD.ImporteImpuestos=(Fin)












[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)















[Acciones.Guardar.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Actualizar Vista
Actualizar Vista=(Fin)






[Acciones.ProcesarDatos.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)






[Encabezado.Art.Descripcion1]
Carpeta=Encabezado
Clave=Art.Descripcion1
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Plata

[Encabezado.Empresa.Nombre]
Carpeta=Encabezado
Clave=Empresa.Nombre
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Plata








[Encabezado.vic_InmuebleCargoConsumos.ConceptoVenta]
Carpeta=Encabezado
Clave=vic_InmuebleCargoConsumos.ConceptoVenta
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

ValidaNombre=S




[MovTipo.Columnas]
Mov=169

















[Acciones.Facturar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)



[Encabezado.ListaEnCaptura]
(Inicio)=vic_InmuebleCargoConsumos.Fecha
vic_InmuebleCargoConsumos.Fecha=vic_InmuebleCargoConsumos.Articulo
vic_InmuebleCargoConsumos.Articulo=Art.Descripcion1
Art.Descripcion1=vic_InmuebleCargoConsumos.Consumo
vic_InmuebleCargoConsumos.Consumo=vic_InmuebleCargoConsumos.TipoImporte
vic_InmuebleCargoConsumos.TipoImporte=vic_InmuebleCargoConsumos.Importe
vic_InmuebleCargoConsumos.Importe=vic_InmuebleCargoConsumos.Precio
vic_InmuebleCargoConsumos.Precio=vic_InmuebleCargoConsumos.CargoAbono
vic_InmuebleCargoConsumos.CargoAbono=vic_InmuebleCargoConsumos.MonCotizacion
vic_InmuebleCargoConsumos.MonCotizacion=vic_InmuebleCargoConsumos.AgrupadorFactura
vic_InmuebleCargoConsumos.AgrupadorFactura=vic_InmuebleCargoConsumos.MonFacturacion
vic_InmuebleCargoConsumos.MonFacturacion=vic_InmuebleCargoConsumos.SerieFactura
vic_InmuebleCargoConsumos.SerieFactura=vic_InmuebleCargoConsumos.ConceptoVenta
vic_InmuebleCargoConsumos.ConceptoVenta=vic_InmuebleCargoConsumos.Empresa
vic_InmuebleCargoConsumos.Empresa=Empresa.Nombre
Empresa.Nombre=(Fin)













[Acciones.CargarDetalle.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)





[Forma.ListaCarpetas]
(Inicio)=Encabezado
Encabezado=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=CargarDetalle
CargarDetalle=ProcesarDatos
ProcesarDatos=Facturar
Facturar=(Fin)
