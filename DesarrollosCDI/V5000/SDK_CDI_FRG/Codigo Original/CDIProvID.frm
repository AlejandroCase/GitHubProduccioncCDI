
[Forma]
Clave=CDIProvID
Icono=0
Modulos=(Todos)
Nombre=No. Proveedor

ListaCarpetas=CDIProvID
CarpetaPrincipal=CDIProvID
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
PosicionInicialIzquierda=539
PosicionInicialArriba=308
PosicionInicialAlturaCliente=70
PosicionInicialAncho=271
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=Acepta
AccionesCentro=S
ExpresionesAlMostrar=asigna(Info.Proveedor,<T><T>)
[CDIProvID]
Estilo=Ficha
Clave=CDIProvID
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=60
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.Proveedor
CarpetaVisible=S

[CDIProvID.Info.Proveedor]
Carpeta=CDIProvID
Clave=Info.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
0=116
1=266

[Acciones.Acepta]
Nombre=Acepta
Boton=3
NombreEnBoton=S
NombreDesplegar=Aceptar
GuardarAntes=S
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Acepta.1]
Nombre=1
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Acepta.2]
Nombre=2
Boton=0
TipoAccion=expresion
Activo=S
Visible=S


Expresion=EjecutarSQL( <T>EXEC CDIAcualizaProv :tProv, :tUsu<T>,Info.Proveedor,usuario )
[Acciones.Acepta.3]
Nombre=3
Boton=0
TipoAccion=formas
ClaveAccion=CDIProvActualiza
Activo=S
Visible=S









[Acciones.Acepta.ListaAccionesMultiples]
(Inicio)=1
1=2
2=3
3=(Fin)
