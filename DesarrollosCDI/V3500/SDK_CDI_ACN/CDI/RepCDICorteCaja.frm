
[Forma]
Clave=RepCDICorteCaja
Icono=0
Modulos=(Todos)
Nombre=<T>Reporte Analítico de Corte de Caja<T>

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=421
PosicionInicialArriba=263
PosicionInicialAlturaCliente=149
PosicionInicialAncho=439
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraHerramientas=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Proyecto, <T>(Todos)<T>)<BR>Asigna(Info.CDICtaDineroCaja, <T>(Todas)<T>)<BR>Asigna(Info.CDICajero, <T>(Todos)<T>)<BR>Asigna(Info.Nombre, <T>Todas las Cuentas<T>)<BR>Asigna(Info.Nombre2, <T>Todos los Cajeros<T>)
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
FichaEspacioEntreLineas=14
FichaEspacioNombres=109
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

FichaEspacioNombresAuto=S
[(Variables).Info.Fecha]
Carpeta=(Variables)
Clave=Info.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Lista.Columnas]
0=106
1=242
2=-2


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

EnBarraHerramientas=S
[Acciones.Imprimie.Variables]
Nombre=Variables
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Imprimie.Reporte]
Nombre=Reporte
Boton=0
TipoAccion=Reportes Pantalla
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreEnBoton=S
NombreDesplegar=&Imprimir
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
EspacioPrevio=S



[Acciones.Preliminar.Variables]
Nombre=Variables
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.Reporte]
Nombre=Reporte
Boton=0
TipoAccion=Reportes Pantalla
Activo=S
Visible=S

ClaveAccion=RepCDICorteCaja
[Acciones.Preliminar]
Nombre=Preliminar
Boton=68
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S



[(Variables).Info.CDICtaDineroCaja]
Carpeta=(Variables)
Clave=Info.CDICtaDineroCaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

AccionAlEnter=NombreCuenta
[(Variables).Info.CDICajero]
Carpeta=(Variables)
Clave=Info.CDICajero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




AccionAlEnter=NombreCajero
[Acciones.NombreCuenta]
Nombre=NombreCuenta
Boton=0
NombreDesplegar=NombreCuenta
TipoAccion=Expresion
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)

[Acciones.NombreCuenta.Asigna]
Nombre=Asigna
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.NombreCuenta.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=Asigna(Info.Nombre, SQL(<T>SELECT Descripcion FROM CtaDinero WHERE CtaDinero = :tCta<T>, Info.CDICtaDineroCaja))
Activo=S
Visible=S


[(Variables).Info.Nombre]
Carpeta=(Variables)
Clave=Info.Nombre
Editar=N
3D=S
Pegado=S
Tamano=28
ColorFondo=Blanco






[Acciones.NombreCajero.AsignaV]
Nombre=AsignaV
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.NombreCajero.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=Asigna(Info.Nombre2, SQL(<T>SELECT Nombre FROM Agente WHERE Agente = :tAgente<T>, Info.CDICajero))
Activo=S
Visible=S

[Acciones.NombreCajero]
Nombre=NombreCajero
Boton=0
NombreDesplegar=Nombre Cajero
Multiple=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

[(Variables).Info.Nombre2]
Carpeta=(Variables)
Clave=Info.Nombre2
3D=S
Pegado=S
Tamano=28
ColorFondo=Blanco




















[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables
Variables=Reporte
Reporte=(Fin)


[Acciones.Imprimir.Reporte]
Nombre=Reporte
Boton=0
TipoAccion=Reportes Impresora
ClaveAccion=RepCDICorteCaja

[Acciones.Imprimir.ListaAccionesMultiples]
(Inicio)=Variables
Variables=Reporte
Reporte=(Fin)














































[Acciones.NombreCuenta.ListaAccionesMultiples]
(Inicio)=Asigna
Asigna=Expresion
Expresion=(Fin)


[Acciones.NombreCajero.ListaAccionesMultiples]
(Inicio)=AsignaV
AsignaV=Expresion
Expresion=(Fin)

[(Variables).ListaEnCaptura]
(Inicio)=Info.Fecha
Info.Fecha=Info.Proyecto
Info.Proyecto=Info.CDICtaDineroCaja
Info.CDICtaDineroCaja=Info.Nombre
Info.Nombre=Info.CDICajero
Info.CDICajero=Info.Nombre2
Info.Nombre2=(Fin)





[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=NombreCuenta
NombreCuenta=NombreCajero
NombreCajero=(Fin)
