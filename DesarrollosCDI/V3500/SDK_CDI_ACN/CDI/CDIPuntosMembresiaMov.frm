
[Forma]
Clave=CDIPuntosMembresiaMov
Icono=0
Modulos=(Todos)
Nombre=<T>Traspaso de Puntos<T>
VentanaTipoMarco=Chico
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
ListaCarpetas=CDIPuntosMembresiaMov
CarpetaPrincipal=CDIPuntosMembresiaMov
PosicionInicialIzquierda=541
PosicionInicialArriba=269
PosicionInicialAlturaCliente=291
PosicionInicialAncho=394
Totalizadores=S
PosicionSec1=215
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaSiempreAlFrente=S
VentanaExclusiva=S
Comentarios=<T>Mov.: <T>+info.mensaje+<T>* Puntos libres: <T>+sql(<T>xpCDICuantosPuntosRestan :nI<T>,Info.id)

VentanaEscCerrar=S
VentanaSinIconosMarco=S
ExpresionesAlMostrar=Ejecutarsql(<T>xpCDIPuntosMem :tC, :nI<T>,Info.cliente,info.id)
[CDIPuntosMembresiaMov]
Estilo=Hoja
Clave=CDIPuntosMembresiaMov
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPuntosMembresiaMov
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
VistaMaestra=CDIPuntosMembresiaMov
LlaveLocal=CDIPuntosMembresiaMov.Id
LlaveMaestra=CDIPuntosMembresiaMov.Id
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


FiltroGeneral=CDIPuntosMembresiaMov.Id={info.id} and<BR>CDIPuntosMembresiaMov.IDGestion={info.numero}
[CDIPuntosMembresiaMov.CDIPuntosMembresiaMov.Socio]
Carpeta=CDIPuntosMembresiaMov
Clave=CDIPuntosMembresiaMov.Socio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPuntosMembresiaMov.CDIPuntosMembresiaMov.Cantidad]
Carpeta=CDIPuntosMembresiaMov
Clave=CDIPuntosMembresiaMov.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPuntosMembresiaMov.CDIPuntosMembresiaMov.Tipo]
Carpeta=CDIPuntosMembresiaMov
Clave=CDIPuntosMembresiaMov.Tipo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=1
ColorFondo=Blanco

[CDIPuntosMembresiaMov.Columnas]
Membresia=64
Socio=64
Cantidad=64
Tipo=30

Consumo=64
Disponible=64
Nombre=184
SocioNombre=184
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
Totalizadores2=suma(CDIPuntosMembresiaMov:CDIPuntosMembresiaMov.Cantidad)
Totalizadores3=(Cantidades)
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S
TotCarpetaRenglones=CDIPuntosMembresiaMov
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


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cancelar Cambios
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar/Cancelar Cambios
Activo=S
Visible=S

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

















[Acciones.Procesar]
Nombre=Procesar
Boton=7
NombreDesplegar=Procesar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S



































ConCondicion=S




EjecucionConError=S







Multiple=S
ListaAccionesMultiples=(Lista)

EspacioPrevio=S
EjecucionCondicion=suma(CDIPuntosMembresiaMov:CDIPuntosMembresiaMov.Cantidad)=0
EjecucionMensaje=<T>Hay diferencia de puntos<T>
[Acciones.Procesar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Procesarsql(<T>xpCDITraspasoPuntos :nI, :nIGP<T>,CDIPuntosMembresiaMov:CDIPuntosMembresiaMov.id, Info.numero)
[Acciones.Procesar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Procesar.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S





[Acciones.Procesar.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S








[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[Acciones.Procesar.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=Cerrar
Cerrar=Actualizar Forma
Actualizar Forma=(Fin)













































[CDIPuntosMembresiaMov.SocioNombre]
Carpeta=CDIPuntosMembresiaMov
Clave=SocioNombre
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


























[CDIPuntosMembresiaMov.ListaEnCaptura]
(Inicio)=CDIPuntosMembresiaMov.Socio
CDIPuntosMembresiaMov.Socio=SocioNombre
SocioNombre=CDIPuntosMembresiaMov.Cantidad
CDIPuntosMembresiaMov.Cantidad=CDIPuntosMembresiaMov.Tipo
CDIPuntosMembresiaMov.Tipo=(Fin)







































[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Procesar
Procesar=Cerrar
Cerrar=(Fin)
