
[Forma]
Clave=CDIDptoPersonal
Icono=0
CarpetaPrincipal=(Variables)
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Reporte Contraloría

ListaCarpetas=(Variables)
PosicionInicialIzquierda=522
PosicionInicialArriba=282
PosicionInicialAlturaCliente=124
PosicionInicialAncho=321
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionSec1=17
BarraHerramientas=S
ListaAcciones=Preliminar
AccionesTamanoBoton=15x5
AccionesDerecha=S
ExpresionesAlMostrar=asigna(info.usuario, Usuario )
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

FichaEspacioEntreLineas=1
FichaEspacioNombres=119
FichaColorFondo=$0040FF00


FichaNombres=Izquierda
FichaAlineacion=Centrado
FichaEspacioNombresAuto=S
PermiteEditar=S


[(Variables).Info.Ano]
Carpeta=(Variables)
Clave=Info.Ano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[Acciones.Preliminar.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=(Lista)
Activo=S
Visible=S

NombreEnBoton=S
EnBarraHerramientas=S
[Acciones.Preliminar.Pantalla]
Nombre=Pantalla
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIDptoPersonal
Activo=S
Visible=S







[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=Pantalla
Pantalla=(Fin)


[(Variables).Info.Departamento]
Carpeta=(Variables)
Clave=Info.Departamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
0=310
1=282


[Forma.ListaAcciones]
(Inicio)=Preliminar
Preliminar=cA
cA=(Fin)





[(Variables).ListaEnCaptura]
(Inicio)=Info.Ano
Info.Ano=Info.Departamento
Info.Departamento=(Fin)
