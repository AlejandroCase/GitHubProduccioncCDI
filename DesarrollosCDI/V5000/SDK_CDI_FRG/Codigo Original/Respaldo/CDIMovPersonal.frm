
[Forma]
Clave=CDIMovPersonal
Icono=0
CarpetaPrincipal=CDIMovPersonal
Modulos=(Todos)
Nombre=Movimientos Per.

ListaCarpetas=CDIMovPersonal
PosicionInicialAlturaCliente=28
PosicionInicialAncho=285
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=534
PosicionInicialArriba=300
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
[CDIMovPersonal]
Estilo=Ficha
Clave=CDIMovPersonal
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Plata
CampoColorFondo=Plata
CarpetaVisible=S


[Acciones.Nuevo]
Nombre=Nuevo
Boton=74
NombreEnBoton=S
NombreDesplegar=Nuevo
EnBarraHerramientas=S
EnBarraAcciones=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CtaPersonal
Activo=S
Visible=S

[Acciones.Actualiza]
Nombre=Actualiza
Boton=82
NombreEnBoton=S
NombreDesplegar=&Actualiza
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
Activo=S
Visible=S











Multiple=S
ListaAccionesMultiples=1

[Acciones.Actualiza.1]
Nombre=1
Boton=0
Activo=S
Visible=S
TipoAccion=formas
ClaveAccion=CDIPerActualiza



[Acciones.Actualiza.ListaAccionesMultiples]
(Inicio)=1
1=2
2=3
3=(Fin)





















































[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Actualiza
Actualiza=(Fin)
