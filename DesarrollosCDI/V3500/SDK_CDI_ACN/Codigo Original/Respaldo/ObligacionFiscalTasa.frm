[Forma]
Clave=ObligacionFiscalTasa
Nombre=Tasas
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
PosicionInicialIzquierda=594
PosicionInicialArriba=437
PosicionInicialAlturaCliente=290
PosicionInicialAncho=731
Comentarios=Info.ObligacionFiscal
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
ValidarCampos=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=ObligacionFiscalTasa
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
FiltroGeneral=ObligacionFiscalTasa.ObligacionFiscal=<T>{Info.ObligacionFiscal}<T>

[Lista.ObligacionFiscalTasa.Tasa]
Carpeta=Lista
Clave=ObligacionFiscalTasa.Tasa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ObligacionFiscalTasa.Cuenta]
Carpeta=Lista
Clave=ObligacionFiscalTasa.Cuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ObligacionFiscalTasa.Cuenta2]
Carpeta=Lista
Clave=ObligacionFiscalTasa.Cuenta2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
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
Tasa=49
Cuenta=109
Cuenta2=124
Excento=46

[Lista.ObligacionFiscalTasa.Excento]
Carpeta=Lista
Clave=ObligacionFiscalTasa.Excento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ListaEnCaptura]
(Inicio)=ObligacionFiscalTasa.Tasa
ObligacionFiscalTasa.Tasa=ObligacionFiscalTasa.Excento
ObligacionFiscalTasa.Excento=ObligacionFiscalTasa.Cuenta
ObligacionFiscalTasa.Cuenta=ObligacionFiscalTasa.Cuenta2
ObligacionFiscalTasa.Cuenta2=(Fin)

[Lista.ListaCamposAValidar]
(Inicio)=Cta.Descripcion
Cta.Descripcion=CtaDestino.Descripcion
CtaDestino.Descripcion=(Fin)
