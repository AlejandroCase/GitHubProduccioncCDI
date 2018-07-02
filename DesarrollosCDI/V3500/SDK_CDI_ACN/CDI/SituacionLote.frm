
[Forma]
Clave=SituacionLote
Icono=0
Modulos=(Todos)
Nombre=Situacion en lote

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=0
PosicionInicialArriba=0
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
[(Variables)]
Estilo=Ficha
Pestana=S
Clave=(Variables)
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
ListaEnCaptura=(Lista)

CarpetaVisible=S
[(Variables).ListaEnCaptura]
(Inicio)=Info.Situacion
Info.Situacion=Info.Usuario
Info.Usuario=Info.UsuarioNuevo
Info.UsuarioNuevo=Info.Fecha
Info.Fecha=(Fin)

[(Variables).Info.Situacion]
Carpeta=(Variables)
Clave=Info.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Usuario]
Carpeta=(Variables)
Clave=Info.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.UsuarioNuevo]
Carpeta=(Variables)
Clave=Info.UsuarioNuevo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Fecha]
Carpeta=(Variables)
Clave=Info.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
0=99
1=375
