
[Forma]
Clave=CDIAfilia
Icono=0
Modulos=(Todos)
Nombre=Afiliacion
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal


ListaCarpetas=CDIAfilia
CarpetaPrincipal=CDIAfilia
PosicionInicialIzquierda=532
PosicionInicialArriba=320
PosicionInicialAlturaCliente=90
PosicionInicialAncho=301
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIAfilia]
Estilo=Ficha
Clave=CDIAfilia
PermiteEditar=S
IgnorarControlesEdicion=S
GuardarAlSalir=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICtrlEquipo
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
FiltroGeneral=id={Info.Id}
FiltroRespetar=S
FiltroTipo=General
[CDIAfilia.CDICtrlEquipo.Filial]
Carpeta=CDIAfilia
Clave=CDICtrlEquipo.Filial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAfilia.CDICtrlEquipo.EquipoFilial]
Carpeta=CDIAfilia
Clave=CDICtrlEquipo.EquipoFilial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIAfilia.ListaEnCaptura]
(Inicio)=CDICtrlEquipo.Filial
CDICtrlEquipo.Filial=CDICtrlEquipo.EquipoFilial
CDICtrlEquipo.EquipoFilial=(Fin)

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=23
NombreEnBoton=S
NombreDesplegar=&Salir
EnBarraHerramientas=S
TipoAccion=Ventana
Activo=S
Visible=S







EspacioPrevio=S






ClaveAccion=Cerrar




[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cancelar Cambios
Cancelar Cambios=(Fin)
