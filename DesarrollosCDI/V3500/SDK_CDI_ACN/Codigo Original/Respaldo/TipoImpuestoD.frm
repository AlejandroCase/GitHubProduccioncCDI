
[Forma]
Clave=TipoImpuestoD
Icono=0
Modulos=(Todos)
Nombre=Detalle del Tipo Impuesto

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
Comentarios=Info.TipoImpuesto
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=232
PosicionInicialArriba=164
PosicionInicialAlturaCliente=403
PosicionInicialAncho=658
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=TipoImpuestoD
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
ListaEnCaptura=(Lista)


FiltroGeneral=TipoImpuestoD.TipoImpuesto=<T>{Info.TipoImpuesto}<T>
[Lista.TipoImpuestoD.FechaD]
Carpeta=Lista
Clave=TipoImpuestoD.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.TipoImpuestoD.FechaA]
Carpeta=Lista
Clave=TipoImpuestoD.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Lista.TipoImpuestoD.Concepto]
Carpeta=Lista
Clave=TipoImpuestoD.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.TipoImpuestoD.Referencia]
Carpeta=Lista
Clave=TipoImpuestoD.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista.Columnas]
FechaD=94
FechaA=94
Porcentaje=64
Concepto=190
Referencia=186

Tasa=52
[Lista.ListaEnCaptura]
(Inicio)=TipoImpuestoD.FechaD
TipoImpuestoD.FechaD=TipoImpuestoD.FechaA
TipoImpuestoD.FechaA=TipoImpuestoD.Tasa
TipoImpuestoD.Tasa=TipoImpuestoD.Concepto
TipoImpuestoD.Concepto=TipoImpuestoD.Referencia
TipoImpuestoD.Referencia=(Fin)

[Lista.TipoImpuestoD.Tasa]
Carpeta=Lista
Clave=TipoImpuestoD.Tasa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
