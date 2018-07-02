
[Forma]
Clave=CDIPlanProgrma
Icono=0
CarpetaPrincipal=CDIPlanProgrma
Modulos=(Todos)
Nombre=Crear Alta Programa

ListaCarpetas=CDIPlanProgrma
PosicionInicialAlturaCliente=273
PosicionInicialAncho=320
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
PosicionInicialIzquierda=511
PosicionInicialArriba=201
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
ListaAcciones=Cerrar
[CDIPlanProgrma]
Estilo=Hoja
Clave=CDIPlanProgrma
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPlanProgrma
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaCamposAValidar=(Lista)
FuenteDesplegar={MS Sans Serif, 8, Negro, []}
CarpetaVisible=S



Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGrupo1=CDIPlanProgrma.Usuario
FiltroTodo=S
FiltroGeneral=CDIPlanProgrma.Usuario=usuario
[CDIPlanProgrma.CDIPlanProgrma.CDIPlan]
Carpeta=CDIPlanProgrma
Clave=CDIPlanProgrma.CDIPlan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPlanProgrma.Columnas]
Programa=196
CDIPlan=108


Usuario=80
Estacion=64

[CDIPlanProgrma.CDIPlanProgrma.Usuario]
Carpeta=CDIPlanProgrma
Clave=CDIPlanProgrma.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIPlanProgrma.CDIPlanProgrma.Estacion]
Carpeta=CDIPlanProgrma
Clave=CDIPlanProgrma.Estacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco













[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[CDIPlanProgrma.ListaEnCaptura]
(Inicio)=CDIPlanProgrma.CDIPlan
CDIPlanProgrma.CDIPlan=CDIPlanProgrma.Estacion
CDIPlanProgrma.Estacion=CDIPlanProgrma.Usuario
CDIPlanProgrma.Usuario=(Fin)

[CDIPlanProgrma.ListaCamposAValidar]
(Inicio)=CDIPlanProgrma.Programa
CDIPlanProgrma.Programa=CDIPlanProgrma.Ciclo
CDIPlanProgrma.Ciclo=CDIPlanProgrma.Inicio
CDIPlanProgrma.Inicio=CDIPlanProgrma.Fin
CDIPlanProgrma.Fin=(Fin)
