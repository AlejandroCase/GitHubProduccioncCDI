
[Forma]
Clave=CDIfechEst
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Fechas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=546
PosicionInicialArriba=300
PosicionInicialAlturaCliente=129
PosicionInicialAncho=274
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
[(Variables).ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=(Fin)

[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Expresion]
Nombre=Expresion
Boton=7
NombreEnBoton=S
NombreDesplegar=Aceptar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





EspacioPrevio=S













[Acciones.Expresion.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S






[Acciones.Expresion.Esta]
Nombre=Esta
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=ejecutarSql(<T>xpCDIGestTotP1 :fd, :fA, :tA, :nAg<T>,Info.FechaD, Info.FechaA, Info.Agente,  EstacionTrabajo )





[Acciones.Expresion.Estadisi]
Nombre=Estadisi
Boton=0
TipoAccion=Formas
ClaveAccion=CDIEstAge
Activo=S
Visible=S

[Acciones.Expresion.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Esta
Esta=Estadisi
Estadisi=(Fin)









[Forma.ListaAcciones]
(Inicio)=Expresion
Expresion=Cerrar
Cerrar=(Fin)
