
[Forma]
Clave=vic_PlantillaTareasAsigna
Icono=4
Modulos=(Todos)
Nombre=Asigna Plantilla de Tareas

ListaCarpetas=(Variables)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=436
PosicionInicialArriba=354
PosicionInicialAlturaCliente=122
PosicionInicialAncho=280
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Aplica, Si(Info.Aplica en (<T>Contratos<T>), Info.ID, Info.Clave))
VentanaExclusiva=S
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
ListaEnCaptura=(Lista)
CarpetaVisible=S

PermiteEditar=S
FichaEspacioEntreLineas=9
FichaEspacioNombres=71
FichaColorFondo=Negro
FichaNombres=Izquierda
FichaAlineacion=Izquierda
[(Variables).Info.Fecha]
Carpeta=(Variables)
Clave=Info.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
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
ConfirmarAntes=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S


[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si (Info.Aplica en (<T>Contratos<T>))<BR>Entonces<BR>   ProcesarSQL(<T>vic_spAsignaActividades :nClave, :fFecha, :nIDPlantilla, :tAplica, :tUsuario, :nIDContrato<T>, Nulo, Info.Fecha, Info.vic_Plantilla, Info.Aplica, Usuario, Info.ID)<BR>Sino<BR>   ProcesarSQL(<T>vic_spAsignaActividades :tClave, :fFecha, :nIDPlantilla, :tAplica, :tUsuario<T>, Info.Clave, Info.Fecha, Info.vic_Plantilla, Info.Aplica, Usuario)<BR>Fin
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


[(Variables).Info.vic_Plantilla]
Carpeta=(Variables)
Clave=Info.vic_Plantilla
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro


[Lista.Columnas]
ID=92
Aplica=184
Estatus=94







[(Variables).ListaEnCaptura]
(Inicio)=Info.vic_Plantilla
Info.vic_Plantilla=Info.Fecha
Info.Fecha=(Fin)














[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=Aceptar
Aceptar=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
