
[Forma]
Clave=CDIIngeresosEgresos
Icono=0
Modulos=(Todos)

ListaCarpetas=CDIIngresosEgresos
CarpetaPrincipal=CDIIngresosEgresos
PosicionInicialIzquierda=558
PosicionInicialArriba=291
PosicionInicialAlturaCliente=85
PosicionInicialAncho=287
BarraAcciones=S
Nombre=Ingeresos-Egresos
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
[CDIIngresosEgresos]
Estilo=Ficha
Clave=CDIIngresosEgresos
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
ListaEnCaptura=Info.ClavePresupuestal
CarpetaVisible=S

[CDIIngresosEgresos.Info.ClavePresupuestal]
Carpeta=CDIIngresosEgresos
Clave=Info.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
NombreDesplegar=&Cerrar
EnBarraAcciones=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S




[Lista.Columnas]
0=146
1=316











[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
