
[Forma]
Clave=vic_ConceptosDefinicion
Icono=4
Modulos=(Todos)
Nombre=Conceptos del Inmueble


ListaCarpetas=(Lista)
CarpetaPrincipal=Encabezado
PosicionInicialIzquierda=177
PosicionInicialArriba=218
PosicionInicialAlturaCliente=553
PosicionInicialAncho=925
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraAyuda=S
BarraAyudaBold=S
PosicionSec1=98
ListaAcciones=(Lista)
PosicionCol2=383
VentanaExclusiva=S
Comentarios=<T>Inmueble: <T> + Info.Nombre
IniciarAgregando=S
[vic_ConceptosDefinicion.ListaEnCaptura]
(Inicio)=vic_ConceptosDefinicion.Inmueble
vic_ConceptosDefinicion.Inmueble=vic_ConceptosDefinicion.Estatus
vic_ConceptosDefinicion.Estatus=vic_ConceptosDefinicion.Concepto
vic_ConceptosDefinicion.Concepto=vic_ConceptosDefinicion.Descripcion
vic_ConceptosDefinicion.Descripcion=vic_ConceptosDefinicion.FechaInicio
vic_ConceptosDefinicion.FechaInicio=vic_ConceptosDefinicion.FechaFin
vic_ConceptosDefinicion.FechaFin=vic_ConceptosDefinicion.MesesFin
vic_ConceptosDefinicion.MesesFin=vic_ConceptosDefinicion.FechaEmision
vic_ConceptosDefinicion.FechaEmision=(Fin)









[Encabezado]
Estilo=Ficha
Clave=Encabezado
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ConceptosDefinicion
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CarpetaVisible=S

[Encabezado.vic_ConceptosDefinicion.Inmueble]
Carpeta=Encabezado
Clave=vic_ConceptosDefinicion.Inmueble
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Editar=S
[Encabezado.vic_ConceptosDefinicion.Estatus]
Carpeta=Encabezado
Clave=vic_ConceptosDefinicion.Estatus
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Encabezado.vic_ConceptosDefinicion.Concepto]
Carpeta=Encabezado
Clave=vic_ConceptosDefinicion.Concepto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Encabezado.vic_ConceptosDefinicion.Descripcion]
Carpeta=Encabezado
Clave=vic_ConceptosDefinicion.Descripcion
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=32
ColorFondo=Plata

Pegado=S
[Encabezado.vic_ConceptosDefinicion.FechaInicio]
Carpeta=Encabezado
Clave=vic_ConceptosDefinicion.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Encabezado.vic_ConceptosDefinicion.FechaFin]
Carpeta=Encabezado
Clave=vic_ConceptosDefinicion.FechaFin
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Encabezado.vic_ConceptosDefinicion.FechaEmision]
Carpeta=Encabezado
Clave=vic_ConceptosDefinicion.FechaEmision
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle]
Estilo=Hoja
Clave=Detalle
OtroOrden=S
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_ConceptosDefinicionD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_ConceptosDefinicion
LlaveLocal=vic_ConceptosDefinicionD.ID
LlaveMaestra=vic_ConceptosDefinicion.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=vic_ConceptosDefinicionD.Fecha

ListaOrden=vic_ConceptosDefinicionD.Renglon<TAB>(Acendente)
CarpetaVisible=S
ControlRenglon=S
CampoRenglon=vic_ConceptosDefinicionD.Renglon

MenuLocal=S
ListaAcciones=Editar Registro
[Detalle.vic_ConceptosDefinicionD.Fecha]
Carpeta=Detalle
Clave=vic_ConceptosDefinicionD.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro






[Detalle.Columnas]
Fecha=146
DatoEntero=133
DatoDecimal=134
DatoFecha=152
DatoTexto=142
DatoPorcentaje=124

[Detalle.ListaEnCaptura]
(Inicio)=vic_ConceptosDefinicionD.Fecha
vic_ConceptosDefinicionD.Fecha=vic_ConceptosDefinicionD.DatoEntero
vic_ConceptosDefinicionD.DatoEntero=vic_ConceptosDefinicionD.DatoDecimal
vic_ConceptosDefinicionD.DatoDecimal=vic_ConceptosDefinicionD.DatoFecha
vic_ConceptosDefinicionD.DatoFecha=vic_ConceptosDefinicionD.DatoTexto
vic_ConceptosDefinicionD.DatoTexto=vic_ConceptosDefinicionD.DatoPorcentaje
vic_ConceptosDefinicionD.DatoPorcentaje=(Fin)









[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Personalizar]
Nombre=Personalizar
Boton=0
NombreDesplegar=&Personalizar
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[(Carpeta Abrir)]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Conceptos del Inmueble
Clave=(Carpeta Abrir)
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=vic_ConceptosDefinicion
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Concepto<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroEstatus=S
FiltroUsuarios=S
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroEmpresas=S
FiltroSucursales=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ACTIVO
FiltroFechasCampo=vic_ConceptosDefinicion.FechaEmision
FiltroFechasDefault=Este Mes
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
ListaAcciones=(Lista)
CarpetaVisible=S



OtroOrden=S
ListaOrden=vic_ConceptosDefinicion.ID<TAB>(Acendente)
IconosNombre=vic_ConceptosDefinicion:vic_ConceptosDefinicion.Concepto
[(Carpeta Abrir).vic_ConceptosDefinicion.Inmueble]
Carpeta=(Carpeta Abrir)
Clave=vic_ConceptosDefinicion.Inmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro


[(Carpeta Abrir).vic_ConceptosDefinicion.FechaInicio]
Carpeta=(Carpeta Abrir)
Clave=vic_ConceptosDefinicion.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).vic_ConceptosDefinicion.FechaFin]
Carpeta=(Carpeta Abrir)
Clave=vic_ConceptosDefinicion.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro


[(Carpeta Abrir).Columnas]
0=137
1=111
2=178
3=94
4=117
5=-2









[Lista.Columnas]
Concepto=89
Descripcion=239
Frecuencia=184
Estatus=94






0=120
1=126
2=161
TipoInforme=80

3=161
4=-2
[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S






NombreEnBoton=S
[Acciones.Navegador (Documentos)]
Nombre=Navegador (Documentos)
Boton=0
NombreDesplegar=Navegador (Documentos)
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S

























[Acciones.CargarDetalle.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>vic_spCargarDetalleConceptos :nID, :tConcepto, :fFechaInicio, :fFechaFinal, :nMeses, :tEstatus<T>, vic_ConceptosDefinicion:vic_ConceptosDefinicion.ID, Info.Concepto, vic_ConceptosDefinicion:vic_ConceptosDefinicion.FechaInicio, vic_ConceptosDefinicion:vic_ConceptosDefinicion.FechaFin, vic_ConceptosDefinicion:vic_ConceptosDefinicion.MesesFin, vic_ConceptosDefinicion:vic_ConceptosDefinicion.Estatus)
[Acciones.CargarDetalle.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.CargarDetalle]
Nombre=CargarDetalle
Boton=55
NombreDesplegar=&Cargar registros
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Visible=S
NombreEnBoton=S




EspacioPrevio=S





GuardarAntes=S


Antes=S
ActivoCondicion=ConDatos(vic_ConceptosDefinicion:vic_ConceptosDefinicion.Concepto)
AntesExpresiones=Asigna(Info.Concepto, vic_ConceptosDefinicion:vic_ConceptosDefinicion.Concepto)
[Valor]
Estilo=Hoja
Clave=Valor
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=vic_ConceptosDefinicionD_Det
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
HojaFondoGris=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
Detalle=S
VistaMaestra=vic_ConceptosDefinicionD
LlaveLocal=vic_ConceptosDefinicionD_Det.Fecha
LlaveMaestra=vic_ConceptosDefinicionD.Fecha


ControlRenglon=S
CampoRenglon=vic_ConceptosDefinicionD_Det.Renglon
MenuLocal=S
ListaAcciones=Resultados
FiltroGeneral=vic_ConceptosDefinicionD_Det.ID=<T>{vic_ConceptosDefinicionD:vic_ConceptosDefinicionD.ID}<T><BR>AND vic_ConceptosDefinicionD_Det.Concepto=<T>{vic_ConceptosDefinicion:vic_ConceptosDefinicion.Concepto}<T>
[Valor.Columnas]
VerCampo=200
VerValor=111






Campo=230
Valor=127

Varor=165
[Valor.vic_ConceptosDefinicionD_Det.Campo]
Carpeta=Valor
Clave=vic_ConceptosDefinicionD_Det.Campo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
ColorFuente=Negro


[Acciones.Editar Registro]
Nombre=Editar Registro
Boton=0
NombreDesplegar=&Editar registro
GuardarAntes=S
EnMenu=S
Activo=S
Antes=S
Visible=S







Multiple=S
ListaAccionesMultiples=(Lista)
AntesExpresiones=Asigna(Info.Inmueble, vic_ConceptosDefinicion:vic_ConceptosDefinicion.Inmueble)<BR>Asigna(Info.ID, vic_ConceptosDefinicion:vic_ConceptosDefinicion.ID)<BR>Asigna(Info.Concepto, vic_ConceptosDefinicion:vic_ConceptosDefinicion.Concepto)<BR>Asigna(Info.Fecha, vic_ConceptosDefinicionD:vic_ConceptosDefinicionD.Fecha)



[Acciones.Editar Registro.vic_ConceptosDefinicionD_Det]
Nombre=vic_ConceptosDefinicionD_Det
Boton=0
TipoAccion=Formas
ClaveAccion=vic_ConceptosDefinicionD_Det
Activo=S
Visible=S

[Acciones.Editar Registro.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Editar Registro.ListaAccionesMultiples]
(Inicio)=vic_ConceptosDefinicionD_Det
vic_ConceptosDefinicionD_Det=Actualizar Vista
Actualizar Vista=(Fin)


































































































[Valor.VerValor]
Carpeta=Valor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro





[Encabezado.vic_ConceptosDefinicion.Tipo]
Carpeta=Encabezado
Clave=vic_ConceptosDefinicion.Tipo
Editar=S
3D=S
Pegado=N
Tamano=20













































































LineaNueva=S
ValidaNombre=S
ColorFondo=Blanco
































[(Carpeta Abrir).vic_ConceptosDefinicion.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=vic_ConceptosDefinicion.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro










[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=vic_ConceptosDefinicion.Inmueble
vic_ConceptosDefinicion.Inmueble=vic_ConceptosDefinicion.Concepto
vic_ConceptosDefinicion.Concepto=vic_ConceptosDefinicion.FechaEmision
vic_ConceptosDefinicion.FechaEmision=vic_ConceptosDefinicion.FechaInicio
vic_ConceptosDefinicion.FechaInicio=vic_ConceptosDefinicion.FechaFin
vic_ConceptosDefinicion.FechaFin=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ACTIVO
ACTIVO=INACTIVO
INACTIVO=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Personalizar
Personalizar=(Fin)

[(Carpeta Abrir).vic_ConceptosDefinicion.Concepto]
Carpeta=(Carpeta Abrir)
Clave=vic_ConceptosDefinicion.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro





























































[Acciones.Actualizar Vista]
Nombre=Actualizar Vista
Boton=82
NombreDesplegar=&Actualizar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

EspacioPrevio=S
























[(Carpeta Totalizadores)]
Pestana=S
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=
Totalizadores2=
Totalizadores3=
Totalizadores=S
TotCarpetaRenglones=Valor
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S













































[Acciones.Resultados]
Nombre=Resultados
Boton=0
NombreDesplegar=&Resultados
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ConceptosDefinicionD_Det_Resultados
ActivoCondicion=ConDatos(vic_ConceptosDefinicionD_Det:vic_ConceptosDefinicionD_Det.ID)
Antes=S
AntesExpresiones=Asigna(Info.ID, vic_ConceptosDefinicionD_Det:vic_ConceptosDefinicionD_Det.ID)<BR>Asigna(Info.Campo, vic_ConceptosDefinicionD_Det:vic_ConceptosDefinicionD_Det.Campo)
Visible=S









[Valor.ListaEnCaptura]
(Inicio)=vic_ConceptosDefinicionD_Det.Campo
vic_ConceptosDefinicionD_Det.Campo=VerValor
VerValor=(Fin)















































































































[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cancelar.Cancelar]
Nombre=Cancelar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreDesplegar=Cancelar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S
EspacioPrevio=S







[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=(Fin)





[Acciones.CargarDetalle.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)









[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)








[Encabezado.ListaEnCaptura]
(Inicio)=vic_ConceptosDefinicion.Inmueble
vic_ConceptosDefinicion.Inmueble=vic_ConceptosDefinicion.Estatus
vic_ConceptosDefinicion.Estatus=vic_ConceptosDefinicion.FechaEmision
vic_ConceptosDefinicion.FechaEmision=vic_ConceptosDefinicion.Tipo
vic_ConceptosDefinicion.Tipo=vic_ConceptosDefinicion.Concepto
vic_ConceptosDefinicion.Concepto=vic_ConceptosDefinicion.Descripcion
vic_ConceptosDefinicion.Descripcion=vic_ConceptosDefinicion.FechaInicio
vic_ConceptosDefinicion.FechaInicio=vic_ConceptosDefinicion.FechaFin
vic_ConceptosDefinicion.FechaFin=(Fin)









[Forma.ListaCarpetas]
(Inicio)=Encabezado
Encabezado=Detalle
Detalle=Valor
Valor=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Actualizar Vista
Actualizar Vista=CargarDetalle
CargarDetalle=Cancelar
Cancelar=Navegador (Documentos)
Navegador (Documentos)=(Fin)
