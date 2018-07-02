
[Forma]
Clave=CDIPuntosMembresiaC
Icono=0
Modulos=(Todos)
Nombre=<T>Dispersión de PuntosCDI<T>
VentanaTipoMarco=Chico
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaCarpetas=CDIPuntosMembresia
CarpetaPrincipal=CDIPuntosMembresia
PosicionInicialIzquierda=350
PosicionInicialArriba=227
PosicionInicialAlturaCliente=276
PosicionInicialAncho=665
Totalizadores=S
PosicionSec1=215
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
VentanaSiempreAlFrente=S
VentanaExclusiva=S
Comentarios=<T>Puntos Comprados: <T>+sql(<T>xpCDICuantosPuntos :nI<T>,Info.id)

VentanaEscCerrar=S
ExpresionesAlMostrar=asigna(info.CDIMembresia,12881)
[CDIPuntosMembresia]
Estilo=Hoja
Clave=CDIPuntosMembresia
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPuntosMembresia
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=(Lista)
VistaMaestra=CDIPuntosMembresia
LlaveLocal=CDIPuntosMembresia.Id
LlaveMaestra=CDIPuntosMembresia.Id
PestanaOtroNombre=S
PestanaNombre=Puntos

[CDIPuntosMembresia.CDIPuntosMembresia.Membresia]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.Membresia
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPuntosMembresia.CDIPuntosMembresia.Socio]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.Socio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPuntosMembresia.CDIPuntosMembresia.Cantidad]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPuntosMembresia.CDIPuntosMembresia.Tipo]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.Tipo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDIPuntosMembresia.Columnas]
Membresia=64
Socio=64
Cantidad=64
Tipo=32

Movid=124
FechaEmision=94
Mov=170
[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Puntos
Totalizadores2=suma(CDIPuntosMembresia:CDIPuntosMembresia.Cantidad)
Totalizadores3=(Cantidades)
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S
TotCarpetaRenglones=CDIPuntosMembresia
ListaEnCaptura=Puntos

TotExpresionesEnSumas=S
TotAlCambiar=S
[(Carpeta Totalizadores).Puntos]
Carpeta=(Carpeta Totalizadores)
Clave=Puntos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata


[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar/Cancelar Cambios
Activo=S
Visible=S
NombreEnBoton=S

EspacioPrevio=S
[Acciones.Guardar Cambios.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion= guardarcambios

[Acciones.Guardar Cambios.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



[Acciones.Guardar Cambios.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)










[CDIPuntosMembresia.CDIPuntosMembresia.Movid]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.Movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIPuntosMembresia.CDIPuntosMembresia.FechaEmision]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIPuntosMembresia.CDIPuntosMembresia.Mov]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDIPuntosMembresia.ListaEnCaptura]
(Inicio)=CDIPuntosMembresia.Membresia
CDIPuntosMembresia.Membresia=CDIPuntosMembresia.Socio
CDIPuntosMembresia.Socio=CDIPuntosMembresia.Mov
CDIPuntosMembresia.Mov=CDIPuntosMembresia.Movid
CDIPuntosMembresia.Movid=CDIPuntosMembresia.FechaEmision
CDIPuntosMembresia.FechaEmision=CDIPuntosMembresia.Cantidad
CDIPuntosMembresia.Cantidad=CDIPuntosMembresia.Tipo
CDIPuntosMembresia.Tipo=(Fin)
