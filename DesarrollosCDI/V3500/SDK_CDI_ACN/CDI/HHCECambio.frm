
[Forma]
Clave=HHCECambio
Icono=0
MovModulo=(Todos)
Nombre=Cambio/Pospuesto
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
Modulos=(Todos)
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=115
PosicionInicialArriba=253
PosicionInicialAlturaCliente=483
PosicionInicialAncho=1050
ListaAcciones=(Lista)
Comentarios=Info.Cliente
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
ValidarCampos=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=HHCECambio
Fuente={Tahoma, 8, Blanco, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
ListaEnCaptura=(Lista)


ListaCamposAValidar=(Lista)
FiltroGeneral=HHCECambio.Estacion = {EstacionTrabajo}
[Lista.HHCECambio.Programa]
Carpeta=Lista
Clave=HHCECambio.Programa
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00B6F8F4

[Lista.HHCECambio.CEPlan]
Carpeta=Lista
Clave=HHCECambio.CEPlan
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00B6F8F4



[Lista.HHCECambio.Grupo]
Carpeta=Lista
Clave=HHCECambio.Grupo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00B6F8F4

[Lista.Columnas]
Programa=90
Ciclo=173
FechaInicio=71
HHIniciacion=48
CEPlan=82
Descripcion=144
Materia_1=64
Descripcion_1=142
Grupo=73





ProgramaN=84
GrupoN=79


Materia=72
Cliente=117
Nombre=293
RFC=107
Descripcion_2=113
MateriaN=66
CEPlan_2=64
Descripcion_3=92
CEPlanN=64
[Lista.HHCECambio.ProgramaN]
Carpeta=Lista
Clave=HHCECambio.ProgramaN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.HHCECambio.GrupoN]
Carpeta=Lista
Clave=HHCECambio.GrupoN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[Lista.HHCECambio.Materia]
Carpeta=Lista
Clave=HHCECambio.Materia
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=$00B6F8F4













[Lista.CEPrograma.HHIniciacion]
Carpeta=Lista
Clave=CEPrograma.HHIniciacion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=$00B6F8F4

[Lista.CEPlan.Descripcion]
Carpeta=Lista
Clave=CEPlan.Descripcion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=$00B6F8F4

[Lista.CEMateria.Descripcion]
Carpeta=Lista
Clave=CEMateria.Descripcion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=$00B6F8F4










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

[Acciones.Alumno]
Nombre=Alumno
Boton=60
NombreEnBoton=S
NombreDesplegar=A&lumno
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S







Antes=S
DespuesGuardar=S













AntesExpresiones=Si(Forma(<T>EspecificarCliente<T>), EjecutarSQL(<T>spHHCECambio :nEstacion, :tEmpresa, :nSuc, :tCte<T>, EstacionTrabajo, Empresa, Sucursal, Info.Cliente))
[CEPrograma.Columnas]
0=92
1=210
2=74
3=70




[CEProgramaD.Columnas]
0=75
1=77
2=79
3=191
4=151
5=41
6=62




[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S







NombreEnBoton=S






EspacioPrevio=S









[Acciones.Generar]
Nombre=Generar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Generar
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S



Antes=S
DespuesGuardar=S









AntesExpresiones=ProcesarSQL(<T>spHHCECambioGenerar :nEstacion, :tEmpresa, :tUsuario<T>, EstacionTrabajo, Empresa, Usuario)


[Acciones.Log]
Nombre=Log
Boton=55
NombreEnBoton=S
NombreDesplegar=&Movimientos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=HHCECambioLog
Activo=S
Visible=S








































[Lista.CEMateria2.Descripcion]
Carpeta=Lista
Clave=CEMateria2.Descripcion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.HHCECambio.MateriaN]
Carpeta=Lista
Clave=HHCECambio.MateriaN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco








[CEMateria.Columnas]
0=91
1=333








[CEPlanD.Columnas]
0=74
1=403














[Lista.ListaEnCaptura]
(Inicio)=HHCECambio.Programa
HHCECambio.Programa=CEPrograma.HHIniciacion
CEPrograma.HHIniciacion=HHCECambio.CEPlan
HHCECambio.CEPlan=CEPlan.Descripcion
CEPlan.Descripcion=HHCECambio.Materia
HHCECambio.Materia=CEMateria.Descripcion
CEMateria.Descripcion=HHCECambio.Grupo
HHCECambio.Grupo=HHCECambio.ProgramaN
HHCECambio.ProgramaN=HHCECambio.CEPlanN
HHCECambio.CEPlanN=HHCECambio.MateriaN
HHCECambio.MateriaN=CEMateria2.Descripcion
CEMateria2.Descripcion=HHCECambio.GrupoN
HHCECambio.GrupoN=(Fin)

[Lista.ListaCamposAValidar]
(Inicio)=CEPrograma.Ciclo
CEPrograma.Ciclo=CEPrograma2.Ciclo
CEPrograma2.Ciclo=(Fin)

[Lista.HHCECambio.CEPlanN]
Carpeta=Lista
Clave=HHCECambio.CEPlanN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco




[CEPlan.Columnas]
0=102
1=490









[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=Alumno
Alumno=Generar
Generar=Log
Log=(Fin)
