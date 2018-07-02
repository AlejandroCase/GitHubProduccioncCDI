
[Forma]
Clave=vic_InmuebleImportePre
Icono=0
Modulos=(Todos)

PosicionInicialIzquierda=480
PosicionInicialArriba=303
PosicionInicialAlturaCliente=106
PosicionInicialAncho=340
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Nombre=Info.Descripcion


ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
ListaAcciones=(Lista)
Comentarios=<T>Inmueble: <T> + Info.Nombre
BarraAyuda=S
PosicionSec1=261
[Inicial.vic_InmuebleCargoPre.Importe]
Carpeta=Inicial
Clave=vic_InmuebleCargoPre.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
EspacioPrevio=N
[Inicial.vic_InmuebleCargoPre.Factor]
Carpeta=Inicial
Clave=vic_InmuebleCargoPre.Factor
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





[Acciones.Detalle]
Nombre=Detalle
Boton=6
NombreEnBoton=S
NombreDesplegar=&Ver Detalle
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S



EspacioPrevio=S
[Inicial.ListaEnCaptura]
(Inicio)=vic_InmuebleCargoPre.Importe
vic_InmuebleCargoPre.Importe=vic_InmuebleCargoPre.Factor
vic_InmuebleCargoPre.Factor=(Fin)























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
ListaEnCaptura=Info.Importe
CarpetaVisible=S

CampoAccionAlEnter=Detalle
[(Variables).Info.Importe]
Carpeta=(Variables)
Clave=Info.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco



AccionAlEnter=Detalle
[Acciones.Detalle.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S



Expresion=//EjecutarSQL(<T>vic_spCargaDetalleContrato :tInmueble, :tReferencia, :tFactor, :nImporte, :tEmpresa<T>, Info.Inmueble, Info.Descripcion, Info.vic_Factor, Info.Importe, Empresa)<BR>EjecutarSQL(<T>vic_spBorrarCargo :tInmueble, :tReferencia<T>,Info.Inmueble,Info.Descripcion)<BR>Si Info.Descripcion = <T>Cargo por Igual por Local<T><BR>Entonces EjecutarSQL(<T>vic_spCargaDetalleLocal :tInmueble, :tReferencia, :tFactor, :nImporte, :tEmpresa<T>, Info.Inmueble, Info.Descripcion, <T><T>, Info.Importe, Empresa)<BR>Sino<BR>EjecutarSQL(<T>vic_spCargaDetalleContrato :tInmueble, :tReferencia, :tFactor, :nImporte, :tEmpresa<T>, Info.Inmueble, Info.Descripcion, <T><T>, Info.Importe, Empresa)<BR>Fin
[Acciones.Detalle.Mostrar]
Nombre=Mostrar
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
















Expresion=Si Info.Descripcion = <T>Cargo por Igual por Local<T><BR>Entonces<BR>    Forma(<T>vic_InmuebleCargoIndiviso2<T>)<BR>Sino<BR>    Forma(<T>vic_InmuebleFactorContrato<T>)          <BR>Fin
[Acciones.Detalle.Asigna Variables]
Nombre=Asigna Variables
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S









[Acciones.Detalle.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S




[(Variables).ListaEnCaptura]
(Inicio)=Info.Importe
Info.Importe=Info.vic_Factor
Info.vic_Factor=(Fin)














[Detalle.Columnas]
IDContrato=64
RazonSocial=304
Factor=64
Importe=84
ImporteImpuestos=106

[Acciones.Detalle.ListaAccionesMultiples]
(Inicio)=Asigna Variables
Asigna Variables=Expresion
Expresion=Mostrar
Mostrar=Aceptar
Aceptar=(Fin)





[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Detalle
Detalle=(Fin)
