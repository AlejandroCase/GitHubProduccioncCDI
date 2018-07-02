
[Forma]
Clave=vic_InmuebleCargoIndiviso2
Icono=4
Modulos=(Todos)

ListaCarpetas=(Lista)
CarpetaPrincipal=Encabezado
PosicionInicialIzquierda=309
PosicionInicialArriba=31
PosicionInicialAlturaCliente=577
PosicionInicialAncho=726
PosicionSec1=264
PosicionSec2=219
PosicionCol1=326
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Nombre=Info.Descripcion
Comentarios=<T>Inmueble: <T> + Info.Nombre
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaExclusiva=S
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=///EjecutarSQL(<T>vic_spBorrarCargo :tInmueble, :tReferencia<T>,Info.Inmueble,Info.Descripcion)
[Encabezado]
Estilo=Ficha
Clave=Encabezado
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_InmuebleIndiviso
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
ListaOrden=vic_InmuebleIndiviso.ID<TAB>(Decendente)
FiltroGeneral=vic_InmuebleIndiviso.Referencia=<T>{Info.Descripcion}<T><BR>AND vic_InmuebleIndiviso.Inmueble = <T>{Info.Inmueble}<T>
[Encabezado.vic_InmuebleIndiviso.Fecha]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.Fecha
Editar=S
3D=S
Pegado=N
Tamano=25
ColorFondo=Blanco

LineaNueva=S
ValidaNombre=S
[Encabezado.vic_InmuebleIndiviso.Articulo]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Encabezado.vic_InmuebleIndiviso.Concepto]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75
ColorFondo=Blanco

[Encabezado.vic_InmuebleIndiviso.Importe]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.Importe
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=25
[Encabezado.vic_InmuebleIndiviso.CargoAbono]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.CargoAbono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleIndiviso.AgrupadorFactura]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.AgrupadorFactura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=25
[Encabezado.vic_InmuebleIndiviso.SerieFactura]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.SerieFactura
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleIndiviso.Empresa]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.Empresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Encabezado.vic_InmuebleIndiviso.MonCotizacion]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.MonCotizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleIndiviso.MonFacturacion]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.MonFacturacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Encabezado.vic_InmuebleIndiviso.Factor]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.Factor
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Detalle.vic_InmuebleIndivisoD.Local]
Carpeta=Detalle
Clave=vic_InmuebleIndivisoD.Local
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco


[Detalle.vic_InmuebleIndivisoD.RazonSocial]
Carpeta=Detalle
Clave=vic_InmuebleIndivisoD.RazonSocial
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Gris

[Detalle.vic_InmuebleIndivisoD.Importe]
Carpeta=Detalle
Clave=vic_InmuebleIndivisoD.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Detalle.vic_InmuebleIndivisoD.ImporteImpuestos]
Carpeta=Detalle
Clave=vic_InmuebleIndivisoD.ImporteImpuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[Detalle.Columnas]
Local=94
IDContrato=64
RazonSocial=166
Importe=87
ImporteImpuestos=123
Indiviso=64
Factor1=64
Factor2=70
Factor3=64










Factor=84
ContratoCom=124
[Detalle]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Detalle
Clave=Detalle
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_InmuebleIndivisoD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_InmuebleIndiviso
LlaveLocal=vic_InmuebleIndivisoD.ID
LlaveMaestra=vic_InmuebleIndiviso.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S






ControlRenglon=S
CampoRenglon=vic_InmuebleIndivisoD.Renglon

OtroOrden=S
ListaOrden=vic_InmuebleIndivisoD.Renglon<TAB>(Acendente)

HojaPermiteEliminar=S
HojaConfirmarEliminar=S
[Lista.Columnas]
Articulo=131
Descripcion1=244







Empresa=71
Nombre=371

Concepto=218
[Acciones.Facturar]
Nombre=Facturar
Boton=92
NombreEnBoton=S
NombreDesplegar=&Facturar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S



EspacioPrevio=S






Activo=S
ConCondicion=S
EjecucionConError=S
Multiple=S
ListaAccionesMultiples=(Lista)
EjecucionCondicion=(SQL(<T>SELECT Count(IDContrato) FROM vic_InmuebleIndivisoD WHERE ID=:nID<T>,vic_InmuebleIndiviso:vic_InmuebleIndiviso.ID)>0)
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
[Acciones.CargarDetalle.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=EjecutarSQL(<T>vic_spCargaDetalleLocal :nID, :tInmueble, :tReferencia<T>, vic_InmuebleIndiviso:vic_InmuebleIndiviso.ID, vic_InmuebleIndiviso:vic_InmuebleIndiviso.Inmueble, Info.Descripcion)
[Acciones.CargarDetalle]
Nombre=CargarDetalle
Boton=55
NombreEnBoton=S
NombreDesplegar=&Cargar detalle
Multiple=S
ListaAccionesMultiples=(Lista)

Visible=S



Activo=S
ConCondicion=S
GuardarAntes=S


EjecucionCondicion=ConDatos(vic_InmuebleIndiviso:vic_InmuebleIndiviso.ID)
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar cambios
Activo=S
Visible=S






GuardarAntes=S
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





















[Acciones.Guardar.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Guardar.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S





[MovTipo.Columnas]
Mov=169








[Acciones.CargarDetalle.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
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












[Encabezado.vic_InmuebleIndiviso.ConceptoVenta]
Carpeta=Encabezado
Clave=vic_InmuebleIndiviso.ConceptoVenta
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco









































[Detalle.ListaEnCaptura]
(Inicio)=vic_InmuebleIndivisoD.Local
vic_InmuebleIndivisoD.Local=vic_InmuebleIndivisoD.ContratoCom
vic_InmuebleIndivisoD.ContratoCom=vic_InmuebleIndivisoD.RazonSocial
vic_InmuebleIndivisoD.RazonSocial=Factor
Factor=vic_InmuebleIndivisoD.Importe
vic_InmuebleIndivisoD.Importe=vic_InmuebleIndivisoD.ImporteImpuestos
vic_InmuebleIndivisoD.ImporteImpuestos=(Fin)

[Detalle.vic_InmuebleIndivisoD.ContratoCom]
Carpeta=Detalle
Clave=vic_InmuebleIndivisoD.ContratoCom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

















































[Acciones.Guardar.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Actualizar Forma
Actualizar Forma=(Fin)








[Acciones.CargarDetalle.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)






[Acciones.Facturar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Confirmacion(<T>¿ Seguro desea Facturar estos Conceptos ?<T>, BotonAceptar,BotonCancelar) = BotonAceptar<BR>Entonces<BR>ProcesarSQL(<T>vic_spFacturarInmuebleIndiviso :nID, :fFecha, :tUsuario, :tConcepto,<BR>:tArticulo, :tEmpresa, :tMonedaFact, :tMonedaCot, :nEstacionTrabajo, :tConceptoV, :tMov<T>, vic_InmuebleIndiviso:vic_InmuebleIndiviso.ID,<BR>vic_InmuebleIndiviso:vic_InmuebleIndiviso.Fecha, Usuario, vic_InmuebleIndiviso:vic_InmuebleIndiviso.Concepto,<BR>vic_InmuebleIndiviso:vic_InmuebleIndiviso.Articulo, vic_InmuebleIndiviso:vic_InmuebleIndiviso.Empresa,<BR>vic_InmuebleIndiviso:vic_InmuebleIndiviso.MonFacturacion, vic_InmuebleIndiviso:vic_InmuebleIndiviso.MonCotizacion,<BR>EstacionTrabajo, vic_InmuebleIndiviso:vic_InmuebleIndiviso.ConceptoVenta,<BR>vic_InmuebleIndiviso:vic_InmuebleIndiviso.SerieFactura)<BR>Sino<BR><T><T><BR>Fin
[Acciones.Facturar.Guardar]
Nombre=Guardar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S




[Encabezado.ListaEnCaptura]
(Inicio)=vic_InmuebleIndiviso.Fecha
vic_InmuebleIndiviso.Fecha=vic_InmuebleIndiviso.Factor
vic_InmuebleIndiviso.Factor=vic_InmuebleIndiviso.Articulo
vic_InmuebleIndiviso.Articulo=Art.Descripcion1
Art.Descripcion1=vic_InmuebleIndiviso.Concepto
vic_InmuebleIndiviso.Concepto=vic_InmuebleIndiviso.Importe
vic_InmuebleIndiviso.Importe=vic_InmuebleIndiviso.MonCotizacion
vic_InmuebleIndiviso.MonCotizacion=vic_InmuebleIndiviso.MonFacturacion
vic_InmuebleIndiviso.MonFacturacion=vic_InmuebleIndiviso.CargoAbono
vic_InmuebleIndiviso.CargoAbono=vic_InmuebleIndiviso.ConceptoVenta
vic_InmuebleIndiviso.ConceptoVenta=vic_InmuebleIndiviso.AgrupadorFactura
vic_InmuebleIndiviso.AgrupadorFactura=vic_InmuebleIndiviso.SerieFactura
vic_InmuebleIndiviso.SerieFactura=vic_InmuebleIndiviso.Empresa
vic_InmuebleIndiviso.Empresa=Empresa.Nombre
Empresa.Nombre=(Fin)











[Acciones.Facturar.ListaAccionesMultiples]
(Inicio)=Guardar
Guardar=Expresion
Expresion=(Fin)

[Forma.ListaCarpetas]
(Inicio)=Encabezado
Encabezado=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=CargarDetalle
CargarDetalle=Facturar
Facturar=Cancelar
Cancelar=(Fin)
