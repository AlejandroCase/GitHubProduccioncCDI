[Forma]
Clave=FormaPago
Nombre=Formas de Pago
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
ExpresionesAlMostrar=
ExpresionesAlCerrar=
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
CarpetaPrincipal=Detalles
ListaAcciones=(Lista)
PosicionInicialIzquierda=674
PosicionInicialArriba=367
PosicionInicialAltura=318
PosicionInicialAncho=572
PosicionColumna1=40
PosicionInicialAlturaCliente=429
PosicionCol1=227

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Visible=S
Activo=S
ConCondicion=S
EjecucionCondicion=Asigna(Temp.Texto, ListaBuscarDuplicados(CampoEnLista(FormaPago:FormaPago.FormaPago)))<BR>Vacio(Temp.Texto)
EjecucionMensaje=Comillas(Temp.Texto)+<T> Duplicado<T>
EjecucionConError=S

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaPago
Fuente={MS Sans Serif, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=FormaPago.FormaPago
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Lista
OtroOrden=S
ListaOrden=(Lista)

[Lista.FormaPago.FormaPago]
Carpeta=Lista
Clave=FormaPago.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
FormaPago=194
Comision=90

[Detalles]
Estilo=Ficha
PestanaOtroNombre=S
PestanaNombre=Forma
Clave=Detalles
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=FormaPago
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
PermiteEditar=S

[Detalles.FormaPago.FormaPago]
Carpeta=Detalles
Clave=FormaPago.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalles.FormaPago.MovIngresos]
Carpeta=Detalles
Clave=FormaPago.MovIngresos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalles.FormaPago.MovEgresos]
Carpeta=Detalles
Clave=FormaPago.MovEgresos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreEnBoton=S
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=E&liminar
EnBarraHerramientas=S
ConfirmarAntes=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S

[Detalles.FormaPago.Moneda]
Carpeta=Detalles
Clave=FormaPago.Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Detalles.FormaPago.RequiereReferencia]
Carpeta=Detalles
Clave=FormaPago.RequiereReferencia
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Orden]
Nombre=Orden
Boton=50
NombreDesplegar=Cambiar &Orden
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Antes=S
AntesExpresiones=Forma(<T>FormaPagoOrdenar<T>)
DespuesGuardar=S
Visible=S

[Detalles.FormaPago.Comision]
Carpeta=Detalles
Clave=FormaPago.Comision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Detalles.FormaPago.Impuestos]
Carpeta=Detalles
Clave=FormaPago.Impuestos
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Denominaciones]
Nombre=Denominaciones
Boton=47
NombreEnBoton=S
NombreDesplegar=&Denominaciones
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=FormaPagoD
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
EjecucionCondicion=ConDatos(FormaPago:FormaPago.FormaPago)
AntesExpresiones=Asigna(Info.FormaPago, FormaPago:FormaPago.FormaPago)

[Detalles.FormaPago.Restringida]
Carpeta=Detalles
Clave=FormaPago.Restringida
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Detalles.FormaPago.PermiteCambio]
Carpeta=Detalles
Clave=FormaPago.PermiteCambio
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Detalles.FormaPago.PV]
Carpeta=Detalles
Clave=FormaPago.PV
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Acciones.FormaPagoDesc]
Nombre=FormaPagoDesc
Boton=61
NombreEnBoton=S
NombreDesplegar=&Descuentos (PV)
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=FormaPagoDesc
Activo=S
Visible=S
ConCondicion=S
GuardarAntes=S
EjecucionCondicion=ConDatos(FormaPago:FormaPago.FormaPago)
Antes=S
AntesExpresiones=Asigna(Info.FormaPago, FormaPago:FormaPago.FormaPago)
DespuesGuardar=S

[Detalles.FormaPago.TarjetaBandaMagnetica]
Carpeta=Detalles
Clave=FormaPago.TarjetaBandaMagnetica
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalles.FormaPago.Cuenta]
Carpeta=Detalles
Clave=FormaPago.Cuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalles.Cta.Descripcion]
Carpeta=Detalles
Clave=Cta.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Detalles.FormaPago.Grupo]
Carpeta=Detalles
Clave=FormaPago.Grupo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Grupos]
Nombre=Grupos
Boton=91
NombreEnBoton=S
NombreDesplegar=&Grupos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=FormaPagoGrupo
Activo=S
Visible=S

[Detalles.FormaPago.DefCtaDinero]
Carpeta=Detalles
Clave=FormaPago.DefCtaDinero
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalles.FormaPago.Comision2]
Carpeta=Detalles
Clave=FormaPago.Comision2
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Detalles.FormaPago.Importacion]
Carpeta=Detalles
Clave=FormaPago.Importacion
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalles
Detalles=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Nuevo
Nuevo=Eliminar
Eliminar=Denominaciones
Denominaciones=FormaPagoDesc
FormaPagoDesc=Grupos
Grupos=Orden
Orden=(Fin)

[Lista.ListaOrden]
(Inicio)=FormaPago.Orden<TAB>(Acendente)
FormaPago.Orden<TAB>(Acendente)=FormaPago.FormaPago<TAB>(Acendente)
FormaPago.FormaPago<TAB>(Acendente)=(Fin)

[Detalles.ListaEnCaptura]
(Inicio)=FormaPago.FormaPago
FormaPago.FormaPago=FormaPago.Grupo
FormaPago.Grupo=FormaPago.MovIngresos
FormaPago.MovIngresos=FormaPago.MovEgresos
FormaPago.MovEgresos=FormaPago.Cuenta
FormaPago.Cuenta=Cta.Descripcion
Cta.Descripcion=FormaPago.Moneda
FormaPago.Moneda=FormaPago.DefCtaDinero
FormaPago.DefCtaDinero=FormaPago.RequiereReferencia
FormaPago.RequiereReferencia=FormaPago.PermiteCambio
FormaPago.PermiteCambio=FormaPago.Restringida
FormaPago.Restringida=FormaPago.Importacion
FormaPago.Importacion=FormaPago.Comision
FormaPago.Comision=FormaPago.Comision2
FormaPago.Comision2=FormaPago.Impuestos
FormaPago.Impuestos=FormaPago.PV
FormaPago.PV=FormaPago.TarjetaBandaMagnetica
FormaPago.TarjetaBandaMagnetica=(Fin)
