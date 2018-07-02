
[Forma]
Clave=CDICampanaTCDCxc
Icono=0
Modulos=(Todos)
Nombre=Cobrar Gestión

ListaCarpetas=CDICampanaTCDCxc
CarpetaPrincipal=CDICampanaTCDCxc
PosicionInicialIzquierda=457
PosicionInicialArriba=216
PosicionInicialAlturaCliente=212
PosicionInicialAncho=356
BarraAcciones=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
[CDICampanaTCDCxc]
Estilo=Ficha
Clave=CDICampanaTCDCxc
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICampanaTCDCxc
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
FiltroGeneral=ID={info.numero}
[CDICampanaTCDCxc.CDICampanaTCDCxc.TipoTarjeta]
Carpeta=CDICampanaTCDCxc
Clave=CDICampanaTCDCxc.TipoTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICampanaTCDCxc.CDICampanaTCDCxc.Tc1]
Carpeta=CDICampanaTCDCxc
Clave=CDICampanaTCDCxc.Tc1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICampanaTCDCxc.CDICampanaTCDCxc.Cs1]
Carpeta=CDICampanaTCDCxc
Clave=CDICampanaTCDCxc.Cs1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICampanaTCDCxc.CDICampanaTCDCxc.FechaVencimiento]
Carpeta=CDICampanaTCDCxc
Clave=CDICampanaTCDCxc.FechaVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.Expresion]
Nombre=Expresion
Boton=64
NombreEnBoton=S
NombreDesplegar=Cobrar
EnBarraAcciones=S
TipoAccion=Expresion
Activo=S
Visible=S

EspacioPrevio=S
Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=24
NombreEnBoton=S
NombreDesplegar=Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
Activo=S
Visible=S
















ClaveAccion=Cerrar
[CDICampanaTCDCxc.ListaEnCaptura]
(Inicio)=CDICampanaTCDCxc.TipoTarjeta
CDICampanaTCDCxc.TipoTarjeta=CDICampanaTCDCxc.Tc1
CDICampanaTCDCxc.Tc1=CDICampanaTCDCxc.Cs1
CDICampanaTCDCxc.Cs1=CDICampanaTCDCxc.FechaVencimiento
CDICampanaTCDCxc.FechaVencimiento=(Fin)


























[Acciones.Expresion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Procesarsql(<T>xpCDIAvanzaCxc :tI, :tU, :nE<T>,{info.id}, {usuario},Estaciontrabajo)
[Acciones.Expresion.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S











[Acciones.Expresion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Cerrar
Cerrar=(Fin)







[Forma.ListaAcciones]
(Inicio)=Expresion
Expresion=Cancelar
Cancelar=(Fin)
