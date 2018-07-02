[Forma]
Clave=ConceptoGAS
Nombre=<T>Conceptos - <T>+Info.Descripcion
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=348
PosicionInicialArriba=131
PosicionInicialAltura=400
PosicionInicialAncho=743
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
PosicionInicialAlturaCliente=603
PosicionColumna1=43
MovModulo=GAS
ExpresionesAlMostrar=Asigna(Info.Modulo, <T>GAS<T>)<BR>Asigna(Info.Descripcion, <T>Gastos<T>)

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Concepto
Fuente={MS Sans Serif, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Concepto.Concepto
FiltroPredefinido=S
FiltroAncho=40
FiltroTipo=Múltiple (por Grupos)
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
CarpetaVisible=S
OtroOrden=S
ListaOrden=Concepto.Orden<TAB>(Acendente)
PermiteLocalizar=S
HojaMantenerSeleccion=S
FiltroGrupo1=Concepto.Clase
FiltroValida1=Concepto.Clase
FiltroGrupo2=Concepto.SubClase
FiltroValida2=Concepto.SubClase
FiltroTodo=S
FiltroNull=S
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=40
BusquedaEnLinea=S
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Lista
FiltroGeneral=Concepto.Modulo=<T>{Info.Modulo}<T>

[Lista.Concepto.Concepto]
Carpeta=Lista
Clave=Concepto.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Concepto=400
Bloqueo=90
Orden=36
EsDeducible=51
ConSueldo=88
Cuenta=102
Impuestos=35
Retencion=86
Retencion2=86
Clase=88
SubClase=79
ValidarPresupuesto=75
Tipo=47
Actividad=71
PorcentajeDeducible=64
CentroCostos=127
Descripcion=235
CentroCostos2=127
CentroCostos3=127

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Ordenar]
Nombre=Ordenar
Boton=50
NombreDesplegar=Cambiar &Orden
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S
Antes=S
AntesExpresiones=Forma(<T>ConceptoOrdenar<T>)

[Acciones.Prorrateo]
Nombre=Prorrateo
Boton=61
NombreEnBoton=S
NombreDesplegar=P&rorrateo
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ConceptoProrrateo
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
EjecucionCondicion=ConDatos(Concepto:Concepto.Concepto)
AntesExpresiones=Asigna(Info.Concepto, Concepto:Concepto.Concepto)
VisibleCondicion=Info.Modulo=<T>GAS<T>

[Detalle]
Estilo=Ficha
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Concepto
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
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Detalle

[Detalle.Concepto.Concepto]
Carpeta=Detalle
Clave=Concepto.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=51
ColorFondo=Blanco
ColorFuente=Negro
Efectos=[Negritas]

[Detalle.Concepto.Cuenta]
Carpeta=Detalle
Clave=Concepto.Cuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.Impuestos]
Carpeta=Detalle
Clave=Concepto.Impuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Detalle.Concepto.Retencion]
Carpeta=Detalle
Clave=Concepto.Retencion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Detalle.Concepto.Retencion2]
Carpeta=Detalle
Clave=Concepto.Retencion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Detalle.Concepto.Clase]
Carpeta=Detalle
Clave=Concepto.Clase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=51
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Detalle.Concepto.SubClase]
Carpeta=Detalle
Clave=Concepto.SubClase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=51
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.ValidarPresupuesto]
Carpeta=Detalle
Clave=Concepto.ValidarPresupuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.Tipo]
Carpeta=Detalle
Clave=Concepto.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.Actividad]
Carpeta=Detalle
Clave=Concepto.Actividad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S

[Detalle.Concepto.PorcentajeDeducible]
Carpeta=Detalle
Clave=Concepto.PorcentajeDeducible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20
EspacioPrevio=N

[Detalle.Cta.Descripcion]
Carpeta=Detalle
Clave=Cta.Descripcion
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreEnBoton=S
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S
EspacioPrevio=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=E&liminar
EnBarraHerramientas=S
ConfirmarAntes=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S

[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 2 (Registros)
Activo=S
Visible=S

[Detalle.Concepto.Indirecto]
Carpeta=Detalle
Clave=Concepto.Indirecto
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.NivelAcceso]
Carpeta=Detalle
Clave=Concepto.NivelAcceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.ConceptoAcceso]
Nombre=ConceptoAcceso
Boton=80
NombreEnBoton=S
NombreDesplegar=Acceso &Especifico
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ConceptoAcceso
Visible=S
GuardarAntes=S
Antes=S
DespuesGuardar=S
ActivoCondicion=Concepto:Concepto.NivelAcceso=<T>(Especifico)<T>
AntesExpresiones=Asigna(Info.Concepto, Concepto:Concepto.Concepto)

[Acciones.Cubo]
Nombre=Cubo
Boton=100
NombreDesplegar=<T>Cubo<T>
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S
Expresion=Cubo(<T>GAS<T>, <T>Concepto<T>, Concepto:Concepto.Concepto, Nulo)

[Acciones.Acreedores]
Nombre=Acreedores
Boton=47
NombreEnBoton=S
NombreDesplegar=&Acreedores
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ConceptoAcreedor
Activo=S
Visible=S
EspacioPrevio=S
Antes=S
AntesExpresiones=Asigna(Info.Concepto, Concepto:Concepto.Concepto)

[Detalle.Concepto.EstimuloFiscal]
Carpeta=Detalle
Clave=Concepto.EstimuloFiscal
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
Pegado=N

[Detalle.Concepto.CR]
Carpeta=Detalle
Clave=Concepto.CR
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.UEN]
Carpeta=Detalle
Clave=Concepto.UEN
Editar=S
ValidaNombre=S
3D=S
Tamano=11
ColorFondo=Blanco
ColorFuente=Negro
Pegado=N

[Detalle.Concepto.Retencion3]
Carpeta=Detalle
Clave=Concepto.Retencion3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.LimiteDeducible]
Carpeta=Detalle
Clave=Concepto.LimiteDeducible
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Politica]
Nombre=Politica
Boton=22
NombreEnBoton=S
NombreDesplegar=&Política
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=ConceptoPolitica
Activo=S
Antes=S
Visible=S
AntesExpresiones=Asigna(Info.Concepto, Concepto:Concepto.Concepto)

[Detalle.Concepto.ConceptoCxp]
Carpeta=Detalle
Clave=Concepto.ConceptoCxp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=51
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.Provisionable]
Carpeta=Detalle
Clave=Concepto.Provisionable
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=12

[Detalle.Concepto.ProvisionImporte]
Carpeta=Detalle
Clave=Concepto.ProvisionImporte
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=N

[Detalle.Concepto.CuentaPresupuesto]
Carpeta=Detalle
Clave=Concepto.CuentaPresupuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.CtaPresupuesto.Descripcion]
Carpeta=Detalle
Clave=CtaPresupuesto.Descripcion
Editar=S
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro

[Detalle.Concepto.CalcularPresupuesto]
Carpeta=Detalle
Clave=Concepto.CalcularPresupuesto
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=17

[Detalle.Concepto.InflacionPresupuesto]
Carpeta=Detalle
Clave=Concepto.InflacionPresupuesto
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S
Tamano=9

[Detalle.Concepto.DepartamentoDetallista]
Carpeta=Detalle
Clave=Concepto.DepartamentoDetallista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.DepartamentoDetallista.Nombre]
Carpeta=Detalle
Clave=DepartamentoDetallista.Nombre
Editar=S
3D=S
Tamano=30
ColorFondo=Plata
ColorFuente=Negro

[Detalle.DepartamentoDetallista.Merma]
Carpeta=Detalle
Clave=DepartamentoDetallista.Merma
Editar=S
3D=S
Tamano=10
ColorFondo=Plata
ColorFuente=Negro
Pegado=S
ValidaNombre=S

[Detalle.Concepto.Impuesto1Excento]
Carpeta=Detalle
Clave=Concepto.Impuesto1Excento
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.Proyecto]
Carpeta=Detalle
Clave=Concepto.Proyecto
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S

[Detalle.Concepto.TipoOperacion]
Carpeta=Detalle
Clave=Concepto.TipoOperacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.Numero]
Carpeta=Detalle
Clave=Concepto.Numero
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.Descripcion]
Carpeta=Detalle
Clave=Concepto.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=51
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.CostoEstandar]
Carpeta=Detalle
Clave=Concepto.CostoEstandar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.UltimoCosto]
Carpeta=Detalle
Clave=Concepto.UltimoCosto
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

[Detalle.Concepto.MonedaCosto]
Carpeta=Detalle
Clave=Concepto.MonedaCosto
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Plata
ColorFuente=Negro

[Detalle.Concepto.Excento2]
Carpeta=Detalle
Clave=Concepto.Excento2
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.Excento3]
Carpeta=Detalle
Clave=Concepto.Excento3
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.EsInventariable]
Carpeta=Detalle
Clave=Concepto.EsInventariable
Editar=S
3D=S
Tamano=13
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.Concepto.Articulo]
Carpeta=Detalle
Clave=Concepto.Articulo
Editar=S
3D=S
Pegado=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[CentrosCostos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Centros Costos
Clave=CentrosCostos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Concepto
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

[CentrosCostos.Concepto.ContUso]
Carpeta=CentrosCostos
Clave=Concepto.ContUso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[CentrosCostos.Concepto.ContUso2]
Carpeta=CentrosCostos
Clave=Concepto.ContUso2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[CentrosCostos.Concepto.ContUso3]
Carpeta=CentrosCostos
Clave=Concepto.ContUso3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=CentrosCostos
CentrosCostos=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Nuevo
Nuevo=Eliminar
Eliminar=Cubo
Cubo=Acreedores
Acreedores=Prorrateo
Prorrateo=Politica
Politica=ConceptoAcceso
ConceptoAcceso=Ordenar
Ordenar=Navegador
Navegador=(Fin)

[Detalle.ListaEnCaptura]
(Inicio)=Concepto.Concepto
Concepto.Concepto=Concepto.Numero
Concepto.Numero=Concepto.Descripcion
Concepto.Descripcion=Concepto.Cuenta
Concepto.Cuenta=Cta.Descripcion
Cta.Descripcion=Concepto.CuentaPresupuesto
Concepto.CuentaPresupuesto=CtaPresupuesto.Descripcion
CtaPresupuesto.Descripcion=Concepto.Tipo
Concepto.Tipo=Concepto.TipoOperacion
Concepto.TipoOperacion=Concepto.UEN
Concepto.UEN=Concepto.CostoEstandar
Concepto.CostoEstandar=Concepto.UltimoCosto
Concepto.UltimoCosto=Concepto.MonedaCosto
Concepto.MonedaCosto=Concepto.PorcentajeDeducible
Concepto.PorcentajeDeducible=Concepto.LimiteDeducible
Concepto.LimiteDeducible=Concepto.Impuestos
Concepto.Impuestos=Concepto.Impuesto1Excento
Concepto.Impuesto1Excento=Concepto.Excento2
Concepto.Excento2=Concepto.Excento3
Concepto.Excento3=Concepto.Retencion
Concepto.Retencion=Concepto.EstimuloFiscal
Concepto.EstimuloFiscal=Concepto.Retencion2
Concepto.Retencion2=Concepto.Retencion3
Concepto.Retencion3=Concepto.DepartamentoDetallista
Concepto.DepartamentoDetallista=DepartamentoDetallista.Nombre
DepartamentoDetallista.Nombre=DepartamentoDetallista.Merma
DepartamentoDetallista.Merma=Concepto.Clase
Concepto.Clase=Concepto.SubClase
Concepto.SubClase=Concepto.ConceptoCxp
Concepto.ConceptoCxp=Concepto.Proyecto
Concepto.Proyecto=Concepto.Actividad
Concepto.Actividad=Concepto.ValidarPresupuesto
Concepto.ValidarPresupuesto=Concepto.CalcularPresupuesto
Concepto.CalcularPresupuesto=Concepto.InflacionPresupuesto
Concepto.InflacionPresupuesto=Concepto.NivelAcceso
Concepto.NivelAcceso=Concepto.Indirecto
Concepto.Indirecto=Concepto.CR
Concepto.CR=Concepto.Provisionable
Concepto.Provisionable=Concepto.ProvisionImporte
Concepto.ProvisionImporte=Concepto.EsInventariable
Concepto.EsInventariable=Concepto.Articulo
Concepto.Articulo=(Fin)

[CentrosCostos.ListaEnCaptura]
(Inicio)=Concepto.ContUso
Concepto.ContUso=Concepto.ContUso2
Concepto.ContUso2=Concepto.ContUso3
Concepto.ContUso3=(Fin)
