
[Forma]
Clave=CDICalBloqueoUsuario
Icono=0
Modulos=(Todos)
Nombre=Calendario Bloqueo de Socios Tipo: Usuario
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICalBloqueoUsuario
CarpetaPrincipal=CDICalBloqueoUsuario
PosicionInicialIzquierda=332
PosicionInicialArriba=241
PosicionInicialAlturaCliente=247
PosicionInicialAncho=699
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDICalBloqueoUsuario]
Estilo=Hoja
Clave=CDICalBloqueoUsuario
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICalBloqueoUsuario
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
[CDICalBloqueoUsuario.ListaEnCaptura]
(Inicio)=CDICalBloqueoUsuario.Ejercicio
CDICalBloqueoUsuario.Ejercicio=CDICalBloqueoUsuario.Fiesta
CDICalBloqueoUsuario.Fiesta=CDICalBloqueoUsuario.Comentario
CDICalBloqueoUsuario.Comentario=CDICalBloqueoUsuario.FechaInicio
CDICalBloqueoUsuario.FechaInicio=CDICalBloqueoUsuario.FechaFin
CDICalBloqueoUsuario.FechaFin=(Fin)

[CDICalBloqueoUsuario.CDICalBloqueoUsuario.Ejercicio]
Carpeta=CDICalBloqueoUsuario
Clave=CDICalBloqueoUsuario.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICalBloqueoUsuario.CDICalBloqueoUsuario.Fiesta]
Carpeta=CDICalBloqueoUsuario
Clave=CDICalBloqueoUsuario.Fiesta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDICalBloqueoUsuario.CDICalBloqueoUsuario.Comentario]
Carpeta=CDICalBloqueoUsuario
Clave=CDICalBloqueoUsuario.Comentario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDICalBloqueoUsuario.CDICalBloqueoUsuario.FechaInicio]
Carpeta=CDICalBloqueoUsuario
Clave=CDICalBloqueoUsuario.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICalBloqueoUsuario.CDICalBloqueoUsuario.FechaFin]
Carpeta=CDICalBloqueoUsuario
Clave=CDICalBloqueoUsuario.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICalBloqueoUsuario.Columnas]
Ejercicio=46
Fiesta=86
Comentario=259
FechaInicio=134
FechaFin=131

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


[Acciones.Limpiar]
Nombre=Limpiar
Boton=33
NombreEnBoton=S
NombreDesplegar=Limpiar
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S
Visible=S





EspacioPrevio=S






















ClaveAccion=Actualizar Forma
Antes=S












AntesExpresiones=FormaModal(<T>CDIEjercicio<T>)










[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=Limpiar
Limpiar=(Fin)
