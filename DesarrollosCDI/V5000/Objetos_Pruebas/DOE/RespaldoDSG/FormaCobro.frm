[Forma]
Clave=FormaCobro
Nombre=Fecha y Sucursal
Icono=0
Modulos=(Todos)
MovModulo=VTAS
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=500
PosicionInicialArriba=300
PosicionInicialAlturaCliente=113
PosicionInicialAncho=256
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=aceptar
AccionesCentro=S
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
CarpetaVisible=S
FichaEspacioEntreLineas=8
FichaEspacioNombres=0
FichaNombres=Izquierda
FichaAlineacion=Centrado
FichaColorFondo=Plata
ListaEnCaptura=Info.FechaA<BR>Info.Sucursal
PermiteEditar=S
FichaEspacioNombresAuto=S
[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
[(Variables).Info.Sucursal]
Carpeta=(Variables)
Clave=Info.Sucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
[Acciones.aceptar]
Nombre=aceptar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S
