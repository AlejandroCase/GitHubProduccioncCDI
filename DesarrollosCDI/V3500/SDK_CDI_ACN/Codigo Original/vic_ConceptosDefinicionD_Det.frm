
[Forma]
Clave=vic_ConceptosDefinicionD_Det
Icono=4
Modulos=(Todos)

ListaCarpetas=Detalle
CarpetaPrincipal=Detalle
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=304
PosicionInicialArriba=276
PosicionInicialAlturaCliente=277
PosicionInicialAncho=543
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraAyuda=S
BarraAyudaBold=S
Nombre=Editar Campos Registro
ListaAcciones=(Lista)
Comentarios=Lista(<T>Inmueble: <T> +Info.Inmueble, <T>Concepto: <T>+Info.Concepto,  <T>Fecha: <T>+Info.Fecha )
VentanaExclusiva=S
[Detalle]
Estilo=Hoja
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ConceptosDefinicionD_Det
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CarpetaVisible=S
Filtros=S
OtroOrden=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
HojaFondoGris=S
FiltroGeneral=vic_ConceptosDefinicionD_Det.Fecha=<T>{Info.Fecha}<T><BR>AND vic_ConceptosDefinicionD_Det.ID =<T>{Info.ID}<T><BR>AND vic_ConceptosDefinicionD_Det.Concepto = <T>{Info.Concepto}<T>
[Detalle.vic_ConceptosDefinicionD_Det.Campo]
Carpeta=Detalle
Clave=vic_ConceptosDefinicionD_Det.Campo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
ColorFuente=Negro


[Detalle.Columnas]
Campo=190
Valor=155

TipoDato=81
VerValor=154
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
Activo=S
Visible=S

EspacioPrevio=S










Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Guardar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S




Expresion=ProcesarSQL(<T>vic_spProcesaValorCampos :nID, :fFecha, :tConcepto<T>, vic_ConceptosDefinicionD_Det:vic_ConceptosDefinicionD_Det.ID, Info.Fecha, Info.Concepto)



[Acciones.Guardar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Guardar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Aceptar
Aceptar=(Fin)








[Detalle.TipoDato]
Carpeta=Detalle
Clave=TipoDato
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Plata
ColorFuente=Negro












[Detalle.vic_ConceptosDefinicionD_Det.Valor]
Carpeta=Detalle
Clave=vic_ConceptosDefinicionD_Det.Valor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro






























































[Detalle.ListaEnCaptura]
(Inicio)=vic_ConceptosDefinicionD_Det.Campo
vic_ConceptosDefinicionD_Det.Campo=TipoDato
TipoDato=vic_ConceptosDefinicionD_Det.Valor
vic_ConceptosDefinicionD_Det.Valor=(Fin)




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

[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)





[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cancelar
Cancelar=(Fin)
