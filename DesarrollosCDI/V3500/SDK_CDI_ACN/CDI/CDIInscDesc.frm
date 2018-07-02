
[Forma]
Clave=CDIInscDesc
Icono=0
Modulos=(Todos)
Nombre=Membresia
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIInscDesc
CarpetaPrincipal=CDIInscDesc
PosicionInicialIzquierda=537
PosicionInicialArriba=302
PosicionInicialAlturaCliente=126
PosicionInicialAncho=292
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaAjustarZonas=S
VentanaBloquearAjuste=S
VentanaAvanzaTab=S
BarraAcciones=S
[CDIInscDesc]
Estilo=Ficha
Clave=CDIInscDesc
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
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

InicializarVariables=S
[CDIInscDesc.Info.CDIMembresia]
Carpeta=CDIInscDesc
Clave=Info.CDIMembresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

AccionAlEnter=
IgnoraFlujo=N
AccionAlEnterBloquearAvance=N
[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S


[Acciones.Aceptar.Forma]
Nombre=Forma
Boton=0
TipoAccion=Formas
ClaveAccion=CDITempInscrip
Activo=S
Visible=S

[Acciones.Aceptar]
Nombre=Aceptar
Boton=7
NombreDesplegar=&Aceptar
Multiple=S
TipoAccion=Controles Captura
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S


NombreEnBoton=S






EnBarraAcciones=S


BotonDefault=S





[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

























[CDIInscDesc.Info.Programa]
Carpeta=CDIInscDesc
Clave=Info.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[CEPrograma.Columnas]
0=92
1=210
2=74
3=70








[CDIInscDesc.ListaEnCaptura]
(Inicio)=Info.CDIMembresia
Info.CDIMembresia=Info.Programa
Info.Programa=(Fin)






[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Forma
Forma=(Fin)













[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
