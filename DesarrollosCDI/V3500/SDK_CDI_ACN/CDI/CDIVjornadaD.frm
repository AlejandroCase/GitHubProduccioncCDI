
[Forma]
Clave=CDIVjornadaD
Icono=0
Modulos=(Todos)
Nombre=Jornada
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIVjornadaD
CarpetaPrincipal=CDIVjornadaD
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
PosicionInicialIzquierda=478
PosicionInicialArriba=274
PosicionInicialAlturaCliente=181
PosicionInicialAncho=410
[CDIVjornadaD]
Estilo=Hoja
Clave=CDIVjornadaD
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVjornadaD
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
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Jornada=<T>{Info.Jornada}<T>
[CDIVjornadaD.CDIVjornadaD.Jornada]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIVjornadaD.CDIVjornadaD.Dia]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Dia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco

[CDIVjornadaD.CDIVjornadaD.Entrada]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Entrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIVjornadaD.CDIVjornadaD.Salida]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Salida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[CDIVjornadaD.Columnas]
Jornada=58
Dia=93
Entrada=63
Salida=61



Descanso=75
[CDIVjornadaD.ListaEnCaptura]
(Inicio)=CDIVjornadaD.Jornada
CDIVjornadaD.Jornada=CDIVjornadaD.Dia
CDIVjornadaD.Dia=CDIVjornadaD.Entrada
CDIVjornadaD.Entrada=CDIVjornadaD.Salida
CDIVjornadaD.Salida=CDIVjornadaD.Descanso
CDIVjornadaD.Descanso=(Fin)

[CDIVjornadaD.CDIVjornadaD.Descanso]
Carpeta=CDIVjornadaD
Clave=CDIVjornadaD.Descanso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco