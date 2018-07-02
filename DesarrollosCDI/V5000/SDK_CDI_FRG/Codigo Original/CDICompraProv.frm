
[Forma]
Clave=CDICompraProv
Icono=0
Modulos=(Todos)
Nombre=CDICompraProv

ListaCarpetas=CDICompraProv
CarpetaPrincipal=CDICompraProv
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaColor=Plata
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=82
PosicionInicialAncho=274
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaExclusivaOpcion=0
PosicionInicialIzquierda=554
PosicionInicialArriba=311
AccionesCentro=S
ExpresionesAlMostrar=asigna(info.CDICompraProv,<T><T>)
ExpresionesAlActivar=asigna(info.CDICompraProv,<T><T>)
[CDICompraProv]
Estilo=Ficha
Clave=CDICompraProv
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=info.CDICompraProv
CarpetaVisible=S

PermiteEditar=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Plata
[CDICompraProv.info.CDICompraProv]
Carpeta=CDICompraProv
Clave=info.CDICompraProv
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Aceptar
GuardarAntes=S
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=5
NombreDesplegar=&Calcelar
EnBarraAcciones=S
TipoAccion=ventana
ClaveAccion=Cancelar
Activo=S
Visible=S






[CDICompraLista.Columnas]
Mov=124
MovID=64
FechaEmision=94
UltimoCambio=94
Concepto=119
Proyecto=137
Observaciones=179
Estatus=94























































Proveedor=64








































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
