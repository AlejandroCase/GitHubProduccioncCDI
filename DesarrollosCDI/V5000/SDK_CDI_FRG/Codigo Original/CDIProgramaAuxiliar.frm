
[Forma]
Clave=CDIProgramaAuxiliar
Icono=0
CarpetaPrincipal=CDIProgramaAuxiliar
Modulos=(Todos)
MovModulo=CDIProgramaAuxiliar
Nombre=CDIProgramaAuxiliar

ListaCarpetas=CDIProgramaAuxiliar
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=425
PosicionInicialAncho=1092
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
PosicionInicialIzquierda=156
PosicionInicialArriba=129
PosicionSec1=142
ExpresionesAlCerrar=//FormaPos( <T>CDIPrograma<T>,Info.ID )<BR>//Forma.ActualizarVista(<T>CDIPrograma<T>)<BR>// Forma.ActualizarForma<BR>  Forma.ActualizarArbol(<T>CDIPrograma<T>)
[CDIProgramaAuxiliar]
Estilo=Hoja
Clave=CDIProgramaAuxiliar
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIProgramaAuxiliar
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PermiteEditar=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIProgramaAuxiliar.Usuario =USUARIO
[CDIProgramaAuxiliar.CDIProgramaAuxiliar.Programa]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.Concepto]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.CEPlan]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.CEPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.FechaInicio]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.FechaFin]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.CEPlanD]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.CEPlanD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.Materia]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.Materia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.Grupo]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.Espacio]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.Profesor]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.Cupo]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.Cupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgramaAuxiliar.CDIProgramaAuxiliar.Horario]
Carpeta=CDIProgramaAuxiliar
Clave=CDIProgramaAuxiliar.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Acciones.Cargar]
Nombre=Cargar
Boton=78
NombreDesplegar=&Subir Planes
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Activo=S
Visible=S
NombreEnBoton=S

Multiple=S
ListaAccionesMultiples=Excel
EspacioPrevio=S
RefrescarDespues=S
GuardarAntes=S
[CDIProgramaAuxiliar.Columnas]
Programa=64
Concepto=179
CEPlan=98
FechaInicio=67
FechaFin=71
CEPlanD=75
Materia=66
Grupo=77
Espacio=79
Profesor=50
Cupo=43
Horario=132




[Acciones.Cargar.Excel]
Nombre=Excel
Boton=0
Carpeta=(Carpeta principal)
TipoAccion=controles Captura
ClaveAccion=Enviar/Recibir Excel
Activo=S
Visible=S


[Acciones.Guradar]
Nombre=Guradar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S










EspacioPrevio=S
GuardarAntes=S
[Acciones.Aceptar]
Nombre=Aceptar
Boton=7
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=expresion
Activo=S
Visible=S


EspacioPrevio=S
GuardarAntes=S
Expresion=EjecutarSQL(<T>EXEC CDIGenerarAltaPrograma :tUsu, :nID<T>,USUARIO ,Info.ID)<BR>ActualizarVista<BR>Forma.VariablesAplicarCerrar
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S












GuardarAntes=S


[Acciones.Cerrar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S







[CDIProgramaD.Columnas]
CEPlanD=91
Materia=61
Grupo=92
Espacio=86
Profesor=56
Cupo=64
Horario=149
MovId=64
Estatus=76
Error=304
IdAltaPlan=64
ID=64

[(Carpeta Abrir).Columnas]
0=-2
1=38
2=-2
3=96
4=84
5=-2


[Acciones.Cerrar.ListaAccionesMultiples]
(Inicio)=Cerrar
Cerrar=Forma
Forma=(Fin)





















[Acciones.Cargar.ListaAccionesMultiples]
(Inicio)=Excel
Excel=Actualizar Forma
Actualizar Forma=(Fin)
































































[CDIProgramaAuxiliar.ListaEnCaptura]
(Inicio)=CDIProgramaAuxiliar.Programa
CDIProgramaAuxiliar.Programa=CDIProgramaAuxiliar.Concepto
CDIProgramaAuxiliar.Concepto=CDIProgramaAuxiliar.CEPlan
CDIProgramaAuxiliar.CEPlan=CDIProgramaAuxiliar.FechaInicio
CDIProgramaAuxiliar.FechaInicio=CDIProgramaAuxiliar.FechaFin
CDIProgramaAuxiliar.FechaFin=CDIProgramaAuxiliar.CEPlanD
CDIProgramaAuxiliar.CEPlanD=CDIProgramaAuxiliar.Materia
CDIProgramaAuxiliar.Materia=CDIProgramaAuxiliar.Grupo
CDIProgramaAuxiliar.Grupo=CDIProgramaAuxiliar.Espacio
CDIProgramaAuxiliar.Espacio=CDIProgramaAuxiliar.Profesor
CDIProgramaAuxiliar.Profesor=CDIProgramaAuxiliar.Cupo
CDIProgramaAuxiliar.Cupo=CDIProgramaAuxiliar.Horario
CDIProgramaAuxiliar.Horario=(Fin)




















































[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S



EspacioPrevio=S


















[Forma.ListaAcciones]
(Inicio)=Cargar
Cargar=Guradar
Guradar=Aceptar
Aceptar=Cerrar
Cerrar=Documento Eliminar
Documento Eliminar=(Fin)
