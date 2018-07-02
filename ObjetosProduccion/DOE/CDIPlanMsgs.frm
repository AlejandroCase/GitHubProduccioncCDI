
[Forma]
Clave=CDIPlanMsgs
Icono=0
CarpetaPrincipal=CDIPlanMsgs
Modulos=(Todos)
Nombre=Planes

ListaCarpetas=CDIPlanMsgs
PosicionInicialAlturaCliente=228
PosicionInicialAncho=481
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
PosicionInicialIzquierda=448
PosicionInicialArriba=186
ExpresionesAlMostrar=asigna(info.usuario,usuario)
[CDIPlanMsgs]
Estilo=Hoja
Clave=CDIPlanMsgs
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPlanMsgs
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
PermiteEditar=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIPlanMsgs.IdMsgPlan=<T>{Info.Id}<T>
[CDIPlanMsgs.CDIPlanMsgs.CEPlan]
Carpeta=CDIPlanMsgs
Clave=CDIPlanMsgs.CEPlan
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[CDIPlanMsgs.CDIPlanMsgs.Incluir]
Carpeta=CDIPlanMsgs
Clave=CDIPlanMsgs.Incluir
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPlanMsgs.CDIPlanMsgs.Coordinacion]
Carpeta=CDIPlanMsgs
Clave=CDIPlanMsgs.Coordinacion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDIPlanMsgs.Columnas]
CEPlan=128
Incluir=64
Coordinacion=247
Usuario=142




[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

GuardarAntes=S
EspacioPrevio=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

















[Acciones.Selec.EspreTo]
Nombre=EspreTo
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>exec CDISeleccionCDIPlanMsgs  :nId<T>,CDIPlanMsgs:CDIPlanMsgs.IdMsgPlan)
[Acciones.Selec.Cambia]
Nombre=Cambia
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Selec]
Nombre=Selec
Boton=18
NombreEnBoton=S
NombreDesplegar=Seleccionar Todo
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

EspacioPrevio=S
[Acciones.Quita.QT]
Nombre=QT
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>exec CDIQuitarSeleccionCDIPlanMsgs  :nId<T>,CDIPlanMsgs:CDIPlanMsgs.IdMsgPlan)
[Acciones.Quita]
Nombre=Quita
Boton=50
NombreDesplegar=Quitar Todo
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)
Activo=S
Visible=S



NombreEnBoton=S

EspacioPrevio=S
[Acciones.Quita.td1]
Nombre=td1
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S








[Acciones.Selec.ListaAccionesMultiples]
(Inicio)=EspreTo
EspreTo=Cambia
Cambia=(Fin)




[Acciones.Quita.ListaAccionesMultiples]
(Inicio)=QT
QT=td1
td1=(Fin)




[CDIPlanMsgs.ListaEnCaptura]
(Inicio)=CDIPlanMsgs.CEPlan
CDIPlanMsgs.CEPlan=CDIPlanMsgs.Incluir
CDIPlanMsgs.Incluir=CDIPlanMsgs.Coordinacion
CDIPlanMsgs.Coordinacion=(Fin)



[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=Selec
Selec=Quita
Quita=(Fin)
