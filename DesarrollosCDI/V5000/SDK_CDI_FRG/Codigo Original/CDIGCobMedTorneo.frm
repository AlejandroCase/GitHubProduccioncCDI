
[Forma]
Clave=CDIGCobMedTorneo
Icono=0
CarpetaPrincipal=CDIGCobMedTorneo
Modulos=(Todos)
Nombre=Crear Cobertura

ListaCarpetas=CDIGCobMedTorneo
PosicionInicialAlturaCliente=86
PosicionInicialAncho=273
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
PosicionInicialIzquierda=595
PosicionInicialArriba=314
AccionesTamanoBoton=15x5
ListaAcciones=Aceptar
BarraAcciones=S
AccionesCentro=S
ExpresionesAlActivar=asigna(info.cliente,<T><T>)
[CDIGCobMedTorneo]
Estilo=Ficha
Clave=CDIGCobMedTorneo
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

[CDIGCobMedTorneo.Info.Cliente]
Carpeta=CDIGCobMedTorneo
Clave=Info.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=Acepta
GuardarAntes=S
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
