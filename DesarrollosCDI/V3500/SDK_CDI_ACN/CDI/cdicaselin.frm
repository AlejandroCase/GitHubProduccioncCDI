
[Forma]
Clave=cdicaselin
Icono=0
Modulos=(Todos)
MovModulo=cdicaselin
Nombre=cdicaselin

ListaCarpetas=cdicaselin
CarpetaPrincipal=cdicaselin
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
[cdicaselin]
Estilo=Ficha
Pestana=S
Clave=cdicaselin
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=cdicaselin
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
[cdicaselin.ListaEnCaptura]
(Inicio)=cdicaselin.capturanombre
cdicaselin.capturanombre=cdicaselin.nombre
cdicaselin.nombre=cdicaselin.apellido
cdicaselin.apellido=(Fin)

[cdicaselin.cdicaselin.capturanombre]
Carpeta=cdicaselin
Clave=cdicaselin.capturanombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[cdicaselin.cdicaselin.nombre]
Carpeta=cdicaselin
Clave=cdicaselin.nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[cdicaselin.cdicaselin.apellido]
Carpeta=cdicaselin
Clave=cdicaselin.apellido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
