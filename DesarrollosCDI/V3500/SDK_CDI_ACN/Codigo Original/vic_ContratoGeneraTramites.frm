
[Forma]
Clave=vic_ContratoGeneraTramites
Icono=4
Modulos=(Todos)
Nombre=Detalle del Trámite
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal

ListaCarpetas=vic_ContratoGeneraTramites
CarpetaPrincipal=vic_ContratoGeneraTramites
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=266
PosicionInicialArriba=250
PosicionInicialAlturaCliente=234
PosicionInicialAncho=492
[vic_ContratoGeneraTramites]
Estilo=Ficha
Clave=vic_ContratoGeneraTramites
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGeneraTramites
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

[vic_ContratoGeneraTramites.vic_ContratoGeneraTramites.NombrePlantilla]
Carpeta=vic_ContratoGeneraTramites
Clave=vic_ContratoGeneraTramites.NombrePlantilla
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=21
[vic_ContratoGeneraTramites.vic_ContratoGeneraTramites.Actividad]
Carpeta=vic_ContratoGeneraTramites
Clave=vic_ContratoGeneraTramites.Actividad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[vic_ContratoGeneraTramites.vic_ContratoGeneraTramites.Titulo]
Carpeta=vic_ContratoGeneraTramites
Clave=vic_ContratoGeneraTramites.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[vic_ContratoGeneraTramites.vic_ContratoGeneraTramites.Recurso]
Carpeta=vic_ContratoGeneraTramites
Clave=vic_ContratoGeneraTramites.Recurso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=21
ColorFondo=Blanco
ColorFuente=Negro

[vic_ContratoGeneraTramites.vic_ContratoGeneraTramites.Email]
Carpeta=vic_ContratoGeneraTramites
Clave=vic_ContratoGeneraTramites.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[vic_ContratoGeneraTramites.vic_ContratoGeneraTramites.Concepto]
Carpeta=vic_ContratoGeneraTramites
Clave=vic_ContratoGeneraTramites.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[vic_ContratoGeneraTramites.vic_ContratoGeneraTramites.Notaria]
Carpeta=vic_ContratoGeneraTramites
Clave=vic_ContratoGeneraTramites.Notaria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro


Tamano=21
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
NombreDesplegar=Cancelar
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S


Antes=S
AntesExpresiones=EjecutarSQL(<T>vic_spEliminaContratoPlantilla<T>)
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



[vic_ContratoGeneraTramites.vic_Notaria.NombreCorto]
Carpeta=vic_ContratoGeneraTramites
Clave=vic_Notaria.NombreCorto
Editar=S
3D=S
Pegado=S
Tamano=29
ColorFondo=Plata
ColorFuente=Negro



[vic_Notaria.Columnas]
0=129
1=166
2=162
3=250
4=-2









[vic_ContratoGeneraTramites.Recurso.Nombre]
Carpeta=vic_ContratoGeneraTramites
Clave=Recurso.Nombre
Editar=S
3D=S
Pegado=S
Tamano=29
ColorFondo=Plata
ColorFuente=Negro


[Lista.Columnas]
0=-2
1=232
2=-2

[vic_ContratoGeneraTramites.ListaEnCaptura]
(Inicio)=vic_ContratoGeneraTramites.NombrePlantilla
vic_ContratoGeneraTramites.NombrePlantilla=vic_ContratoGeneraTramites.Actividad
vic_ContratoGeneraTramites.Actividad=vic_ContratoGeneraTramites.Titulo
vic_ContratoGeneraTramites.Titulo=vic_ContratoGeneraTramites.Recurso
vic_ContratoGeneraTramites.Recurso=Recurso.Nombre
Recurso.Nombre=vic_ContratoGeneraTramites.Email
vic_ContratoGeneraTramites.Email=vic_ContratoGeneraTramites.Concepto
vic_ContratoGeneraTramites.Concepto=vic_ContratoGeneraTramites.Notaria
vic_ContratoGeneraTramites.Notaria=vic_Notaria.NombreCorto
vic_Notaria.NombreCorto=(Fin)














[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)





















[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cancelar
Cancelar=(Fin)
