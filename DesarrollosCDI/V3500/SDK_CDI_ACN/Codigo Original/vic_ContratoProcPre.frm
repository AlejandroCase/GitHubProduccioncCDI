
[Forma]
Clave=vic_ContratoProcPre
Icono=4
Modulos=(Todos)
Nombre=Proceso Pre

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
AccionesTamanoBoton=15x5
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Fecha, FechaTrabajo)
ListaAcciones=(Lista)
AccionesCentro=S
AccionesDivision=S
PosicionInicialIzquierda=459
PosicionInicialArriba=376
PosicionInicialAlturaCliente=77
PosicionInicialAncho=234
BarraHerramientas=S
[(Variables)]
Estilo=Ficha
Clave=(Variables)
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
ListaEnCaptura=Info.Fecha
CarpetaVisible=S

PermiteEditar=S
[(Variables).Info.Fecha]
Carpeta=(Variables)
Clave=Info.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S


[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=ProcesarSQL(<T>vic_spPreBatch :fFecha, :nEstacionTrabajo, :tEmpresa, :tUsuario, :nSucursal<T>, Info.Fecha, EstacionTrabajo, Empresa, Usuario, Sucursal)
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
Multiple=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

EnBarraHerramientas=S
[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cancelar.Cancelar]
Nombre=Cancelar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreDesplegar=&Cancelar
Multiple=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S


EnBarraHerramientas=S


EspacioPrevio=S


[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)










[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=Aceptar
Aceptar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
