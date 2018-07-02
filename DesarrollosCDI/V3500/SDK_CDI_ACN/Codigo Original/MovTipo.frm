[Forma]
Clave=MovTipo
Nombre=<T>Tipos de Movimientos - <T>+Info.Descripcion
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
PosicionInicialIzquierda=250
PosicionInicialArriba=41
PosicionInicialAltura=336
PosicionInicialAncho=939
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionColumna1=35
PosicionInicialAlturaCliente=790
PosicionCol1=272

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=MovTipo
Fuente={MS Sans Serif, 8, Negro, []}
HojaTitulos=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=MovTipo.Mov
CarpetaVisible=S
OtroOrden=S
ListaOrden=(Lista)
PestanaNombre=Lista
Filtros=S
FiltroPredefinido=S
FiltroAutoCampo=MovTipo.Modulo
FiltroAncho=30
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=(Todos)
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=General
HojaMantenerSeleccion=S
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
BusquedaAncho=20
BusquedaEnLinea=S

FiltroGeneral=MovTipo.Modulo=<T>{Info.Modulo}<T>
[Lista.MovTipo.Mov]
Carpeta=Lista
Clave=MovTipo.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
Mov=241
Modulo=107
Orden=42
Clave=80
Grupo=304
ConsecutivoModulo=103
ConsecutivoMov=125
ConsecutivoPorPeriodo=132
ConsecutivoPorEjercicio=129
ConsecutivoPorEmpresa=125
ModuloNombre=132
0=37
1=67

2=-2
3=-2
4=-2
[Detalle]
Estilo=Ficha
PestanaNombre=Datos Generales
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=MovTipo
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
Pestana=S
PestanaOtroNombre=S

[Detalle.MovTipo.Mov]
Carpeta=Detalle
Clave=MovTipo.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.MovTipo.Clave]
Carpeta=Detalle
Clave=MovTipo.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=N
ColorFondo=Blanco
Efectos=[Negritas]

[Consecutivo.MovTipo.ConsecutivoModulo]
Carpeta=Consecutivo
Clave=MovTipo.ConsecutivoModulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=S

[Consecutivo.MovTipo.ConsecutivoMov]
Carpeta=Consecutivo
Clave=MovTipo.ConsecutivoMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20

[Consecutivo.MovTipo.ConsecutivoPorPeriodo]
Carpeta=Consecutivo
Clave=MovTipo.ConsecutivoPorPeriodo
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20

[Consecutivo.MovTipo.ConsecutivoPorEjercicio]
Carpeta=Consecutivo
Clave=MovTipo.ConsecutivoPorEjercicio
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20

[Consecutivo.MovTipo.ConsecutivoPorEmpresa]
Carpeta=Consecutivo
Clave=MovTipo.ConsecutivoPorEmpresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=S

[Consecutivo.MovTipo.Mov]
Carpeta=Consecutivo
Clave=MovTipo.Mov
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Acciones.Cerrar]
Nombre=Cerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

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
NombreEnBoton=S
NombreDesplegar=E&liminar
EnBarraHerramientas=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S
ConfirmarAntes=S

[Detalle.MovTipo.ConsecutivoModulo]
Carpeta=Detalle
Clave=MovTipo.ConsecutivoModulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco

[Detalle.MovTipo.ConsecutivoMov]
Carpeta=Detalle
Clave=MovTipo.ConsecutivoMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.MovTipo.ConsecutivoPorPeriodo]
Carpeta=Detalle
Clave=MovTipo.ConsecutivoPorPeriodo
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.MovTipo.ConsecutivoPorEjercicio]
Carpeta=Detalle
Clave=MovTipo.ConsecutivoPorEjercicio
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.MovTipo.ConsecutivoPorEmpresa]
Carpeta=Detalle
Clave=MovTipo.ConsecutivoPorEmpresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=N
ColorFondo=Blanco

[Acciones.Ordenar]
Nombre=Ordenar
Boton=50
NombreDesplegar=Cambiar &Orden
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Antes=S
Visible=S
GuardarAntes=S
DespuesGuardar=S
AntesExpresiones=Forma(<T>MovTipoOrdenar<T>)

[Detalle.MovTipo.Almacen]
Carpeta=Detalle
Clave=MovTipo.Almacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[Acciones.Flujo]
Nombre=Flujo
Boton=47
NombreEnBoton=S
NombreDesplegar=&Flujo
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CfgMovFlujo
Antes=S
Visible=S
GuardarAntes=S
DespuesGuardar=S
ActivoCondicion=(ConfigModulo(Info.Modulo, <T>FlujoAbierto<T>)=<T>Si<T>) o (MovTipo:MovTipo.Clave en (ST.P, ST.I, ST.A)) o (Info.Modulo=<T>GES<T>)
AntesExpresiones=Asigna(Info.Mov, MovTipo:MovTipo.Mov)

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

[Detalle.MovTipo.DiasVencimiento]
Carpeta=Detalle
Clave=MovTipo.DiasVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
Pegado=S

[Detalle.MovTipo.NomProcesarIncidencias]
Carpeta=Detalle
Clave=MovTipo.NomProcesarIncidencias
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.MovTipo.NomGenerarBaja]
Carpeta=Detalle
Clave=MovTipo.NomGenerarBaja
Editar=S
LineaNueva=N
3D=S
Tamano=15
ColorFondo=Blanco

[Acciones.Excepciones]
Nombre=Excepciones
Boton=30
NombreDesplegar=E&xcepciones
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovTipoIncidencias
Antes=S
EspacioPrevio=S
ActivoCondicion=no MovTipo:MovTipo.NomProcesarIncidencias
AntesExpresiones=Asigna(Info.Mov, MovTipo:MovTipo.Mov)
VisibleCondicion=MovTipo:MovTipo.Clave en (NOM.N, NOM.NA, NOM.NE, NOM.NC)

[Detalle.MovTipo.GenerarParalelo]
Carpeta=Detalle
Clave=MovTipo.GenerarParalelo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco

[Detalle.MovTipo.PV]
Carpeta=Detalle
Clave=MovTipo.PV
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Forma]
Nombre=Forma
Boton=57
NombreEnBoton=S
NombreDesplegar=&Otros Datos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovTipoForma
Visible=S
Antes=S
ActivoCondicion=Info.Modulo=<T>ST<T>
AntesExpresiones=Asigna(Info.Mov, MovTipo:MovTipo.Mov)

[Detalle.MovTipo.ConsecutivoSucursalEsp]
Carpeta=Detalle
Clave=MovTipo.ConsecutivoSucursalEsp
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Detalle.MovTipo.SucursalEsp]
Carpeta=Detalle
Clave=MovTipo.SucursalEsp
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

[Detalle.Sucursal.Prefijo]
Carpeta=Detalle
Clave=Sucursal.Prefijo
Editar=S
3D=S
Tamano=5
ColorFondo=Plata
Pegado=S

[Gasto]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Gasto
Clave=Gasto
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=MovTipo
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
CondicionVisible=MovTipo:MovTipo.GenerarGasto

[Gasto.MovTipo.GastoMov]
Carpeta=Gasto
Clave=MovTipo.GastoMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=31
ColorFondo=Blanco
ColorFuente=Negro

[Gasto.MovTipo.GastoClase]
Carpeta=Gasto
Clave=MovTipo.GastoClase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=31
ColorFondo=Blanco
ColorFuente=Negro

[Gasto.MovTipo.GastoSubClase]
Carpeta=Gasto
Clave=MovTipo.GastoSubClase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=31
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.MovTipo.GenerarGasto]
Carpeta=Detalle
Clave=MovTipo.GenerarGasto
Editar=S
LineaNueva=N
3D=S
Tamano=20
ColorFondo=Blanco

[Gasto.MovTipo.GastoAcreedor]
Carpeta=Gasto
Clave=MovTipo.GastoAcreedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Gasto.Acreedor.Nombre]
Carpeta=Gasto
Clave=Acreedor.Nombre
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Pegado=N

[Detalle.MovTipo.eMailAuto]
Carpeta=Detalle
Clave=MovTipo.eMailAuto
Editar=S
3D=S
Tamano=22
ColorFondo=Blanco
LineaNueva=S

[Acciones.MovTipoTarea]
Nombre=MovTipoTarea
Boton=70
NombreDesplegar=Tareas por Omisión
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovTipoTarea
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(MovTipo:MovTipo.Mov)
AntesExpresiones=Asigna(Info.Mov, MovTipo:MovTipo.Mov)

[Detalle.MovTipo.NomDividirCantidades]
Carpeta=Detalle
Clave=MovTipo.NomDividirCantidades
Editar=S
3D=S
Tamano=17
ColorFondo=Blanco
LineaNueva=S

[Detalle.MovTipo.Factor]
Carpeta=Detalle
Clave=MovTipo.Factor
Editar=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
Pegado=S
LineaNueva=N
Efectos=[Negritas]

[Acciones.Politica]
Nombre=Politica
Boton=22
NombreDesplegar=&Política
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=Politica
Activo=S
Antes=S
Visible=S
NombreEnBoton=S
AntesExpresiones=Asigna(Info.Rama, MovTipo:MovTipo.Modulo)<BR>Asigna(Info.Clave, MovTipo:MovTipo.Mov)

[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=111
NombreDesplegar=&Plantillas Office
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovTipoPlantillaOffice
Activo=S
Visible=S
EspacioPrevio=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(MovTipo:MovTipo.Mov)
AntesExpresiones=Asigna(Info.Mov, MovTipo:MovTipo.Mov)<BR>Asigna(Info.Forma, Nulo)

[Detalle.MovTipo.ConsecutivoControl]
Carpeta=Detalle
Clave=MovTipo.ConsecutivoControl
Editar=S
3D=S
Tamano=17
ColorFondo=Blanco

[Detalle.MovTipo.TipoPago]
Carpeta=Detalle
Clave=MovTipo.TipoPago
Editar=S
3D=S
Tamano=12
ColorFondo=Blanco
ValidaNombre=S
Pegado=S

[Gasto.MovTipo.GastoFactor]
Carpeta=Gasto
Clave=MovTipo.GastoFactor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.MovTipo.CE]
Carpeta=Detalle
Clave=MovTipo.CE
Editar=S
LineaNueva=S
3D=S
Tamano=13
ColorFondo=Blanco
ValidaNombre=N

[Detalle.MovTipo.CEAntesAfectar]
Carpeta=Detalle
Clave=MovTipo.CEAntesAfectar
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.MovTipo.CEAfectarContacto]
Carpeta=Detalle
Clave=MovTipo.CEAfectarContacto
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[Acciones.CampoExtra]
Nombre=CampoExtra
Boton=104
NombreDesplegar=Campos E&xtras
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovTipoCampoExtra
Visible=S
Antes=S
ConCondicion=S
ActivoCondicion=(General.CamposExtras=<T>Campos Extras<T>) y MovTipo:MovTipo.CE
EjecucionCondicion=ConDatos(MovTipo:MovTipo.Mov)
AntesExpresiones=Asigna(Info.Mov, MovTipo:MovTipo.Mov)

[Detalle.MovTipo.NomAuto]
Carpeta=Detalle
Clave=MovTipo.NomAuto
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[NomAuto]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Nómina Automática
Clave=NomAuto
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=MovTipo
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
CondicionVisible=(MovTipo:MovTipo.Modulo=<T>NOM<T>) y MovTipo:MovTipo.NomAuto

[NomAuto.MovTipo.NomAutoTipo]
Carpeta=NomAuto
Clave=MovTipo.NomAutoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[NomAuto.MovTipo.NomAutoCxc]
Carpeta=NomAuto
Clave=MovTipo.NomAutoCxc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[NomAuto.MovTipo.NomAutoCalcSDI]
Carpeta=NomAuto
Clave=MovTipo.NomAutoCalcSDI
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Acciones.FormasAnexas]
Nombre=FormasAnexas
Boton=113
NombreDesplegar=Formas Anexas
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovTipoFormaAnexo
Activo=S
Visible=S
Antes=S
AntesExpresiones=Asigna(Info.Mov, MovTipo:MovTipo.Mov)

[NomAuto.MovTipo.NomAutoCalendarioEsp]
Carpeta=NomAuto
Clave=MovTipo.NomAutoCalendarioEsp
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.MovTipoNomAutoCalendarioEsp]
Nombre=MovTipoNomAutoCalendarioEsp
Boton=9
NombreDesplegar=Calendario Especial
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovTipoNomAutoCalendarioEsp
Antes=S
ActivoCondicion=MovTipo:MovTipo.NomAutoCalendarioEsp
AntesExpresiones=Asigna(Info.Modulo, MovTipo:MovTipo.Modulo)<BR>Asigna(Info.Mov, MovTipo:MovTipo.Mov)
VisibleCondicion=(MovTipo:MovTipo.Modulo=<T>NOM<T>) y MovTipo:MovTipo.NomAuto

[Detalle.MovTipo.ImpresionInmediata]
Carpeta=Detalle
Clave=MovTipo.ImpresionInmediata
Editar=S
3D=S
Tamano=17
ColorFondo=Blanco

[Detalle.MovTipo.EditarDeptoDetallista]
Carpeta=Detalle
Clave=MovTipo.EditarDeptoDetallista
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=25

[Detalle.MovTipo.Icono]
Carpeta=Detalle
Clave=MovTipo.Icono
Editar=S
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco

[Proyecto]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Proyecto
Clave=Proyecto
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=MovTipo
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
CondicionVisible=Info.Modulo=<T>PROY<T>

[Proyecto.MovTipo.ProyectoContactoTipo]
Carpeta=Proyecto
Clave=MovTipo.ProyectoContactoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.MovTipo.CFD]
Carpeta=Detalle
Clave=MovTipo.CFD
Editar=S
3D=S
Tamano=6
ColorFondo=Blanco

[Acciones.CFDFolio]
Nombre=CFDFolio
Boton=110
NombreEnBoton=S
NombreDesplegar=&Folios
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CFDFolio
Visible=S
Antes=S

ActivoCondicion=MovTipo:MovTipo.CFD
AntesExpresiones=Asigna(Info.ConsecutivoModulo, MovTipo:MovTipo.ConsecutivoModulo)<BR>Asigna(Info.Mov, MovTipo:MovTipo.ConsecutivoMov)
[CFD]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=CFD
Clave=CFD
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=MovTipo
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
CondicionVisible=MovTipo:MovTipo.CFD

[CFD.MovTipo.CFD_tipoDeComprobante]
Carpeta=CFD
Clave=MovTipo.CFD_tipoDeComprobante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[CFD.MovTipo.CFD_Reporte]
Carpeta=CFD
Clave=MovTipo.CFD_Reporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=48
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Instrucciones]
Nombre=Instrucciones
Boton=90
NombreDesplegar=&Instrucciones Especiales
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=MovTipoInstrucciones
Activo=S
Visible=S
EspacioPrevio=S
ConCondicion=S
EjecucionCondicion=ConDatos(MovTipo:MovTipo.Mov)
Antes=S
AntesExpresiones=Asigna(Info.Mov, MovTipo:MovTipo.Mov)

[Proyecto.MovTipo.PlantillaProyecto]
Carpeta=Proyecto
Clave=MovTipo.PlantillaProyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Proyecto.MovTipo.PlantillaProyectoFija]
Carpeta=Proyecto
Clave=MovTipo.PlantillaProyectoFija
Editar=S
LineaNueva=N
3D=S
EspacioPrevio=N
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Gasto.MovTipo.GastoConcepto]
Carpeta=Gasto
Clave=MovTipo.GastoConcepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=31
ColorFondo=Blanco
ColorFuente=Negro

[Campana.MovTipo.ParaProspectos]
Carpeta=Campana
Clave=MovTipo.ParaProspectos
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Campana.MovTipo.ParaClientes]
Carpeta=Campana
Clave=MovTipo.ParaClientes
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Campana.MovTipo.ParaProveedores]
Carpeta=Campana
Clave=MovTipo.ParaProveedores
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Campana.MovTipo.ParaPersonal]
Carpeta=Campana
Clave=MovTipo.ParaPersonal
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Campana.MovTipo.ParaAgentes]
Carpeta=Campana
Clave=MovTipo.ParaAgentes
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Campana.MovTipo.OportunidadMov]
Carpeta=Campana
Clave=MovTipo.OportunidadMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[FormaTipo.MovTipo.FormaTipo]
Carpeta=FormaTipo
Clave=MovTipo.FormaTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[FormaTipo]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Tipo Forma
Clave=FormaTipo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=MovTipo
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
CondicionVisible=Info.Modulo=<T>FRM<T>

[FormaTipo.FormaTipoFormas.NombreCorto]
Carpeta=FormaTipo
Clave=FormaTipoFormas.NombreCorto
Editar=S
3D=S
Tamano=35
ColorFondo=Plata
ColorFuente=Negro

[FormaTipo.MovTipo.FormaFija]
Carpeta=FormaTipo
Clave=MovTipo.FormaFija
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Detalle.MovTipo.AplicarOfertas]
Carpeta=Detalle
Clave=MovTipo.AplicarOfertas
Editar=S
3D=S
Tamano=13
ColorFondo=Blanco

[Detalle.MovTipo.FormaAnexaOmision]
Carpeta=Detalle
Clave=MovTipo.FormaAnexaOmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Proyecto.MovTipo.ProyectoSugerir]
Carpeta=Proyecto
Clave=MovTipo.ProyectoSugerir
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Inv]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Inventarios
Clave=Inv
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=MovTipo
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
ListaEnCaptura=MovTipo.TraspasoExpress
CondicionVisible=Info.Modulo=<T>INV<T>

[Inv.MovTipo.TraspasoExpress]
Carpeta=Inv
Clave=MovTipo.TraspasoExpress
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.MovTipo.ModuloCentral]
Carpeta=Detalle
Clave=MovTipo.ModuloCentral
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

EspacioPrevio=S
[Detalle.MovTipo.AfectarFiscal]
Carpeta=Detalle
Clave=MovTipo.AfectarFiscal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Detalle.MovTipo.SubClave]
Carpeta=Detalle
Clave=MovTipo.SubClave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.MovTipo.DefUsuario]
Carpeta=Detalle
Clave=MovTipo.DefUsuario
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Pegado=S

[Detalle.MovTipo.SubFoliosOrigen]
Carpeta=Detalle
Clave=MovTipo.SubFoliosOrigen
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco

[Detalle.MovTipo.RequiereAutorizacion]
Carpeta=Detalle
Clave=MovTipo.RequiereAutorizacion
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

LineaNueva=S
[Detalle.MovTipo.ObligacionFiscal]
Carpeta=Detalle
Clave=MovTipo.ObligacionFiscal
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
Pegado=S

[Detalle.MovTipo.ObligacionFiscalTasa]
Carpeta=Detalle
Clave=MovTipo.ObligacionFiscalTasa
Editar=S
3D=S
Tamano=6
ColorFondo=Blanco
Pegado=N

[Detalle.MovTipo.ObligacionFiscalTipoImporte]
Carpeta=Detalle
Clave=MovTipo.ObligacionFiscalTipoImporte
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco

[Detalle.MovTipo.TipoConsecutivo]
Carpeta=Detalle
Clave=MovTipo.TipoConsecutivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Detalle.MovTipo.ConsecutivoGeneral]
Carpeta=Detalle
Clave=MovTipo.ConsecutivoGeneral
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Pegado=S




[Gasto.ListaEnCaptura]
(Inicio)=MovTipo.GastoMov
MovTipo.GastoMov=MovTipo.GastoClase
MovTipo.GastoClase=MovTipo.GastoSubClase
MovTipo.GastoSubClase=MovTipo.GastoConcepto
MovTipo.GastoConcepto=MovTipo.GastoAcreedor
MovTipo.GastoAcreedor=Acreedor.Nombre
Acreedor.Nombre=MovTipo.GastoFactor
MovTipo.GastoFactor=(Fin)

[NomAuto.ListaEnCaptura]
(Inicio)=MovTipo.NomAutoTipo
MovTipo.NomAutoTipo=MovTipo.NomAutoCxc
MovTipo.NomAutoCxc=MovTipo.NomAutoCalcSDI
MovTipo.NomAutoCalcSDI=MovTipo.NomAutoCalendarioEsp
MovTipo.NomAutoCalendarioEsp=(Fin)

[Proyecto.ListaEnCaptura]
(Inicio)=MovTipo.ProyectoContactoTipo
MovTipo.ProyectoContactoTipo=MovTipo.PlantillaProyecto
MovTipo.PlantillaProyecto=MovTipo.PlantillaProyectoFija
MovTipo.PlantillaProyectoFija=MovTipo.ProyectoSugerir
MovTipo.ProyectoSugerir=(Fin)

[CFD.ListaEnCaptura]
(Inicio)=MovTipo.CFD_tipoDeComprobante
MovTipo.CFD_tipoDeComprobante=MovTipo.CFD_Reporte
MovTipo.CFD_Reporte=(Fin)

[FormaTipo.ListaEnCaptura]
(Inicio)=MovTipo.FormaTipo
MovTipo.FormaTipo=FormaTipoFormas.NombreCorto
FormaTipoFormas.NombreCorto=MovTipo.FormaFija
MovTipo.FormaFija=(Fin)








[Detalle.MovTipo.ArrastrarTipoCambioGenerarMov]
Carpeta=Detalle
Clave=MovTipo.ArrastrarTipoCambioGenerarMov
Editar=S
3D=S
Tamano=40
ColorFondo=Blanco











[Detalle.MovTipo.AfectarCP]
Carpeta=Detalle
Clave=MovTipo.AfectarCP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






EspacioPrevio=S
[Detalle.MovTipo.AplicarCP]
Carpeta=Detalle
Clave=MovTipo.AplicarCP
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



Pegado=S






[Detalle.MovTipo.FactorCP]
Carpeta=Detalle
Clave=MovTipo.FactorCP
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco

ValidaNombre=S



Pegado=S









[Detalle.MovTipo.ReservarCP]
Carpeta=Detalle
Clave=MovTipo.ReservarCP
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=20
ColorFondo=Blanco













LineaNueva=S















[Detalle.ListaEnCaptura]
(Inicio)=MovTipo.Mov
MovTipo.Mov=MovTipo.TipoPago
MovTipo.TipoPago=MovTipo.Clave
MovTipo.Clave=MovTipo.Factor
MovTipo.Factor=MovTipo.Icono
MovTipo.Icono=MovTipo.SubClave
MovTipo.SubClave=MovTipo.ArrastrarTipoCambioGenerarMov
MovTipo.ArrastrarTipoCambioGenerarMov=MovTipo.RequiereAutorizacion
MovTipo.RequiereAutorizacion=MovTipo.AfectarFiscal
MovTipo.AfectarFiscal=MovTipo.ObligacionFiscal
MovTipo.ObligacionFiscal=MovTipo.ObligacionFiscalTasa
MovTipo.ObligacionFiscalTasa=MovTipo.ObligacionFiscalTipoImporte
MovTipo.ObligacionFiscalTipoImporte=MovTipo.AfectarCP
MovTipo.AfectarCP=MovTipo.AplicarCP
MovTipo.AplicarCP=MovTipo.FactorCP
MovTipo.FactorCP=MovTipo.ReservarCP
MovTipo.ReservarCP=MovTipo.ModuloCentral
MovTipo.ModuloCentral=MovTipo.TipoConsecutivo
MovTipo.TipoConsecutivo=MovTipo.ConsecutivoGeneral
MovTipo.ConsecutivoGeneral=MovTipo.ConsecutivoModulo
MovTipo.ConsecutivoModulo=MovTipo.ConsecutivoMov
MovTipo.ConsecutivoMov=MovTipo.ConsecutivoPorEjercicio
MovTipo.ConsecutivoPorEjercicio=MovTipo.ConsecutivoPorEmpresa
MovTipo.ConsecutivoPorEmpresa=MovTipo.ConsecutivoPorPeriodo
MovTipo.ConsecutivoPorPeriodo=MovTipo.ConsecutivoSucursalEsp
MovTipo.ConsecutivoSucursalEsp=MovTipo.ConsecutivoControl
MovTipo.ConsecutivoControl=MovTipo.SubFoliosOrigen
MovTipo.SubFoliosOrigen=MovTipo.CFD
MovTipo.CFD=MovTipo.AplicarOfertas
MovTipo.AplicarOfertas=MovTipo.SucursalEsp
MovTipo.SucursalEsp=Sucursal.Prefijo
Sucursal.Prefijo=MovTipo.Almacen
MovTipo.Almacen=MovTipo.DiasVencimiento
MovTipo.DiasVencimiento=MovTipo.NomAuto
MovTipo.NomAuto=MovTipo.NomProcesarIncidencias
MovTipo.NomProcesarIncidencias=MovTipo.NomGenerarBaja
MovTipo.NomGenerarBaja=MovTipo.NomDividirCantidades
MovTipo.NomDividirCantidades=MovTipo.PV
MovTipo.PV=MovTipo.FormaAnexaOmision
MovTipo.FormaAnexaOmision=MovTipo.DefUsuario
MovTipo.DefUsuario=MovTipo.GenerarParalelo
MovTipo.GenerarParalelo=MovTipo.GenerarGasto
MovTipo.GenerarGasto=MovTipo.eMailAuto
MovTipo.eMailAuto=MovTipo.ImpresionInmediata
MovTipo.ImpresionInmediata=MovTipo.EditarDeptoDetallista
MovTipo.EditarDeptoDetallista=MovTipo.CE
MovTipo.CE=MovTipo.CEAntesAfectar
MovTipo.CEAntesAfectar=MovTipo.CEAfectarContacto
MovTipo.CEAfectarContacto=(Fin)



[Lista.ListaOrden]
(Inicio)=MovTipo.Modulo	(Acendente)
MovTipo.Modulo	(Acendente)=MovTipo.Orden	(Acendente)
MovTipo.Orden	(Acendente)=(Fin)





[Ecuador]
Estilo=Ficha
Pestana=S
Clave=Ecuador
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=MovTipo
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
ListaEnCaptura=MovTipo.EcuadorMostrarAnexo

PestanaOtroNombre=S
PestanaNombre=Ecuador
CondicionVisible=(Empresa.EsEcuador) Y (Info.Modulo EN (<T>VTAS<T>,<T>COMS<T>,<T>GAS<T>))
[Ecuador.MovTipo.EcuadorMostrarAnexo]
Carpeta=Ecuador
Clave=MovTipo.EcuadorMostrarAnexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



























[Acciones.EcuadorAutorizacion]
Nombre=EcuadorAutorizacion
Boton=83
NombreDesplegar=&Ecuador - Autorizaciones
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=EcuadorAutorizacion
Activo=S

















Antes=S


















AntesExpresiones=Asigna(Info.ConsecutivoModulo, MovTipo:MovTipo.ConsecutivoModulo)<BR>Asigna(Info.Mov, MovTipo:MovTipo.ConsecutivoMov)
VisibleCondicion=Empresa.EsEcuador Y (Info.Modulo EN (<T>VTAS<T>,<T>COMS<T>,<T>GAS<T>))




[Guatemala]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Guatemala
Clave=Guatemala
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=MovTipo
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
ListaEnCaptura=MovTipo.GuatemalaLibroVentaExento

CondicionVisible=(Empresa.EsGuatemala) Y (Info.Modulo = <T>VTAS<T>)
[Guatemala.MovTipo.GuatemalaLibroVentaExento]
Carpeta=Guatemala
Clave=MovTipo.GuatemalaLibroVentaExento
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco









[Acciones.ExportacionXML]
Nombre=ExportacionXML
Boton=59
NombreDesplegar=Exportación &XML
EnBarraHerramientas=S
TipoAccion=Formas
Activo=S



ClaveAccion=MovExportacion


Antes=S
AntesExpresiones=Asigna(Info.Modulo,MovTipo:MovTipo.Modulo)<BR>Asigna(Info.Mov,MovTipo:MovTipo.Mov)
VisibleCondicion=General.ExportacionXML


[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=Gasto
Gasto=Inv
Inv=NomAuto
NomAuto=Proyecto
Proyecto=CFD
CFD=FormaTipo
FormaTipo=Ecuador
Ecuador=Guatemala
Guatemala=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Nuevo
Nuevo=Eliminar
Eliminar=Flujo
Flujo=Forma
Forma=MovTipoTarea
MovTipoTarea=PlantillasOffice
PlantillasOffice=FormasAnexas
FormasAnexas=Instrucciones
Instrucciones=Politica
Politica=CampoExtra
CampoExtra=CFDFolio
CFDFolio=Navegador
Navegador=Ordenar
Ordenar=Excepciones
Excepciones=MovTipoNomAutoCalendarioEsp
MovTipoNomAutoCalendarioEsp=EcuadorAutorizacion
EcuadorAutorizacion=ExportacionXML
ExportacionXML=(Fin)
