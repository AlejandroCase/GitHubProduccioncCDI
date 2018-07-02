
[Forma]
Clave=CDIaPCDI
Icono=0
CarpetaPrincipal=CDIaPCDI
Modulos=(Todos)
MovModulo=CDIaPCDI
Nombre=CDIaPCDI

ListaCarpetas=CDIaPCDI
PosicionInicialAlturaCliente=244
PosicionInicialAncho=468
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=390
PosicionCol1=272
PosicionInicialArriba=121
[CDIaPCDI]
Estilo=Hoja
Clave=CDIaPCDI
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIaPCDI
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


PermiteEditar=S
[CDIaPCDI.CDIaPCDI.Modulo]
Carpeta=CDIaPCDI
Clave=CDIaPCDI.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIaPCDI.CDIaPCDI.Mov]
Carpeta=CDIaPCDI
Clave=CDIaPCDI.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIaPCDI.Columnas]
ID=64
Modulo=83
Mov=174


Categoria=100
Programado=64
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=Guardar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

NombreEnBoton=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S








[Lista.Columnas]
Mov=241





















[CDIaPCDI.CDIaPCDI.Categoria]
Carpeta=CDIaPCDI
Clave=CDIaPCDI.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco





















[CDIaPCDI.CDIaPCDI.Programado]
Carpeta=CDIaPCDI
Clave=CDIaPCDI.Programado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco














[CDIaPCDI.ListaEnCaptura]
(Inicio)=CDIaPCDI.Modulo
CDIaPCDI.Modulo=CDIaPCDI.Mov
CDIaPCDI.Mov=CDIaPCDI.Categoria
CDIaPCDI.Categoria=CDIaPCDI.Programado
CDIaPCDI.Programado=(Fin)





[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=(Fin)
