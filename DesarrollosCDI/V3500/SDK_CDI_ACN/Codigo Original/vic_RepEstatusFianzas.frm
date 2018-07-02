
[Forma]
Clave=vic_RepEstatusFianzas
Icono=0
Modulos=(Todos)
Nombre=Estatus Fianzas

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
PosicionInicialAlturaCliente=166
PosicionInicialAncho=212
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=534
PosicionInicialArriba=412
[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=RepParam
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[Ficha.RepParam.InfoInmueble]
Carpeta=Ficha
Clave=RepParam.InfoInmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.RepParam.InfoEstatusFianza]
Carpeta=Ficha
Clave=RepParam.InfoEstatusFianza
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.RepParam.InfoDias]
Carpeta=Ficha
Clave=RepParam.InfoDias
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.ListaEnCaptura]
(Inicio)=RepParam.InfoInmueble
RepParam.InfoInmueble=RepParam.InfoEstatusFianza
RepParam.InfoEstatusFianza=RepParam.InfoDias
RepParam.InfoDias=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
GuardarAntes=S
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S

ListaAccionesMultiples=(Lista)
[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Browser(General.RSReportASPX+<T>/ReportesInmobiliaria/EstatusFianzas&Estacion=<T> + EstacionTrabajo,<T>Estatus Fianzas<T>)
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S






[Lista.Columnas]
0=101
1=300
2=-2




[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Aceptar
Aceptar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
