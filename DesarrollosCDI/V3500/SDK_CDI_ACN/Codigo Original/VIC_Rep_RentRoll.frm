
[Forma]
Clave=VIC_Rep_RentRoll
Icono=0
Modulos=(Todos)
Nombre=Rent Roll

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=(Lista)
PosicionInicialIzquierda=532
PosicionInicialArriba=272
PosicionInicialAlturaCliente=141
PosicionInicialAncho=216
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
Tamano=25
ColorFondo=Blanco

[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Browser(General.RSReportASPX & <T>/Rentroll/RentRoll&Inmueble=<T> & RepParam:RepParam.InfoInmueble & <T>&InfoFechaD=<T> & RepParam:RepParam.InfoFechaD & <T>&InfoFechaA=<T> & RepParam:RepParam.InfoFechaA,<T>Rent Roll<T>)
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














































[Acciones.Aceptar.Guardar]
Nombre=Guardar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S






[Ficha.RepParam.InfoFechaD]
Carpeta=Ficha
Clave=RepParam.InfoFechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=12
[Ficha.RepParam.InfoFechaA]
Carpeta=Ficha
Clave=RepParam.InfoFechaA
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



Tamano=12



[Ficha.ListaEnCaptura]
(Inicio)=RepParam.InfoInmueble
RepParam.InfoInmueble=RepParam.InfoFechaD
RepParam.InfoFechaD=RepParam.InfoFechaA
RepParam.InfoFechaA=(Fin)
















[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Guardar
Guardar=Expresion
Expresion=Aceptar
Aceptar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
