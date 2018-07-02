
[Forma]
Clave=CDIi0
Icono=0
Modulos=(Todos)
Nombre=Inscripciones por grupo
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIInscGrupo
PosicionInicialIzquierda=298
PosicionInicialArriba=150
PosicionInicialAlturaCliente=429
PosicionInicialAncho=769
PosicionSec1=221
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
DialogoAbrir=S
BarraAyuda=S
[CDIInscGrupo]
Estilo=Ficha
Clave=CDIInscGrupo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIInscGrupo
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

PestanaOtroNombre=S
PestanaNombre=Grupo de PreRegistros
[CDIInscGrupo.CDIInscGrupo.IdPaquete]
Carpeta=CDIInscGrupo
Clave=CDIInscGrupo.IdPaquete
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscGrupo.CDIInscGrupo.Programa]
Carpeta=CDIInscGrupo
Clave=CDIInscGrupo.Programa
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CDIInscGrupo.CDIInscGrupo.CePlan]
Carpeta=CDIInscGrupo
Clave=CDIInscGrupo.CePlan
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CDIInscGrupo.CDIInscGrupo.Grupo]
Carpeta=CDIInscGrupo
Clave=CDIInscGrupo.Grupo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CDIInscGrupo.CDIInscGrupo.IdGrupo]
Carpeta=CDIInscGrupo
Clave=CDIInscGrupo.IdGrupo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CDIInscGrupoD]
Estilo=Hoja
Clave=CDIInscGrupoD
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIInscGrupoD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIInscGrupo
LlaveLocal=CDIInscGrupoD.Id
LlaveMaestra=CDIInscGrupo.Id
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

CarpetaVisible=S

ControlRenglon=S
CampoRenglon=CDIInscGrupoD.Renglon
OtroOrden=S
ListaOrden=(Lista)
ExpAntesRefrescar=Asigna(info.Cliente,CDIInscGrupoD:CDIInscGrupoD.Socio)<BR>Asigna(info.Socio,CDIInscGrupoD:CDIInscGrupoD.Socio)
[CDIInscGrupoD.CDIInscGrupoD.Socio]
Carpeta=CDIInscGrupoD
Clave=CDIInscGrupoD.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscGrupoD.CDIInscGrupoD.IdPreRegistro]
Carpeta=CDIInscGrupoD
Clave=CDIInscGrupoD.IdPreRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIInscGrupoD.Columnas]
Socio=126
IdPreRegistro=132




[CDIInscGrupo.CDIInscGrupo.FechaEmision]
Carpeta=CDIInscGrupo
Clave=CDIInscGrupo.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


Tamano=15
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S



[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S





[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Visible=S





ActivoCondicion=si(SQL(<T>select grupotrabajo from usuario where usuario=:tG<T>,usuario)en (<T>Cobranza<T>,<T>Sistemas<T>),verdadero,falso)
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDIInscGrupo
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=Grupo
ElementosPorPaginaEsp=200
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
FiltroTipo=Múltiple (por Grupos)
RefrescarAlEntrar=S
FiltroGrupo1=CDIInscGrupo.Programa
FiltroGrupo2=CDIInscGrupo.CePlan
FiltroGrupo3=CDIInscGrupo.Grupo
FiltroTodo=S
OtroOrden=S
ListaOrden=CDIInscGrupo.Id<TAB>(Decendente)
PestanaOtroNombre=S
PestanaNombre=Grupo de PreRegistros
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroModificarEstatus=S
FiltroEstatusDefault=PENDIENTE
IconosNombre=CDIInscGrupo:CDIInscGrupo.IdGrupo
[(Carpeta Abrir).CDIInscGrupo.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=CDIInscGrupo.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDIInscGrupo.IdPaquete]
Carpeta=(Carpeta Abrir)
Clave=CDIInscGrupo.IdPaquete
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDIInscGrupo.Programa]
Carpeta=(Carpeta Abrir)
Clave=CDIInscGrupo.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir).CDIInscGrupo.CePlan]
Carpeta=(Carpeta Abrir)
Clave=CDIInscGrupo.CePlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir).CDIInscGrupo.Grupo]
Carpeta=(Carpeta Abrir)
Clave=CDIInscGrupo.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir).CDIInscGrupo.Estatus]
Carpeta=(Carpeta Abrir)
Clave=CDIInscGrupo.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir).CDIInscGrupo.Usuario]
Carpeta=(Carpeta Abrir)
Clave=CDIInscGrupo.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[(Carpeta Abrir).Columnas]
0=83
1=82
2=58
3=75
4=81
5=92
6=74
7=-2















[CDIInscGrupo.CDIInscGrupo.Estatus]
Carpeta=CDIInscGrupo
Clave=CDIInscGrupo.Estatus
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco























































[CDIPreRegisDet.Columnas]
Mov=66
MovId=43
FechaEmision=73
CDISocio=56
Nombre=193
Concepto=220
Programa=89
Ceplan=83
Estatus=104



id=64
Grupo=98



[CDIInscGrupo.ListaEnCaptura]
(Inicio)=CDIInscGrupo.FechaEmision
CDIInscGrupo.FechaEmision=CDIInscGrupo.IdPaquete
CDIInscGrupo.IdPaquete=CDIInscGrupo.Programa
CDIInscGrupo.Programa=CDIInscGrupo.CePlan
CDIInscGrupo.CePlan=CDIInscGrupo.Grupo
CDIInscGrupo.Grupo=CDIInscGrupo.IdGrupo
CDIInscGrupo.IdGrupo=CDIInscGrupo.Estatus
CDIInscGrupo.Estatus=(Fin)






[Acciones.Crear]
Nombre=Crear
Boton=25
NombreEnBoton=S
NombreDesplegar=Crear Grupo
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Expresion
Antes=S
DespuesGuardar=S
Visible=S



EspacioPrevio=S





Expresion=actualizarForma
ActivoCondicion=CDIInscGrupo:CDIInscGrupo.Estatus noen (<T>PENDIENTE<T>,<T>CONCLUIDO<T>)
AntesExpresiones=GuardarCambios<BR>Procesarsql(<T>xpCDIIdGrupoInsc :nI, :np, :tg, :tf<T>,CDIInscGrupo:CDIInscGrupo.Id,CDIInscGrupo:CDIInscGrupo.IdPaquete,CDIInscGrupo:CDIInscGrupo.Grupo,CDIInscGrupo:CDIInscGrupo.IdGrupo)
[Acciones.CalcDesc]
Nombre=CalcDesc
Boton=10
NombreEnBoton=S
NombreDesplegar=Calcular Descuentos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
Visible=S





































Antes=S
ClaveAccion=CDITempInscripGpo
ActivoCondicion=CDIInscGrupo:CDIInscGrupo.Estatus=<T>PENDIENTE<T>
AntesExpresiones=Asigna(info.Membresia,CDIInscGrupo:CDIInscGrupo.Id)<BR>asigna(info.programa,CDIInscGrupo:CDIInscGrupo.IdGrupo)
[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIInscGrupo.FechaEmision
CDIInscGrupo.FechaEmision=CDIInscGrupo.IdPaquete
CDIInscGrupo.IdPaquete=CDIInscGrupo.Programa
CDIInscGrupo.Programa=CDIInscGrupo.CePlan
CDIInscGrupo.CePlan=CDIInscGrupo.Grupo
CDIInscGrupo.Grupo=CDIInscGrupo.Estatus
CDIInscGrupo.Estatus=CDIInscGrupo.Usuario
CDIInscGrupo.Usuario=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=SINAFECTAR
SINAFECTAR=(Todos)
(Todos)=(Fin)















































































































































































[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76



















































































[CDIInscGrupoD.ListaEnCaptura]
(Inicio)=CDIInscGrupoD.Socio
CDIInscGrupoD.Socio=CDIInscGrupoD.IdPreRegistro
CDIInscGrupoD.IdPreRegistro=(Fin)

[CDIInscGrupoD.ListaOrden]
(Inicio)=CDIInscGrupoD.Id	(Acendente)
CDIInscGrupoD.Id	(Acendente)=CDIInscGrupoD.Renglon	(Acendente)
CDIInscGrupoD.Renglon	(Acendente)=(Fin)















































































































[Forma.ListaCarpetas]
(Inicio)=CDIInscGrupo
CDIInscGrupo=CDIInscGrupoD
CDIInscGrupoD=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=Crear
Crear=CalcDesc
CalcDesc=(Fin)
