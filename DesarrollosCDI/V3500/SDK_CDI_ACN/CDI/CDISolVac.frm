
[Forma]
Clave=CDISolVac
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Solicitud Vacaciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISolVac
CarpetaPrincipal=CDISolVac
PosicionInicialIzquierda=512
PosicionInicialArriba=266
PosicionInicialAlturaCliente=196
PosicionInicialAncho=341
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
IniciarAgregando=S
ListaAcciones=(Lista)
SinTransacciones=S
VentanaSinIconosMarco=S
[CDISolVac]
Estilo=Ficha
Clave=CDISolVac
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISolVac
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

[CDISolVac.CDISolVac.Personal]
Carpeta=CDISolVac
Clave=CDISolVac.Personal
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISolVac.CDISolVac.FechaD]
Carpeta=CDISolVac
Clave=CDISolVac.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15

[CDISolVac.CDISolVac.Cantidad]
Carpeta=CDISolVac
Clave=CDISolVac.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10
[CDISolVac.CDISolVac.Referencia]
Carpeta=CDISolVac
Clave=CDISolVac.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco



[CDISolVac.CDISolVac.FechaEmision]
Carpeta=CDISolVac
Clave=CDISolVac.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15

[Acciones.Procesar.Procesa]
Nombre=Procesa
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=sql(<T>XpCDISolVac :nI, :tE, :tU, :nE<T>,CDISolVac:CDISolVac.Id,Empresa,Usuario,EstacionTrabajo)
[Acciones.Procesar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



[Acciones.Procesar.ListaAccionesMultiples]
(Inicio)=Procesa
Procesa=Cerrar
Cerrar=(Fin)

[Acciones.Afecta.Afec1]
Nombre=Afec1
Boton=0
TipoAccion=Expresion
Expresion=ejecutarsql(<T>CDISolicitaVac :nI, :tE, :tU, :nE<T>,CDISolVac:CDISolVac.Id,Empresa,Usuario,EstacionTrabajo)
Activo=S
Visible=S


[Acciones.Afecta]
Nombre=Afecta
Boton=7
NombreEnBoton=S
NombreDesplegar=&Procesar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=Afec1

Activo=S
Visible=S
GuardarAntes=S


[Acciones.Afecta.ListaAccionesMultiples]
(Inicio)=Afec1
Afec1=Cerrar
Cerrar=(Fin)

[CDISolVac.ListaEnCaptura]
(Inicio)=CDISolVac.Personal
CDISolVac.Personal=CDISolVac.FechaEmision
CDISolVac.FechaEmision=CDISolVac.FechaD
CDISolVac.FechaD=CDISolVac.Cantidad
CDISolVac.Cantidad=CDISolVac.Referencia
CDISolVac.Referencia=(Fin)

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

EspacioPrevio=S









[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=SolVacaciones
Activo=S
Visible=S



























[Forma.ListaAcciones]
(Inicio)=Afecta
Afecta=Cerrar
Cerrar=Presentacion preliminar
Presentacion preliminar=(Fin)
