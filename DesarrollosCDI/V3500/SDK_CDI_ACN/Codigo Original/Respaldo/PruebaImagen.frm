
[Forma]
Clave=PruebaImagen
Icono=0
Modulos=(Todos)
Nombre=Prueba

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Navegador 1 (Registros)
PosicionInicialAlturaCliente=366
PosicionInicialAncho=515
PosicionInicialIzquierda=278
PosicionInicialArriba=74
[Ficha]
Estilo=Ficha
Pestana=S
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=PruebaImagen
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

[Ficha.PruebaImagen.clave]
Carpeta=Ficha
Clave=PruebaImagen.clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.PruebaImagen.Imagen]
Carpeta=Ficha
Clave=PruebaImagen.Imagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=200x200
[Acciones.Navegador 1 (Registros)]
Nombre=Navegador 1 (Registros)
Boton=0
NombreDesplegar=Navegador 1 (Registros)
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 1 (Registros)
Activo=S
Visible=S



[Ficha.ListaEnCaptura]
(Inicio)=PruebaImagen.clave
PruebaImagen.clave=PruebaImagen.Imagen
PruebaImagen.Imagen=(Fin)
