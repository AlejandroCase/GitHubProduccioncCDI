
[Forma]
Clave=CDIPerBaja
Icono=0
Modulos=(Todos)
Nombre=Baja de Personal

ListaCarpetas=CDIPerBaja
CarpetaPrincipal=CDIPerBaja
BarraAcciones=S
AccionesTamanoBoton=15x5
PosicionInicialAlturaCliente=72
PosicionInicialAncho=299
ListaAcciones=(Lista)
AccionesCentro=S
VentanaSiempreAlFrente=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
PosicionInicialIzquierda=542
PosicionInicialArriba=307
[CDIPerBaja]
Estilo=Ficha
Clave=CDIPerBaja
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
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.Personal
CarpetaVisible=S

[CDIPerBaja.Info.Personal]
Carpeta=CDIPerBaja
Clave=Info.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Baja]
Nombre=Baja
Boton=0
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=expresion
Activo=S
Visible=S

ConfirmarAntes=S
Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=Cancelar
EnBarraAcciones=S
TipoAccion=ventana
ClaveAccion=Cancelar
Activo=S
Visible=S
















[Lista.Columnas]
0=106
1=301


[Acciones.Baja.1]
Nombre=1
Boton=0
TipoAccion=controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Baja.2]
Nombre=2
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=ProcesarSQL(<T>CDIBajaPersonal :tPersonal<T>, Info.Personal)
[Acciones.Baja.3]
Nombre=3
Boton=0
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S







[Acciones.Baja.ListaAccionesMultiples]
(Inicio)=1
1=2
2=3
3=(Fin)



[Forma.ListaAcciones]
(Inicio)=Baja
Baja=Cancelar
Cancelar=(Fin)
