
[Forma]
Clave=CDIArtCargosRecAutoma
Icono=0
Modulos=(Todos)
MovModulo=CDIArtCargosRecAutoma
Nombre=CDIArtCargosRecAutoma

ListaCarpetas=CDIArtCargosRecAutoma
CarpetaPrincipal=CDIArtCargosRecAutoma
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=177
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=1011
[CDIArtCargosRecAutoma]
Estilo=Hoja
Clave=CDIArtCargosRecAutoma
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIArtCargosRecAutoma
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

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Cliente= <T>{Info.Cliente}<T>
[CDIArtCargosRecAutoma.CDIArtCargosRecAutoma.Articulo]
Carpeta=CDIArtCargosRecAutoma
Clave=CDIArtCargosRecAutoma.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIArtCargosRecAutoma.CDIArtCargosRecAutoma.TipoCargo]
Carpeta=CDIArtCargosRecAutoma
Clave=CDIArtCargosRecAutoma.TipoCargo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco

[CDIArtCargosRecAutoma.CDIArtCargosRecAutoma.FechaInicio]
Carpeta=CDIArtCargosRecAutoma
Clave=CDIArtCargosRecAutoma.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIArtCargosRecAutoma.CDIArtCargosRecAutoma.FechaFin]
Carpeta=CDIArtCargosRecAutoma
Clave=CDIArtCargosRecAutoma.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIArtCargosRecAutoma.CDIArtCargosRecAutoma.Cantidad]
Carpeta=CDIArtCargosRecAutoma
Clave=CDIArtCargosRecAutoma.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIArtCargosRecAutoma.CDIArtCargosRecAutoma.Casillero]
Carpeta=CDIArtCargosRecAutoma
Clave=CDIArtCargosRecAutoma.Casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIArtCargosRecAutoma.CDIArtCargosRecAutoma.Ubicacion]
Carpeta=CDIArtCargosRecAutoma
Clave=CDIArtCargosRecAutoma.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIArtCargosRecAutoma.Columnas]
Articulo=80
TipoCargo=148
FechaInicio=94
FechaFin=94
Cantidad=64
Casillero=64
Ubicacion=237

Descripcion1=184

[CDIArtCargosRecAutoma.Art.Descripcion1]
Carpeta=CDIArtCargosRecAutoma
Clave=Art.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco









[CDIArtCargosRecAutoma.ListaEnCaptura]
(Inicio)=CDIArtCargosRecAutoma.Articulo
CDIArtCargosRecAutoma.Articulo=Art.Descripcion1
Art.Descripcion1=CDIArtCargosRecAutoma.TipoCargo
CDIArtCargosRecAutoma.TipoCargo=CDIArtCargosRecAutoma.FechaInicio
CDIArtCargosRecAutoma.FechaInicio=CDIArtCargosRecAutoma.FechaFin
CDIArtCargosRecAutoma.FechaFin=CDIArtCargosRecAutoma.Cantidad
CDIArtCargosRecAutoma.Cantidad=CDIArtCargosRecAutoma.Casillero
CDIArtCargosRecAutoma.Casillero=CDIArtCargosRecAutoma.Ubicacion
CDIArtCargosRecAutoma.Ubicacion=(Fin)
