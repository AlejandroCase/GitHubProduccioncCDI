
[Forma]
Clave=RepGandhiCausasBloqueoBaja
Icono=0
Modulos=(Todos)
Nombre=Causas Bloqueo / Bajas

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=527
PosicionInicialArriba=415
PosicionInicialAlturaCliente=91
PosicionInicialAncho=226
VentanaSinIconosMarco=S
VentanaEscCerrar=S
[Lista]
Estilo=Ficha
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.CDIMembresiaListaD
CarpetaVisible=S

FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro

PermiteEditar=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



[Lista.Info.CDIMembresiaListaD]
Carpeta=Lista
Clave=Info.CDIMembresiaListaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=Info.CDIMembresiaListaA
Info.CDIMembresiaListaA=Info.CDIMembresiaListaD
Info.CDIMembresiaListaD=(Fin)

[Acciones.Reporte.Asigna]
Nombre=Asigna
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Reporte]
Nombre=Reporte
Boton=6
NombreEnBoton=S
NombreDesplegar=&Reporte
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)
Activo=S
Visible=S













EspacioPrevio=S











[ListaMembresia.Columnas]
Membresia=64





















[Acciones.Reporte.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Reporte.ListaAccionesMultiples]
(Inicio)=Asigna
Asigna=Aceptar
Aceptar=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Reporte
Reporte=(Fin)
