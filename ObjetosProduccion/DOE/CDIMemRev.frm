
[Forma]
Clave=CDIMemRev
Icono=0
Modulos=(Todos)
Nombre=Membresias
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIMemRev
CarpetaPrincipal=CDIMemRev
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1319
ListaAcciones=(Lista)
[CDIMemRev]
Estilo=Hoja
Clave=CDIMemRev
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMemRev
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
PermiteEditar=S
ListaEnCaptura=(Lista)

Filtros=S

FiltroPredefinido=S
FiltroGrupo1=Cte.Estatus
FiltroGrupo2=Cte.Tipo0
FiltroGrupo3=Cte.Categoria0
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=M�ltiple (por Grupos)
HojaOrdenarColumnas=S
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
FiltroPredefinido1=Alta<BR>Baja<BR>Socio
FiltroPredefinido2=Cte.Estatus=<T>ALTA<T><BR>Cte.Estatus=<T>BAJA<T><BR>Cte.Tipo=<T>Socio<T>
FiltroPredefinido3=Cte.Membresia<BR>Cte.Membresia<BR>Cte.Membresia
MenuLocal=S
ListaAcciones=SocMem
FiltroListas=S
FiltroListasRama=SOC
FiltroListasAplicaEn=CDIMembresia.Membresia
OtroOrden=S
ListaOrden=CDIMembresia.Membresia<TAB>(Acendente)
ValidarCampos=S
ListaCamposAValidar=(Lista)
FiltroGeneral=Verficado=0
[CDIMemRev.CDIMembresia.Revisar]
Carpeta=CDIMemRev
Clave=CDIMembresia.Revisar
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Editar=N
Tamano=10
[CDIMemRev.CDIMembresia.Verficado]
Carpeta=CDIMemRev
Clave=CDIMembresia.Verficado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMemRev.CDIMembresia.Membresia]
Carpeta=CDIMemRev
Clave=CDIMembresia.Membresia
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[CDIMemRev.CDIMembresia.Articulo]
Carpeta=CDIMemRev
Clave=CDIMembresia.Articulo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[CDIMemRev.CDIMembresia.SubsidioDescuento]
Carpeta=CDIMemRev
Clave=CDIMembresia.SubsidioDescuento
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDIMemRev.Columnas]
Revisar=39
Verficado=48
Membresia=56
Tipo=61
Categoria=98
Subcategoria=91
Clase=89
Sede=50
Aporta=39
Actividad=49
Miembros=54
MiembrosAlta=38
MiembrosBaja=39
SocioTitular=64
CDIFormaPago=75
Articulo=84
PrecioCuota=64
CDICuotaSubsidiada=102
SubsidioDescuento=94
Comunidad=83
Estatus=45
Situacion=49
Causa=117





FechaVerificado=79
UsuarioVerificar=79
Nombre=184
Tipo0=66
Tipo_1=56
Categoria_1=68
Categoria0=86
SubCategoria_1=71
Aporta_1=37
Clase_1=56
Descripcion19=94
Actividad_1=49
Estatus_1=41
Descripcion13=61
Descripcion15=107
Sede_1=50
CDIFormaPago_1=76
Socio=53
PrecioCuotaC=73
CuotaSubsidiadC=84
Formato=47
Recomendado=71
Bloqueado=52
Descuento=64
[CDIMemRev.CDIMembresia.FechaVerificado]
Carpeta=CDIMemRev
Clave=CDIMembresia.FechaVerificado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMemRev.CDIMembresia.UsuarioVerificar]
Carpeta=CDIMemRev
Clave=CDIMembresia.UsuarioVerificar
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco







[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

EspacioPrevio=S





[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=CDIMemRev
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S








EspacioPrevio=S
[CDIMemRev.Cte.Nombre]
Carpeta=CDIMemRev
Clave=Cte.Nombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco











[CDIMemRev.Cte.Tipo0]
Carpeta=CDIMemRev
Clave=Cte.Tipo0
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIMemRev.Cte.Tipo]
Carpeta=CDIMemRev
Clave=Cte.Tipo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIMemRev.Cte.Categoria]
Carpeta=CDIMemRev
Clave=Cte.Categoria
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIMemRev.Cte.Categoria0]
Carpeta=CDIMemRev
Clave=Cte.Categoria0
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIMemRev.Cte.SubCategoria]
Carpeta=CDIMemRev
Clave=Cte.SubCategoria
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIMemRev.Cte.Aporta]
Carpeta=CDIMemRev
Clave=Cte.Aporta
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMemRev.Cte.Clase]
Carpeta=CDIMemRev
Clave=Cte.Clase
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIMemRev.Cte.Descripcion19]
Carpeta=CDIMemRev
Clave=Cte.Descripcion19
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIMemRev.Cte.Actividad]
Carpeta=CDIMemRev
Clave=Cte.Actividad
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIMemRev.Cte.Estatus]
Carpeta=CDIMemRev
Clave=Cte.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIMemRev.Cte.Descripcion13]
Carpeta=CDIMemRev
Clave=Cte.Descripcion13
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIMemRev.Cte.Descripcion15]
Carpeta=CDIMemRev
Clave=Cte.Descripcion15
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[CDIMemRev.Cte.Sede]
Carpeta=CDIMemRev
Clave=Cte.Sede
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDIMemRev.Cte.CDIFormaPago]
Carpeta=CDIMemRev
Clave=Cte.CDIFormaPago
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco





[CDIMemRev.Cte.Socio]
Carpeta=CDIMemRev
Clave=Cte.Socio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco










































[Acciones.SocMem]
Nombre=SocMem
Boton=0
NombreDesplegar=Lista Socios
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDICteMemRev
Activo=S
Antes=S
AntesExpresiones=asigna(info.membresia,CDIMemRev:CDIMembresia.Membresia)
Visible=S










[CDIMemRev.PrecioCuotaC]
Carpeta=CDIMemRev
Clave=PrecioCuotaC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[CDIMemRev.CuotaSubsidiadC]
Carpeta=CDIMemRev
Clave=CuotaSubsidiadC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[Acciones.CDIModuloSocios]
Nombre=CDIModuloSocios
Boton=81
NombreEnBoton=S
NombreDesplegar=Gestion Socios
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIModuloSocios
Activo=S
Visible=S






[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
NombreDesplegar=CteInfo
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CteInfo
Activo=S
Visible=S





Antes=S








EspacioPrevio=S
AntesExpresiones=Asigna(Info.Origen,<T>VTAS<T>)<BR>Asigna(Info.Cliente,CDIMemRev:Cte.Cliente)





[Acciones.CtaSocios]
Nombre=CtaSocios
Boton=74
NombreEnBoton=S
NombreDesplegar=Socios
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDISocios
Activo=S
Visible=S











































[CDIMemRev.CDIMembresia.Formato]
Carpeta=CDIMemRev
Clave=CDIMembresia.Formato
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIMemRev.CDIMembresia.Recomendado]
Carpeta=CDIMemRev
Clave=CDIMembresia.Recomendado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[CDIMemRev.CDIMembresia.Situacion]
Carpeta=CDIMemRev
Clave=CDIMembresia.Situacion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco














[CDIMemRev.ListaEnCaptura]
(Inicio)=CDIMembresia.Revisar
CDIMembresia.Revisar=CDIMembresia.Membresia
CDIMembresia.Membresia=Cte.Socio
Cte.Socio=Cte.Nombre
Cte.Nombre=Cte.Tipo0
Cte.Tipo0=Cte.Tipo
Cte.Tipo=Cte.Categoria0
Cte.Categoria0=Cte.Categoria
Cte.Categoria=Cte.SubCategoria
Cte.SubCategoria=Cte.Aporta
Cte.Aporta=Cte.Clase
Cte.Clase=Cte.Sede
Cte.Sede=Cte.Actividad
Cte.Actividad=CDIMembresia.Formato
CDIMembresia.Formato=CDIMembresia.Recomendado
CDIMembresia.Recomendado=CDIMembresia.Situacion
CDIMembresia.Situacion=Cte.Estatus
Cte.Estatus=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=Cte.Descripcion19
Cte.Descripcion19=Cte.CDIFormaPago
Cte.CDIFormaPago=CDIMembresia.Articulo
CDIMembresia.Articulo=PrecioCuotaC
PrecioCuotaC=CDIMembresia.SubsidioDescuento
CDIMembresia.SubsidioDescuento=CDIMembresia.Descuento
CDIMembresia.Descuento=CuotaSubsidiadC
CuotaSubsidiadC=CDIMembresia.Verficado
CDIMembresia.Verficado=CDIMembresia.UsuarioVerificar
CDIMembresia.UsuarioVerificar=CDIMembresia.FechaVerificado
CDIMembresia.FechaVerificado=(Fin)

[CDIMemRev.ListaCamposAValidar]
(Inicio)=CDIMembresia.Miembros
CDIMembresia.Miembros=CDIMembresia.MiembrosAlta
CDIMembresia.MiembrosAlta=CDIMembresia.MiembrosBaja
CDIMembresia.MiembrosBaja=CDIMembresia.SocioM3
CDIMembresia.SocioM3=CDIMembresia.Socio118
CDIMembresia.Socio118=CDIMembresia.socios1926
CDIMembresia.socios1926=CDIMembresia.socios2669
CDIMembresia.socios2669=CDIMembresia.socios70
CDIMembresia.socios70=(Fin)

[CDIMemRev.CDIMembresia.Descuento]
Carpeta=CDIMemRev
Clave=CDIMembresia.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar Cambios
Guardar Cambios=Enviar a Excel
Enviar a Excel=CDIModuloSocios
CDIModuloSocios=CteInfo
CteInfo=CtaSocios
CtaSocios=(Fin)
