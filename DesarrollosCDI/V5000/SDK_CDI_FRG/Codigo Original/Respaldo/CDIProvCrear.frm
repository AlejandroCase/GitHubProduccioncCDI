
[Forma]
Clave=CDIProvCrear
Icono=0
CarpetaPrincipal=CDIProvCrear
Modulos=(Todos)
Nombre=Proveedores

ListaCarpetas=CDIProvCrear
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=32
PosicionInicialAncho=282
BarraHerramientas=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
PosicionInicialIzquierda=1902
PosicionInicialArriba=276
[CDIProvCrear]
Estilo=Ficha
Clave=CDIProvCrear
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Plata
CampoColorFondo=Plata
CarpetaVisible=S

FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Plata
[Acciones.CDIProvCrear1]
Nombre=CDIProvCrear1
Boton=60
NombreEnBoton=S
NombreDesplegar=&Alta Proveedor
EnBarraAcciones=S
TipoAccion=formas
ClaveAccion=CDIProv
Activo=S
Visible=S
EnBarraHerramientas=S

Antes=S
AntesExpresiones=EjecutarSQL( <T>EXEC CDINuevoProvConce:tUSU<T>,USUARIO )
[Acciones.Actualiza]
Nombre=Actualiza
Boton=81
NombreEnBoton=S
NombreDesplegar=&Actualiza
EnBarraHerramientas=S
Activo=S
Visible=S















TipoAccion=formas
ClaveAccion=CDIProvID
































































[Forma.ListaAcciones]
(Inicio)=CDIProvCrear1
CDIProvCrear1=Actualiza
Actualiza=(Fin)
