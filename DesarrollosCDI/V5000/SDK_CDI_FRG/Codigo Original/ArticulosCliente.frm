
[Forma]
Clave=ArticulosCliente
Icono=0
Modulos=(Todos)
Nombre=ArticulosCliente

ListaCarpetas=ArticulosCliente
CarpetaPrincipal=ArticulosCliente
PosicionInicialIzquierda=488
PosicionInicialArriba=433
PosicionInicialAlturaCliente=114
PosicionInicialAncho=310
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=2
VentanaColor=Plata
AccionesTamanoBoton=15x5
BarraAcciones=S
ListaAcciones=(Lista)
AccionesCentro=S
[ArticulosCliente]
Estilo=Ficha
Clave=ArticulosCliente
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=12
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[ArticulosCliente.Info.Articulo]
Carpeta=ArticulosCliente
Clave=Info.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
Articulo=131
Descripcion1=244

Cliente=117
Nombre=293
RFC=107

[ArticulosCliente.Info.Cliente]
Carpeta=ArticulosCliente
Clave=Info.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Acciones.Aceptar]
Nombre=Aceptar
Boton=41
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
NombreEnBoton=S
Activo=S
Visible=S

GuardarAntes=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=21
NombreEnBoton=S
NombreDesplegar=Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S






[ArticulosCliente.ListaEnCaptura]
(Inicio)=Info.Cliente
Info.Cliente=Info.Articulo
Info.Articulo=(Fin)







[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
