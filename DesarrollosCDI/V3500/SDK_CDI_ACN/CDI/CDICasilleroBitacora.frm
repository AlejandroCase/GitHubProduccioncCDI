
[Forma]
Clave=CDICasilleroBitacora
Icono=0
Modulos=(Todos)
Nombre=Bitacora de Casilleros
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICasilleroBitacora
CarpetaPrincipal=CDICasilleroBitacora
PosicionInicialIzquierda=274
PosicionInicialArriba=104
PosicionInicialAlturaCliente=521
PosicionInicialAncho=817
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Comentarios=<T>Casillero: <T>+CDICasilleroBitacora:CDICasilleroBitacora.Casillero
ListaAcciones=(Lista)
[CDICasilleroBitacora]
Estilo=Hoja
Clave=CDICasilleroBitacora
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICasilleroBitacora
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
ValidarCampos=S

OtroOrden=S
ListaOrden=CDICasilleroBitacora.FechaEmision<TAB>(Decendente)

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=ID={Info.Numero}
FiltroRespetar=S
FiltroTipo=General
[CDICasilleroBitacora.CDICasilleroBitacora.Mov]
Carpeta=CDICasilleroBitacora
Clave=CDICasilleroBitacora.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICasilleroBitacora.CDICasilleroBitacora.SocioAnterior]
Carpeta=CDICasilleroBitacora
Clave=CDICasilleroBitacora.SocioAnterior
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICasilleroBitacora.CDICasilleroBitacora.CilindroAnterior]
Carpeta=CDICasilleroBitacora
Clave=CDICasilleroBitacora.CilindroAnterior
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDICasilleroBitacora.CDICasilleroBitacora.FechaEmision]
Carpeta=CDICasilleroBitacora
Clave=CDICasilleroBitacora.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICasilleroBitacora.CDICasilleroBitacora.Usuario]
Carpeta=CDICasilleroBitacora
Clave=CDICasilleroBitacora.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICasilleroBitacora.Columnas]
Casillero=55
Mov=80
SocioAnterior=84
CilindroAnterior=107
MovCargo=67
FechaEmision=126
Usuario=73























Seccion=65
Ubicacion=68








Observaciones=247
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
Carpeta=CDICasilleroBitacora
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S







EspacioPrevio=S









[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentación preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

EspacioPrevio=S








































[CDICasilleroBitacora.ListaCamposAValidar]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Estatus
Cte.Estatus=Cte.Descripcion13
Cte.Descripcion13=Cte.Titular
Cte.Titular=Cte.Membresia
Cte.Membresia=(Fin)





































[CDICasilleroBitacora.CDICasilleroBitacora.Observaciones]
Carpeta=CDICasilleroBitacora
Clave=CDICasilleroBitacora.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco















[CDICasilleroBitacora.CDICasilleroBitacora.Casillero]
Carpeta=CDICasilleroBitacora
Clave=CDICasilleroBitacora.Casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=32
ColorFondo=Blanco




[CDICasilleroBitacora.ListaEnCaptura]
(Inicio)=CDICasilleroBitacora.Casillero
CDICasilleroBitacora.Casillero=CDICasilleroBitacora.Mov
CDICasilleroBitacora.Mov=CDICasilleroBitacora.SocioAnterior
CDICasilleroBitacora.SocioAnterior=CDICasilleroBitacora.CilindroAnterior
CDICasilleroBitacora.CilindroAnterior=CDICasilleroBitacora.FechaEmision
CDICasilleroBitacora.FechaEmision=CDICasilleroBitacora.Usuario
CDICasilleroBitacora.Usuario=CDICasilleroBitacora.Observaciones
CDICasilleroBitacora.Observaciones=(Fin)











[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Presentacion preliminar
Presentacion preliminar=Imprimir
Imprimir=(Fin)
