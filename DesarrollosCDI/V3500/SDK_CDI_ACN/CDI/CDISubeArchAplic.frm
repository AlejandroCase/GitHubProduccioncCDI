
[Forma]
Clave=CDISubeArchAplic
Icono=0
Modulos=(Todos)
Nombre=Aplicaciones Automáticas

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=428
PosicionInicialArriba=238
PosicionInicialAlturaCliente=103
PosicionInicialAncho=328
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
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
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=Info.CDIRutaArchivo

[(Variables).Info.CDIRutaArchivo]
Carpeta=(Variables)
Clave=Info.CDIRutaArchivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Acciones.Iniciar.VariablesAsignar]
Nombre=VariablesAsignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Iniciar]
Nombre=Iniciar
Boton=0
NombreDesplegar=&Iniciar
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=(Lista)
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S










[Acciones.Iniciar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S



ConCondicion=S
EjecucionConError=S




















Expresion=Back.EjecutarSQL( <T>Archivo<T>, <T>spCDISubeArchAplic <T>& NumEnTexto(EstacionTrabajo)&<T>,<T>&Comillas(Usuario)&<T>,<T>&Comillas(Info.CDIRutaArchivo))
EjecucionCondicion=SQL(<T>SELECT dbo.CDIfnCDIArchivoProcesado(:tArchivo)<T>, Info.CDIRutaArchivo) = 0
EjecucionMensaje=<T>El Archivo ya fue Procesado<T>


[Acciones.Iniciar.ListaAccionesMultiples]
(Inicio)=VariablesAsignar
VariablesAsignar=Expresion
Expresion=(Fin)

[Forma.ListaAcciones]
(Inicio)=Iniciar
Iniciar=Cancelar
Cancelar=(Fin)
