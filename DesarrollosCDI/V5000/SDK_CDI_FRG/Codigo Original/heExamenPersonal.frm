[Forma]
Clave=heExamenPersonal
Icono=40
Modulos=(Todos)
ListaCarpetas=heExamenPersonal
CarpetaPrincipal=heExamenPersonal
PosicionInicialAlturaCliente=398
PosicionInicialAncho=1021
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Nombre=heExamenPersonal:heExamen.Curso
PosicionInicialIzquierda=1
PosicionInicialArriba=168
ListaAcciones=Cerrar<BR>RegistroSiguiente<BR>AnexoCta
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Cantidad2,0)
ExpresionesAlCerrar=EjecutarSQL(<T>spHeConcluyeExamen :nExamen<T>,Info.Examen1)
[heExamenPersonal]
Estilo=Ficha
Clave=heExamenPersonal
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=heExamenPersonal
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=heExamenPersonal.Personal<BR>Personal.ApellidoPaterno<BR>Personal.ApellidoMaterno<BR>Personal.Nombre<BR>heExamen.Pregunta<BR>heExamen.Ponderacion<BR>heExamen.Tiempo<BR>heExamenPersonal.R1A<BR>heExamen.Respuesta1<BR>heExamenPersonal.R1<BR>heExamen.Respuesta2<BR>heExamenPersonal.R2<BR>heExamen.Respuesta3<BR>heExamenPersonal.R3<BR>heExamen.Respuesta4<BR>heExamenPersonal.R4<BR>heExamen.Respuesta5<BR>heExamenPersonal.R5
CarpetaVisible=S
PermiteEditar=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
OtroOrden=S
ListaOrden=heExamenPersonal.NPregunta<TAB>(Acendente)
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=heExamenPersonal.IDExamen={Info.Examen1} AND heExamenPersonal.Personal=<T>{Info.Personal}<T> AND heExamenPersonal.Estatus=<T>SIN AFECTAR<T><BR>AND heExamenPersonal.PassWord=<T>{Info.Contrasena}<T>
[heExamenPersonal.heExamenPersonal.Personal]
Carpeta=heExamenPersonal
Clave=heExamenPersonal.Personal
Editar=N
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
[heExamenPersonal.Personal.ApellidoPaterno]
Carpeta=heExamenPersonal
Clave=Personal.ApellidoPaterno
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S
[heExamenPersonal.Personal.ApellidoMaterno]
Carpeta=heExamenPersonal
Clave=Personal.ApellidoMaterno
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S
[heExamenPersonal.Personal.Nombre]
Carpeta=heExamenPersonal
Clave=Personal.Nombre
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S
[heExamenPersonal.Columnas]
Personal=64
ApellidoPaterno=184
ApellidoMaterno=184
Nombre=184
[heExamenPersonal.heExamen.Pregunta]
Carpeta=heExamenPersonal
Clave=heExamen.Pregunta
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=100
[heExamenPersonal.heExamen.Respuesta1]
Carpeta=heExamenPersonal
Clave=heExamen.Respuesta1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
[heExamenPersonal.heExamenPersonal.R1]
Carpeta=heExamenPersonal
Clave=heExamenPersonal.R1
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S
[heExamenPersonal.heExamen.Respuesta2]
Carpeta=heExamenPersonal
Clave=heExamen.Respuesta2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
[heExamenPersonal.heExamenPersonal.R2]
Carpeta=heExamenPersonal
Clave=heExamenPersonal.R2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S
[heExamenPersonal.heExamen.Respuesta3]
Carpeta=heExamenPersonal
Clave=heExamen.Respuesta3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
[heExamenPersonal.heExamenPersonal.R3]
Carpeta=heExamenPersonal
Clave=heExamenPersonal.R3
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S
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
GuardarAntes=S
[heExamenPersonal.heExamen.Respuesta4]
Carpeta=heExamenPersonal
Clave=heExamen.Respuesta4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
[heExamenPersonal.heExamenPersonal.R4]
Carpeta=heExamenPersonal
Clave=heExamenPersonal.R4
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco
ColorFuente=Negro
[heExamenPersonal.heExamen.Respuesta5]
Carpeta=heExamenPersonal
Clave=heExamen.Respuesta5
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
[heExamenPersonal.heExamenPersonal.R5]
Carpeta=heExamenPersonal
Clave=heExamenPersonal.R5
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco
ColorFuente=Negro
[heExamenPersonal.heExamenPersonal.R1A]
Carpeta=heExamenPersonal
Clave=heExamenPersonal.R1A
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=100
[heExamenPersonal.heExamen.Ponderacion]
Carpeta=heExamenPersonal
Clave=heExamen.Ponderacion
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco
ColorFuente=Negro
[Acciones.RegistroSiguiente]
Nombre=RegistroSiguiente
Boton=25
NombreEnBoton=S
NombreDesplegar=Registro Siguiente
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Antes=S
DespuesGuardar=S
Visible=S
ConAutoEjecutar=S
Expresion=Si<BR>    Info.Cantidad>Info.Cantidad2<BR>Entonces<BR>    Forma.RegistroSiguiente(<T>heExamenPersonal<T>)<BR>SiNo<BR>    Informacion(<T>Fin del Examen<T>)<BR>    Forma.Accion(<T>Cerrar<T>)<BR>Fin
AntesExpresiones=Asigna(Info.Cantidad2,Info.Cantidad2+1)<BR>EjecutarSQL(<T>spCambiaEstatus :tPersonal,:tFecha,:tCurso,:nIDExamen,:nNPregunta<T>,heExamenPersonal:heExamenPersonal.Personal,<BR>             FechaFormatoServidor(heExamenPersonal:heExamenPersonal.Fecha),heExamenPersonal:heExamenPersonal.Curso,heExamenPersonal:heExamenPersonal.IDExamen,<BR>             heExamenPersonal:heExamenPersonal.NPregunta)
AutoEjecutarExpresion=SQL(<T>SELECT ISNULL(Tiempo,9999) FROM heExamen WHERE Curso= :tCurso AND NPregunta= :nNPregunta<T>,heExamenPersonal:heExamenPersonal.Curso,heExamenPersonal:heExamenPersonal.NPregunta)
[heExamenPersonal.heExamen.Tiempo]
Carpeta=heExamenPersonal
Clave=heExamen.Tiempo
3D=S
Pegado=S
ColorFondo=Blanco
ColorFuente=Negro


[Acciones.AnexoCta]
Nombre=AnexoCta
Boton=77
NombreDesplegar=Anexos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=AnexoCta
Activo=S
Antes=S
AntesExpresiones=Asigna(Info.Rama, <T>EXA<T>)<BR>Asigna(Info.AnexoCfg, Falso)<BR>Asigna(Info.Cuenta, heExamenPersonal:heExamenPersonal.NPregunta)<BR>Asigna(Info.Descripcion,heExamenPersonal:heExamen.Pregunta)
Visible=S
