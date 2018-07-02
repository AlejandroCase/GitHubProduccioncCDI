
[Forma]
Clave=vic_ContMinuta
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=<T>Minuta del Contrato <T> + Info.ID
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Minuta
CarpetaPrincipal=Minuta
PosicionInicialIzquierda=207
PosicionInicialArriba=251
PosicionInicialAlturaCliente=327
PosicionInicialAncho=738
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
Comentarios=Info.Descripcion
VentanaExclusiva=S
IniciarAgregando=S
ListaAcciones=(Lista)
[Minuta]
Estilo=Ficha
PestanaOtroNombre=S
PestanaNombre=Minuta del Contrato
Clave=Minuta
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContMinuta
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

[Minuta.vic_ContMinuta.Fecha]
Carpeta=Minuta
Clave=vic_ContMinuta.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

Efectos=[Negritas]
[Minuta.vic_ContMinuta.Titulo]
Carpeta=Minuta
Clave=vic_ContMinuta.Titulo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=55
ColorFondo=Blanco
ColorFuente=Negro

Efectos=[Negritas]
[Minuta.vic_ContMinuta.Texto]
Carpeta=Minuta
Clave=vic_ContMinuta.Texto
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=100x15
ColorFondo=Blanco
ColorFuente=Negro
















[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

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
NombreEnBoton=S
NombreDesplegar=&Cancelar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
EspacioPrevio=S

[Minuta.ListaEnCaptura]
(Inicio)=vic_ContMinuta.Fecha
vic_ContMinuta.Fecha=vic_ContMinuta.Titulo
vic_ContMinuta.Titulo=vic_ContMinuta.Texto
vic_ContMinuta.Texto=(Fin)



















[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
