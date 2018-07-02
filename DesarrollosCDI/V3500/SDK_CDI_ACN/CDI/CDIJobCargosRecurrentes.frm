
[Forma]
Clave=CDIJobCargosRecurrentes
Icono=17
BarraHerramientas=S
Modulos=(Todos)
Nombre=Job Cargos Recurrentes
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=513
PosicionInicialArriba=324
PosicionInicialAlturaCliente=125
PosicionInicialAncho=253
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

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

[(Variables).Info.Periodo]
Carpeta=(Variables)
Clave=Info.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.JobCargosRecurrentes]
Nombre=JobCargosRecurrentes
Boton=9
NombreDesplegar=Generar &Job
EnBarraHerramientas=S
Activo=S
Visible=S

NombreEnBoton=S
Multiple=S
ListaAccionesMultiples=(Lista)
[(Variables).ListaEnCaptura]
(Inicio)=Info.Periodo
Info.Periodo=Info.Ejercicio
Info.Ejercicio=(Fin)














[Acciones.JobCargosRecurrentes.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.JobCargosRecurrentes.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=Si  ConDatos( Info.Periodo ) y  ConDatos( Info.Ejercicio)<BR>Entonces<BR>  Si Info.Periodo > 0 y Info.Ejercicio > 0<BR>  Entonces<BR>    VerComentario( <T>Script para Generar Job Cargos Recurrentes.<T>, SQLEnLista(<T>spCDIGeneraJobCargosRecurrentes :tEmpresa, :nPeriodo, :nEjercicio<T>, Empresa, Info.Periodo, Info.Ejercicio ))<BR>  SiNo<BR>    Si Info.Periodo = 0<BR>    Entonces<BR>      Precaucion(<T>Periodo Incorrecto.<T>)<BR>    Fin<BR>    Si Info.Ejercicio = 0<BR>    Entonces<BR>      Precaucion(<T>Ejercicio Incorrecto.<T>)<BR>    Fin<BR>  Fin<BR>SiNo<BR>  Precaucion(<T>Ingresar Parametros.<T>)<BR>Fin
Activo=S
Visible=S

[Acciones.JobCargosRecurrentes.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=(Fin)











[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=JobCargosRecurrentes
JobCargosRecurrentes=(Fin)
