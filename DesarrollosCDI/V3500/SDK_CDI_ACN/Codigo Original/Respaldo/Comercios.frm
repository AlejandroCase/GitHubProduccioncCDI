
[Forma]
Clave=Comercios
Icono=0
Modulos=(Todos)
Nombre=Comercios

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=168
PosicionInicialArriba=75
PosicionInicialAlturaCliente=557
PosicionInicialAncho=989
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Comercios
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[Lista.Comercios.IDCOMERCIO]
Carpeta=Lista
Clave=Comercios.IDCOMERCIO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Comercios.NUMCOMERCIO]
Carpeta=Lista
Clave=Comercios.NUMCOMERCIO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Comercios.DESCRIPCION]
Carpeta=Lista
Clave=Comercios.DESCRIPCION
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Comercios.ACTIVO]
Carpeta=Lista
Clave=Comercios.ACTIVO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Comercios.IVAOPERACIONES]
Carpeta=Lista
Clave=Comercios.IVAOPERACIONES
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Comercios.IVARESTO]
Carpeta=Lista
Clave=Comercios.IVARESTO
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Comercios.NIF]
Carpeta=Lista
Clave=Comercios.NIF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Comercios.CLAVEEXTERNA]
Carpeta=Lista
Clave=Comercios.CLAVEEXTERNA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
IDCOMERCIO=70
NUMCOMERCIO=124
DESCRIPCION=304
ACTIVO=64
IVAOPERACIONES=93
IVARESTO=64
NIF=124
CLAVEEXTERNA=80

[Lista.ListaEnCaptura]
(Inicio)=Comercios.IDCOMERCIO
Comercios.IDCOMERCIO=Comercios.NUMCOMERCIO
Comercios.NUMCOMERCIO=Comercios.DESCRIPCION
Comercios.DESCRIPCION=Comercios.ACTIVO
Comercios.ACTIVO=Comercios.IVAOPERACIONES
Comercios.IVAOPERACIONES=Comercios.IVARESTO
Comercios.IVARESTO=Comercios.NIF
Comercios.NIF=Comercios.CLAVEEXTERNA
Comercios.CLAVEEXTERNA=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
