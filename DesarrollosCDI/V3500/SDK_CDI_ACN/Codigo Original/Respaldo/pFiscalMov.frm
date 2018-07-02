[Forma]
Clave=pFiscalMov
Nombre=Movimientos
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
PosicionInicialIzquierda=756
PosicionInicialArriba=495
PosicionInicialAlturaCliente=239
PosicionInicialAncho=407
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
Vista=pFiscalMov
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

[Lista.pFiscalMov.Mov]
Carpeta=Lista
Clave=pFiscalMov.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalMov.Orden]
Carpeta=Lista
Clave=pFiscalMov.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalMov.Factor]
Carpeta=Lista
Clave=pFiscalMov.Factor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

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

[Lista.Columnas]
Mov=288
Orden=41
Factor=38

[Lista.ListaEnCaptura]
(Inicio)=pFiscalMov.Mov
pFiscalMov.Mov=pFiscalMov.Factor
pFiscalMov.Factor=pFiscalMov.Orden
pFiscalMov.Orden=(Fin)
