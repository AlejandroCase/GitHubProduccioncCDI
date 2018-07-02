
[Forma]
Clave=vic_ContratoGobErogLista
Icono=4
Modulos=(Todos)
Nombre=Tipos de Erogación
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=Erogacion
CarpetaPrincipal=Erogacion
PosicionInicialIzquierda=388
PosicionInicialArriba=251
PosicionInicialAlturaCliente=328
PosicionInicialAncho=375
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
[Erogacion]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Erogacion
Clave=Erogacion
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGobErog
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
[Erogacion.ListaEnCaptura]
(Inicio)=vic_ContratoGobErog.Clave
vic_ContratoGobErog.Clave=vic_ContratoGobErog.Descripcion
vic_ContratoGobErog.Descripcion=(Fin)

[Erogacion.vic_ContratoGobErog.Clave]
Carpeta=Erogacion
Clave=vic_ContratoGobErog.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Erogacion.vic_ContratoGobErog.Descripcion]
Carpeta=Erogacion
Clave=vic_ContratoGobErog.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[Erogacion.Columnas]
Clave=60
Descripcion=263

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
