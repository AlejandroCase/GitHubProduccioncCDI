
[Forma]
Clave=CDIVarPersonalJornadaMesHist
Icono=0
Modulos=(Todos)
Nombre=Historico Jornadas

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialAlturaCliente=74
PosicionInicialAncho=246
PosicionInicialIzquierda=412
PosicionInicialArriba=327
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[Lista]
Estilo=Ficha
Clave=Lista
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
ListaEnCaptura=Info.Periodo
CarpetaVisible=S

PermiteEditar=S
[Lista.Info.Periodo]
Carpeta=Lista
Clave=Info.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Ejercicio]
Nombre=Ejercicio
Boton=9
NombreEnBoton=S
NombreDesplegar=&Ejercicio
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Antes=S
Visible=S

AntesExpresiones=Forma(<T>EspecificarEjercicio<T>)
[Acciones.Salir]
Nombre=Salir
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S
Visible=S























































Multiple=S
ListaAccionesMultiples=(Lista)

[Acciones.Aceptar.Variables]
Nombre=Variables
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Aceptar.Fecha]
Nombre=Fecha
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S








Expresion=Forma(<T>CDIPersonalJornadaMesHist<T>)
[Lista.Columnas]
Personal=50
NombreCompleto=193
D1=205
D2=144
D3=144
D4=144
D5=144
D6=144
D7=144
D8=144
D9=144
D10=144
D11=144
D12=144
D13=144
D14=144
D15=144
D16=144
D17=144
D18=144
D19=144
D20=144
D21=144
D22=144
D23=144
D24=144
D25=144
D26=144
D27=144
D28=144
D29=144
D30=144
D31=144




























[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables
Variables=Fecha
Fecha=(Fin)







[Forma.ListaAcciones]
(Inicio)=Ejercicio
Ejercicio=Aceptar
Aceptar=Salir
Salir=(Fin)
