[Forma]
Clave=pFiscalMovTipo
Nombre=Información Fiscal (Tipos Movimientos)
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
PosicionInicialIzquierda=727
PosicionInicialArriba=243
PosicionInicialAlturaCliente=567
PosicionInicialAncho=411

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=pFiscalMovTipo
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
CarpetaVisible=S
Filtros=S
FiltroAplicaEn=pFiscalMovTipo.Modulo
FiltroPredefinido=S
FiltroAutoCampo=pFiscalMovTipo.Modulo
FiltroAutoValidar=pFiscalMovTipo.Modulo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroEstilo=Folder (1 línea)
FiltroRespetar=S
FiltroTipo=Automático
OtroOrden=S
ListaOrden=pFiscalMovTipo.Orden<TAB>(Acendente)

[Lista.pFiscalMovTipo.Mov]
Carpeta=Lista
Clave=pFiscalMovTipo.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalMovTipo.Clave]
Carpeta=Lista
Clave=pFiscalMovTipo.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.pFiscalMovTipo.AfectarFiscal]
Carpeta=Lista
Clave=pFiscalMovTipo.AfectarFiscal
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
Modulo=50
Mov=160
Clave=89
AfectarFiscal=115

[Lista.ListaEnCaptura]
(Inicio)=pFiscalMovTipo.Mov
pFiscalMovTipo.Mov=pFiscalMovTipo.Clave
pFiscalMovTipo.Clave=pFiscalMovTipo.AfectarFiscal
pFiscalMovTipo.AfectarFiscal=(Fin)
