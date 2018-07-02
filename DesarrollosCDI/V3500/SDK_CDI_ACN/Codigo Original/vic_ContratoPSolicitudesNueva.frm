
[Forma]
Clave=vic_ContratoPSolicitudesNueva
Icono=4
Modulos=(Todos)
Nombre=Agrega Solicitud de Trámites

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=450
PosicionInicialArriba=358
PosicionInicialAlturaCliente=113
PosicionInicialAncho=252
BarraAcciones=S
AccionesTamanoBoton=15x5
AccionesCentro=S
AccionesDivision=S
ListaAcciones=(Lista)
VentanaExclusiva=S
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro
ListaEnCaptura=Info.vic_Tramite

PermiteEditar=S
[(Variables).Info.vic_Tramite]
Carpeta=(Variables)
Clave=Info.vic_Tramite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=ProcesarSQL(<T>vic_spInsertaContratoPlantilla :nIDPlantilla, :nIDContrato<T>, Info.vic_Tramite, Info.ID)
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreDesplegar=Aceptar
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

NombreEnBoton=S
[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cancelar.Cancelar]
Nombre=Cancelar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=Cancelar
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S

[vic_ContratoPSolicitudes.Columnas]
0=157
1=230
2=140
3=-2















[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)






[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=Aceptar
Aceptar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
