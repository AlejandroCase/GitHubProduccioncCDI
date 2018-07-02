
[Forma]
Clave=CDIEspRepAusDep
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Especificar

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=615
PosicionInicialArriba=198
PosicionInicialAlturaCliente=306
PosicionInicialAncho=304
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna( Info.Campo,<T>Area<T> )<BR>Asigna( Info.CampoExtra,<T>Tipo<T> )
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

[(Variables).Filtro.Proyecto]
Carpeta=(Variables)
Clave=Filtro.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

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

[Lista.Columnas]
0=310
1=282


PeriodoTipo=247
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















[(Variables).Info.PeriodoTipo]
Carpeta=(Variables)
Clave=Info.PeriodoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[(Variables).Info.Personal]
Carpeta=(Variables)
Clave=Info.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco





[(Variables).Info.Campo]
Carpeta=(Variables)
Clave=Info.Campo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CampoExtra]
Carpeta=(Variables)
Clave=Info.CampoExtra
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco









[(Variables).Info.Sucursal]
Carpeta=(Variables)
Clave=Info.Sucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[(Variables).Info.Departamento]
Carpeta=(Variables)
Clave=Info.Departamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[(Variables).ListaEnCaptura]
(Inicio)=Info.Personal
Info.Personal=Info.PeriodoTipo
Info.PeriodoTipo=Info.Departamento
Info.Departamento=Filtro.Proyecto
Filtro.Proyecto=Info.Sucursal
Info.Sucursal=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Info.Campo
Info.Campo=Info.CampoExtra
Info.CampoExtra=(Fin)



[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
