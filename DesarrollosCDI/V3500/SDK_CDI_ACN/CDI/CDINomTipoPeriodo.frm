
[Forma]
Clave=CDINomTipoPeriodo
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Nomina Tipo-Periodo

ListaCarpetas=CDINomTipoPeriodo
CarpetaPrincipal=CDINomTipoPeriodo
PosicionInicialAlturaCliente=259
PosicionInicialAncho=441
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=462
PosicionInicialArriba=235
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDINomTipoPeriodo]
Estilo=Hoja
PestanaOtroNombre=S
Clave=CDINomTipoPeriodo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDINomTipoPeriodo
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[CDINomTipoPeriodo.CDINomTipoPeriodo.TipoNomina]
Carpeta=CDINomTipoPeriodo
Clave=CDINomTipoPeriodo.TipoNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDINomTipoPeriodo.CDINomTipoPeriodo.TipoPeriodo]
Carpeta=CDINomTipoPeriodo
Clave=CDINomTipoPeriodo.TipoPeriodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDINomTipoPeriodo.Columnas]
TipoNomina=166
TipoPeriodo=110

Mov=124
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

EspacioPrevio=S









[CDINomTipoPeriodo.ListaEnCaptura]
(Inicio)=CDINomTipoPeriodo.Mov
CDINomTipoPeriodo.Mov=CDINomTipoPeriodo.TipoNomina
CDINomTipoPeriodo.TipoNomina=CDINomTipoPeriodo.TipoPeriodo
CDINomTipoPeriodo.TipoPeriodo=(Fin)

[CDINomTipoPeriodo.CDINomTipoPeriodo.Mov]
Carpeta=CDINomTipoPeriodo
Clave=CDINomTipoPeriodo.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Aceptar
Aceptar=(Fin)