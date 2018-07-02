[Forma]
Clave=CDIEspFechasEst
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Especificar

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=615
PosicionInicialArriba=313
PosicionInicialAlturaCliente=240
PosicionInicialAncho=283
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
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


[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIComite]
Carpeta=(Variables)
Clave=Info.CDIComite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIPlan]
Carpeta=(Variables)
Clave=Info.CDIPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDISocioLista]
Carpeta=(Variables)
Clave=Info.CDISocioLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIMembresiaListaD]
Carpeta=(Variables)
Clave=Info.CDIMembresiaListaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIEstatusSocio]
Carpeta=(Variables)
Clave=Info.CDIEstatusSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






[Lista.Columnas]
0=135
1=192

[(Variables).ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Info.CDIEstatusSocio
Info.CDIEstatusSocio=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
