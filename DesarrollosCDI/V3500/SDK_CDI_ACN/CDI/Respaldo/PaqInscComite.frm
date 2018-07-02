
[Forma]
Clave=PaqInscComite
Icono=0
Modulos=(Todos)
Nombre=Comité
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaEscCerrar=S

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=562
PosicionInicialArriba=326
PosicionInicialAlturaCliente=78
PosicionInicialAncho=241
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Hojas
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
ListaEnCaptura=Info.CDIComite
CarpetaVisible=S

[(Variables).Info.CDIComite]
Carpeta=(Variables)
Clave=Info.CDIComite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
0=135
1=192

[Acciones.Hojas]
Nombre=Hojas
Boton=6
NombreEnBoton=S
NombreDesplegar=Generar Hojas
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIPaqInscMenu
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Hojas.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Hojas.cA]
Nombre=cA
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIPaqInscMenu
Activo=S
Visible=S

[Acciones.Hojas.ListaAccionesMultiples]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=cA
cA=(Fin)
