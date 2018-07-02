
[Forma]
Clave=CDIControlAcceso
Icono=0
Modulos=(Todos)
Nombre=Control Accesos
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=479
PosicionInicialArriba=464
PosicionInicialAlturaCliente=62
PosicionInicialAncho=321
BarraHerramientas=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
BarraAcciones=S
AccionesCentro=S
[Lista]
Estilo=Ficha
Clave=Lista
PermiteEditar=S
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
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Negro
CarpetaVisible=S

[Acciones.Bloqueo]
Nombre=Bloqueo
Boton=21
NombreEnBoton=S
NombreDesplegar=&Bloqueo
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDISocCtrlAcceso
Activo=S
Visible=S

BtnResaltado=S
[Acciones.Vencimiento]
Nombre=Vencimiento
Boton=76
NombreEnBoton=S
NombreDesplegar=Vencimiento
EnBarraHerramientas=S
TipoAccion=Formas
Activo=S
Visible=S



BtnResaltado=S





EspacioPrevio=S
ClaveAccion=CDITipoMovAplica
[Acciones.Pases]
Nombre=Pases
Boton=81
NombreEnBoton=S
NombreDesplegar=&Pases
EnBarraHerramientas=S
TipoAccion=Formas
Activo=S
Visible=S


BtnResaltado=S
EspacioPrevio=S
ClaveAccion=CDISocAcessoCfgPases
[Acciones.Periodicidad]
Nombre=Periodicidad
Boton=53
NombreEnBoton=S
NombreDesplegar=Periodicidad
EnBarraHerramientas=S
TipoAccion=Formas
Activo=S
Visible=S





BtnResaltado=S








EspacioPrevio=S





ClaveAccion=CDISocPasesCfg
[Acciones.Salir]
Nombre=Salir
Boton=0
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S







































































[Forma.ListaAcciones]
(Inicio)=Bloqueo
Bloqueo=Vencimiento
Vencimiento=Pases
Pases=Periodicidad
Periodicidad=Salir
Salir=(Fin)
