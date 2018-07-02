
[Forma]
Clave=CDITempInscrip
Icono=0
Modulos=(Todos)
MovModulo=CDITempInscrip
Nombre=Descuentos Inscripciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDITempInscrip
CarpetaPrincipal=CDITempInscrip
PosicionInicialIzquierda=24
PosicionInicialArriba=99
PosicionInicialAlturaCliente=529
PosicionInicialAncho=1281
Totalizadores=S
PosicionSec1=427
PosicionSec2=340
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
ExpresionesAlMostrar=Asigna(Info.EstacionTrabajo,EstacionTrabajo)<BR>EjecutarSql(<T>xpCDICalInsc1Param :nM, :nE, :nB, :tP, :tU<T>,info.CDIMembresia,{EstacionTrabajo},0, Info.Programa, usuario)
[CDITempInscrip]
Estilo=Hoja
Clave=CDITempInscrip
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITempInscrip
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
FiltroGeneral=Estacion=<T>{estaciontrabajo}<T>
[CDITempInscrip.CDITempInscrip.mov]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.mov
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDITempInscrip.CDITempInscrip.movid]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.movid
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDITempInscrip.CDITempInscrip.FechaEmision]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.FechaEmision
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDITempInscrip.CDITempInscrip.Socio]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.Socio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDITempInscrip.CDITempInscrip.Articulo]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.Articulo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDITempInscrip.CDITempInscrip.Descripcion]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.Descripcion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDITempInscrip.CDITempInscrip.Precio]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.Precio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDITempInscrip.CDITempInscrip.Descuento1]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.Descuento1
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITempInscrip.CDITempInscrip.Descuento2]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.Descuento2
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITempInscrip.CDITempInscrip.Descuento3]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.Descuento3
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITempInscrip.CDITempInscrip.Descuento4]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.Descuento4
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITempInscrip.CDITempInscrip.importe]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.importe
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDITempInscrip.Columnas]
mov=67
movid=40
FechaEmision=64
Cliente=53
Socio=49
Articulo=48
Descripcion=255
Precio=64
membresia=57
Descuento1=74
Descuento2=63
Descuento3=71
Descuento4=66
importe=71
PuntoCDI=53
Calcula=40
Procesa=44









descuentoimporte=53
Nombre=146
PrecioCurso=74
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
FichaNombres=Arriba
FichaAlineacion=Centrado
FichaColorFondo=Plata
Totalizadores1=Desc.Socio<BR>Desc.+2 Cursos<BR>Desc.3er.Hijo<BR>Desc.P.Pago<BR>Importe<BR>Beca<BR>ImporteCursos
Totalizadores2=suma(CDITempInscrip:CDITempInscrip.Descuento1)<BR>suma(CDITempInscrip:CDITempInscrip.Descuento2)<BR>suma(CDITempInscrip:CDITempInscrip.Descuento3)<BR>suma(CDITempInscrip:CDITempInscrip.Descuento4)<BR>suma(CDITempInscrip:CDITempInscrip.Importe)<BR>suma(CDITempInscrip:CDITempInscrip.descuentoimporte)<BR>suma(CDITempInscrip:PrecioCurso)
Totalizadores3=(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)<BR>(Monetario)
Totalizadores=S
TotCarpetaRenglones=CDITempInscrip
TotExpresionesEnSumas=S
TotAlCambiar=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
CarpetaVisible=S

FichaAlineacionDerecha=S
[(Carpeta Totalizadores).Importe]
Carpeta=(Carpeta Totalizadores)
Clave=Importe
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata






[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDITempInscrip
Activo=S
Visible=S

ListaParametros1=CDITempInscrip:CDITempInscrip.Estacion
ListaParametros=S
Antes=S
AntesExpresiones=asigna(info.EstacionTrabajo,CDITempInscrip:CDITempInscrip.Estacion)
[Acciones.Expresion.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S





[CDITempInscrip.CDITempInscrip.descuentoimporte]
Carpeta=CDITempInscrip
Clave=CDITempInscrip.descuentoimporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
























[(Carpeta Totalizadores).Beca]
Carpeta=(Carpeta Totalizadores)
Clave=Beca
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata













[(Carpeta Totalizadores).Desc.Socio]
Carpeta=(Carpeta Totalizadores)
Clave=Desc.Socio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

[(Carpeta Totalizadores).Desc.+2 Cursos]
Carpeta=(Carpeta Totalizadores)
Clave=Desc.+2 Cursos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

[(Carpeta Totalizadores).Desc.3er.Hijo]
Carpeta=(Carpeta Totalizadores)
Clave=Desc.3er.Hijo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

[(Carpeta Totalizadores).Desc.P.Pago]
Carpeta=(Carpeta Totalizadores)
Clave=Desc.P.Pago
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata




[(Carpeta Totalizadores).ImporteCursos]
Carpeta=(Carpeta Totalizadores)
Clave=ImporteCursos
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata












[CDITempInscrip.Cte.Nombre]
Carpeta=CDITempInscrip
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[Acciones.Expresion]
Nombre=Expresion
Boton=7
NombreEnBoton=S
NombreDesplegar=Registrar Descuentos
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S



















EspacioPrevio=S










Expresion=Asigna(Info.EstacionTrabajo,EstacionTrabajo)<BR>ProcesarSql(<T>xpCDICalInsc1Param :nM, :nE, :nB, :tP, :tU<T>,info.CDIMembresia,{EstacionTrabajo},1,Info.Programa, Usuario)
ActivoCondicion=si(SQL(<T>select grupotrabajo from usuario where usuario=:tG<T>,usuario)en (<T>Cobranza<T>,<T>Sistemas<T>,<T>PUNTO CDISINAI<T>),verdadero,falso)
[CDITempInscrip.ListaOrden]
(Inicio)=CDITempInscrip.Socio	(Acendente)
CDITempInscrip.Socio	(Acendente)=CDITempInscrip.Precio	(Decendente)
CDITempInscrip.Precio	(Decendente)=(Fin)




[CDITempInscrip.ListaEnCaptura]
(Inicio)=CDITempInscrip.mov
CDITempInscrip.mov=CDITempInscrip.movid
CDITempInscrip.movid=CDITempInscrip.FechaEmision
CDITempInscrip.FechaEmision=CDITempInscrip.Socio
CDITempInscrip.Socio=Cte.Nombre
Cte.Nombre=CDITempInscrip.Articulo
CDITempInscrip.Articulo=CDITempInscrip.Descripcion
CDITempInscrip.Descripcion=CDITempInscrip.Precio
CDITempInscrip.Precio=CDITempInscrip.descuentoimporte
CDITempInscrip.descuentoimporte=CDITempInscrip.Descuento1
CDITempInscrip.Descuento1=CDITempInscrip.Descuento2
CDITempInscrip.Descuento2=CDITempInscrip.Descuento3
CDITempInscrip.Descuento3=CDITempInscrip.Descuento4
CDITempInscrip.Descuento4=CDITempInscrip.importe
CDITempInscrip.importe=PrecioCurso
PrecioCurso=(Fin)

[CDITempInscrip.PrecioCurso]
Carpeta=CDITempInscrip
Clave=PrecioCurso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=ImporteCursos
ImporteCursos=Beca
Beca=Desc.Socio
Desc.Socio=Desc.+2 Cursos
Desc.+2 Cursos=Desc.3er.Hijo
Desc.3er.Hijo=Desc.P.Pago
Desc.P.Pago=Importe
Importe=(Fin)














[Acciones.CDIMovAutorizarInsc]
Nombre=CDIMovAutorizarInsc
Boton=38
NombreEnBoton=S
NombreDesplegar=Autoriza Desc.PP
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIMovAutorizarInsc

































































[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Expresion
Expresion=CDIMovAutorizarInsc
CDIMovAutorizarInsc=(Fin)
