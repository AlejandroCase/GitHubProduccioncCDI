
[Forma]
Clave=CDICargosAmexOut
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=CDICargosAmexOut

ListaCarpetas=CDICargosAmexOut
CarpetaPrincipal=CDICargosAmexOut
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
DialogoAbrir=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=433
PosicionInicialArriba=228
[CDICargosAmexOut]
Estilo=Ficha
Pestana=S
Clave=CDICargosAmexOut
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICargosAmexOut
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

[CDICargosAmexOut.CDICargosAmexOut.FechaEmision]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDICargosAmexOut.CDICargosAmexOut.Usuario]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.Usuario
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICargosAmexOut.CDICargosAmexOut.Lote]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.Lote
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDICargosAmexOut.CDICargosAmexOut.Ruta]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.Ruta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICargosAmexOut.CDICargosAmexOut.Estatus]
Carpeta=CDICargosAmexOut
Clave=CDICargosAmexOut.Estatus
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





[CDICargosAmexOut.ListaEnCaptura]
(Inicio)=CDICargosAmexOut.FechaEmision
CDICargosAmexOut.FechaEmision=CDICargosAmexOut.Ruta
CDICargosAmexOut.Ruta=CDICargosAmexOut.Lote
CDICargosAmexOut.Lote=CDICargosAmexOut.Usuario
CDICargosAmexOut.Usuario=CDICargosAmexOut.Estatus
CDICargosAmexOut.Estatus=(Fin)
