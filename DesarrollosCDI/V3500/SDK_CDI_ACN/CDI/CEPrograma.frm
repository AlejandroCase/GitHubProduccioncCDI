[Forma]
Clave=CEPrograma
Nombre=Programas
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
PosicionInicialIzquierda=212
PosicionInicialArriba=161
PosicionInicialAlturaCliente=408
PosicionInicialAncho=941
ListaAcciones=(Lista)
PosicionColumna1=47
PosicionCol1=566
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreEnBoton=S
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Registro Insertar
Activo=S
Visible=S
Carpeta=Detalles
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Visible=S
Carpeta=Detalles
ConfirmarAntes=S
ActivoCondicion=no CEPrograma:CEPrograma.TieneMovimientos
[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 2 (Registros)
Activo=S
Visible=S
EspacioPrevio=S
[Detalles]
Estilo=Ficha
Clave=Detalles
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CEPrograma
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
[Detalles.CEPrograma.Ciclo]
Carpeta=Detalles
Clave=CEPrograma.Ciclo
Editar=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
LineaNueva=S
[Detalles.CEPrograma.FechaInicio]
Carpeta=Detalles
Clave=CEPrograma.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[Detalles.CEPrograma.FechaFin]
Carpeta=Detalles
Clave=CEPrograma.FechaFin
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[Detalles.CEPrograma.Estatus]
Carpeta=Detalles
Clave=CEPrograma.Estatus
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CEPrograma
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
FiltroFechas=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasCampo=CEPrograma.FechaInicio
FiltroFechasDefault=Este Año
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S
OtroOrden=S
ListaOrden=CEPrograma.FechaInicio<TAB>(Acendente)
BusquedaRapida=S
BusquedaEnLinea=S
[Lista.CEPrograma.Ciclo]
Carpeta=Lista
Clave=CEPrograma.Ciclo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
[Lista.CEPrograma.FechaInicio]
Carpeta=Lista
Clave=CEPrograma.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[Lista.CEPrograma.FechaFin]
Carpeta=Lista
Clave=CEPrograma.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
[Lista.Columnas]
Clave=75
Ciclo=127
FechaInicio=70
FechaFin=66
Programa=73
FIniInscWeb=94
FFinInscWeb=94
[Lista.CEPrograma.Programa]
Carpeta=Lista
Clave=CEPrograma.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
[Detalles.CEPrograma.Programa]
Carpeta=Detalles
Clave=CEPrograma.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[Acciones.CEProgramaD]
Nombre=CEProgramaD
Boton=47
NombreDesplegar=Detalle
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CEProgramaD
Visible=S
Antes=S
ConCondicion=S
Activo=S
EjecucionCondicion=ConDatos(CEPrograma:CEPrograma.Programa)
AntesExpresiones=Asigna(Info.Programa, CEPrograma:CEPrograma.Programa)<BR>Asigna(Info.Descripcion, CEPrograma:CEPrograma.Ciclo)






[Acciones.FormasPag]
Nombre=FormasPag
Boton=0
NombreEnBoton=S
NombreDesplegar=&Formas de Pago
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIFormaPagoProg
Activo=S
Visible=S





Antes=S
AntesExpresiones=Asigna(Info.Programa, CEPrograma:CEPrograma.Programa)
[Acciones.CondPago]
Nombre=CondPago
Boton=0
NombreEnBoton=S
NombreDesplegar=Condiciones de Pago
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICondPagoProg
Activo=S
Visible=S







Antes=S
AntesExpresiones=Asigna(Info.Programa, CEPrograma:CEPrograma.Programa) 

























[Detalles.CEPrograma.CDIPeriodoPreciosYdescuentos]
Carpeta=Detalles
Clave=CEPrograma.CDIPeriodoPreciosYdescuentos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco









[Acciones.CDICeProgPerPrecioDescto]
Nombre=CDICeProgPerPrecioDescto
Boton=18
NombreEnBoton=S
NombreDesplegar=Periodos Precios y Devoluciones
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICeProgPerPrecioDescto
Activo=S
Visible=S



Antes=S
AntesExpresiones=Asigna(Info.Programa,CEPrograma:CEPrograma.Programa)
DespuesGuardar=S






















































































































[Lista.ListaEnCaptura]
(Inicio)=CEPrograma.Programa
CEPrograma.Programa=CEPrograma.Ciclo
CEPrograma.Ciclo=CEPrograma.FechaInicio
CEPrograma.FechaInicio=CEPrograma.FechaFin
CEPrograma.FechaFin=CEPrograma.FIniInscWeb
CEPrograma.FIniInscWeb=CEPrograma.FFinInscWeb
CEPrograma.FFinInscWeb=(Fin)

[Lista.CEPrograma.FIniInscWeb]
Carpeta=Lista
Clave=CEPrograma.FIniInscWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CEPrograma.FFinInscWeb]
Carpeta=Lista
Clave=CEPrograma.FFinInscWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Detalles.CEPrograma.FIniInscWeb]
Carpeta=Detalles
Clave=CEPrograma.FIniInscWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[Detalles.CEPrograma.FFinInscWeb]
Carpeta=Detalles
Clave=CEPrograma.FFinInscWeb
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20


[Detalles.ListaEnCaptura]
(Inicio)=CEPrograma.Programa
CEPrograma.Programa=CEPrograma.Estatus
CEPrograma.Estatus=CEPrograma.FechaInicio
CEPrograma.FechaInicio=CEPrograma.FechaFin
CEPrograma.FechaFin=CEPrograma.Ciclo
CEPrograma.Ciclo=CEPrograma.CDIPeriodoPreciosYdescuentos
CEPrograma.CDIPeriodoPreciosYdescuentos=CEPrograma.FIniInscWeb
CEPrograma.FIniInscWeb=CEPrograma.FFinInscWeb
CEPrograma.FFinInscWeb=(Fin)









[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalles
Detalles=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Nuevo
Nuevo=Eliminar
Eliminar=CEProgramaD
CEProgramaD=Navegador
Navegador=FormasPag
FormasPag=CondPago
CondPago=CDICeProgPerPrecioDescto
CDICeProgPerPrecioDescto=(Fin)
