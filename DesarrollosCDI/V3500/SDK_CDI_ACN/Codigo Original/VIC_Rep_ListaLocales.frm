
[Forma]
Clave=VIC_Rep_ListaLocales
Icono=0
Modulos=(Todos)
Nombre=Lista de Locales
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaAcciones=(Lista)
ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=531
PosicionInicialArriba=433
PosicionInicialAlturaCliente=124
PosicionInicialAncho=218
[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Browser(General.RSReportASPX+<T>/ReportesInmobiliaria/ListaLocales&Inmueble=<T> & RepParam:RepParam.InfoInmueble & <T>&Estatus=<T> & RepParam:RepParam.InfoEstatusLocales,<T>Lista de Locales<T>)
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
GuardarAntes=S
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

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

[Ficha.RepParam.InfoEstatusLocales]
Carpeta=Ficha
Clave=RepParam.InfoEstatusLocales
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro


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



















[Ficha.RepParam.InfoInmueble]
Carpeta=Ficha
Clave=RepParam.InfoInmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro




[Ficha.ListaEnCaptura]
(Inicio)=RepParam.InfoInmueble
RepParam.InfoInmueble=RepParam.InfoEstatusLocales
RepParam.InfoEstatusLocales=(Fin)














[Lista.Columnas]
0=101
1=300
2=-2


























[Acciones.Aceptar.Guardar]
Nombre=Guardar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S







[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Guardar
Guardar=Expresion
Expresion=Aceptar
Aceptar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
