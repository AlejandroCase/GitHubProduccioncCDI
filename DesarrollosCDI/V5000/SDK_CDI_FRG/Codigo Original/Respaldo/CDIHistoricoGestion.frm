
[Forma]
Clave=CDIHistoricoGestion
Icono=0
Modulos=(Todos)
Nombre=Bitacora de Mov.

ListaCarpetas=CDIHistoricoGestion
CarpetaPrincipal=CDIHistoricoGestion
PosicionInicialIzquierda=128
PosicionInicialArriba=208
PosicionInicialAlturaCliente=273
PosicionInicialAncho=1109
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
BarraHerramientas=S
[CDIHistoricoGestion]
Estilo=Hoja
Clave=CDIHistoricoGestion
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Campana
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
ListaAcciones=Obser
MenuLocal=S
OtroOrden=S
ListaOrden=Campana.FechaEmision<TAB>(Decendente)
FiltroGeneral=Campana.MembresiaInicial=<T>{Info.Membresia}<T>
[CDIHistoricoGestion.Campana.Mov]
Carpeta=CDIHistoricoGestion
Clave=Campana.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIHistoricoGestion.Campana.MovID]
Carpeta=CDIHistoricoGestion
Clave=Campana.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIHistoricoGestion.Campana.FechaEmision]
Carpeta=CDIHistoricoGestion
Clave=Campana.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIHistoricoGestion.Campana.UltimoCambio]
Carpeta=CDIHistoricoGestion
Clave=Campana.UltimoCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIHistoricoGestion.Campana.Proyecto]
Carpeta=CDIHistoricoGestion
Clave=Campana.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIHistoricoGestion.Campana.Referencia]
Carpeta=CDIHistoricoGestion
Clave=Campana.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDIHistoricoGestion.Campana.Estatus]
Carpeta=CDIHistoricoGestion
Clave=Campana.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIHistoricoGestion.Campana.Ejercicio]
Carpeta=CDIHistoricoGestion
Clave=Campana.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIHistoricoGestion.Campana.Periodo]
Carpeta=CDIHistoricoGestion
Clave=Campana.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIHistoricoGestion.Campana.Agente]
Carpeta=CDIHistoricoGestion
Clave=Campana.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[CDIHistoricoGestion.Campana.Observa]
Carpeta=CDIHistoricoGestion
Clave=Campana.Observa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIHistoricoGestion.Columnas]
Mov=97
MovID=64
FechaEmision=71
UltimoCambio=128
Proyecto=71
Referencia=115
Observaciones=394
Estatus=73
Ejercicio=64
Periodo=64
Agente=64
Observa=67











MembresiaInicial=82
Socio=53
cliente=49


[CDIHistoricoGestion.Campana.Socio]
Carpeta=CDIHistoricoGestion
Clave=Campana.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIHistoricoGestion.Campana.cliente]
Carpeta=CDIHistoricoGestion
Clave=Campana.cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.Obser]
Nombre=Obser
Boton=0
NombreDesplegar=&Observaciones
EnMenu=S
TipoAccion=formas
ClaveAccion=CDIVMemGest
Antes=S
Visible=S





ActivoCondicion=ConDatos(Campana:Campana.Id)
AntesExpresiones=asigna(Info.ID,Campana:Campana.ID)



[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=&Aceptar
EnBarraAcciones=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
EnBarraHerramientas=S







[CDIHistoricoGestion.ListaEnCaptura]
(Inicio)=Campana.Mov
Campana.Mov=Campana.MovID
Campana.MovID=Campana.FechaEmision
Campana.FechaEmision=Campana.UltimoCambio
Campana.UltimoCambio=Campana.Proyecto
Campana.Proyecto=Campana.Referencia
Campana.Referencia=Campana.Estatus
Campana.Estatus=Campana.Ejercicio
Campana.Ejercicio=Campana.Periodo
Campana.Periodo=Campana.Agente
Campana.Agente=Campana.Observa
Campana.Observa=Campana.Socio
Campana.Socio=Campana.cliente
Campana.cliente=(Fin)
