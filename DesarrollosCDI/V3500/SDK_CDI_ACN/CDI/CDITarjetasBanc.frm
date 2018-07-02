
[Forma]
Clave=CDITarjetasBanc
Icono=0
Modulos=(Todos)
Nombre=<T>Tarjetas Bancarias<T>

ListaCarpetas=Tarjetas
CarpetaPrincipal=Tarjetas
PosicionInicialIzquierda=214
PosicionInicialArriba=177
PosicionInicialAlturaCliente=273
PosicionInicialAncho=803
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
VentanaExclusiva=S
[Tarjetas]
Estilo=Hoja
Clave=Tarjetas
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITarjetasBanc
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

[Tarjetas.NoTarjeta]
Carpeta=Tarjetas
Clave=NoTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco

[Tarjetas.Vigencia]
Carpeta=Tarjetas
Clave=Vigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Tarjetas.Institucion]
Carpeta=Tarjetas
Clave=Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Tarjetas.Nombre]
Carpeta=Tarjetas
Clave=Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Tarjetas.Columnas]
Nombre=265
NoTarjeta=138
Vigencia=112
Institucion=137

[Tarjetas.ListaEnCaptura]
(Inicio)=Nombre
Nombre=NoTarjeta
NoTarjeta=Vigencia
Vigencia=Institucion
Institucion=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

Antes=S
AntesExpresiones=Asigna(Info.Clase, CDITarjetasBanc:NoTarjeta)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S













































































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
