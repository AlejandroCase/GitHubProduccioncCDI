
[Forma]
Clave=CtePrueba
Icono=0
Modulos=(Todos)

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
PosicionInicialAlturaCliente=475
PosicionInicialAncho=743
[Ficha]
Estilo=Ficha
Pestana=S
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
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

[Ficha.Cte.Cliente]
Carpeta=Ficha
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Ficha.Cte.Rama]
Carpeta=Ficha
Clave=Cte.Rama
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Ficha.Cte.Nombre]
Carpeta=Ficha
Clave=Cte.Nombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Ficha.Cte.NombreCorto]
Carpeta=Ficha
Clave=Cte.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.Numero]
Carpeta=Ficha
Clave=Cte.Numero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Ficha.Cte.Tipo]
Carpeta=Ficha
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Ficha.Cte.Direccion]
Carpeta=Ficha
Clave=Cte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Ficha.Cte.DireccionNumero]
Carpeta=Ficha
Clave=Cte.DireccionNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.DireccionNumeroInt]
Carpeta=Ficha
Clave=Cte.DireccionNumeroInt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.EntreCalles]
Carpeta=Ficha
Clave=Cte.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[Ficha.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Rama
Cte.Rama=Cte.Nombre
Cte.Nombre=Cte.NombreCorto
Cte.NombreCorto=Cte.Numero
Cte.Numero=Cte.Tipo
Cte.Tipo=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=Cte.DireccionNumeroInt
Cte.DireccionNumeroInt=Cte.EntreCalles
Cte.EntreCalles=(Fin)
