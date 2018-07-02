
[Forma]
Clave=CDISubsidioVencimiento
Icono=0
Modulos=(Todos)
Nombre=Vencimiento de Subsidios

ListaCarpetas=CDISubsidioVencimiento
CarpetaPrincipal=CDISubsidioVencimiento
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionInicialAlturaCliente=705
PosicionInicialAncho=1382
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDISubsidioVencimiento]
Estilo=Hoja
Clave=CDISubsidioVencimiento
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISubsidioVencimiento
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
OtroOrden=S
BusquedaRapidaControles=S

ListaOrden=CDISubsidioVencimiento.fechavigencia<TAB>(Decendente)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
HojaOrdenarColumnas=S
FiltroFechas=S
FiltroFechasCampo=CDISubsidioVencimiento.fechavigencia
BusquedaRapida=S
BusquedaEnLinea=S
FiltroFechasDefault=Hoy
[CDISubsidioVencimiento.CDISubsidioVencimiento.mov]
Carpeta=CDISubsidioVencimiento
Clave=CDISubsidioVencimiento.mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDISubsidioVencimiento.CDISubsidioVencimiento.movid]
Carpeta=CDISubsidioVencimiento
Clave=CDISubsidioVencimiento.movid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[CDISubsidioVencimiento.CDISubsidioVencimiento.socio]
Carpeta=CDISubsidioVencimiento
Clave=CDISubsidioVencimiento.socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDISubsidioVencimiento.CDISubsidioVencimiento.concepto]
Carpeta=CDISubsidioVencimiento
Clave=CDISubsidioVencimiento.concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDISubsidioVencimiento.CDISubsidioVencimiento.referencia]
Carpeta=CDISubsidioVencimiento
Clave=CDISubsidioVencimiento.referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDISubsidioVencimiento.CDISubsidioVencimiento.fechaingreso]
Carpeta=CDISubsidioVencimiento
Clave=CDISubsidioVencimiento.fechaingreso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISubsidioVencimiento.CDISubsidioVencimiento.fechavigencia]
Carpeta=CDISubsidioVencimiento
Clave=CDISubsidioVencimiento.fechavigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISubsidioVencimiento.CDISubsidioVencimiento.subsidio]
Carpeta=CDISubsidioVencimiento
Clave=CDISubsidioVencimiento.subsidio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISubsidioVencimiento.Columnas]
mov=104
movid=37
cliente=64
socio=71
concepto=175
referencia=285
fechaingreso=94
fechavigencia=94
subsidio=64





Nombre=213

Descuento=64
Membresia=64
Estatus=51
[CDISubsidioVencimiento.Cte.Nombre]
Carpeta=CDISubsidioVencimiento
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[CDISubsidioVencimiento.CDISubsidioVencimiento.Descuento]
Carpeta=CDISubsidioVencimiento
Clave=CDISubsidioVencimiento.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S









[CDISubsidioVencimiento.Cte.Membresia]
Carpeta=CDISubsidioVencimiento
Clave=Cte.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISubsidioVencimiento.Cte.Estatus]
Carpeta=CDISubsidioVencimiento
Clave=Cte.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco










[CDISubsidioVencimiento.ListaEnCaptura]
(Inicio)=CDISubsidioVencimiento.mov
CDISubsidioVencimiento.mov=CDISubsidioVencimiento.movid
CDISubsidioVencimiento.movid=Cte.Membresia
Cte.Membresia=CDISubsidioVencimiento.socio
CDISubsidioVencimiento.socio=Cte.Nombre
Cte.Nombre=Cte.Estatus
Cte.Estatus=CDISubsidioVencimiento.concepto
CDISubsidioVencimiento.concepto=CDISubsidioVencimiento.referencia
CDISubsidioVencimiento.referencia=CDISubsidioVencimiento.fechaingreso
CDISubsidioVencimiento.fechaingreso=CDISubsidioVencimiento.fechavigencia
CDISubsidioVencimiento.fechavigencia=CDISubsidioVencimiento.subsidio
CDISubsidioVencimiento.subsidio=CDISubsidioVencimiento.Descuento
CDISubsidioVencimiento.Descuento=(Fin)







[Forma.ListaAcciones]
(Inicio)=Enviar a Excel
Enviar a Excel=Cerrar
Cerrar=(Fin)