
[Forma]
Clave=CDIMaterias
Icono=0
Modulos=(Todos)
Nombre=Materias

ListaCarpetas=CDIMaterias
CarpetaPrincipal=CDIMaterias
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
ListaAcciones=(Lista)
[CDIMaterias]
Estilo=Ficha
Pestana=S
Clave=CDIMaterias
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMaterias
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

[CDIMaterias.CDIMaterias.id_Mat]
Carpeta=CDIMaterias
Clave=CDIMaterias.id_Mat
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMaterias.CDIMaterias.Nombre]
Carpeta=CDIMaterias
Clave=CDIMaterias.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIMaterias.CDIMaterias.Materia]
Carpeta=CDIMaterias
Clave=CDIMaterias.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIMaterias.CDIMaterias.Creditos]
Carpeta=CDIMaterias
Clave=CDIMaterias.Creditos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIMaterias.Columnas]
id_Mat=64
Nombre=304
Materia=304
Creditos=64

[CDIMaterias.ListaEnCaptura]
(Inicio)=CDIMaterias.id_Mat
CDIMaterias.id_Mat=CDIMaterias.Nombre
CDIMaterias.Nombre=CDIMaterias.Materia
CDIMaterias.Materia=CDIMaterias.Creditos
CDIMaterias.Creditos=(Fin)

[Acciones.&Guardar]
Nombre=&Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

NombreEnBoton=S
[Acciones.&Eliminar]
Nombre=&Eliminar
Boton=36
NombreDesplegar=&Eliminar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S





NombreEnBoton=S




[Forma.ListaAcciones]
(Inicio)=&Guardar
&Guardar=&Eliminar
&Eliminar=(Fin)
