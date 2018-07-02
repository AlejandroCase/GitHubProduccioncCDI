
[Forma]
Clave=CDIComparativoEjercicio
Icono=0
Modulos=(Todos)
Nombre=Filtros Comparativo Ingresos Egresos

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=415
PosicionInicialArriba=112
PosicionInicialAlturaCliente=443
PosicionInicialAncho=573
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


[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
EspacioPrevio=S




[(Variables).Info.Desglosar]
Carpeta=(Variables)
Clave=Info.Desglosar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






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


[(Variables).ListaEnCaptura]
(Inicio)=Info.Proyecto
Info.Proyecto=Info.Periodo
Info.Periodo=Info.Ejercicio
Info.Ejercicio=Info.CDIEjercicioComp
Info.CDIEjercicioComp=Info.Desglosar
Info.Desglosar=(Fin)




[Lista.Columnas]
0=135
1=192








[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Expresion
Expresion=(Fin)





[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
