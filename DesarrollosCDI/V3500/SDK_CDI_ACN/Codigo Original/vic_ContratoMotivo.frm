
[Forma]
Clave=vic_ContratoMotivo
Icono=4
Modulos=(Todos)
Nombre=<T>Baja de <T> + Info.Descripcion
AccionesTamanoBoton=15x5

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=391
PosicionInicialArriba=313
PosicionInicialAlturaCliente=117
PosicionInicialAncho=442
ListaAcciones=(Lista)
AccionesCentro=S
AccionesDivision=S
BarraHerramientas=S
Comentarios=<T>Contrato <T> + Info.ID
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=por Diseño
VentanaExclusiva=S
VentanaEstadoInicial=Normal
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
ListaEnCaptura=Info.Motivo
CarpetaVisible=S

PestanaOtroNombre=S
PestanaNombre=Motivo
PermiteEditar=S

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
Activo=S
Visible=S

ConfirmarAntes=S
EnBarraHerramientas=S
Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S




















EnBarraHerramientas=S
EspacioPrevio=S
[(Variables).ListaEnCaptura]
(Inicio)=Info.Motivo
Info.Motivo=Info.Descripcion
Info.Descripcion=(Fin)







[(Variables).Info.Motivo]
Carpeta=(Variables)
Clave=Info.Motivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50x15
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

Expresion=ProcesarSQL(<T>vic_spBajaContratos :nID, :tMotivo, :tUsuario, :fFecha, :tTipoBaja<T>, Info.ID, Info.Motivo, Usuario, Hoy, Info.Descripcion)
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S














[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=Aceptar
Aceptar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
