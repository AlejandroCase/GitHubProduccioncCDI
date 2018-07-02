
[Forma]
Clave=CDIFiltrosAjustesPresupIngreso
Icono=35
Modulos=(Todos)
Nombre=Ajuste al Presupuesto de Ingresos

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialAlturaCliente=122
PosicionInicialAncho=440
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=420
PosicionInicialArriba=325
MovModulo=(Todos)
ExpresionesAlMostrar=Asigna(Info.Modulo, <T>VTAS<T>)
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
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


[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Efectos=[Negritas]
[(Variables).Info.PeriodoA]
Carpeta=(Variables)
Clave=Info.PeriodoA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.PeriodoD]
Carpeta=(Variables)
Clave=Info.PeriodoD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







Efectos=[Negritas]

[Lista.Columnas]
Concepto=218




0=135
1=192
[(Variables).Info.CDIConceptoLista]
Carpeta=(Variables)
Clave=Info.CDIConceptoLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Efectos=[Negritas]

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
Visible=S



ListaAccionesMultiples=(Lista)

[Acciones.Preliminar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.Reporte]
Nombre=Reporte
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIRepAjustesPresupuestoIngresos
Activo=S
Visible=S

[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Reporte
Reporte=(Fin)












[(Variables).ListaEnCaptura]
(Inicio)=Info.CDIConceptoLista
Info.CDIConceptoLista=Info.Proyecto
Info.Proyecto=Info.PeriodoD
Info.PeriodoD=Info.PeriodoA
Info.PeriodoA=Info.Ejercicio
Info.Ejercicio=(Fin)







[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
