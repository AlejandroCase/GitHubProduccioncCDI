
[Forma]
Clave=CDIListaMeils
Icono=0
CarpetaPrincipal=CDIListaMeils
Modulos=(Todos)
MovModulo=CDIListaMeils
Nombre=Email a Envíar

ListaCarpetas=CDIListaMeils
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
[CDIListaMeils]
Estilo=Hoja
Clave=CDIListaMeils
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIListaMeils
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=CDIListaMeils.Email



PermiteEditar=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
[CDIListaMeils.CDIListaMeils.Email]
Carpeta=CDIListaMeils
Clave=CDIListaMeils.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIListaMeils.Columnas]
Id=64
Email=233

[CDIListaMeils.ListaEnCaptura]
(Inicio)=CDIListaMeils.Id
CDIListaMeils.Id=CDIListaMeils.Email
CDIListaMeils.Email=(Fin)



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
