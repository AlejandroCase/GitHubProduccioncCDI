
[Forma]
Clave=Sociocasillero
Icono=0
Modulos=(Todos)
Nombre=Socio

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialAlturaCliente=132
PosicionInicialAncho=265
PosicionInicialIzquierda=550
PosicionInicialArriba=299
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
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


[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76

0=108
1=286



[(Variables).Info.CDICilindro]
Carpeta=(Variables)
Clave=Info.CDICilindro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


AccionAlEnter=
[(Variables).Info.CDISocioLista]
Carpeta=(Variables)
Clave=Info.CDISocioLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Expresion]
Nombre=Expresion
Boton=0
NombreDesplegar=Expresion
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S




[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
Activo=S
Antes=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S















EspacioPrevio=S





















[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S



[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S






































ConCondicion=S
EjecucionConError=S


Expresion=ProcesarSql(<T>CDIsp_AsignaCasilleroV2 :nEstacion,      :tMov,     :nPlanoid,   :tUso,   :tcliente,         :tEmp,    :tTi,      :ncasillero, :nSuc,:tCon<T>,<BR>                                    estaciontrabajo, <T>Asignado<T>, info.faseid, usuario, info.cdisociolista, empresa, info.tipo, info.numero,  sucursal, info.CDIcilindro)
EjecucionCondicion=condatos(Info.CDICilindro)
EjecucionMensaje=<T>Falta especificar el cilindro<T>
[(Variables).ListaEnCaptura]
(Inicio)=Info.CDICilindro
Info.CDICilindro=Info.CDISocioLista
Info.CDISocioLista=(Fin)














[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Aceptar
Aceptar=Expresion
Expresion=(Fin)





[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
