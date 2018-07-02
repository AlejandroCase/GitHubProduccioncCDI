
[Forma]
Clave=CDIJornadaNva2
Icono=0
CarpetaPrincipal=CDIJornadaNva2
Modulos=(Todos)
Nombre=<T>Rutina - <T>+Info.Jornada

ListaCarpetas=CDIJornadaNva2
PosicionInicialIzquierda=534
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=297
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaColor=Plata
ExpresionesAlMostrar=asigna(info.usuario,usuario)
[CDIJornadaNva2]
Estilo=Hoja
Clave=CDIJornadaNva2
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIJornadaNva2
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
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
FiltroGeneral=CDIJornadaNva2.Jornada=<T>{info.Jornada}<T><BR>and<BR>CDIJornadaNva2.Usuario=<T>{info.usuario}<T>
[CDIJornadaNva2.CDIJornadaNva2.Dia]
Carpeta=CDIJornadaNva2
Clave=CDIJornadaNva2.Dia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIJornadaNva2.CDIJornadaNva2.Entrada]
Carpeta=CDIJornadaNva2
Clave=CDIJornadaNva2.Entrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIJornadaNva2.CDIJornadaNva2.Salida]
Carpeta=CDIJornadaNva2
Clave=CDIJornadaNva2.Salida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIJornadaNva2.Columnas]
Dia=64
Entrada=68
Salida=64




[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S























Antes=S
DespuesGuardar=S
RefrescarDespues=S
DocNuevo=S
AntesExpresiones=procesarSQL(<T>CDIValidaJornada :tJ, :tU<T>, CDIJornadaNva2:CDIJornadaNva2.Jornada,info.Usuario)
[CDIJornadaNva2.ListaEnCaptura]
(Inicio)=CDIJornadaNva2.Dia
CDIJornadaNva2.Dia=CDIJornadaNva2.Entrada
CDIJornadaNva2.Entrada=CDIJornadaNva2.Salida
CDIJornadaNva2.Salida=(Fin)

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S







NombreEnBoton=S






ConfirmarAntes=S



















[Acciones.Aceptar.Actualiza]
Nombre=Actualiza
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S



























[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
