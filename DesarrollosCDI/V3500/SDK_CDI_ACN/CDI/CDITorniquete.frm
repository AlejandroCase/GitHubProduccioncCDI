
[Forma]
Clave=CDITorniquete
Icono=0
Modulos=(Todos)
Nombre=<T>Acceso Socios<T>
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Maximizado

ListaCarpetas=DIASocio
CarpetaPrincipal=DIASocio
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1382
AccionesTamanoBoton=15x5
BarraAcciones=S
ListaAcciones=(Lista)
IniciarAgregando=S



PosicionCol1=693
AccionesDivision=S
VentanaSinIconosMarco=S
VentanaBloquearAjuste=S
PosicionSec1=340
AccionesCentro=S
VentanaExclusiva=S
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Aceptar
EnBarraAcciones=S
TipoAccion=Expresion
Activo=S
Visible=S

GuardarAntes=S
Multiple=S
ListaAccionesMultiples=(Lista)
BotonDefault=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


























[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76











[CDITorniquete.ListaEnCaptura]
(Inicio)=CDITorniquete.Cb
CDITorniquete.Cb=CDITorniquete.Socio
CDITorniquete.Socio=(Fin)

























[Acciones.Aceptar.exp3]
Nombre=exp3
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S
































[DIASocio]
Estilo=Ficha
Clave=DIASocio
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITorniquete
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=$00E9DCDA
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDITorniquete.Cb

CarpetaVisible=S

PestanaOtroNombre=S
PestanaNombre=SOCIO CONCURSANTE
[DIASocio.CDITorniquete.Cb]
Carpeta=DIASocio
Clave=CDITorniquete.Cb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


IgnoraFlujo=S

[Acciones.Aceptar.Exp1]
Nombre=Exp1
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

























Expresion=Asigna(info.numero,SQL(<T>xpCDIPASEtor :ni<T>, CDITorniquete:CDITorniquete.id))<BR>Caso  info.numero<BR>  Es 999999 Entonces<BR>       Informacion(<T>YA REGISTRO SU PARTICIPACION PREVIAMENTE, MUCHA SUERTE!!<T>)<BR>  Es 999998 Entonces<BR>      Informacion(<T>SU ESTATUS ES BAJA, POR FAVOR PASE AL COMITE DE  SOCIOS, GRACIAS!!<T>)<BR> SINO<BR>      FormaModal(<T>CDIDiaSocioTorniquete<T>)      <BR>Fin
[DIASocio.ListaEnCaptura]
(Inicio)=CDITorniquete.Cb
CDITorniquete.Cb=CDITorniquete.Texto1
CDITorniquete.Texto1=CDITorniquete.Texto2
CDITorniquete.Texto2=(Fin)











[Mensajes.ListaEnCaptura]
(Inicio)=CDITorniquete.Texto1
CDITorniquete.Texto1=CDITorniquete.Texto2
CDITorniquete.Texto2=CDITorniquete.Texto3
CDITorniquete.Texto3=(Fin)



























[Forma.ListaCarpetas]
(Inicio)=DIASocio
DIASocio=Mensajes
Mensajes=(Fin)




































[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Exp1
Exp1=exp3
exp3=(Fin)











[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
