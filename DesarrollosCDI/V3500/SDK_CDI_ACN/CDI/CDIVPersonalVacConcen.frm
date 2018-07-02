
[Forma]
Clave=CDIVPersonalVacConcen
Icono=0
CarpetaPrincipal=CDIVPersonalVacConcen
Modulos=(Todos)
MovModulo=CDIVPersonalVacConcen
Nombre=CDIVPersonalVacConcen

ListaCarpetas=CDIVPersonalVacConcen
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=252
PosicionInicialArriba=46
PosicionInicialAlturaCliente=613
PosicionInicialAncho=827
[CDIVPersonalVacConcen]
Estilo=Hoja
Clave=CDIVPersonalVacConcen
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVPersonalVacConcen
Fuente={Tahoma, 8, Negro, []}
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

ListaCamposAValidar=(Lista)
CarpetaVisible=S
OtroOrden=S


ListaOrden=(Lista)
Filtros=S
FiltroPredefinido=S
FiltroGrupo1=CDIVPersonalVacConcen.Departamento
FiltroNullNombre=(sin clasificar)
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroTodo=S
MenuLocal=S
ListaAcciones=Detalle
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
[CDIVPersonalVacConcen.CDIVPersonalVacConcen.TipoContrato]
Carpeta=CDIVPersonalVacConcen
Clave=CDIVPersonalVacConcen.TipoContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVPersonalVacConcen.CDIVPersonalVacConcen.Sindicato]
Carpeta=CDIVPersonalVacConcen
Clave=CDIVPersonalVacConcen.Sindicato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVPersonalVacConcen.CDIVPersonalVacConcen.Ejercicio]
Carpeta=CDIVPersonalVacConcen
Clave=CDIVPersonalVacConcen.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIVPersonalVacConcen.CDIVPersonalVacConcen.Cargos]
Carpeta=CDIVPersonalVacConcen
Clave=CDIVPersonalVacConcen.Cargos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPersonalVacConcen.CDIVPersonalVacConcen.Abonos]
Carpeta=CDIVPersonalVacConcen
Clave=CDIVPersonalVacConcen.Abonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPersonalVacConcen.CDIVPersonalVacConcen.Diferencia]
Carpeta=CDIVPersonalVacConcen
Clave=CDIVPersonalVacConcen.Diferencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Abrir]
Nombre=Abrir
Boton=2
NombreDesplegar=&Abrir
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[CDIVPersonalVacConcen.Columnas]
TipoContrato=78
Sindicato=89
Ejercicio=48
Moneda=59
Cargos=50
Abonos=46
Diferencia=57





















[Acciones.Detalle]
Nombre=Detalle
Boton=0
NombreDesplegar=Detalle
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIVPersonalVac
Activo=S
Antes=S
Visible=S

AntesExpresiones=asigna(info.personal,CDIVPersonalVacConcen:CDIVPersonalVacConcen.Personal)












[CDIVPersonalVacConcen.ListaEnCaptura]
(Inicio)=CDIVPersonalVacConcen.TipoContrato
CDIVPersonalVacConcen.TipoContrato=CDIVPersonalVacConcen.Sindicato
CDIVPersonalVacConcen.Sindicato=CDIVPersonalVacConcen.Ejercicio
CDIVPersonalVacConcen.Ejercicio=CDIVPersonalVacConcen.Cargos
CDIVPersonalVacConcen.Cargos=CDIVPersonalVacConcen.Abonos
CDIVPersonalVacConcen.Abonos=CDIVPersonalVacConcen.Diferencia
CDIVPersonalVacConcen.Diferencia=(Fin)

[CDIVPersonalVacConcen.ListaCamposAValidar]
(Inicio)=CDIVPersonalVacConcen.Personal
CDIVPersonalVacConcen.Personal=CDIVPersonalVacConcen.Nombre
CDIVPersonalVacConcen.Nombre=CDIVPersonalVacConcen.Proyecto
CDIVPersonalVacConcen.Proyecto=CDIVPersonalVacConcen.Departamento
CDIVPersonalVacConcen.Departamento=CDIVPersonalVacConcen.FechaAlta
CDIVPersonalVacConcen.FechaAlta=CDIVPersonalVacConcen.FechaAntiguedad
CDIVPersonalVacConcen.FechaAntiguedad=CDIVPersonalVacConcen.Estatus
CDIVPersonalVacConcen.Estatus=(Fin)

[CDIVPersonalVacConcen.ListaOrden]
(Inicio)=CDIVPersonalVacConcen.Personal	(Acendente)
CDIVPersonalVacConcen.Personal	(Acendente)=CDIVPersonalVacConcen.Ejercicio	(Acendente)
CDIVPersonalVacConcen.Ejercicio	(Acendente)=(Fin)

















[Forma.ListaAcciones]
(Inicio)=Abrir
Abrir=Cerrar
Cerrar=(Fin)
