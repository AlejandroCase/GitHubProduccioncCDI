
[Forma]
Clave=CDITipoMovAplica
Icono=0
Modulos=(Todos)
Nombre=Tipo Movimiento

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=529
PosicionInicialArriba=454
PosicionInicialAlturaCliente=81
PosicionInicialAncho=222
AccionesTamanoBoton=15x5
BarraAcciones=S
ListaAcciones=(Lista)
AccionesCentro=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaBloquearAjuste=S
VentanaSinIconosMarco=S
[(Variables)]
Estilo=Ficha
Clave=(Variables)
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
ListaEnCaptura=Info.CDITipoDocAplica
CarpetaVisible=S



[(Variables).Info.CDITipoDocAplica]
Carpeta=(Variables)
Clave=Info.CDITipoDocAplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Expresion
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S




















[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.Forma]
Nombre=Forma
Boton=0
TipoAccion=Formas
ClaveAccion=CDISocAcessoCfgVencimiento
Activo=S
Visible=S









[Acciones.Aceptar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Aceptar
Aceptar=Forma
Forma=Cerrar
Cerrar=(Fin)









[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
