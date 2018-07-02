
[Forma]
Clave=vic_Rep_Presupuesto
Icono=0
Modulos=(Todos)
Nombre=Presupuesto

ListaCarpetas=(Variables)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
CarpetaPrincipal=(Variables)
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=367
PosicionInicialArriba=309
PosicionInicialAlturaCliente=116
PosicionInicialAncho=290
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

[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
GuardarAntes=S
[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cancelar.Cancelar]
Nombre=Cancelar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
EspacioPrevio=S

[(Variables).ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=(Fin)




[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)






[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S






Expresion=URL(<T>http://localhost/Reports/Pages/Folder.aspx<T>+<T>/ReportesInmobiliaria/PresupuestoTotal&Estacion=<T> + EstacionTrabajo)
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S









[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Aceptar
Aceptar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
