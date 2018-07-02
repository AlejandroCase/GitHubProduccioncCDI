
[Forma]
Clave=vic_RepInfoLocales
Icono=0
Modulos=(Todos)
Nombre=Informe de Locales y Superficies

ListaCarpetas=Ficha
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
CarpetaPrincipal=Ficha
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=481
PosicionInicialArriba=454
PosicionInicialAlturaCliente=81
PosicionInicialAncho=317
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
[Ficha.ListaEnCaptura]
(Inicio)=RepParam.InfoMedida
RepParam.InfoMedida=RepParam.InfoMoneda
RepParam.InfoMoneda=(Fin)

[Ficha.RepParam.InfoMedida]
Carpeta=Ficha
Clave=RepParam.InfoMedida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.RepParam.InfoMoneda]
Carpeta=Ficha
Clave=RepParam.InfoMoneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S

GuardarAntes=S
ListaAccionesMultiples=(Lista)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S




[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S




Expresion=Browser(General.RSReportASPX+<T>/ReportesInmobiliaria/InformeLocalesSuperficies&Estacion=<T> + EstacionTrabajo,<T>Informe de Locales y Superficies<T>)
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S



[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Aceptar
Aceptar=(Fin)







[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
