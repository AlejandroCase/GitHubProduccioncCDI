
[Forma]
Clave=CDICobMedTorneo
Icono=0
CarpetaPrincipal=CDICobMedTorneo
Modulos=(Todos)
Nombre=Crear Cobertura

ListaCarpetas=CDICobMedTorneo
PosicionInicialAlturaCliente=86
PosicionInicialAncho=273
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaColor=Plata
PosicionInicialIzquierda=585
PosicionInicialArriba=306
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
BarraAcciones=S
AccionesCentro=S


VentanaExclusiva=S
VentanaExclusivaOpcion=1
VentanaEscCerrar=S
ExpresionesAlMostrar=ASIGNA(Info.Cliente,<T><T>)
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=Acepta
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S
NombreEnBoton=S
EnBarraAcciones=S

[Lista.Columnas]
Cliente=117
Nombre=293
RFC=107

[CDICobMedTorneo]
Estilo=Ficha
Clave=CDICobMedTorneo
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
FichaAlineacion=Centrado
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.Cliente
CarpetaVisible=S

[CDICobMedTorneo.Info.Cliente]
Carpeta=CDICobMedTorneo
Clave=Info.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

AccionAlEnter=
[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=ventana
ClaveAccion=Cancelar
Activo=S
Visible=S







































































































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
