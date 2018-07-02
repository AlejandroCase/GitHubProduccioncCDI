
[Forma]
Clave=CDIComparativoExplora
Icono=0
Modulos=(Todos)
Nombre=Explorador Comparativo Ingresos Egresos

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=497
PosicionInicialArriba=301
PosicionInicialAlturaCliente=157
PosicionInicialAncho=313
BarraAcciones=S
AccionesCentro=S
VentanaColor=Plata
ExpresionesAlCerrar=ComparativoIEExplora
ExpresionesAlActivar=asigna(Info.Proyecto,<T><T>)<BR>ASIGNA(Info.Periodo,0)<BR>ASIGNA(Info.Ejercicio,0)<BR>ASIGNA(Info.CDIEjercicioComp,0)
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
CarpetaVisible=S

ListaEnCaptura=(Lista)

[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Periodo]
Carpeta=(Variables)
Clave=Info.Periodo
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


[Acciones.Preliminar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S




[Acciones.Preliminar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
ConCondicion=S
EjecucionConError=S
Visible=S






Expresion=Si<BR>  Info.Desglosar en (<T>SI<T>, <T>si<T>, <T>Si<T>)<BR>Entonces<BR>  ReportePantalla( <T>CDIRepIngresosEgresos<T> )<BR>SiNo<BR>  ReportePantalla( <T>CDIRepIngresosEgresosTotal<T> )<BR>Fin
EjecucionCondicion=(Info.Ejercicio >  0) y (Info.Periodo > 0)
EjecucionMensaje=<T>Ejercicio o Periodo Incorrectos<T>
[(Variables).Info.CDIEjercicioComp]
Carpeta=(Variables)
Clave=Info.CDIEjercicioComp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Lista.Columnas]
0=135
1=192








[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Expresion
Expresion=(Fin)
















[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S
GuardarAntes=S
EnBarraAcciones=S
EspacioPrevio=S







Multiple=S
ListaAccionesMultiples=(Lista)
[(Variables).ListaEnCaptura]
(Inicio)=Info.Proyecto
Info.Proyecto=Info.Periodo
Info.Periodo=Info.Ejercicio
Info.Ejercicio=Info.CDIEjercicioComp
Info.CDIEjercicioComp=(Fin)

[Acciones.Aceptar.1]
Nombre=1
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Aceptar.2]
Nombre=2
Boton=0
TipoAccion=expresion
Activo=S
Visible=S







Expresion=EjecutarSQL( <T>EXEC spCDIExploraComparativoInEgreEjercicio :tEm , :tproy, :nPer, :nEjr, :nEjercom , :tSi, :tUsu, :nEsta<T>, Empresa, Info.Proyecto, Info.Periodo, Info.Ejercicio,Info.CDIEjercicioComp, <T>SI<T>,USUARIO, EstacionTrabajo )


[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=1
1=2
2=(Fin)

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S



















[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
