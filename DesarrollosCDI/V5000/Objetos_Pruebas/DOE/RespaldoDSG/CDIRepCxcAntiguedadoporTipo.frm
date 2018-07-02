
[Forma]
Clave=CDIRepCxcAntiguedadoporTipo
Icono=0
BarraHerramientas=S
Modulos=(Todos)
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
ListaAcciones=(Lista)
PosicionInicialIzquierda=431
PosicionInicialArriba=236
PosicionInicialAlturaCliente=257
PosicionInicialAncho=503
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaExclusiva=S
VentanaEscCerrar=S
ExpresionesAlMostrar=Asigna(Info.ClienteD, SQL(<T>SELECT MIN(Cliente) FROM Cte<T>))<BR>Asigna(Info.ClienteA, SQL(<T>SELECT MAX(Cliente) FROM Cte<T>))<BR>Asigna(Info.Desglosar, <T>Si<T>)<BR>Asigna(Info.Moneda, <T>(Todas)<T>)<BR>Asigna(Rep.Titulo, <T>Antigüedad de Saldos - Cuentas por Cobrar<T>)<BR>Asigna(Info.Modulo, <T>CXC<T>)
Nombre=Antigüedad de Saldos por Tipo
PosicionSec1=96
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
FichaEspacioEntreLineas=9
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Blanco
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

ListaEnCaptura=(Lista)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Imprimir.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Imprimir.Imprimir]
Nombre=Imprimir
Boton=0
TipoAccion=Reportes Impresora
ClaveAccion=CDIAntiguedadporTipo
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
EspacioPrevio=S

[Acciones.Preliminar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.Preliminar]
Nombre=Preliminar
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIAntiguedadporTipo
Activo=S
Visible=S


[(Variables).Info.ClienteD]
Carpeta=(Variables)
Clave=Info.ClienteD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Efectos=[Negritas]
[(Variables).Info.ClienteA]
Carpeta=(Variables)
Clave=Info.ClienteA
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Efectos=[Negritas]
[(Variables).Info.Desglosar]
Carpeta=(Variables)
Clave=Info.Desglosar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Moneda]
Carpeta=(Variables)
Clave=Info.Moneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CteTipo]
Carpeta=(Variables)
Clave=Info.CteTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Rep.Titulo]
Carpeta=(Variables)
Clave=Rep.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[Lista.Columnas]
Tipo=207









Concepto=218
[(Variables).Info.Membresia]
Carpeta=(Variables)
Clave=Info.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[ListaMembresia.Columnas]
Membresia=64


[Acciones.Imprimir.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Imprimir
Imprimir=(Fin)





[(Variables).Info.CDISocioLista]
Carpeta=(Variables)
Clave=Info.CDISocioLista
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[(Variables).Info.CDIConceptoLista]
Carpeta=(Variables)
Clave=Info.CDIConceptoLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco










[(Variables).ListaEnCaptura]
(Inicio)=Info.ClienteD
Info.ClienteD=Info.ClienteA
Info.ClienteA=Info.Desglosar
Info.Desglosar=Info.Moneda
Info.Moneda=Info.CteTipo
Info.CteTipo=Info.Membresia
Info.Membresia=Info.CDISocioLista
Info.CDISocioLista=Info.CDIConceptoLista
Info.CDIConceptoLista=Rep.Titulo
Rep.Titulo=(Fin)






[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Preliminar
Preliminar=(Fin)










[Acciones.Previo]
Nombre=Previo
Boton=68
NombreEnBoton=S
NombreDesplegar=Vista Preliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S













[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Previo
Previo=(Fin)
