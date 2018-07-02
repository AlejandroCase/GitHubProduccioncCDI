
[Forma]
Clave=CDIPersonal
Icono=0
Modulos=(Todos)
Nombre=Carta Patronal

ListaCarpetas=CDIPersonal
CarpetaPrincipal=CDIPersonal
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
PosicionInicialIzquierda=515
PosicionInicialArriba=336
PosicionInicialAlturaCliente=73
PosicionInicialAncho=295
AccionesCentro=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
ExpresionesAlActivar=asigna(Info.Personal,<T> <T>)
[CDIPersonal]
Estilo=Ficha
Clave=CDIPersonal
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
ListaEnCaptura=Info.Personal
CarpetaVisible=S


[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

GuardarAntes=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S








[CDIPersonal.ListaEnCaptura]
(Inicio)=Info.Personal
Info.Personal=Info.PersonalA
Info.PersonalA=Info.PersonalCat
Info.PersonalCat=Info.PersonalD
Info.PersonalD=(Fin)




[Lista.Columnas]
0=106
1=301








[CDIPersonal.Info.Personal]
Carpeta=CDIPersonal
Clave=Info.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
