
[Forma]
Clave=vic_ContratoGobPreLista
Icono=4
Modulos=(Todos)
Nombre=Esquema de Precios
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=EsquemaPrecios
CarpetaPrincipal=EsquemaPrecios
PosicionInicialIzquierda=389
PosicionInicialArriba=229
PosicionInicialAlturaCliente=398
PosicionInicialAncho=422
ListaAcciones=Seleccionar
[EsquemaPrecios]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Esquema de Precios
Clave=EsquemaPrecios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGobPre
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
[EsquemaPrecios.ListaEnCaptura]
(Inicio)=vic_ContratoGobPre.Clave
vic_ContratoGobPre.Clave=vic_ContratoGobPre.Descripcion
vic_ContratoGobPre.Descripcion=(Fin)

[EsquemaPrecios.vic_ContratoGobPre.Clave]
Carpeta=EsquemaPrecios
Clave=vic_ContratoGobPre.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[EsquemaPrecios.vic_ContratoGobPre.Descripcion]
Carpeta=EsquemaPrecios
Clave=vic_ContratoGobPre.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[EsquemaPrecios.Columnas]
Clave=64
Descripcion=323

[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S
