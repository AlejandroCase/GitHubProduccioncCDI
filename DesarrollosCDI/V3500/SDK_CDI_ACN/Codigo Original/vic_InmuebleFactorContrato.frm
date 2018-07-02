
[Forma]
Clave=vic_InmuebleFactorContrato
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Info.Descripcion
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Encabezado
PosicionInicialIzquierda=293
PosicionInicialArriba=63
PosicionInicialAlturaCliente=560
PosicionInicialAncho=693
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionSec1=261
Comentarios=<T>Inmueble: <T> + Info.Nombre
ListaAcciones=(Lista)
VentanaExclusiva=S
ExpresionesAlMostrar=//EjecutarSQL(<T>vic_spBorrarCargo :tInmueble, :tReferencia<T>,Info.Inmueble,Info.Descripcion)
[Encabezado]
Estilo=Ficha
Clave=Encabezado
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_InmuebleFactorContrato
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
ListaOrden=vic_InmuebleFactorContrato.ID<TAB>(Decendente)
FiltroGeneral=vic_InmuebleFactorContrato.Referencia=<T>{Info.Descripcion}<T><BR>AND vic_InmuebleFactorContrato.Inmueble = <T>{Info.Inmueble}<T>
[Encabezado.vic_InmuebleFactorContrato.Fecha]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=25
[Encabezado.vic_InmuebleFactorContrato.Articulo]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleFactorContrato.Concepto]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75
ColorFondo=Blanco

[Encabezado.vic_InmuebleFactorContrato.Importe]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.Importe
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=25
[Encabezado.vic_InmuebleFactorContrato.CargoAbono]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.CargoAbono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleFactorContrato.AgrupadorFactura]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.AgrupadorFactura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=25
[Encabezado.vic_InmuebleFactorContrato.SerieFactura]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.SerieFactura
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleFactorContrato.Empresa]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.Empresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleFactorContrato.MonCotizacion]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.MonCotizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleFactorContrato.MonFacturacion]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.MonFacturacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleFactorContrato.Factor]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.Factor
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco




[Lista.Columnas]
Articulo=131
Descripcion1=244
Empresa=71
Nombre=371


Concepto=218
[Detalle]
Estilo=Hoja
Clave=Detalle
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_InmuebleFactorContratoD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_InmuebleFactorContrato
LlaveLocal=vic_InmuebleFactorContratoD.ID
LlaveMaestra=vic_InmuebleFactorContrato.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Gris
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

HojaPermiteEliminar=S
HojaConfirmarEliminar=S
[Detalle.vic_InmuebleFactorContratoD.IDContrato]
Carpeta=Detalle
Clave=vic_InmuebleFactorContratoD.IDContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=50
[Detalle.vic_InmuebleFactorContratoD.RazonSocial]
Carpeta=Detalle
Clave=vic_InmuebleFactorContratoD.RazonSocial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Gris




[Detalle.vic_InmuebleFactorContratoD.Importe]
Carpeta=Detalle
Clave=vic_InmuebleFactorContratoD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_InmuebleFactorContratoD.ImporteImpuestos]
Carpeta=Detalle
Clave=vic_InmuebleFactorContratoD.ImporteImpuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro




[Detalle.Columnas]
IDContrato=64
RazonSocial=304
Importe=84
ImporteImpuestos=106

Factor2=64




Factor3=64
IVA=77

Factor1=64
Factor=64
[Acciones.CargarDetalle.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>vic_spCargaDetalleContrato :nID, :tInmueble, :tReferencia<T>,vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.ID, Info.Inmueble, Info.Descripcion)
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
ListaAccionesMultiples=(Lista)

Visible=S

Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.ID)
[Acciones.Facturar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=Si Confirmacion(<T>¿ Seguro desea Facturar estos Conceptos ?<T>, BotonAceptar,BotonCancelar) = BotonAceptar<BR>Entonces<BR>ProcesarSQL(<T>vic_spFacturarInmuebleContrato :nID, :fFecha, :tUsuario, :tConcepto, :tArticulo, :tEmpresa, :tMonedaFact, :tMonedaCot, :nEstacionTrabajo, :tConceptoV, :tMov<T>,<BR>vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.ID, vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.Fecha, Usuario,<BR>vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.Concepto, vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.Articulo,<BR>vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.Empresa, vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.MonFacturacion,<BR>vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.MonCotizacion, EstacionTrabajo,<BR>vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.ConceptoVenta, vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.SerieFactura)<BR>Sino<BR><T><T><BR>Fin
[Acciones.Facturar]
Nombre=Facturar
Boton=92
NombreEnBoton=S
NombreDesplegar=&Facturar
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

Visible=S

GuardarAntes=S
Activo=S
ConCondicion=S
EjecucionConError=S
EjecucionCondicion=(SQL(<T>SELECT Count(IDContrato) FROM vic_InmuebleFactorContratoD WHERE ID=:nID<T>, vic_InmuebleFactorContrato:vic_InmuebleFactorContrato.ID)>0)
EjecucionMensaje=<T>No hay nada que Facturar<T>
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
Visible=S
















Multiple=S
ListaAccionesMultiples=(Lista)

[Acciones.GuardarDatos]
Nombre=GuardarDatos
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar cambios
Activo=S
Visible=S





RefrescarDespues=S
Multiple=S

ListaAccionesMultiples=(Lista)

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

[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)
















[Acciones.GuardarDatos.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.GuardarDatos.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S





[Detalle.Factor]
Carpeta=Detalle
Clave=Factor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro



[Detalle.ListaEnCaptura]
(Inicio)=vic_InmuebleFactorContratoD.IDContrato
vic_InmuebleFactorContratoD.IDContrato=vic_InmuebleFactorContratoD.RazonSocial
vic_InmuebleFactorContratoD.RazonSocial=Factor
Factor=vic_InmuebleFactorContratoD.Importe
vic_InmuebleFactorContratoD.Importe=vic_InmuebleFactorContratoD.ImporteImpuestos
vic_InmuebleFactorContratoD.ImporteImpuestos=(Fin)






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






[Encabezado.vic_InmuebleFactorContrato.ConceptoVenta]
Carpeta=Encabezado
Clave=vic_InmuebleFactorContrato.ConceptoVenta
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco











[MovTipo.Columnas]
Mov=169











[Encabezado.ListaEnCaptura]
(Inicio)=vic_InmuebleFactorContrato.Fecha
vic_InmuebleFactorContrato.Fecha=vic_InmuebleFactorContrato.Factor
vic_InmuebleFactorContrato.Factor=vic_InmuebleFactorContrato.Articulo
vic_InmuebleFactorContrato.Articulo=Art.Descripcion1
Art.Descripcion1=vic_InmuebleFactorContrato.Concepto
vic_InmuebleFactorContrato.Concepto=vic_InmuebleFactorContrato.Importe
vic_InmuebleFactorContrato.Importe=vic_InmuebleFactorContrato.MonCotizacion
vic_InmuebleFactorContrato.MonCotizacion=vic_InmuebleFactorContrato.MonFacturacion
vic_InmuebleFactorContrato.MonFacturacion=vic_InmuebleFactorContrato.CargoAbono
vic_InmuebleFactorContrato.CargoAbono=vic_InmuebleFactorContrato.ConceptoVenta
vic_InmuebleFactorContrato.ConceptoVenta=vic_InmuebleFactorContrato.AgrupadorFactura
vic_InmuebleFactorContrato.AgrupadorFactura=vic_InmuebleFactorContrato.SerieFactura
vic_InmuebleFactorContrato.SerieFactura=vic_InmuebleFactorContrato.Empresa
vic_InmuebleFactorContrato.Empresa=Empresa.Nombre
Empresa.Nombre=(Fin)





[Acciones.GuardarDatos.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Actualizar Forma
Actualizar Forma=(Fin)



[Acciones.CargarDetalle.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)










[Acciones.Facturar.Guardar]
Nombre=Guardar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

























[Acciones.Facturar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S










[Acciones.Facturar.ListaAccionesMultiples]
(Inicio)=Guardar
Guardar=Expresion
Expresion=Aceptar
Aceptar=(Fin)

[Forma.ListaCarpetas]
(Inicio)=Encabezado
Encabezado=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=GuardarDatos
GuardarDatos=CargarDetalle
CargarDetalle=Facturar
Facturar=Cancelar
Cancelar=(Fin)
