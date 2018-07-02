
[Forma]
Clave=vic_ContratoGobJurLista
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Acto Administrativo Jurídico
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=ActoJuridico
CarpetaPrincipal=ActoJuridico
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=Seleccionar
PosicionInicialIzquierda=413
PosicionInicialArriba=218
PosicionInicialAlturaCliente=367
PosicionInicialAncho=403
[ActoJuridico]
Estilo=Hoja
Clave=ActoJuridico
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGobJur
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
[ActoJuridico.ListaEnCaptura]
(Inicio)=vic_ContratoGobJur.Clave
vic_ContratoGobJur.Clave=vic_ContratoGobJur.Descripcion
vic_ContratoGobJur.Descripcion=(Fin)

[ActoJuridico.vic_ContratoGobJur.Clave]
Carpeta=ActoJuridico
Clave=vic_ContratoGobJur.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[ActoJuridico.vic_ContratoGobJur.Descripcion]
Carpeta=ActoJuridico
Clave=vic_ContratoGobJur.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

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

[ActoJuridico.Columnas]
Clave=64
Descripcion=304
