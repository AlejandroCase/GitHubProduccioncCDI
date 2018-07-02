
[Forma]
Clave=CDIDiaSocioConcurso
Icono=0
Modulos=(Todos)
Nombre=<T>CONCURSO T-TAIO    (DIA DEL SOCIO 2015)<T>

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIDiaSocioConcurso
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1382
PosicionInicialArriba=122
PosicionInicialIzquierda=66
PosicionCol1=693
BarraAyuda=S
BarraAyudaEsp=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
BarraAcciones=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaSinIconosMarco=S
VentanaEstadoInicial=Maximizado
AccionesDivision=S
AccionesCentro=S
[CDIDiaSocioConcurso]
Estilo=Ficha
Clave=CDIDiaSocioConcurso
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIDiaSocioConcurso
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

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General

PestanaOtroNombre=S
PestanaNombre=CONCURSO T-TAIO  (DIA DEL SOCIO 2013)
IgnorarControlesEdicion=S
FiltroGeneral=Id={info.numero}
[CDIDiaSocioConcurso.Cte.Nombre]
Carpeta=CDIDiaSocioConcurso
Clave=Cte.Nombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=90
ColorFondo=Blanco



[CDIDiaSocioConcursoFoto]
Estilo=Ficha
Clave=CDIDiaSocioConcursoFoto
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDIDiaSocioConcurso
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

[CDIDiaSocioConcursoFoto.CDIImagen]
Carpeta=CDIDiaSocioConcursoFoto
Clave=CDIImagen
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ConScroll=S
Tamano=30x20
ColorFondo=Blanco

[CDIDiaSocioConcursoFoto.Cte.RutaImagen]
Carpeta=CDIDiaSocioConcursoFoto
Clave=Cte.RutaImagen
Editar=N
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=0
ColorFondo=Blanco

























[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=Aceptar
EnBarraHerramientas=S
BtnResaltado=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S








EnBarraAcciones=S
BotonDefault=S
Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cancelar
EnBarraHerramientas=S
BtnResaltado=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S











EnBarraAcciones=S











[CDIDiaSocioConcurso.CDIDiaSocioConcurso.Socio]
Carpeta=CDIDiaSocioConcurso
Clave=CDIDiaSocioConcurso.Socio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[CDIDiaSocioConcurso.CDIDiaSocioConcurso.Fecha]
Carpeta=CDIDiaSocioConcurso
Clave=CDIDiaSocioConcurso.Fecha
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDIDiaSocioConcurso.CDIDiaSocioConcurso.Numero]
Carpeta=CDIDiaSocioConcurso
Clave=CDIDiaSocioConcurso.Numero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











IgnoraFlujo=N
[Acciones.Aceptar.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S



[Acciones.Aceptar.Guardar Cambios1]
Nombre=Guardar Cambios1
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Aceptar.Gracias]
Nombre=Gracias
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Informacion(<T>Gracias por participar, MUCHA SUERTE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!<T>)
[Acciones.Aceptar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S







[CDIDiaSocioConcurso.ListaEnCaptura]
(Inicio)=CDIDiaSocioConcurso.Socio
CDIDiaSocioConcurso.Socio=Cte.Nombre
Cte.Nombre=CDIDiaSocioConcurso.Fecha
CDIDiaSocioConcurso.Fecha=CDIDiaSocioConcurso.Numero
CDIDiaSocioConcurso.Numero=(Fin)






[CDIDiaSocioConcursoFoto.ListaEnCaptura]
(Inicio)=CDIImagen
CDIImagen=Cte.RutaImagen
Cte.RutaImagen=(Fin)















[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Guardar Cambios1
Guardar Cambios1=Gracias
Gracias=Cerrar
Cerrar=(Fin)

[Forma.ListaCarpetas]
(Inicio)=CDIDiaSocioConcurso
CDIDiaSocioConcurso=CDIDiaSocioConcursoFoto
CDIDiaSocioConcursoFoto=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
