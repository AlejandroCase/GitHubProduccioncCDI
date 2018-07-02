
[Forma]
Clave=CDIAcumulaConcepto
Icono=0
Modulos=(Todos)
Nombre=Especificaciones

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=108
PosicionInicialArriba=189
PosicionInicialAlturaCliente=175
PosicionInicialAncho=382
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)



VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
VentanaEscCerrar=S
VentanaAvanzaTab=S
ExpresionesAlMostrar=asigna(info.estaciontrabajo,estaciontrabajo)<BR>asigna(Info.usuario,usuario)
[Lista.Columnas]
0=133
1=270
2=-2

[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[Acciones.RePlan.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S




[Acciones.RePlan.Preliminar]
Nombre=Preliminar
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=TablaConceptoNomina
Activo=S
Visible=S


[CDITablaConceptoNomina.ListaEnCaptura]
(Inicio)=Info.Ejercicio
Info.Ejercicio=Info.Periodo
Info.Periodo=(Fin)



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

[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

AccionAlEnter=
[(Variables).Info.Periodo]
Carpeta=(Variables)
Clave=Info.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


AccionAlEnter=
[Acciones.RePlan.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Preliminar
Preliminar=(Fin)














[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreEnBoton=S
NombreDesplegar=&Preliminar
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIAcumuladoNomina
Activo=S
Visible=S





ListaParametros1=










EspacioPrevio=S









































Multiple=S
ListaAccionesMultiples=(Lista)
ListaParametros=S

[Acciones.Preliminar.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Preliminar.pantalla]
Nombre=pantalla
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIAcumuladoNomina
Activo=S
Visible=S



[Acciones.Activar.FormaT]
Nombre=FormaT
Boton=0
TipoAccion=formas
ClaveAccion=CDIConceptoBase3
Activo=S
Visible=S

[Acciones.Activar.LlamarT]
Nombre=LlamarT
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S





Expresion=SQL(<T>CDIActivarConceptosNomina :nEstacion<T>,Info.EstacionTrabajo)




[Acciones.Activar.Tabla]
Nombre=Tabla
Boton=0
TipoAccion=formas
ClaveAccion=cdiconceptoBase3
Activo=S
Visible=S



[Acciones.Activar.ListaAccionesMultiples]
(Inicio)=fun
fun=Tabla
Tabla=(Fin)












[Acciones.Calcmoto]
Nombre=Calcmoto
Boton=38
NombreDesplegar=&Preferencias
EnBarraHerramientas=S
TipoAccion=formas
ClaveAccion=cdiconceptoBase3
Activo=S
Antes=S
Visible=S







NombreEnBoton=S





















AntesExpresiones=ejecutarSQL(<T>CDIActivarConceptosNomina :nEstacion ,  :tUsuario<T>,Info.EstacionTrabajo,Info.Usuario)
[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=pantalla
pantalla=(Fin)




















[(Variables).ListaEnCaptura]
(Inicio)=Info.Ejercicio
Info.Ejercicio=Info.Periodo
Info.Periodo=Info.CDISucursal
Info.CDISucursal=(Fin)

[(Variables).Info.CDISucursal]
Carpeta=(Variables)
Clave=Info.CDISucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=Calcmoto
Calcmoto=(Fin)
