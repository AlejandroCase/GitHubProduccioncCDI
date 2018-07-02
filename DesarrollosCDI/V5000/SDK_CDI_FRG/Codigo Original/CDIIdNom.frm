
[Forma]
Clave=CDIIdNom
Icono=0
Modulos=(Todos)
Nombre=Formato Mifel

ListaCarpetas=CDIIdNom
CarpetaPrincipal=CDIIdNom
PosicionInicialIzquierda=553
PosicionInicialArriba=302
PosicionInicialAlturaCliente=84
PosicionInicialAncho=259
PosicionSec1=148
PosicionSec2=423
MovModulo=(Todos)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
AccionesTamanoBoton=15x5
BarraAcciones=S
ListaAcciones=(Lista)
AccionesCentro=S
ExpresionesAlActivar=asigna(Info.NominaID,0)
[CDIIdNom]
Estilo=Ficha
Clave=CDIIdNom
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.NominaID
CarpetaVisible=S

PermiteEditar=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Plata

ExpAlRefrescar=ActualizarVista
[Lista.Columnas]
Nombre=275
Moneda=70


[CDIIdNom.ListaEnCaptura]
(Inicio)=Info.ID
Info.ID=Info.CDINomina
Info.CDINomina=(Fin)


[Detalle.Columnas]
Personal=93
FechaD=70
Cantidad=49
Referencia=111

[FormaExtraValor.Columnas]
VerCampo=350
VerValor=350

[(Carpeta Abrir).Columnas]
0=153
1=85
2=-2
3=-2
4=-2

[CDIIdNom.Info.NominaID]
Carpeta=CDIIdNom
Clave=Info.NominaID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDINominaA.Columnas]
Mov=110
MovID=69
FechaEmision=94
Concepto=190
Observaciones=291

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

GuardarAntes=S
RefrescarDespues=S













[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
