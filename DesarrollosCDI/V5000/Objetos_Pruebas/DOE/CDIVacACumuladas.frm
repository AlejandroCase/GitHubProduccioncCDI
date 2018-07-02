
[Forma]
Clave=CDIVacACumuladas
Icono=0
CarpetaPrincipal=CDIVacACumuladas
Modulos=(Todos)
MovModulo=CDIVacACumuladas
Nombre=Detalle Anual

ListaCarpetas=CDIVacACumuladas
PosicionInicialAlturaCliente=457
PosicionInicialAncho=559
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=403
PosicionInicialArriba=136
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIVacACumuladas]
Estilo=Hoja
Clave=CDIVacACumuladas
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVacACumuladas
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

ListaCamposAValidar=(Lista)
CarpetaVisible=S


ExpAlRefrescar=EjecutarSQL(<T>CDITempVaca :tPer<T>,info.Personal )
ExpAntesRefrescar=EjecutarSQL(<T>CDITempVaca :tPer<T>,info.Personal )
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
PestanaOtroNombre=S
PestanaNombre=Vacaciones
FiltroGeneral=Personal=<T>{info.personal}<T>
[CDIVacACumuladas.CDIVacACumuladas.Estatus]
Carpeta=CDIVacACumuladas
Clave=CDIVacACumuladas.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVacACumuladas.CDIVacACumuladas.FechaAlta]
Carpeta=CDIVacACumuladas
Clave=CDIVacACumuladas.FechaAlta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVacACumuladas.CDIVacACumuladas.FechaAntiguedad]
Carpeta=CDIVacACumuladas
Clave=CDIVacACumuladas.FechaAntiguedad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVacACumuladas.CDIVacACumuladas.CargosU]
Carpeta=CDIVacACumuladas
Clave=CDIVacACumuladas.CargosU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVacACumuladas.CDIVacACumuladas.AbonosU]
Carpeta=CDIVacACumuladas
Clave=CDIVacACumuladas.AbonosU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVacACumuladas.CDIVacACumuladas.Subtotal]
Carpeta=CDIVacACumuladas
Clave=CDIVacACumuladas.Subtotal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVacACumuladas.Columnas]
Estatus=64
FechaAlta=94
FechaAntiguedad=94
CargosU=64
AbonosU=64
Subtotal=64



Ejercicio=64
Periodo=64
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=cerrar
Activo=S
Visible=S









































[CDIVacACumuladas.CDIVacACumuladas.Ejercicio]
Carpeta=CDIVacACumuladas
Clave=CDIVacACumuladas.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







[CDIVacACumuladas.ListaEnCaptura]
(Inicio)=CDIVacACumuladas.Estatus
CDIVacACumuladas.Estatus=CDIVacACumuladas.FechaAlta
CDIVacACumuladas.FechaAlta=CDIVacACumuladas.FechaAntiguedad
CDIVacACumuladas.FechaAntiguedad=CDIVacACumuladas.Ejercicio
CDIVacACumuladas.Ejercicio=CDIVacACumuladas.CargosU
CDIVacACumuladas.CargosU=CDIVacACumuladas.AbonosU
CDIVacACumuladas.AbonosU=CDIVacACumuladas.Subtotal
CDIVacACumuladas.Subtotal=(Fin)

[CDIVacACumuladas.ListaCamposAValidar]
(Inicio)=CDIVacACumuladas.Personal
CDIVacACumuladas.Personal=CDIVacACumuladas.Nombre
CDIVacACumuladas.Nombre=(Fin)

[Acciones.DetalleMov]
Nombre=DetalleMov
Boton=18
NombreEnBoton=S
NombreDesplegar=&Detalle por Movimiento
EnBarraHerramientas=S
TipoAccion=formas
ClaveAccion=CDIDetalleVaca
Activo=S
Visible=S














EspacioPrevio=S
[Acciones.enviar a Excel]
Nombre=enviar a Excel
Boton=115
NombreDesplegar=&Enviar a Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S







[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=enviar a Excel
enviar a Excel=DetalleMov
DetalleMov=(Fin)
