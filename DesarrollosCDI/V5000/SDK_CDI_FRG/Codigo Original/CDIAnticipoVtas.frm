
[Forma]
Clave=CDIAnticipoVtas
Icono=0
CarpetaPrincipal=CDIAnticipoVtas
Modulos=(Todos)
Nombre=Ventas Anticipadas

ListaCarpetas=CDIAnticipoVtas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=1924
PosicionInicialArriba=307
PosicionInicialAlturaCliente=75
PosicionInicialAncho=285
[CDIAnticipoVtas]
Estilo=Hoja
Clave=CDIAnticipoVtas
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAnticipoVtas
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco

CarpetaVisible=S




ListaEnCaptura=(Lista)
PermiteEditar=S
[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreDesplegar=&Aceptar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=cancelar
Activo=S
Visible=S












[CDIAnticipoVtas.CDIAnticipoVtas.Ejercicio]
Carpeta=CDIAnticipoVtas
Clave=CDIAnticipoVtas.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAnticipoVtas.CDIAnticipoVtas.Periodo]
Carpeta=CDIAnticipoVtas
Clave=CDIAnticipoVtas.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






[CDIAnticipoVtas.Columnas]
IDLib=64
Ejercicio=64
Periodo=108





[CDIAnticipoVtas.ListaEnCaptura]
(Inicio)=CDIAnticipoVtas.Ejercicio
CDIAnticipoVtas.Ejercicio=CDIAnticipoVtas.Periodo
CDIAnticipoVtas.Periodo=(Fin)























[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
