
[Forma]
Clave=CDICeConsecPaq
Icono=0
Modulos=(Todos)
Nombre=Consecutivo Paquetes Inscripciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICeConsecPaq
CarpetaPrincipal=CDICeConsecPaq
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=473
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=420
[CDICeConsecPaq]
Estilo=Hoja
Clave=CDICeConsecPaq
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICeConsecPaq
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
[CDICeConsecPaq.ListaEnCaptura]
(Inicio)=CDICeConsecPaq.Programa
CDICeConsecPaq.Programa=CDICeConsecPaq.Proyecto
CDICeConsecPaq.Proyecto=CDICeConsecPaq.Consecutivo
CDICeConsecPaq.Consecutivo=(Fin)

[CDICeConsecPaq.CDICeConsecPaq.Programa]
Carpeta=CDICeConsecPaq
Clave=CDICeConsecPaq.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICeConsecPaq.CDICeConsecPaq.Proyecto]
Carpeta=CDICeConsecPaq
Clave=CDICeConsecPaq.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICeConsecPaq.CDICeConsecPaq.Consecutivo]
Carpeta=CDICeConsecPaq
Clave=CDICeConsecPaq.Consecutivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[CDICeConsecPaq.Columnas]
Programa=113
Proyecto=189
Consecutivo=78








[CEPrograma.Columnas]
0=92
1=210
2=74
3=70

[Lista.Columnas]
0=135
1=192









































[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)