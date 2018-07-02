
[Forma]
Clave=CDIVHistoricoFaltas
Icono=0
Modulos=(Todos)
Nombre=Historico de Faltas 2017

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIVHistoricoFaltas
PosicionInicialAlturaCliente=648
PosicionInicialAncho=1046
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
PosicionInicialIzquierda=153
PosicionInicialArriba=35
PosicionSec1=449
PosicionCol2=357
[CDIVHistoricoFaltas]
Estilo=Hoja
Clave=CDIVHistoricoFaltas
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVHistoricoFaltas
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

Filtros=S
ValidarCampos=S
ListaCamposAValidar=(Lista)
FuenteDesplegar={MS Sans Serif, 8, Negro, []}
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por grupos)
FiltroGrupo1=Personal.Tipo
FiltroGrupo2=Personal.Departamento
FiltroValida1=Personal.Tipo
FiltroValida2=Personal.Departamento
FiltroGrupo3=CDIVHistoricoFaltas.Personal
FiltroValida3=CDIVHistoricoFaltas.Personal
FiltroTodo=S
BusquedaRapidaControles=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CDIVHistoricoFaltas.FEcha
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
[CDIVHistoricoFaltas.CDIVHistoricoFaltas.Personal]
Carpeta=CDIVHistoricoFaltas
Clave=CDIVHistoricoFaltas.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVHistoricoFaltas.Columnas]
Personal=94

NombreC=186
Tipo=175
Cantidad=64
FEcha=94
CDIDia=168
Jornada=62


[CDIVHistoricoFaltas.NombreC]
Carpeta=CDIVHistoricoFaltas
Clave=NombreC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco

[CDIVHistoricoFaltas.CDIVHistoricoFaltas.Tipo]
Carpeta=CDIVHistoricoFaltas
Clave=CDIVHistoricoFaltas.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVHistoricoFaltas.CDIVHistoricoFaltas.Cantidad]
Carpeta=CDIVHistoricoFaltas
Clave=CDIVHistoricoFaltas.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVHistoricoFaltas.CDIVHistoricoFaltas.FEcha]
Carpeta=CDIVHistoricoFaltas
Clave=CDIVHistoricoFaltas.FEcha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVHistoricoFaltas.CDIVHistoricoFaltas.CDIDia]
Carpeta=CDIVHistoricoFaltas
Clave=CDIVHistoricoFaltas.CDIDia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVHistoricoFaltas.Personal.Jornada]
Carpeta=CDIVHistoricoFaltas
Clave=Personal.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=108
NombreDesplegar=Preliminar
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=CDIVHistoricoFaltas
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S


[Acciones.excel]
Nombre=excel
Boton=115
NombreDesplegar=Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S








[Jornada]
Estilo=Hoja
Clave=Jornada
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIVjornadaD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIVHistoricoFaltas
LlaveLocal=CDIVjornadaD.Jornada
LlaveMaestra=Personal.Jornada
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S



ListaEnCaptura=(Lista)
[Vacio]
Estilo=Ficha
Clave=Vacio
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Plata
CampoColorFondo=Plata
CarpetaVisible=S











[Jornada.ListaEnCaptura]
(Inicio)=CDIVjornadaD.Jornada
CDIVjornadaD.Jornada=CDIVjornadaD.Dia
CDIVjornadaD.Dia=CDIVjornadaD.Entrada
CDIVjornadaD.Entrada=CDIVjornadaD.Salida
CDIVjornadaD.Salida=CDIVjornadaD.Descanso
CDIVjornadaD.Descanso=(Fin)

[Jornada.CDIVjornadaD.Jornada]
Carpeta=Jornada
Clave=CDIVjornadaD.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Jornada.CDIVjornadaD.Dia]
Carpeta=Jornada
Clave=CDIVjornadaD.Dia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco

[Jornada.CDIVjornadaD.Entrada]
Carpeta=Jornada
Clave=CDIVjornadaD.Entrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Jornada.CDIVjornadaD.Salida]
Carpeta=Jornada
Clave=CDIVjornadaD.Salida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Jornada.CDIVjornadaD.Descanso]
Carpeta=Jornada
Clave=CDIVjornadaD.Descanso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco



[Jornada.Columnas]
Jornada=124
Dia=58
Entrada=42
Salida=34
Descanso=52















[CDIVHistoricoFaltas.ListaEnCaptura]
(Inicio)=CDIVHistoricoFaltas.Personal
CDIVHistoricoFaltas.Personal=NombreC
NombreC=CDIVHistoricoFaltas.Tipo
CDIVHistoricoFaltas.Tipo=CDIVHistoricoFaltas.Cantidad
CDIVHistoricoFaltas.Cantidad=CDIVHistoricoFaltas.FEcha
CDIVHistoricoFaltas.FEcha=CDIVHistoricoFaltas.CDIDia
CDIVHistoricoFaltas.CDIDia=Personal.Jornada
Personal.Jornada=(Fin)

[CDIVHistoricoFaltas.ListaCamposAValidar]
(Inicio)=CDIVHistoricoFaltas.Personal
CDIVHistoricoFaltas.Personal=NombreC
NombreC=Personal.Tipo
Personal.Tipo=Personal.Departamento
Personal.Departamento=(Fin)















































[Forma.ListaCarpetas]
(Inicio)=CDIVHistoricoFaltas
CDIVHistoricoFaltas=Jornada
Jornada=Vacio
Vacio=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=excel
excel=(Fin)
