
[Forma]
Clave=CDITorneosMaestros
Icono=0
Modulos=(Todos)
Nombre=Catalogos Maestros
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=523
PosicionInicialArriba=327
PosicionInicialAlturaCliente=31
PosicionInicialAncho=320
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.Usuario
CarpetaVisible=S

FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Plata
[(Variables).Info.Usuario]
Carpeta=(Variables)
Clave=Info.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Deportes]
Nombre=Deportes
Boton=75
NombreEnBoton=S
NombreDesplegar=Deportes
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIDeporte
Activo=S
Visible=S

[Acciones.Ramade]
Nombre=Ramade
Boton=60
NombreEnBoton=S
NombreDesplegar=Rama Deportiva
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIRamaDepor
Activo=S
Visible=S

EspacioPrevio=S



[Acciones.Fuerzas]
Nombre=Fuerzas
Boton=51
NombreEnBoton=S
NombreDesplegar=Fuerzas
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIFuerzaDep
Activo=S
Visible=S

EspacioPrevio=S



[Acciones.Sedes]
Nombre=Sedes
Boton=19
NombreEnBoton=S
NombreDesplegar=Sedes
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICamposDep
Activo=S
Visible=S



EspacioPrevio=S










[Forma.ListaAcciones]
(Inicio)=Deportes
Deportes=Ramade
Ramade=Fuerzas
Fuerzas=Sedes
Sedes=(Fin)
