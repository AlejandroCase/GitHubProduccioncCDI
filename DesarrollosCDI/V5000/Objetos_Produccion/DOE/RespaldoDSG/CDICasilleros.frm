[Forma]
Clave=CDICasilleros
Icono=0
Modulos=(Todos)
Nombre=Gestión de Casilleros
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
ListaCarpetas=(Lista)
CarpetaPrincipal=Disponibles
PosicionInicialIzquierda=347
PosicionInicialArriba=73
PosicionInicialAlturaCliente=583
PosicionInicialAncho=671
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraAyuda=S
BarraAyudaBold=S
VentanaBloquearAjuste=S
ExpresionesAlMostrar=asigna(info.numero,0)

[CDICasilleros]
Estilo=Hoja
Clave=CDICasilleros
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICasilleros
Fuente={Tahoma, 8, Negro, [Negritas + Cursiva]}
CampoColorLetras=$FFFFFFFF
CampoColorFondo=$0080FFFF
ListaEnCaptura=(Lista)
CarpetaVisible=S
ValidarCampos=S
OtroOrden=S
ListaOrden=CDICasilleros.Casillero<TAB>(Acendente)
BusquedaRapidaControles=S
FiltroCambiarPeriodo=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
MenuLocal=S
ListaAcciones=(Lista)
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroFechasCampo=CDICasilleros.FechaEmision
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Asignados
RefrescarAlEntrar=S
ExpAlRefrescar=Asigna(info.Numero,1)
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaOrdenarColumnas=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroTipo=Múltiple (por Grupos)
FiltroGrupo1=CDIVCasillerosXml.Seccion
FiltroGrupo2=CDIVCasillerosXml.Ubicacion
FiltroTodo=S
ListaCamposAValidar=(Lista)
HojaMantenerSeleccion=S
FiltroGrupo3=CDICasilleros.Tipo

FiltroGeneral=EstatusCas=<T>Asignado<T>
[CDICasilleros.CDICasilleros.Casillero]
Carpeta=CDICasilleros
Clave=CDICasilleros.Casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$0080FFFF

[CDICasilleros.CDICasilleros.Tipo]
Carpeta=CDICasilleros
Clave=CDICasilleros.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$0080FFFF

[CDICasilleros.CDICasilleros.Cilindro]
Carpeta=CDICasilleros
Clave=CDICasilleros.Cilindro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$0080FFFF

[CDICasilleros.CDIVCasillerosXml.Seccion]
Carpeta=CDICasilleros
Clave=CDIVCasillerosXml.Seccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20

ColorFondo=$0080FFFF
ColorFuente=$FFFFFFFF
[CDICasilleros.CDIVCasillerosXml.Ubicacion]
Carpeta=CDICasilleros
Clave=CDIVCasillerosXml.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=$0080FFFF

[CDICasilleros.Columnas]
Casillero=51
Tipo=50
Estatus=51
EstatusA=55
Cliente=64
Membresia=94
EstatusCas=60
FechaEmision=88
UltimoCambio=122
Cilindro=78
Seccion=69
Ubicacion=52
UbicaCas=64
Ubicacion_1=57
NivelCas=55
Cliente_1=3
Membresia_1=3
Nombre=2
Socio=2
Socio_1=2
SocioA=2

[CDICasilleros.CDICasilleros.FechaEmision]
Carpeta=CDICasilleros
Clave=CDICasilleros.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$0080FFFF

[Disponibles]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Disponibles
Clave=Disponibles
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICasillerosDisp
Fuente={Tahoma, 8, Verde, [Negritas]}
CampoColorLetras=Negro
CampoColorFondo=$00408000
ListaEnCaptura=(Lista)
CarpetaVisible=S
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
MenuLocal=S
ListaAcciones=(Lista)
RefrescarAlEntrar=S
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroGrupo1=CDIVCasillerosXml.Seccion
FiltroGrupo2=CDIVCasillerosXml.Ubicacion
FiltroGrupo3=CDICasilleros.Tipo
FiltroTodo=S
HojaOrdenarColumnas=S
ExpAlRefrescar=Asigna(info.Numero,2)
HojaMantenerSeleccion=S
FiltroGeneral=EstatusCas=<T>Disponible<T>
[Disponibles.CDICasilleros.Casillero]
Carpeta=Disponibles
Clave=CDICasilleros.Casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00408000

[Disponibles.CDICasilleros.Tipo]
Carpeta=Disponibles
Clave=CDICasilleros.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=90
ColorFondo=$00408000

[Disponibles.CDICasilleros.Cilindro]
Carpeta=Disponibles
Clave=CDICasilleros.Cilindro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00408000

[Disponibles.CDIVCasillerosXml.Seccion]
Carpeta=Disponibles
Clave=CDIVCasillerosXml.Seccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=90
ColorFondo=$00408000

[Disponibles.CDIVCasillerosXml.Ubicacion]
Carpeta=Disponibles
Clave=CDIVCasillerosXml.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=$00408000

[Disponibles.Columnas]
Casillero=47
Tipo=47
Cilindro=75
Seccion=72
Ubicacion=55
EstatusCas=63
CasilleroTag=196
ID=64
UbicaCasD=64
NivelCas=52

[Acciones.Asignar]
Nombre=Asignar
Boton=0
NombreDesplegar=Asignar Casillero Socio
EnMenu=S
TipoAccion=Formas
Activo=S
Visible=S
ClaveAccion=ctecasillero
Antes=S
RefrescarDespues=S
Multiple=S
ListaAccionesMultiples=(Lista)

AntesExpresiones=asigna(info.numero,CDICasillerosDisp:CDICasilleros.ID)<BR>asigna(Info.FaseID,CDICasillerosDisp:CDICasilleros.PlanoID)<BR>asigna(info.tipo,CDICasillerosDisp:CDICasilleros.Tipo)<BR>ASigna(info.cdicasal,CDICasillerosDisp:CDICasilleros.Casillero)
[Acciones.Reporte]
Nombre=Reporte
Boton=4
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
Activo=S
Visible=S
NombreEnBoton=S
NombreDesplegar=&Casilleros Socios
ClaveAccion=CDISociosCasilleros
EspacioPrevio=S

[Acciones.Asignar.ctecasillero]
Nombre=ctecasillero
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=formamodal(<T>Sociocasillero<T>)
[Acciones.Asignar.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Baja]
Estilo=Hoja
Pestana=S
Clave=Baja
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICasillerosDisp
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Rojo
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
RefrescarAlEntrar=S
FiltroGrupo1=CDIVCasillerosXml.Seccion
FiltroGrupo2=CDIVCasillerosXml.Ubicacion
FiltroGrupo3=CDICasilleros.Tipo
PestanaOtroNombre=S
PestanaNombre=Baja
FiltroTodo=S
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaEnLinea=S
MenuLocal=S
ListaAcciones=(Lista)
HojaOrdenarColumnas=S
ExpAlRefrescar=Asigna(info.Numero,3)
HojaMantenerSeleccion=S
FiltroGeneral=EstatusCas=<T>BAJA<T>
[Baja.CDICasilleros.Casillero]
Carpeta=Baja
Clave=CDICasilleros.Casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFuente=Rojo
ColorFondo=Blanco
[Baja.CDICasilleros.Tipo]
Carpeta=Baja
Clave=CDICasilleros.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFuente=Rojo
ColorFondo=Blanco

[Baja.CDICasilleros.Cilindro]
Carpeta=Baja
Clave=CDICasilleros.Cilindro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFuente=Rojo
ColorFondo=Blanco

[Baja.CDIVCasillerosXml.Seccion]
Carpeta=Baja
Clave=CDIVCasillerosXml.Seccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=90
ColorFuente=Rojo
ColorFondo=Blanco

[Baja.CDIVCasillerosXml.Ubicacion]
Carpeta=Baja
Clave=CDIVCasillerosXml.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFuente=Rojo
ColorFondo=Blanco

[Baja.Columnas]
Casillero=64
Tipo=56
EstatusCas=61
Cilindro=75
ID_1=39
Seccion=80
Ubicacion=60
UbicaCasD=64
NivelCas=52

[cA.ListaEnCaptura]
(Inicio)=CDICasilleros.Casillero
CDICasilleros.Casillero=CDIVCasillerosXml.Seccion
CDIVCasillerosXml.Seccion=CDIVCasillerosXml.Ubicacion
CDIVCasillerosXml.Ubicacion=CDICasilleros.Tipo
CDICasilleros.Tipo=CDICasilleros.EstatusCas
CDICasilleros.EstatusCas=(Fin)

[cA.Columnas]
Casillero=64
Seccion=82
Ubicacion=55
Tipo=60
EstatusCas=124

[SinCasillero]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Sin Casillero
Clave=SinCasillero
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICasillerosDisp
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Gris
ListaEnCaptura=(Lista)
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CarpetaVisible=S
CarpetaDesActivada=S

[SinCasillero.CDICasilleros.Casillero]
Carpeta=SinCasillero
Clave=CDICasilleros.Casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Gris

[SinCasillero.CDIVCasillerosXml.Seccion]
Carpeta=SinCasillero
Clave=CDIVCasillerosXml.Seccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=90
ColorFondo=Gris

[SinCasillero.CDIVCasillerosXml.Ubicacion]
Carpeta=SinCasillero
Clave=CDIVCasillerosXml.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Gris

[SinCasillero.CDICasilleros.Tipo]
Carpeta=SinCasillero
Clave=CDICasilleros.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Gris

[SinCasillero.Columnas]
Casillero=52
Seccion=83
Ubicacion=52
Tipo=68
EstatusCas=67
Cilindro=59

[SinCasillero.CDICasilleros.Cilindro]
Carpeta=SinCasillero
Clave=CDICasilleros.Cilindro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Gris

[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76

Nombre=293
[Acciones.Cilindro]
Nombre=Cilindro
Boton=0
NombreDesplegar=Asignar Cilindro
EnMenu=S
TipoAccion=Expresion
Antes=S
Visible=S
Activo=S
Expresion=FormaModal(<T>CDICilindro<T>)<BR>ActualizarForma
AntesExpresiones=asigna(info.numero,CDICasilleros:CDICasilleros.ID)<BR>asigna(Info.FaseID,CDICasilleros:CDICasilleros.PlanoID)<BR>asigna(info.tipo,CDICasilleros:CDICasilleros.Tipo)<BR>ASigna(info.cdicasal,CDICasilleros:CDICasilleros.Casillero)

[Acciones.Traspasar]
Nombre=Traspasar
Boton=0
NombreDesplegar=Traspasar Casillero
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Antes=S
Expresion=FormaModal(<T>CDICasTras<T>)<BR>ActualizarForma
AntesExpresiones=asigna(info.numero,CDICasilleros:CDICasilleros.ID)<BR>asigna(Info.FaseID,CDICasilleros:CDICasilleros.PlanoID)<BR>asigna(info.tipo,CDICasilleros:CDICasilleros.Tipo)<BR>asigna(Info.mov,<T>Traspaso<T>)<BR>ASigna(info.cdicasal,CDICasilleros:CDICasilleros.Casillero)

[Acciones.BajaDisponible]
Nombre=BajaDisponible
Boton=0
NombreDesplegar=Baja Casillero
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Multiple=S
ListaAccionesMultiples=(Lista)
Antes=S
AntesExpresiones=asigna(info.numero,CDICasillerosDisp:CDICasilleros.ID)<BR>asigna(Info.FaseID,CDICasillerosDisp:CDICasilleros.PlanoID)<BR>asigna(info.tipo,CDICasillerosDisp:CDICasilleros.Tipo)<BR>ASigna(info.mov,<T>BAJA<T>)<BR>Asigna(info.cdicasal,CDICasillerosDisp:CDICasilleros.Casillero)

[Acciones.BajaDisponible.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.BajaDisponible.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=FormaModal(<T>CDICasObserv<T>)  <BR>ActualizarForma

[Acciones.Reactivar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Reactivar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=FormaModal(<T>CDICasObserv<T>)  <BR>ActualizarForma

[Acciones.Reactivar]
Nombre=Reactivar
Boton=0
NombreDesplegar=Hacer Disponible Casillero
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)
Activo=S
Visible=S
Antes=S
AntesExpresiones=asigna(info.numero,CDICasillerosDisp:CDICasilleros.ID)<BR>asigna(Info.FaseID,CDICasillerosDisp:CDICasilleros.PlanoID)<BR>asigna(info.tipo,CDICasillerosDisp:CDICasilleros.Tipo)<BR>ASigna(info.mov,<T>REACTIVA<T>)<BR>Asigna(info.cdicasal,CDICasillerosDisp:CDICasilleros.Casillero)

[Acciones.CdiCrearCasillero]
Nombre=CdiCrearCasillero
Boton=18
NombreDesplegar=Crear Casillero
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CdiCrearCasillero

[Acciones.Entregar]
Nombre=Entregar
Boton=0
NombreDesplegar=DesAsignar Casillero
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
Antes=S
Expresion=FormaModal(<T>CDICasObserv<T>)<BR>ActualizarForma
AntesExpresiones=asigna(info.numero,CDICasilleros:CDICasilleros.ID)<BR>asigna(Info.FaseID,CDICasilleros:CDICasilleros.PlanoID)<BR>asigna(info.tipo,CDICasilleros:CDICasilleros.Tipo)<BR>asigna(Info.mov,<T>DesAsignar<T>)<BR>ASigna(info.cdicasal,CDICasilleros:CDICasilleros.Casillero)

[SinCasillero.ListaEnCaptura]
(Inicio)=CDIVCasillerosXml.Seccion
CDIVCasillerosXml.Seccion=CDIVCasillerosXml.Ubicacion
CDIVCasillerosXml.Ubicacion=CDICasilleros.Casillero
CDICasilleros.Casillero=CDICasilleros.Tipo
CDICasilleros.Tipo=CDICasilleros.Cilindro
CDICasilleros.Cilindro=(Fin)

[Acciones.ExcelAsignados]
Nombre=ExcelAsignados
Boton=115
NombreEnBoton=S
NombreDesplegar=Asignados
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=CDICasilleros
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
RefrescarDespues=S
ConCondicion=S
Visible=S
Activo=S
EjecucionConError=S

EjecucionCondicion=info.numero=1
EjecucionMensaje=<T>No ha seleccionado los casilleros Asignados<T>
[Acciones.ExcelDisponibles]
Nombre=ExcelDisponibles
Boton=115
NombreEnBoton=S
NombreDesplegar=Disponibles
EnBarraHerramientas=S
Carpeta=Disponibles
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
RefrescarDespues=S
ConCondicion=S
Visible=S
Activo=S
EjecucionCondicion=info.numero=2
EjecucionMensaje=<T>No ha seleccionado los casilleros Disponibles<T>
EjecucionConError=S

[Acciones.ExcelBaja]
Nombre=ExcelBaja
Boton=115
NombreEnBoton=S
NombreDesplegar=Baja
EnBarraHerramientas=S
Carpeta=Baja
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
RefrescarDespues=S
ConCondicion=S
Visible=S
Activo=S
EjecucionCondicion=info.numero=3
EjecucionMensaje=<T>No ha seleccionado los casilleros en Baja<T>
EjecucionConError=S

[Acciones.CDICasilleroBitacora]
Nombre=CDICasilleroBitacora
Boton=0
NombreDesplegar=Bitacora
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDICasilleroBitacora
Activo=S
Antes=S
Visible=S
EspacioPrevio=S
AntesExpresiones=asigna(Info.numero,CDICasilleros:CDICasilleros.ID)

[Acciones.Bitacora]
Nombre=Bitacora
Boton=0
NombreDesplegar=Bitacora
EnMenu=S
TipoAccion=Formas
ClaveAccion=cdicasilleroBitacora
Activo=S
Antes=S
Visible=S
EspacioPrevio=S
AntesExpresiones=asigna(info.numero,CDICasillerosDisp:CDICasilleros.ID)

[Acciones.Bitacorabaja]
Nombre=Bitacorabaja
Boton=0
NombreDesplegar=Bitacora
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDICasilleroBitacora
Activo=S
Antes=S
Visible=S
EspacioPrevio=S
AntesExpresiones=asigna(info.numero,CDICasillerosDisp:CDICasilleros.ID)<BR>asigna(Info.FaseID,CDICasillerosDisp:CDICasilleros.PlanoID)<BR>asigna(info.tipo,CDICasillerosDisp:CDICasilleros.Tipo)

[Acciones.Reactivar.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[CDICasilleros.CDICasilleros.NivelCas]
Carpeta=CDICasilleros
Clave=CDICasilleros.NivelCas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=$0080FFFF

[Disponibles.CDICasilleros.NivelCas]
Carpeta=Disponibles
Clave=CDICasilleros.NivelCas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=$00408000



[Baja.CDICasilleros.NivelCas]
Carpeta=Baja
Clave=CDICasilleros.NivelCas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco
ColorFuente=Rojo

[Acciones.AsignacionGraf]
Nombre=AsignacionGraf
Boton=88
NombreEnBoton=S
NombreDesplegar=&Plano
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S
Expresion=EjecutarSQL(<T>spInsertaParametrosIntel :nEstacion,:tUsuario,:tEmpresa,:nSucursal,:nBandera<T>,EstacionTrabajo,Usuario,Empresa,Sucursal,0)<BR>Ejecutar(General.DirectorioCodigo&<T>\<T>&<T>casilleros\Casilleros<T>)


[Acciones.BajaDisponible.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=(Fin)



[Acciones.Reactivar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=Actualizar Forma
Actualizar Forma=(Fin)

[CDICasilleros.Cte.Cliente]
Carpeta=CDICasilleros
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$0080FFFF
ColorFuente=$0080FFFF

[CDICasilleros.Cte.Socio]
Carpeta=CDICasilleros
Clave=Cte.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=$0080FFFF
ColorFuente=$0080FFFF

[CDICasilleros.Cte.Nombre]
Carpeta=CDICasilleros
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=$0080FFFF
ColorFuente=$0080FFFF

[Acciones.Expresion]
Nombre=Expresion
Boton=0
NombreDesplegar=Expresion
EnMenu=S
TipoAccion=Expresion
Expresion=FormaModal(<T>CDICilindro<T>)<BR>ActualizarForma
Activo=S
Antes=S
AntesExpresiones=asigna(info.numero,CDICasilleros:CDICasilleros.ID)<BR>asigna(Info.FaseID,CDICasilleros:CDICasilleros.PlanoID)<BR>asigna(info.tipo,CDICasilleros:CDICasilleros.Tipo)<BR>ASigna(info.cdicasal,CDICasilleros:CDICasilleros.Casillero)
Visible=S

[Acciones.CilindroDispo]
Nombre=CilindroDispo
Boton=0
NombreDesplegar=Asignar Cilindro
EnMenu=S
TipoAccion=Expresion
Activo=S
Antes=S
Visible=S
Expresion=FormaModal(<T>CDICilindro<T>)<BR>ActualizarForma
AntesExpresiones=asigna(info.numero,CDICasillerosDisp:CDICasilleros.Id)<BR>asigna(Info.CDICasal,CDICasillerosDisp:CDICasilleros.Casillero)



[Baja.ListaEnCaptura]
(Inicio)=CDIVCasillerosXml.Seccion
CDIVCasillerosXml.Seccion=CDIVCasillerosXml.Ubicacion
CDIVCasillerosXml.Ubicacion=CDICasilleros.Casillero
CDICasilleros.Casillero=CDICasilleros.Tipo
CDICasilleros.Tipo=CDICasilleros.Cilindro
CDICasilleros.Cilindro=CDICasilleros.NivelCas
CDICasilleros.NivelCas=(Fin)

[Baja.ListaAcciones]
(Inicio)=Reactivar
Reactivar=Bitacorabaja
Bitacorabaja=(Fin)

[CDICasilleros.Cte.Membresia]
Carpeta=CDICasilleros
Clave=Cte.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$0080FFFF
ColorFuente=$0080FFFF

[CDICasilleros.CDICasilleros.SocioA]
Carpeta=CDICasilleros
Clave=CDICasilleros.SocioA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$0080FFFF
ColorFuente=$0080FFFF





[Acciones.AsignarCte.cA]
Nombre=cA
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=formamodal(<T>ctecasillero<T>)
[Acciones.AsignarCte]
Nombre=AsignarCte
Boton=0
NombreDesplegar=Asignar Casillero Cliente
RefrescarDespues=S
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)
Activo=S
Visible=S




Antes=S
EspacioPrevio=S
AntesExpresiones=asigna(info.numero,CDICasillerosDisp:CDICasilleros.ID)<BR>asigna(Info.FaseID,CDICasillerosDisp:CDICasilleros.PlanoID)<BR>asigna(info.tipo,CDICasillerosDisp:CDICasilleros.Tipo)<BR>ASigna(info.cdicasal,CDICasillerosDisp:CDICasilleros.Casillero)
[Acciones.AsignarCte.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S










[Acciones.Asignar.ListaAccionesMultiples]
(Inicio)=ctecasillero
ctecasillero=Actualizar Forma
Actualizar Forma=(Fin)



[CDICasCteEmp]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Clientes
Clave=CDICasCteEmp
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICasCteEmp
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=$00FF8000
ListaEnCaptura=(Lista)

CarpetaVisible=S

Filtros=S
OtroOrden=S
ValidarCampos=S
BusquedaRapidaControles=S
MenuLocal=S
RefrescarAlEntrar=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
ListaCamposAValidar=(Lista)
ListaOrden=CDICasilleros.Casillero<TAB>(Acendente)
FiltroGrupo1=CDIVCasillerosXML.Seccion
FiltroGrupo2=CDIVCasillerosXML.Ubicacion
FiltroGrupo3=CDICasilleros.Tipo
FiltroTodo=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=(Todos)
FiltroFechasCampo=CDICasilleros.FechaEmision
BusquedaRapida=S
BusquedaEnLinea=S
ListaAcciones=(Lista)
ExpAlRefrescar=Asigna(info.Numero,4)
FiltroGeneral=EstatusCas=<T>Asignado<T> and   CDICasilleros.Membresia=9999999
[CDICasCteEmp.CDICasilleros.Casillero]
Carpeta=CDICasCteEmp
Clave=CDICasilleros.Casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00FF8000

[CDICasCteEmp.CDICasilleros.Tipo]
Carpeta=CDICasCteEmp
Clave=CDICasilleros.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00FF8000



[CDICasCteEmp.CDICasilleros.FechaEmision]
Carpeta=CDICasCteEmp
Clave=CDICasilleros.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=$00FF8000

[CDICasCteEmp.CDICasilleros.Cilindro]
Carpeta=CDICasCteEmp
Clave=CDICasilleros.Cilindro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00FF8000

[CDICasCteEmp.CDICasilleros.NivelCas]
Carpeta=CDICasCteEmp
Clave=CDICasilleros.NivelCas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=$00FF8000





[CDICasCteEmp.CDIVCasillerosXML.Seccion]
Carpeta=CDICasCteEmp
Clave=CDIVCasillerosXML.Seccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=90
ColorFondo=$00FF8000

[CDICasCteEmp.CDIVCasillerosXML.Ubicacion]
Carpeta=CDICasCteEmp
Clave=CDIVCasillerosXML.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=$00FF8000

[CDICasCteEmp.Cte.Cliente]
Carpeta=CDICasCteEmp
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00FF8000

[CDICasCteEmp.Cte.Nombre]
Carpeta=CDICasCteEmp
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=$00FF8000



[CDICasCteEmp.Columnas]
Casillero=47
Tipo=48
Cliente=64
Membresia=94
EstatusCas=124
FechaEmision=94
Cilindro=58
NivelCas=53
PlanoId=64
Id=64
SocioA=64
ID_1=64
Seccion=80
Ubicacion=58
Cliente_1=2
Nombre=2







[CDICasilleros.ListaEnCaptura]
(Inicio)=CDIVCasillerosXml.Seccion
CDIVCasillerosXml.Seccion=CDIVCasillerosXml.Ubicacion
CDIVCasillerosXml.Ubicacion=CDICasilleros.Casillero
CDICasilleros.Casillero=CDICasilleros.Tipo
CDICasilleros.Tipo=CDICasilleros.Cilindro
CDICasilleros.Cilindro=CDICasilleros.FechaEmision
CDICasilleros.FechaEmision=CDICasilleros.NivelCas
CDICasilleros.NivelCas=Cte.Cliente
Cte.Cliente=Cte.Socio
Cte.Socio=CDICasilleros.SocioA
CDICasilleros.SocioA=Cte.Nombre
Cte.Nombre=Cte.Membresia
Cte.Membresia=(Fin)

[CDICasilleros.ListaCamposAValidar]
(Inicio)=Cte.Socio
Cte.Socio=Cte.Membresia
Cte.Membresia=Cte.Titular
Cte.Titular=Cte.Nombre
Cte.Nombre=(Fin)

[CDICasilleros.FiltroListaEstatus]
(Inicio)=DISPONIBLE
DISPONIBLE=(Todos)
(Todos)=(Fin)

[CDICasilleros.ListaAcciones]
(Inicio)=Traspasar
Traspasar=Cilindro
Cilindro=Entregar
Entregar=CDICasilleroBitacora
CDICasilleroBitacora=(Fin)





















































[Acciones.EntregarCteEmp]
Nombre=EntregarCteEmp
Boton=0
NombreDesplegar=DesAsignar Casillero
EnMenu=S
TipoAccion=Expresion
Activo=S
Antes=S
Visible=S

Expresion=FormaModal(<T>CDICasObserv<T>)<BR>ActualizarForma
AntesExpresiones=asigna(info.numero,CDICasCteEmp:CDICasilleros.Id)<BR>asigna(Info.FaseID,CDICasCteEmp:CDICasilleros.PlanoId)<BR>asigna(info.tipo,CDICasCteEmp:CDICasilleros.Tipo)                         <BR>asigna(Info.mov,<T>DesAsignar<T>)<BR>ASigna(info.cdicasal,CDICasCteEmp:CDICasilleros.Casillero)










[Acciones.AsignarCilCteEmp]
Nombre=AsignarCilCteEmp
Boton=0
NombreDesplegar=Asignar Cilindro
EnMenu=S
TipoAccion=Expresion
Expresion=FormaModal(<T>CDICilindro<T>)<BR>ActualizarForma
Activo=S
Antes=S
AntesExpresiones=asigna(info.numero,CDICasCteEmp:CDICasilleros.Id)<BR>asigna(Info.FaseID,CDICasCteEmp:CDICasilleros.PlanoId)<BR>asigna(info.tipo,CDICasCteEmp:CDICasilleros.Tipo)<BR>ASigna(info.cdicasal,CDICasCteEmp:CDICasilleros.Casillero)
Visible=S







[Acciones.BitacCteEmp]
Nombre=BitacCteEmp
Boton=0
NombreDesplegar=Bitacora
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICasilleroBitacora
Activo=S
Antes=S
Visible=S





AntesExpresiones=asigna(Info.numero,CDICasCteEmp:CDICasilleros.Id)
[Acciones.AsignarCte.ListaAccionesMultiples]
(Inicio)=cA
cA=Actualizar Forma
Actualizar Forma=(Fin)

[Disponibles.ListaEnCaptura]
(Inicio)=CDIVCasillerosXml.Seccion
CDIVCasillerosXml.Seccion=CDIVCasillerosXml.Ubicacion
CDIVCasillerosXml.Ubicacion=CDICasilleros.Casillero
CDICasilleros.Casillero=CDICasilleros.Tipo
CDICasilleros.Tipo=CDICasilleros.Cilindro
CDICasilleros.Cilindro=CDICasilleros.NivelCas
CDICasilleros.NivelCas=(Fin)

[Disponibles.ListaAcciones]
(Inicio)=Asignar
Asignar=CilindroDispo
CilindroDispo=BajaDisponible
BajaDisponible=AsignarCte
AsignarCte=Bitacora
Bitacora=(Fin)







[Acciones.CdiCteEmp]
Nombre=CdiCteEmp
Boton=115
NombreDesplegar=Clientes
EnBarraHerramientas=S
Carpeta=CDICasCteEmp
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S



NombreEnBoton=S
RefrescarDespues=S




ConCondicion=S
EjecucionConError=S






















EjecucionCondicion=info.numero=4
EjecucionMensaje=<T>No ha seleccionado los casilleros de Clientes y Empleados<T>












[CDICasCteEmp.ListaEnCaptura]
(Inicio)=CDIVCasillerosXML.Seccion
CDIVCasillerosXML.Seccion=CDIVCasillerosXML.Ubicacion
CDIVCasillerosXML.Ubicacion=CDICasilleros.Casillero
CDICasilleros.Casillero=CDICasilleros.Tipo
CDICasilleros.Tipo=CDICasilleros.Cilindro
CDICasilleros.Cilindro=CDICasilleros.FechaEmision
CDICasilleros.FechaEmision=CDICasilleros.NivelCas
CDICasilleros.NivelCas=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=(Fin)

[CDICasCteEmp.ListaCamposAValidar]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=(Fin)

[CDICasCteEmp.FiltroListaEstatus]
(Inicio)=DISPONIBLE
DISPONIBLE=(Todos)
(Todos)=(Fin)

[CDICasCteEmp.ListaAcciones]
(Inicio)=AsignarCilCteEmp
AsignarCilCteEmp=EntregarCteEmp
EntregarCteEmp=BitacCteEmp
BitacCteEmp=(Fin)







































[Acciones.Ctes]
Nombre=Ctes
Boton=4
NombreDesplegar=Casilleros Clientes
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDICtesCasilleros
Activo=S
Visible=S



NombreEnBoton=S
EspacioPrevio=S








ListaParametros=S






[Forma.ListaCarpetas]
(Inicio)=CDICasilleros
CDICasilleros=Disponibles
Disponibles=Baja
Baja=SinCasillero
SinCasillero=CDICasCteEmp
CDICasCteEmp=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=CdiCrearCasillero
CdiCrearCasillero=ExcelAsignados
ExcelAsignados=ExcelDisponibles
ExcelDisponibles=ExcelBaja
ExcelBaja=CdiCteEmp
CdiCteEmp=Reporte
Reporte=AsignacionGraf
AsignacionGraf=Ctes
Ctes=(Fin)
