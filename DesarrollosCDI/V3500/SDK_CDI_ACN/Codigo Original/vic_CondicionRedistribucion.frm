
[Forma]
Clave=vic_CondicionRedistribucion
Icono=4
Modulos=(Todos)
Nombre=Redistribución
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=Generales

PosicionInicialIzquierda=267
PosicionInicialArriba=139
PosicionInicialAlturaCliente=551
PosicionInicialAncho=617
PosicionSec1=113
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Comentarios=Lista(<T>Contrato: <T>+ SQL(<T>SELECT Mov FROM Contrato WHERE ID=:nID<T>,Info.ID), <T>Condición: <T>+Info.Clave)
ListaAcciones=(Lista)
Totalizadores=S
PosicionSec2=485
[vic_CondicionRedistribucion.ListaEnCaptura]
(Inicio)=vic_CondicionRedistribucion.MontoTotal
vic_CondicionRedistribucion.MontoTotal=vic_CondicionRedistribucion.FechaInicial
vic_CondicionRedistribucion.FechaInicial=vic_CondicionRedistribucion.Periodicidad
vic_CondicionRedistribucion.Periodicidad=(Fin)




[Detalle]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Detalle
Clave=Detalle
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_CondicionRedistribucionD
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=vic_CondicionRedistribucion
LlaveLocal=vic_CondicionRedistribucionD.ID
LlaveMaestra=vic_CondicionRedistribucion.ID
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
ControlRenglon=S
CampoRenglon=vic_CondicionRedistribucionD.Renglon

[Detalle.vic_CondicionRedistribucionD.Fecha]
Carpeta=Detalle
Clave=vic_CondicionRedistribucionD.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_CondicionRedistribucionD.Monto]
Carpeta=Detalle
Clave=vic_CondicionRedistribucionD.Monto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro


[Generales]
Estilo=Ficha
PestanaOtroNombre=S
PestanaNombre=Generales
Clave=Generales
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_CondicionRedistribucion
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

[Generales.vic_CondicionRedistribucion.MontoTotal]
Carpeta=Generales
Clave=vic_CondicionRedistribucion.MontoTotal
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Generales.vic_CondicionRedistribucion.FechaInicial]
Carpeta=Generales
Clave=vic_CondicionRedistribucion.FechaInicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=20
[Generales.vic_CondicionRedistribucion.Periodicidad]
Carpeta=Generales
Clave=vic_CondicionRedistribucion.Periodicidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro


[Detalle.Columnas]
Fecha=136
Monto=194









[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
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
NombreDesplegar=&Cancelar
Multiple=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar/Cancelar Cambios
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S


EspacioPrevio=S

[Acciones.Redistribuir.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>vic_spRedistribucionAfecta :nID, :nIDContrato, :nIDCondicion, :nMonto, :nPago, :fFechaInicial, :tPeriodicidad<T>,<BR>vic_CondicionRedistribucion:vic_CondicionRedistribucion.ID,<BR>vic_CondicionRedistribucion:vic_CondicionRedistribucion.IDContrato, vic_CondicionRedistribucion:vic_CondicionRedistribucion.IDCondicion,<BR>vic_CondicionRedistribucion:vic_CondicionRedistribucion.MontoTotal, vic_CondicionRedistribucion:vic_CondicionRedistribucion.NumPagos,<BR>vic_CondicionRedistribucion:vic_CondicionRedistribucion.FechaInicial, vic_CondicionRedistribucion:vic_CondicionRedistribucion.Periodicidad)
[Acciones.Redistribuir.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Redistribuir]
Nombre=Redistribuir
Boton=55
NombreDesplegar=&Redistribuir
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Visible=S
NombreEnBoton=S



EspacioPrevio=S




GuardarAntes=S
ActivoCondicion=(ConDatos(vic_CondicionRedistribucion:vic_CondicionRedistribucion.Periodicidad)) y (ConDatos(vic_CondicionRedistribucion:vic_CondicionRedistribucion.FechaInicial))
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
Activo=S
Visible=S











Multiple=S
ListaAccionesMultiples=(Lista)

[Acciones.Guardar.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Guardar.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S






[Acciones.Guardar.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Actualizar Vista
Actualizar Vista=(Fin)




[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)







[Acciones.Procesar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>vic_spRedistribucionAceptar :nID, :nIDContrato, :nIDCondicion, :nMonto, :nNumPagos<T>,<BR>vic_CondicionRedistribucion:vic_CondicionRedistribucion.ID,<BR>vic_CondicionRedistribucion:vic_CondicionRedistribucion.IDContrato,<BR>vic_CondicionRedistribucion:vic_CondicionRedistribucion.IDCondicion,<BR>vic_CondicionRedistribucion:vic_CondicionRedistribucion.MontoTotal,<BR>vic_CondicionRedistribucion:vic_CondicionRedistribucion.NumPagos)
[Acciones.Procesar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Procesar]
Nombre=Procesar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Procesar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S




[Detalle.ListaEnCaptura]
(Inicio)=vic_CondicionRedistribucionD.Fecha
vic_CondicionRedistribucionD.Fecha=vic_CondicionRedistribucionD.Monto
vic_CondicionRedistribucionD.Monto=(Fin)






[Generales.vic_CondicionRedistribucion.NumPagos]
Carpeta=Generales
Clave=vic_CondicionRedistribucion.NumPagos
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro






[Generales.ListaEnCaptura]
(Inicio)=vic_CondicionRedistribucion.MontoTotal
vic_CondicionRedistribucion.MontoTotal=vic_CondicionRedistribucion.NumPagos
vic_CondicionRedistribucion.NumPagos=vic_CondicionRedistribucion.FechaInicial
vic_CondicionRedistribucion.FechaInicial=vic_CondicionRedistribucion.Periodicidad
vic_CondicionRedistribucion.Periodicidad=(Fin)

















[Acciones.Redistribuir.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)




















[(Carpeta Totalizadores)]
PestanaOtroNombre=S
PestanaNombre=Totales
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Total
Totalizadores2=Suma(vic_CondicionRedistribucionD:vic_CondicionRedistribucionD.Monto)
Totalizadores3=(Monetario)
Totalizadores=S
TotCarpetaRenglones=Detalle
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Total
CarpetaVisible=S

[(Carpeta Totalizadores).Total]
Carpeta=(Carpeta Totalizadores)
Clave=Total
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]















[Acciones.Procesar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Aceptar
Aceptar=(Fin)

















[Forma.ListaCarpetas]
(Inicio)=Generales
Generales=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Redistribuir
Redistribuir=Procesar
Procesar=Cancelar
Cancelar=(Fin)
