
[Forma]
Clave=CDICampE
Icono=0
CarpetaPrincipal=CDICampE
Modulos=(Todos)
MovModulo=CDICampE
Nombre=Email a Envíar

ListaCarpetas=CDICampE
PosicionInicialAlturaCliente=162
PosicionInicialAncho=271
PosicionInicialIzquierda=547
PosicionInicialArriba=283
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
[CDICampE]
Estilo=Hoja
Clave=CDICampE
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICampE
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=CDICampE.Email



PermiteEditar=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
[CDICampE.CDICampE.Email]
Carpeta=CDICampE
Clave=CDICampE.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICampE.Columnas]
Id=64
Email=233

[CDICampE.ListaEnCaptura]
(Inicio)=CDICampE.Id
CDICampE.Id=CDICampE.Email
CDICampE.Email=(Fin)



[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=cerrar
cerrar=(Fin)
