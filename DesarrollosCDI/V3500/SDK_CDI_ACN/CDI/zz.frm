
[Forma]
Clave=zz
Icono=0
Modulos=(Todos)
Nombre=zzz
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1320
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
ExpresionesAlMostrar=INFORMACION(estaciontrabajo)
[(Variables)]
Estilo=Ficha
Pestana=S
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.Numero
CarpetaVisible=S

PermiteEditar=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro
[(Variables).Info.Numero]
Carpeta=(Variables)
Clave=Info.Numero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Acciones.Casilleros]
Nombre=Casilleros
Boton=20
NombreDesplegar=Casilleros
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S























































Expresion=ejecutar(<T>C:\Windows\system32\mspaint.exe<T>)

[Acciones.Expresion]
Nombre=Expresion
Boton=12
NombreDesplegar=Expresion
EnBarraHerramientas=S
TipoAccion=Expresion
Expresion=EscribirEnPuerto(<T>com1:<T>,1 )
Activo=S
Visible=S






[Acciones.Expresion2]
Nombre=Expresion2
Boton=4
NombreDesplegar=Expresion2
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S




















Expresion=ejecutar(<T>echo 0>lpt1:<T>)
[Acciones.Expresion3]
Nombre=Expresion3
Boton=27
NombreDesplegar=Expresion3
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S





Expresion=ejecutar(<T>echo 0>lpt1:<T>)


























[Forma.ListaAcciones]
(Inicio)=Casilleros
Casilleros=Expresion
Expresion=Expresion2
Expresion2=Expresion3
Expresion3=(Fin)
