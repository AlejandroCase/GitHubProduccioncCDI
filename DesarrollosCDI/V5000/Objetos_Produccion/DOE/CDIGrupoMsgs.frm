
[Forma]
Clave=CDIGrupoMsgs
Icono=0
CarpetaPrincipal=CDIGrupoMsgs
Modulos=(Todos)
Nombre=Grupos

ListaCarpetas=CDIGrupoMsgs
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=321
PosicionInicialAncho=608
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
PosicionInicialIzquierda=385
PosicionInicialArriba=140
[CDIGrupoMsgs]
Estilo=Hoja
Clave=CDIGrupoMsgs
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIGrupoMsgs
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIGrupoMsgs.IDMsgGrupo=<T>{Info.Id}<T>
[CDIGrupoMsgs.CDIGrupoMsgs.CEPlan]
Carpeta=CDIGrupoMsgs
Clave=CDIGrupoMsgs.CEPlan
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIGrupoMsgs.CDIGrupoMsgs.Grupo]
Carpeta=CDIGrupoMsgs
Clave=CDIGrupoMsgs.Grupo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIGrupoMsgs.CDIGrupoMsgs.Espacio]
Carpeta=CDIGrupoMsgs
Clave=CDIGrupoMsgs.Espacio
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIGrupoMsgs.CDIGrupoMsgs.Horario]
Carpeta=CDIGrupoMsgs
Clave=CDIGrupoMsgs.Horario
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIGrupoMsgs.CDIGrupoMsgs.Incluir]
Carpeta=CDIGrupoMsgs
Clave=CDIGrupoMsgs.Incluir
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guarda
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=ventana
ClaveAccion=aceptar
Activo=S
Visible=S

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




[CDIGrupoMsgs.Columnas]
CEPlan=86
Grupo=148
Espacio=163
Horario=106
Incluir=64
Usuario=115













[Acciones.Grupo1.Grup1]
Nombre=Grup1
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>exec CDISeleccionCDIGrupoMsgs :nId<T>,CDIGrupoMsgs:CDIGrupoMsgs.IDMsgGrupo)
[Acciones.Grupo1.gr2]
Nombre=gr2
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Grupo1]
Nombre=Grupo1
Boton=18
NombreEnBoton=S
NombreDesplegar=Seleccionar Todo
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
EspacioPrevio=S

[Acciones.Qita1.Q2]
Nombre=Q2
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>exec CDIQuitarSeleccionCDIGrupoMsgs  :nId<T>,CDIGrupoMsgs:CDIGrupoMsgs.IDMsgGrupo)
[Acciones.Qita1.cambiaq]
Nombre=cambiaq
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Qita1]
Nombre=Qita1
Boton=50
NombreDesplegar=&Quitar Todo
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S
EspacioPrevio=S





[Acciones.Qita1.ListaAccionesMultiples]
(Inicio)=Q2
Q2=cambiaq
cambiaq=(Fin)




[CDIGrupoMsgs.ListaEnCaptura]
(Inicio)=CDIGrupoMsgs.CEPlan
CDIGrupoMsgs.CEPlan=CDIGrupoMsgs.Grupo
CDIGrupoMsgs.Grupo=CDIGrupoMsgs.Espacio
CDIGrupoMsgs.Espacio=CDIGrupoMsgs.Horario
CDIGrupoMsgs.Horario=CDIGrupoMsgs.Incluir
CDIGrupoMsgs.Incluir=(Fin)






[Acciones.Grupo1.ListaAccionesMultiples]
(Inicio)=Grup1
Grup1=gr2
gr2=(Fin)



[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=Grupo1
Grupo1=Qita1
Qita1=(Fin)
