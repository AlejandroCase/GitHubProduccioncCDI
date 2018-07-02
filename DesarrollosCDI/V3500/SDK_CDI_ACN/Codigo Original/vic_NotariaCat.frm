
[Forma]
Clave=vic_NotariaCat
Icono=4
CarpetaPrincipal=vic_NotariaCat
Modulos=(Todos)

ListaCarpetas=vic_NotariaCat
PosicionInicialIzquierda=407
PosicionInicialArriba=238
PosicionInicialAlturaCliente=354
PosicionInicialAncho=337
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=(Lista)
Nombre=Categorías
[vic_NotariaCat]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Categorias
Clave=vic_NotariaCat
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_NotariaCat
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
ListaEnCaptura=vic_NotariaCat.Categoria
CarpetaVisible=S

[vic_NotariaCat.vic_NotariaCat.Categoria]
Carpeta=vic_NotariaCat
Clave=vic_NotariaCat.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[vic_NotariaCat.Columnas]
Categoria=304

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Excel
EnBarraHerramientas=S
Carpeta=vic_NotariaCat
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Visible=S



EspacioPrevio=S
ActivoCondicion=Usuario.EnviarExcel








[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Excel
Excel=(Fin)
