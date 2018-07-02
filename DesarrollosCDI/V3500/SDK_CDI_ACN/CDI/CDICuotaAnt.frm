
[Forma]
Clave=CDICuotaAnt
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Cuota Anticipada
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata

ListaCarpetas=CDICuotaAnt
CarpetaPrincipal=CDICuotaAnt
PosicionInicialIzquierda=500
PosicionInicialArriba=291
PosicionInicialAlturaCliente=147
PosicionInicialAncho=365
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDICuotaAnt]
Estilo=Hoja
Clave=CDICuotaAnt
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICuotaAnt
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Aqua
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)


Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=IdMov=<T>{Info.ID}<T>
CondicionEdicion=Vacio(CDICuotaAnt:CDICuotaAnt.Ejercicio)      y vacio(CDICuotaAnt:CDICuotaAnt.Periodo)
[CDICuotaAnt.CDICuotaAnt.Ejercicio]
Carpeta=CDICuotaAnt
Clave=CDICuotaAnt.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICuotaAnt.CDICuotaAnt.Periodo]
Carpeta=CDICuotaAnt
Clave=CDICuotaAnt.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=11
ColorFondo=Blanco

[CDICuotaAnt.Columnas]
Ejercicio=128
Periodo=131

PagoParcial=64
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





[CDICuotaAnt.CDICuotaAnt.PagoParcial]
Carpeta=CDICuotaAnt
Clave=CDICuotaAnt.PagoParcial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




































[CDICuotaAnt.ListaEnCaptura]
(Inicio)=CDICuotaAnt.Ejercicio
CDICuotaAnt.Ejercicio=CDICuotaAnt.Periodo
CDICuotaAnt.Periodo=CDICuotaAnt.PagoParcial
CDICuotaAnt.PagoParcial=(Fin)





















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
