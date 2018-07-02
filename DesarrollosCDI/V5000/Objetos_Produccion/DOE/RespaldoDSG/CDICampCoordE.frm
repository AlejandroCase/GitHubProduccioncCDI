
[Forma]
Clave=CDICampCoordE
Icono=0
CarpetaPrincipal=CDICampCoordE
Modulos=(Todos)
MovModulo=CDICampCoordE
Nombre=Coordinación de Campamento

ListaCarpetas=CDICampCoordE
PosicionInicialAlturaCliente=211
PosicionInicialAncho=374
PosicionInicialIzquierda=496
PosicionInicialArriba=259
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
[CDICampCoordE]
Estilo=Hoja
Clave=CDICampCoordE
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICampCoordE
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
ListaEnCaptura=(Lista)



HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
[CDICampCoordE.CDICampCoordE.Coordinacion]
Carpeta=CDICampCoordE
Clave=CDICampCoordE.Coordinacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[CDICampCoordE.CDICampCoordE.Incluir]
Carpeta=CDICampCoordE
Clave=CDICampCoordE.Incluir
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EditarConBloqueo=N
[CDICampCoordE.Columnas]
Id=64
Coordinacion=234
Incluir=64






[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S








[CDICampCoordE.ListaEnCaptura]
(Inicio)=CDICampCoordE.Coordinacion
CDICampCoordE.Coordinacion=CDICampCoordE.Incluir
CDICampCoordE.Incluir=(Fin)



[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=(Fin)
