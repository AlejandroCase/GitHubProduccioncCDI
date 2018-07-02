
[Forma]
Clave=CDITipoControlAccesos
Icono=0
Modulos=(Todos)
Nombre=Configuracion Control Accesos

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=78
PosicionInicialAncho=242
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=519
PosicionInicialArriba=424
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
VentanaEscCerrar=S
VentanaBloquearAjuste=S
VentanaSinIconosMarco=S
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
CampoColorFondo=Blanco
ListaEnCaptura=Info.CDITipoSociox
CarpetaVisible=S



[Lista.Info.CDITipoSociox]
Carpeta=Lista
Clave=Info.CDITipoSociox
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Aceptar.Variables]
Nombre=Variables
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.Forma]
Nombre=Forma
Boton=0
TipoAccion=Formas
Activo=S
Visible=S

ClaveAccion=CDIControlAcceso
[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreEnBoton=S
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[Lista.Columnas]
Tipo=170
















[Acciones.Aceptar.Ventana]
Nombre=Ventana
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables
Variables=Forma
Forma=Ventana
Ventana=(Fin)









[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
