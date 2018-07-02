[Forma]
Clave=CfgMovProy
Nombre=Configurar Movimientos Proyectos
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=772
PosicionInicialArriba=370
PosicionInicialAlturaCliente=426
PosicionInicialAncho=376
ListaAcciones=Aceptar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CfgMovProy
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

[Lista.CfgMovProy.Modulo]
Carpeta=Lista
Clave=CfgMovProy.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CfgMovProy.Mov]
Carpeta=Lista
Clave=CfgMovProy.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CfgMovProy.Tipo]
Carpeta=Lista
Clave=CfgMovProy.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Modulo=49
Mov=166
Tipo=87
Factor=42
Resultado=95

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

[Lista.CfgMovProy.Factor]
Carpeta=Lista
Clave=CfgMovProy.Factor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ListaEnCaptura]
(Inicio)=CfgMovProy.Modulo
CfgMovProy.Modulo=CfgMovProy.Mov
CfgMovProy.Mov=CfgMovProy.Tipo
CfgMovProy.Tipo=CfgMovProy.Factor
CfgMovProy.Factor=(Fin)
