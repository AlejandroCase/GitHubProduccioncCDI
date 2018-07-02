
[Forma]
Clave=CDICfgGestionCxc
Icono=0
Modulos=(Todos)
Nombre=Configuración Proceso de Gestión
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICfgGestionCxc
CarpetaPrincipal=CDICfgGestionCxc
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=0
PosicionInicialArriba=12
PosicionInicialAlturaCliente=705
PosicionInicialAncho=1382
DialogoAbrir=S
[CDICfgGestionCxc]
Estilo=Ficha
Clave=CDICfgGestionCxc
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICfgGestionCxc
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

[CDICfgGestionCxc.CDICfgGestionCxc.Concepto]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICfgGestionCxc.CDICfgGestionCxc.FormaPago]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICfgGestionCxc.CDICfgGestionCxc.DiasGestion]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.DiasGestion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICfgGestionCxc.CDICfgGestionCxc.PeriodoVencimiento]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.PeriodoVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICfgGestionCxc.CDICfgGestionCxc.DiaVencimiento]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.DiaVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICfgGestionCxc.CDICfgGestionCxc.DiasBloqueo]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.DiasBloqueo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDICfgGestionCxc.CDICfgGestionCxc.DiasBaja]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.DiasBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDICfgGestionCxc.CDICfgGestionCxc.DiasAviso]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.DiasAviso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDICfgGestionCxc.CDICfgGestionCxc.Periodo]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco

[CDICfgGestionCxc.CDICfgGestionCxc.TC]
Carpeta=CDICfgGestionCxc
Clave=CDICfgGestionCxc.TC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S


[CDICfgGestionCxc.Columnas]
Concepto=107
FormaPago=62
DiasGestion=72
PeriodoVencimiento=124
DiaVencimiento=76
DiasBloqueo=62
DiasBaja=45
DiasAviso=50
Periodo=52
TC=64
TextoMensaje=304



[CDICfgGestionCxc.ListaEnCaptura]
(Inicio)=CDICfgGestionCxc.Concepto
CDICfgGestionCxc.Concepto=CDICfgGestionCxc.FormaPago
CDICfgGestionCxc.FormaPago=CDICfgGestionCxc.DiasGestion
CDICfgGestionCxc.DiasGestion=CDICfgGestionCxc.PeriodoVencimiento
CDICfgGestionCxc.PeriodoVencimiento=CDICfgGestionCxc.DiaVencimiento
CDICfgGestionCxc.DiaVencimiento=CDICfgGestionCxc.DiasBloqueo
CDICfgGestionCxc.DiasBloqueo=CDICfgGestionCxc.DiasBaja
CDICfgGestionCxc.DiasBaja=CDICfgGestionCxc.DiasAviso
CDICfgGestionCxc.DiasAviso=CDICfgGestionCxc.Periodo
CDICfgGestionCxc.Periodo=CDICfgGestionCxc.TC
CDICfgGestionCxc.TC=(Fin)



[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=(Fin)
