[Forma]
Clave=TablaAmortizacion
Nombre=e(<T>Tabla Amortización<T>)+<T> - <T>+e(Info.Mov)+<T> <T>+Info.MovID
Icono=68
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=578
PosicionInicialArriba=333
PosicionInicialAlturaCliente=507
PosicionInicialAncho=764
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S

[Lista]
Estilo=Iconos
PestanaOtroNombre=S
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=TablaAmortizacion
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Amortización<T>
IconosNombreNumerico=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
Filtros=S
OtroOrden=S
ListaOrden=TablaAmortizacion.Amortizacion<TAB>(Acendente)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosNombre=TablaAmortizacion:TablaAmortizacion.Amortizacion
FiltroGeneral=TablaAmortizacion.Modulo=<T>{Info.Modulo}<T> AND TablaAmortizacion.ID={Info.ID}

[Lista.TablaAmortizacion.FechaD]
Carpeta=Lista
Clave=TablaAmortizacion.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.TablaAmortizacion.FechaA]
Carpeta=Lista
Clave=TablaAmortizacion.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.TablaAmortizacion.SaldoInicial]
Carpeta=Lista
Clave=TablaAmortizacion.SaldoInicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Lista.Columnas]
0=75
1=84

[Lista.Total]
Carpeta=Lista
Clave=Total
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=Presentación preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=Personalizar Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[Lista.TablaAmortizacion.Capital]
Carpeta=Lista
Clave=TablaAmortizacion.Capital
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.SaldoFinal]
Carpeta=Lista
Clave=SaldoFinal
Editar=S
Totalizador=0
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Dias]
Carpeta=Lista
Clave=Dias
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.TablaAmortizacion.Intereses]
Carpeta=Lista
Clave=TablaAmortizacion.Intereses
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Editar]
Nombre=Editar
Boton=61
NombreEnBoton=S
NombreDesplegar=&Editar Tabla
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Expresion=Si(Forma(<T>TablaAmortizacionGuia<T>), Forma.ActualizarVista)
ActivoCondicion=Info.Estatus en (EstatusSinAfectar, EstatusPorConfirmar)
VisibleCondicion=Usuario.ACEditarTablaAmortizacion

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=Personalizar
Personalizar=Editar
Editar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=TablaAmortizacion.FechaD
TablaAmortizacion.FechaD=Dias
Dias=TablaAmortizacion.FechaA
TablaAmortizacion.FechaA=TablaAmortizacion.SaldoInicial
TablaAmortizacion.SaldoInicial=TablaAmortizacion.Capital
TablaAmortizacion.Capital=SaldoFinal
SaldoFinal=TablaAmortizacion.Intereses
TablaAmortizacion.Intereses=Total
Total=(Fin)
