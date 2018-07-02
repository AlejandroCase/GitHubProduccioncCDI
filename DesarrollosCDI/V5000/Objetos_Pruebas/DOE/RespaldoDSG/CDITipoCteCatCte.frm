[Forma]
Clave=CDITipoCteCatCte
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Especificar

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=615
PosicionInicialArriba=313
PosicionInicialAlturaCliente=220
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


[(Variables).Info.Ctetipo]
Carpeta=(Variables)
Clave=Info.Ctetipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CteCat]
Carpeta=(Variables)
Clave=Info.CteCat
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
(Inicio)=Info.Ctetipo
Info.Ctetipo=Info.CteCat
Info.CteCat=(Fin)

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
