
[Forma]
Clave=CDITipoSocios
Icono=36
Modulos=(Todos)
Nombre=Tipo de Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar
PosicionInicialIzquierda=470
PosicionInicialArriba=206
PosicionInicialAlturaCliente=273
PosicionInicialAncho=267
BarraHerramientas=S
[Lista]
Estilo=Hoja
Clave=Lista
OtroOrden=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITipoSocios
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=CDITipoSocios.Orden<TAB>(Acendente)
CarpetaVisible=S

[Lista.CDITipoSocios.Tipo]
Carpeta=Lista
Clave=CDITipoSocios.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDITipoSocios.Orden]
Carpeta=Lista
Clave=CDITipoSocios.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

EnBarraHerramientas=S
[Lista.Columnas]
Tipo=163
Orden=64



[Lista.ListaEnCaptura]
(Inicio)=CDITipoSocios.Tipo
CDITipoSocios.Tipo=CDITipoSocios.Orden
CDITipoSocios.Orden=(Fin)



[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=CondPag
CondPag=(Fin)
