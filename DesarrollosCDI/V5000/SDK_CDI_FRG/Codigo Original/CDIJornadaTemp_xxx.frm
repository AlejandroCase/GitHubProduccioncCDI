
[Forma]
Clave=CDIJornadaTemp
Icono=0
Modulos=(Todos)
MovModulo=NOM
Nombre=CDIJornadaTemp

ListaCarpetas=JornadasDetalle
CarpetaPrincipal=JornadasDetalle
PosicionInicialIzquierda=465
PosicionInicialArriba=154
PosicionInicialAlturaCliente=308
PosicionInicialAncho=464
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
ListaAcciones=(Lista)
Comentarios=Info.NOmbre
[JornadasDetalle]
Estilo=Hoja
PestanaNombre=Detalle Jornada
Clave=JornadasDetalle
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIJornadaTemp
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
PermiteEditar=S
ListaEnCaptura=(Lista)

Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General

HojaConfirmarEliminar=S
FiltroGeneral=CDIJornadaTemp.Personal=<T>{Info.Personal}<T> and CDIJornadaTemp.FechaD between <T>{Info.FEchaD}<T> and <T>{Info.FechaA}<T>
[JornadasDetalle.CDIJornadaTemp.FechaD]
Carpeta=JornadasDetalle
Clave=CDIJornadaTemp.FechaD
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[JornadasDetalle.CDIJornadaTemp.Jornada]
Carpeta=JornadasDetalle
Clave=CDIJornadaTemp.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[JornadasDetalle.CDIJornadaTemp.Referencia]
Carpeta=JornadasDetalle
Clave=CDIJornadaTemp.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[JornadasDetalle.Columnas]
Personal=64
FechaD=94
Jornada=124
Referencia=124


[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreDesplegar=&Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
EnBarraHerramientas=S

GuardarAntes=S
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S





GuardarAntes=S
EspacioPrevio=S

[Acciones.Jornada Laboral]
Nombre=Jornada Laboral
Boton=18
NombreDesplegar=&Jornada Laboral
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=VerJornadaTiempo
Activo=S
ConCondicion=S
Antes=S
Visible=S










EspacioPrevio=S
EjecucionCondicion=Condatos(CDIJornadaTemp:CDIJornadaTemp.Jornada)
AntesExpresiones=ASigna(info.Jornada,CDIJornadaTemp:CDIJornadaTemp.Jornada)
[JornadasDetalle.ListaEnCaptura]
(Inicio)=CDIJornadaTemp.FechaD
CDIJornadaTemp.FechaD=CDIJornadaTemp.Jornada
CDIJornadaTemp.Jornada=CDIJornadaTemp.Referencia
CDIJornadaTemp.Referencia=(Fin)


































[Acciones.Jornada Temp]
Nombre=Jornada Temp
Boton=68
NombreEnBoton=S
NombreDesplegar=Jornada Temp
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=repcdIJornadaTemp
Activo=S
Visible=S












EspacioPrevio=S
[Acciones.CDIVerCambiosJornada]
Nombre=CDIVerCambiosJornada
Boton=68
NombreEnBoton=S
NombreDesplegar=Jornada
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDIVerCambiosJornada
Activo=S
Visible=S



















[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar Cambios
Guardar Cambios=Jornada Laboral
Jornada Laboral=Jornada Temp
Jornada Temp=CDIVerCambiosJornada
CDIVerCambiosJornada=(Fin)
