
[Forma]
Clave=CDICoordinacionCorreo
Icono=0
CarpetaPrincipal=CDICoordinacionCorreo
Modulos=(Todos)
Nombre=Comite

ListaCarpetas=CDICoordinacionCorreo
PosicionInicialAlturaCliente=94
PosicionInicialAncho=265
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
PosicionInicialIzquierda=1961
PosicionInicialArriba=293
BarraAcciones=S
AccionesCentro=S
VentanaExclusiva=S
VentanaExclusivaOpcion=0
ExpresionesAlMostrar=asigna(Info.ID,Info.ID)
ExpresionesAlActivar=asigna(Info.CoordinaMsgs,<T><T>)
[CDICoordinacionCorreo]
Estilo=Ficha
Clave=CDICoordinacionCorreo
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
FichaAlineacion=Centrado
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.CoordinaMsgs
CarpetaVisible=S

PermiteEditar=S


[CDICoordinacionCorreo.Info.CoordinaMsgs]
Carpeta=CDICoordinacionCorreo
Clave=Info.CoordinaMsgs
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

EnBarraAcciones=S
[Acciones.Guarda]
Nombre=Guarda
Boton=3
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S















EnBarraAcciones=S












































Multiple=S
ListaAccionesMultiples=(Lista)

[Acciones.Guarda.Guarda]
Nombre=Guarda
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Guarda.Forma]
Nombre=Forma
Boton=0
TipoAccion=formas
ClaveAccion=CDICoordinaMsgs
Activo=S
Visible=S

[Acciones.Guarda.Actualiz]
Nombre=Actualiz
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S



[Acciones.Guarda.genera]
Nombre=genera
Boton=0
TipoAccion=expresion
Activo=S
Visible=S



































Expresion=ProcesarSQL(<T>exec CDICoordinacionMsgs :tCom, :nIDMsg<T>,Info.CoordinaMsgs,Info.ID)


[Acciones.Guarda.ListaAccionesMultiples]
(Inicio)=Guarda
Guarda=genera
genera=Actualiz
Actualiz=Forma
Forma=(Fin)





[Forma.ListaAcciones]
(Inicio)=Guarda
Guarda=Cerrar
Cerrar=(Fin)
