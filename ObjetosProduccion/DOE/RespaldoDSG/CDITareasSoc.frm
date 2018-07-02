
[Forma]
Clave=CDITareasSoc
Icono=0
Modulos=(Todos)
Nombre=Tareas Socios

ListaCarpetas=Tareas
CarpetaPrincipal=Tareas
PosicionInicialAlturaCliente=154
PosicionInicialAncho=268
PosicionInicialIzquierda=573
PosicionInicialArriba=257
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
[Tareas]
Estilo=Ficha
Clave=Tareas
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


[Tareas.Info.Usuario]
Carpeta=Tareas
Clave=Info.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Tareas.Info.Fecha]
Carpeta=Tareas
Clave=Info.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Tareas.Info.Socio]
Carpeta=Tareas
Clave=Info.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
0=99
1=375




[Acciones.CA.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.CA.Reporte]
Nombre=Reporte
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDITareas
Activo=S
Visible=S

[Acciones.CA]
Nombre=CA
Boton=4
NombreDesplegar=CA
Multiple=S
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDITareas
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S













[Acciones.CA.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Reporte
Reporte=(Fin)















[Tareas.Info.TareaEstado]
Carpeta=Tareas
Clave=Info.TareaEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Tareas.ListaEnCaptura]
(Inicio)=Info.Socio
Info.Socio=Info.Usuario
Info.Usuario=Info.Fecha
Info.Fecha=Info.TareaEstado
Info.TareaEstado=(Fin)



[Forma.ListaAcciones]
(Inicio)=CA
CA=Cerrar
Cerrar=(Fin)
