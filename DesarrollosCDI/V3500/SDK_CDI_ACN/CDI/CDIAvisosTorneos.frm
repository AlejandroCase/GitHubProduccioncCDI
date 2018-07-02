
[Forma]
Clave=CDIAvisosTorneos
Icono=0
Modulos=(Todos)
Nombre=CDIAvisosTorneos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIAvisosTorneos
CarpetaPrincipal=CDIAvisosTorneos
PosicionInicialIzquierda=341
PosicionInicialArriba=114
PosicionInicialAlturaCliente=313
PosicionInicialAncho=722
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Editor de Paginas
[CDIAvisosTorneos]
Estilo=Ficha
Clave=CDIAvisosTorneos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAvisosTorneos
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


[Acciones.Editor de Paginas]
Nombre=Editor de Paginas
Boton=22
NombreEnBoton=S
NombreDesplegar=Editor de Paginas
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Asigna(CDIAvisosTorneos:CDIAvisosTorneos.Aviso, EditorHTML.Directo(CDIAvisosTorneos:CDIAvisosTorneos.Deporte, CDIAvisosTorneos:CDIAvisosTorneos.Aviso))
[CDIAvisosTorneos.ListaEnCaptura]
(Inicio)=CDIAvisosTorneos.Deporte
CDIAvisosTorneos.Deporte=CDIAvisosTorneos.RamaDeporte
CDIAvisosTorneos.RamaDeporte=CDIAvisosTorneos.Fuerza
CDIAvisosTorneos.Fuerza=CDIAvisosTorneos.Aviso
CDIAvisosTorneos.Aviso=(Fin)

[CDIAvisosTorneos.CDIAvisosTorneos.Deporte]
Carpeta=CDIAvisosTorneos
Clave=CDIAvisosTorneos.Deporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAvisosTorneos.CDIAvisosTorneos.RamaDeporte]
Carpeta=CDIAvisosTorneos
Clave=CDIAvisosTorneos.RamaDeporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAvisosTorneos.CDIAvisosTorneos.Fuerza]
Carpeta=CDIAvisosTorneos
Clave=CDIAvisosTorneos.Fuerza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAvisosTorneos.CDIAvisosTorneos.Aviso]
Carpeta=CDIAvisosTorneos
Clave=CDIAvisosTorneos.Aviso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
