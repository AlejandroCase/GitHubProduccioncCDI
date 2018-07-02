[Forma]
Clave=pFiscalConcepto
Nombre=Conceptos
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
CarpetaPrincipal=Lista
ListaAcciones=Aceptar
PosicionInicialIzquierda=659
PosicionInicialArriba=348
PosicionInicialAlturaCliente=468
PosicionInicialAncho=601

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=pFiscalConcepto
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=pFiscalConcepto.Modulo=<T>GAS<T>
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

[Lista.pFiscalConcepto.Concepto]
Carpeta=Lista
Clave=pFiscalConcepto.Concepto
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalConcepto.Impuestos]
Carpeta=Lista
Clave=pFiscalConcepto.Impuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalConcepto.Impuesto1Excento]
Carpeta=Lista
Clave=pFiscalConcepto.Impuesto1Excento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalConcepto.Excento2]
Carpeta=Lista
Clave=pFiscalConcepto.Excento2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalConcepto.Excento3]
Carpeta=Lista
Clave=pFiscalConcepto.Excento3
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

[Lista.Columnas]
Concepto=304
Impuestos=64
Impuesto1Excento=64
Excento2=64
Excento3=64

[Lista.ListaEnCaptura]
(Inicio)=pFiscalConcepto.Concepto
pFiscalConcepto.Concepto=pFiscalConcepto.Impuestos
pFiscalConcepto.Impuestos=pFiscalConcepto.Impuesto1Excento
pFiscalConcepto.Impuesto1Excento=pFiscalConcepto.Excento2
pFiscalConcepto.Excento2=pFiscalConcepto.Excento3
pFiscalConcepto.Excento3=(Fin)
