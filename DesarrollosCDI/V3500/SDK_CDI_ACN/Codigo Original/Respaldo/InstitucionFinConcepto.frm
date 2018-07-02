[Forma]
Clave=InstitucionFinConcepto
Nombre=Conceptos (Conciliación)
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Comentarios=Info.Cuenta
ListaAcciones=(Lista)
PosicionInicialIzquierda=181
PosicionInicialArriba=174
PosicionInicialAlturaCliente=518
PosicionInicialAncho=1078
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=InstitucionFinConcepto
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
CarpetaVisible=S
Filtros=S
PermiteEditar=S
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
OtroOrden=S
ListaOrden=(Lista)
ValidarCampos=S
ListaCamposAValidar=Acreedor.Nombre
FiltroGeneral=InstitucionFinConcepto.Institucion=<T>{Info.Cuenta}<T>

[Lista.InstitucionFinConcepto.ConceptoBanco]
Carpeta=Lista
Clave=InstitucionFinConcepto.ConceptoBanco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=10

[Lista.InstitucionFinConcepto.TipoMovimiento]
Carpeta=Lista
Clave=InstitucionFinConcepto.TipoMovimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.InstitucionFinConcepto.ConceptoGasto]
Carpeta=Lista
Clave=InstitucionFinConcepto.ConceptoGasto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.InstitucionFinConcepto.PermiteAbonoNoIdentificado]
Carpeta=Lista
Clave=InstitucionFinConcepto.PermiteAbonoNoIdentificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

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

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Enviar/Recibir Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Activo=S
Visible=S

[Lista.Columnas]
ConceptoBanco=250
TipoMovimiento=84
ConceptoGasto=129
PermiteAbonoNoIdentificado=172
Acreedor=79
ObligacionFiscal=91
Tasa=39
TipoImporte=94
ObligacionFiscal2=95

[Lista.InstitucionFinConcepto.Acreedor]
Carpeta=Lista
Clave=InstitucionFinConcepto.Acreedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.InstitucionFinConcepto.ObligacionFiscal]
Carpeta=Lista
Clave=InstitucionFinConcepto.ObligacionFiscal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.InstitucionFinConcepto.Tasa]
Carpeta=Lista
Clave=InstitucionFinConcepto.Tasa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.InstitucionFinConcepto.TipoImporte]
Carpeta=Lista
Clave=InstitucionFinConcepto.TipoImporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.InstitucionFinConcepto.ObligacionFiscal2]
Carpeta=Lista
Clave=InstitucionFinConcepto.ObligacionFiscal2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excel
Excel=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=InstitucionFinConcepto.ConceptoBanco
InstitucionFinConcepto.ConceptoBanco=InstitucionFinConcepto.TipoMovimiento
InstitucionFinConcepto.TipoMovimiento=InstitucionFinConcepto.PermiteAbonoNoIdentificado
InstitucionFinConcepto.PermiteAbonoNoIdentificado=InstitucionFinConcepto.ConceptoGasto
InstitucionFinConcepto.ConceptoGasto=InstitucionFinConcepto.Acreedor
InstitucionFinConcepto.Acreedor=InstitucionFinConcepto.ObligacionFiscal
InstitucionFinConcepto.ObligacionFiscal=InstitucionFinConcepto.ObligacionFiscal2
InstitucionFinConcepto.ObligacionFiscal2=InstitucionFinConcepto.Tasa
InstitucionFinConcepto.Tasa=InstitucionFinConcepto.TipoImporte
InstitucionFinConcepto.TipoImporte=(Fin)

[Lista.ListaOrden]
(Inicio)=InstitucionFinConcepto.TipoMovimiento<TAB>(Acendente)
InstitucionFinConcepto.TipoMovimiento<TAB>(Acendente)=InstitucionFinConcepto.ConceptoBanco<TAB>(Acendente)
InstitucionFinConcepto.ConceptoBanco<TAB>(Acendente)=(Fin)
