
[Forma]
Clave=CDIInvReor
Icono=0
Modulos=(Todos)
Nombre=Inventario Resurtir
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIInvReor
CarpetaPrincipal=CDIInvReor
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=554
PosicionInicialArriba=308
PosicionInicialAlturaCliente=114
PosicionInicialAncho=257
[CDIInvReor]
Estilo=Ficha
Clave=CDIInvReor
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
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[CDIInvReor.Info.CDIInvAlerta]
Carpeta=CDIInvReor
Clave=Info.CDIInvAlerta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIInvReor.Info.ArtCat]
Carpeta=CDIInvReor
Clave=Info.ArtCat
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=4
NombreDesplegar=Variables Asignar / Ventana Aceptar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S




[Lista.Columnas]
Categoria=234




[CDIInvReor.ListaEnCaptura]
(Inicio)=Info.CDIInvAlerta
Info.CDIInvAlerta=Info.ArtCat
Info.ArtCat=(Fin)







[Forma.ListaAcciones]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=Cerrar
Cerrar=(Fin)
