
[Forma]
Clave=CDITempInscripMem
Icono=0
Modulos=(Todos)
Nombre=Descuentos Inscripciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDITempInscripMem
CarpetaPrincipal=CDITempInscripMem
PosicionInicialIzquierda=433
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
[CDITempInscripMem]
Estilo=Ficha
Clave=CDITempInscripMem
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
ListaEnCaptura=Info.CDIMembresia
CarpetaVisible=S



[CDITempInscripMem.Info.CDIMembresia]
Carpeta=CDITempInscripMem
Clave=Info.CDIMembresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[CDITempInscripMem.ListaEnCaptura]
(Inicio)=Info.CDIMembresia
Info.CDIMembresia=Info.CDIMembresiaListaA
Info.CDIMembresiaListaA=Info.CDIMembresiaListaD
Info.CDIMembresiaListaD=(Fin)



[Acciones.Aceptar]
Nombre=Aceptar
Boton=18
NombreEnBoton=S
NombreDesplegar=Calcuar descuentos
Multiple=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S
Visible=S

ListaAccionesMultiples=(Lista)
Antes=S
AntesExpresiones=asigna(info.EstacionTrabajo,estacionTrabajo)
[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.Forma]
Nombre=Forma
Boton=0
TipoAccion=Formas
Activo=S
Visible=S
ClaveAccion=CDITempInscrip



[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Forma
Forma=(Fin)
