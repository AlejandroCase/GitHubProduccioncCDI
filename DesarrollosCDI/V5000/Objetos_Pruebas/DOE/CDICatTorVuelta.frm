
[Forma]
Clave=CDICatTorVuelta
Icono=0
Modulos=(Todos)
Nombre=Estadistica
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICatTorVuelta
CarpetaPrincipal=CDICatTorVuelta
PosicionInicialIzquierda=585
PosicionInicialArriba=298
PosicionInicialAlturaCliente=134
PosicionInicialAncho=196
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDICatTorVuelta]
Estilo=Ficha
Clave=CDICatTorVuelta
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PermiteEditar=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=plata

[CDICatTorVuelta.Info.CDIClaveTorneo]
Carpeta=CDICatTorVuelta
Clave=Info.CDIClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICatTorVuelta.Info.CDINoVuelta]
Carpeta=CDICatTorVuelta
Clave=Info.CDINoVuelta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[ListaTorneos.Columnas]
Nombre=174
Deporte=184
RamaDepor=60
Fuerza=94

[CDICatTorVuelta.ListaEnCaptura]
(Inicio)=Info.CDIClaveTorneo
Info.CDIClaveTorneo=Info.CDINoVuelta
Info.CDINoVuelta=(Fin)

[Acciones.cA]
Nombre=cA
Boton=4
NombreDesplegar=Consulta
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDITorneoResSloTGTVista
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S






[Acciones.cA.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.cA.formax]
Nombre=formax
Boton=0
TipoAccion=Formas
ClaveAccion=CDITorneoResSloTGTVista
Activo=S
Visible=S

[Acciones.cA.ListaAccionesMultiples]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=formax
formax=(Fin)



[Forma.ListaAcciones]
(Inicio)=cA
cA=Cerrar
Cerrar=(Fin)
