
[Forma]
Clave=CDICPCalDisponibleCom
Icono=0
Modulos=(Todos)
MovModulo=CDICPCalDisponibleCom
Nombre=Disponible CP

ListaCarpetas=CDICPCalDisponibleCom
CarpetaPrincipal=CDICPCalDisponibleCom
PosicionInicialAlturaCliente=117
PosicionInicialAncho=454
PosicionInicialIzquierda=468
PosicionInicialArriba=320
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
BarraHerramientas=S
ListaAcciones=Acep
AccionesTamanoBoton=15x5
AccionesDerecha=S
[CDICPCalDisponibleCom]
Estilo=Ficha
Clave=CDICPCalDisponibleCom
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPCalDisponibleCom
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=15
FichaEspacioNombres=56
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

FichaEspacioNombresAuto=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDICPCalDisponibleCom.ClavePresupuestal  =<T>{Info.ClavePresupuestal}<T> AND<BR>CDICPCalDisponibleCom.Ejercicio=<T>{Info.Ejercicio}<T> AND<BR>CDICPCalDisponibleCom.Periodo=<T>{Info.Periodo}<T>
[CDICPCalDisponibleCom.CDICPCalDisponibleCom.ClavePresupuestal]
Carpeta=CDICPCalDisponibleCom
Clave=CDICPCalDisponibleCom.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

EspacioPrevio=S
[CDICPCalDisponibleCom.CDICPCalDisponibleCom.Proyecto]
Carpeta=CDICPCalDisponibleCom
Clave=CDICPCalDisponibleCom.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[CDICPCalDisponibleCom.CDICPCalDisponibleCom.Ejercicio]
Carpeta=CDICPCalDisponibleCom
Clave=CDICPCalDisponibleCom.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=5
[CDICPCalDisponibleCom.CDICPCalDisponibleCom.Periodo]
Carpeta=CDICPCalDisponibleCom
Clave=CDICPCalDisponibleCom.Periodo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=5
Pegado=S
[CDICPCalDisponibleCom.CDICPCalDisponibleCom.Presupuesto]
Carpeta=CDICPCalDisponibleCom
Clave=CDICPCalDisponibleCom.Presupuesto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Amarillo

Tamano=10














Pegado=S











[Acciones.Acep]
Nombre=Acep
Boton=23
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

EspacioPrevio=S
[CDICPCalDisponibleCom.ListaEnCaptura]
(Inicio)=CDICPCalDisponibleCom.ClavePresupuestal
CDICPCalDisponibleCom.ClavePresupuestal=CDICPCalDisponibleCom.Proyecto
CDICPCalDisponibleCom.Proyecto=CDICPCalDisponibleCom.Ejercicio
CDICPCalDisponibleCom.Ejercicio=CDICPCalDisponibleCom.Periodo
CDICPCalDisponibleCom.Periodo=CDICPCalDisponibleCom.Presupuesto
CDICPCalDisponibleCom.Presupuesto=(Fin)
