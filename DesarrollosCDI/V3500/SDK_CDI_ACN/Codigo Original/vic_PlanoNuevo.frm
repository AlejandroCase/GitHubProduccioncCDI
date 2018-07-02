
[Forma]
Clave=vic_PlanoNuevo
Icono=4
Modulos=(Todos)
Nombre=Plano
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
IniciarAgregando=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=vic_Plano
CarpetaPrincipal=vic_Plano
PosicionInicialIzquierda=307
PosicionInicialArriba=253
PosicionInicialAlturaCliente=324
PosicionInicialAncho=538
ListaAcciones=(Lista)
[vic_Plano]
Estilo=Ficha
Clave=vic_Plano
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Plano
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=10
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

[vic_Plano.vic_Plano.Plano]
Carpeta=vic_Plano
Clave=vic_Plano.Plano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[vic_Plano.vic_Plano.Nombre]
Carpeta=vic_Plano
Clave=vic_Plano.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=57
ColorFondo=Blanco

[vic_Plano.vic_Plano.NombreCorto]
Carpeta=vic_Plano
Clave=vic_Plano.NombreCorto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[vic_Plano.vic_Plano.Lista]
Carpeta=vic_Plano
Clave=vic_Plano.Lista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

EspacioPrevio=N
[vic_Plano.vic_Plano.Familia]
Carpeta=vic_Plano
Clave=vic_Plano.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=57
ColorFondo=Blanco

[vic_Plano.vic_Plano.Categoria]
Carpeta=vic_Plano
Clave=vic_Plano.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=57
ColorFondo=Blanco

[vic_Plano.vic_Plano.Grupo]
Carpeta=vic_Plano
Clave=vic_Plano.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=57
ColorFondo=Blanco

[vic_Plano.vic_Plano.Tipoplano]
Carpeta=vic_Plano
Clave=vic_Plano.Tipoplano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=57
ColorFondo=Blanco
















[Lista.Columnas]
Familia=233

0=148
1=165
2=-2
3=158
4=103
5=151
6=-2
[vic_TipoPlano.Columnas]
0=108
1=127
2=119
3=149
4=118
5=136
6=-2

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
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




[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)










[vic_Plano.NombreInmueble]
Carpeta=vic_Plano
Clave=NombreInmueble
Editar=S
3D=S
Pegado=S
Tamano=42
ColorFondo=Blanco
ColorFuente=Gris

















[vic_Plano.vic_Plano.Estatus]
Carpeta=vic_Plano
Clave=vic_Plano.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco



[vic_Plano.vic_Plano.NombreForma]
Carpeta=vic_Plano
Clave=vic_Plano.NombreForma
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

LineaNueva=S



[vic_Plano.ListaEnCaptura]
(Inicio)=vic_Plano.Plano
vic_Plano.Plano=vic_Plano.NombreCorto
vic_Plano.NombreCorto=vic_Plano.Nombre
vic_Plano.Nombre=vic_Plano.Lista
vic_Plano.Lista=NombreInmueble
NombreInmueble=vic_Plano.Categoria
vic_Plano.Categoria=vic_Plano.Grupo
vic_Plano.Grupo=vic_Plano.Familia
vic_Plano.Familia=vic_Plano.Tipoplano
vic_Plano.Tipoplano=vic_Plano.Estatus
vic_Plano.Estatus=vic_Plano.NombreForma
vic_Plano.NombreForma=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cancelar
Cancelar=(Fin)
