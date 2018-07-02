
[Forma]
Clave=vic_DatoRentaSVenta
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Captura de Ventas
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Encabezado
PosicionInicialIzquierda=213
PosicionInicialArriba=122
PosicionInicialAlturaCliente=489
PosicionInicialAncho=598
PosicionSec1=197
Comentarios=<T>Contrato <T> + Info.Numero
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
CarpetasMultilinea=S
VentanaExclusiva=S
[Encabezado]
Estilo=Ficha
Clave=Encabezado
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_DatoRentaSVenta
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
OtroOrden=S
ListaOrden=vic_DatoRentaSVenta.ID<TAB>(Decendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
PermiteEditar=S
FiltroGeneral=vic_DatoRentaSVenta.IDContrato=<T>{Info.Numero}<T>
[Encabezado.vic_DatoRentaSVenta.Tipo]
Carpeta=Encabezado
Clave=vic_DatoRentaSVenta.Tipo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Detalle]
Estilo=Hoja
PestanaOtroNombre=S
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_DatoRentaSVentaD
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CarpetaVisible=S

Detalle=S
VistaMaestra=vic_DatoRentaSVenta
LlaveLocal=vic_DatoRentaSVentaD.ID
LlaveMaestra=vic_DatoRentaSVenta.ID
ControlRenglon=S
CampoRenglon=vic_DatoRentaSVentaD.Renglon
OtroOrden=S
ListaOrden=vic_DatoRentaSVentaD.Renglon<TAB>(Acendente)
[Detalle.vic_DatoRentaSVentaD.Concepto]
Carpeta=Detalle
Clave=vic_DatoRentaSVentaD.Concepto
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro

[Detalle.vic_DatoRentaSVentaD.ImporteVenta]
Carpeta=Detalle
Clave=vic_DatoRentaSVentaD.ImporteVenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro


[Detalle.Columnas]
Concepto=151
ImporteVenta=104


Porcentaje=31
[Acciones.Afectar]
Nombre=Afectar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Procesar datos
GuardarAntes=S
EnBarraHerramientas=S
Activo=S
Visible=S




Multiple=S
ListaAccionesMultiples=(Lista)
EspacioPrevio=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
Activo=S
Visible=S



EspacioPrevio=S



























Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Afectar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>vic_spActualizaRentaSVenta :nID, :nIDContrato<T>, vic_DatoRentaSVenta:vic_DatoRentaSVenta.ID, vic_DatoRentaSVenta:vic_DatoRentaSVenta.IDContrato)
[Acciones.Afectar.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S


[Encabezado.vic_DatoRentaSVenta.ImporteOperacion]
Carpeta=Encabezado
Clave=vic_DatoRentaSVenta.ImporteOperacion
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=$FFFFFFFF

Tamano=25
Efectos=[Negritas]
[Encabezado.vic_DatoRentaSVenta.RentaBase]
Carpeta=Encabezado
Clave=vic_DatoRentaSVenta.RentaBase
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=25
Efectos=[Negritas]
[Encabezado.vic_DatoRentaSVenta.ImporteDiferencia]
Carpeta=Encabezado
Clave=vic_DatoRentaSVenta.ImporteDiferencia
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=25
Efectos=[Negritas]



[Acciones.Facturar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Confirmacion(<T>¿ Seguro desea Facturar este Cargo ?<T>, BotonAceptar,BotonCancelar) = BotonAceptar<BR>Entonces<BR>ProcesarSQL(<T>vic_spFacturarRentaSVenta :nID, :nIDContrato, :tTipo, :nImporte, :fFecha, :tUsuario, :tConcepto, :tArticulo, :nEstacion<T>,<BR>vic_DatoRentaSVenta:vic_DatoRentaSVenta.ID, vic_DatoRentaSVenta:vic_DatoRentaSVenta.IDContrato,<BR><T>Renta<T>, vic_DatoRentaSVenta:vic_DatoRentaSVenta.ImporteDiferencia, Hoy, Usuario, vic_DatoRentaSVenta:vic_DatoRentaSVenta.Concepto,<BR>vic_DatoRentaSVenta:vic_DatoRentaSVenta.Articulo, EstacionTrabajo)<BR>Sino<BR><T><T><BR>Fin
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
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

Visible=S
GuardarAntes=S


ActivoCondicion=(vic_DatoRentaSVenta:vic_DatoRentaSVenta.ImporteDiferencia>0)<BR>y (ConDatos(vic_DatoRentaSVenta:vic_DatoRentaSVenta.Articulo))
[Detalle.vic_DatoRentaSVentaD.Porcentaje]
Carpeta=Detalle
Clave=vic_DatoRentaSVentaD.Porcentaje
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata
ColorFuente=Negro
















[Encabezado.vic_DatoRentaSVenta.Concepto]
Carpeta=Encabezado
Clave=vic_DatoRentaSVenta.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=65
ColorFondo=Blanco
ColorFuente=Negro

[Encabezado.vic_DatoRentaSVenta.Articulo]
Carpeta=Encabezado
Clave=vic_DatoRentaSVenta.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro







[Lista.Columnas]
Articulo=131
Descripcion1=244





[Encabezado.vic_DatoRentaSVenta.FechaCaptura]
Carpeta=Encabezado
Clave=vic_DatoRentaSVenta.FechaCaptura
3D=S
Tamano=25
ColorFondo=Plata
ColorFuente=Negro
























[Acciones.GuardarDatos]
Nombre=GuardarDatos
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
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

[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)











[Acciones.Afectar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)







[Detalle.ListaEnCaptura]
(Inicio)=vic_DatoRentaSVentaD.Concepto
vic_DatoRentaSVentaD.Concepto=vic_DatoRentaSVentaD.Porcentaje
vic_DatoRentaSVentaD.Porcentaje=vic_DatoRentaSVentaD.ImporteVenta
vic_DatoRentaSVentaD.ImporteVenta=(Fin)

















[Acciones.Facturar.ListaAccionesMultiples]
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
ColorFuente=Negro

[Encabezado.vic_DatoRentaSVenta.ConceptoVenta]
Carpeta=Encabezado
Clave=vic_DatoRentaSVenta.ConceptoVenta
Editar=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco
ColorFuente=Negro






[Encabezado.ListaEnCaptura]
(Inicio)=vic_DatoRentaSVenta.Tipo
vic_DatoRentaSVenta.Tipo=vic_DatoRentaSVenta.FechaCaptura
vic_DatoRentaSVenta.FechaCaptura=vic_DatoRentaSVenta.Concepto
vic_DatoRentaSVenta.Concepto=vic_DatoRentaSVenta.Articulo
vic_DatoRentaSVenta.Articulo=Art.Descripcion1
Art.Descripcion1=vic_DatoRentaSVenta.ImporteOperacion
vic_DatoRentaSVenta.ImporteOperacion=vic_DatoRentaSVenta.ConceptoVenta
vic_DatoRentaSVenta.ConceptoVenta=vic_DatoRentaSVenta.RentaBase
vic_DatoRentaSVenta.RentaBase=vic_DatoRentaSVenta.ImporteDiferencia
vic_DatoRentaSVenta.ImporteDiferencia=(Fin)







[Forma.ListaCarpetas]
(Inicio)=Encabezado
Encabezado=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=GuardarDatos
GuardarDatos=Afectar
Afectar=Facturar
Facturar=Cancelar
Cancelar=(Fin)
