
[Forma]
Clave=CDIPuntosMembresia
Icono=0
Modulos=(Todos)
Nombre=<T>Dispersión de PuntosCDI<T>
VentanaTipoMarco=Chico
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaCarpetas=CDIPuntosMembresia
CarpetaPrincipal=CDIPuntosMembresia
PosicionInicialIzquierda=434
PosicionInicialArriba=227
PosicionInicialAlturaCliente=276
PosicionInicialAncho=497
Totalizadores=S
PosicionSec1=215
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaSiempreAlFrente=S
VentanaExclusiva=S
Comentarios=<T>Puntos Comprados: <T>+sql(<T>xpCDICuantosPuntos :nI<T>,Info.id)

VentanaEscCerrar=S
VentanaSinIconosMarco=S
ExpresionesAlMostrar=Ejecutarsql(<T>xpCDIPuntosMem :tC, :nI<T>,Info.cliente,info.id)
[CDIPuntosMembresia]
Estilo=Hoja
Clave=CDIPuntosMembresia
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPuntosMembresia
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=(Lista)
VistaMaestra=CDIPuntosMembresia
LlaveLocal=CDIPuntosMembresia.Id
LlaveMaestra=CDIPuntosMembresia.Id
PestanaOtroNombre=S
PestanaNombre=Puntos
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General


FiltroGeneral=CDIPuntosMembresia.Id={info.id}
[CDIPuntosMembresia.CDIPuntosMembresia.Socio]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.Socio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPuntosMembresia.CDIPuntosMembresia.Cantidad]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPuntosMembresia.CDIPuntosMembresia.Tipo]
Carpeta=CDIPuntosMembresia
Clave=CDIPuntosMembresia.Tipo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDIPuntosMembresia.Columnas]
Membresia=64
Socio=64
Cantidad=50
Tipo=26

Nombre=184
SocioNombre=304
[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Puntos
Totalizadores2=suma(CDIPuntosMembresia:CDIPuntosMembresia.Cantidad)
Totalizadores3=(Cantidades)
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S
TotCarpetaRenglones=CDIPuntosMembresia
ListaEnCaptura=Puntos

TotExpresionesEnSumas=S
TotAlCambiar=S
[(Carpeta Totalizadores).Puntos]
Carpeta=(Carpeta Totalizadores)
Clave=Puntos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S
Multiple=S
ListaAccionesMultiples=(Lista)

ConCondicion=S
EjecucionConError=S
EjecucionCondicion=suma(CDIPuntosMembresia:CDIPuntosMembresia.Cantidad)=sql(<T>xpCDICuantosPuntos :nI<T>,Info.id)
EjecucionMensaje=<T>El total de los puntos no corresponde con los puntos Comprados<T>
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreDesplegar=Cancelar Cambios
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar/Cancelar Cambios
Activo=S
Visible=S
NombreEnBoton=S

EspacioPrevio=S
[Acciones.Guardar Cambios.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion= guardarcambios

[Acciones.Guardar Cambios.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





[Acciones.Guardar Cambios.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)


































[CDIPuntosMembresia.SocioNombre]
Carpeta=CDIPuntosMembresia
Clave=SocioNombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco














[CDIPuntosMembresia.ListaEnCaptura]
(Inicio)=CDIPuntosMembresia.Socio
CDIPuntosMembresia.Socio=SocioNombre
SocioNombre=CDIPuntosMembresia.Cantidad
CDIPuntosMembresia.Cantidad=CDIPuntosMembresia.Tipo
CDIPuntosMembresia.Tipo=(Fin)















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
