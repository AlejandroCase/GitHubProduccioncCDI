
[Forma]
Clave=CDIAlumnos
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=CDIAlumnos

ListaCarpetas=CDIAlumnos
CarpetaPrincipal=CDIAlumnos
Menus=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialAlturaCliente=483
PosicionInicialAncho=908
AutoGuardar=S
PosicionInicialIzquierda=338
PosicionInicialArriba=71
ListaAcciones=(Lista)
[CDIAlumnos]
Estilo=Ficha
Pestana=S
Clave=CDIAlumnos
PermiteEditar=S
GuardarPorRegistro=S
GuardarAlSalir=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAlumnos
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ListaEnCaptura=(Lista)

[CDIAlumnos.ListaEnCaptura]
(Inicio)=CDIAlumnos.id_Alum
CDIAlumnos.id_Alum=CDIAlumnos.Nombre
CDIAlumnos.Nombre=CDIAlumnos.Apellido_Paterno
CDIAlumnos.Apellido_Paterno=CDIAlumnos.Apellido_Materno
CDIAlumnos.Apellido_Materno=CDIAlumnos.Sexo
CDIAlumnos.Sexo=CDIAlumnos.Edad
CDIAlumnos.Edad=CDIAlumnos.FechaNacimiento
CDIAlumnos.FechaNacimiento=CDIAlumnos.Calle
CDIAlumnos.Calle=CDIAlumnos.Numero
CDIAlumnos.Numero=CDIAlumnos.colonia
CDIAlumnos.colonia=CDIAlumnos.Delegacion
CDIAlumnos.Delegacion=CDIAlumnos.CP
CDIAlumnos.CP=(Fin)

[CDIAlumnos.CDIAlumnos.id_Alum]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.id_Alum
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.Nombre]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.Apellido_Paterno]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.Apellido_Paterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.Apellido_Materno]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.Apellido_Materno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.Sexo]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.Edad]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.Edad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.FechaNacimiento]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.Calle]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.Calle
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.Numero]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.Numero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.colonia]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.Delegacion]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAlumnos.CDIAlumnos.CP]
Carpeta=CDIAlumnos
Clave=CDIAlumnos.CP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S







[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Eliminar
Eliminar=(Fin)
