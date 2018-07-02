[Forma]
Clave=EmpresaRegimenFiscales1
Nombre=Régimenes Fiscales de la Empresa
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=568
PosicionInicialArriba=189
PosicionInicialAlturaCliente=312
PosicionInicialAncho=356
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
Comentarios=Info.Empresa
PosicionSeccion1=92

PosicionSec1=351
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaRegimenFiscales1
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
ListaEnCaptura=EmpresaRegimenFiscales1.FiscalRegimen
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S




FiltroGeneral=EmpresaRegimenFiscales1.Empresa=<T>{Info.Empresa}<T>
[Lista.Columnas]
Socio=93
Nombre=278
Estatus=94
Participacion=78

FiscalRegimen=184
Descripcion=362
Extranjero=64
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

[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Total
Totalizadores2=Suma(EmpresaRegimenFiscales1:EmpresaRegimenFiscales1.Participacion)
Totalizadores3=0.00
Totalizadores=S
TotCarpetaRenglones=Lista
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=Total
CarpetaVisible=S

[(Carpeta Totalizadores).Total]
Carpeta=(Carpeta Totalizadores)
Clave=Total
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Lista.ListaEnCaptura]
(Inicio)=EmpresaRegimenFiscales1.Socio
EmpresaRegimenFiscales1.Socio=Socio.Nombre
Socio.Nombre=EmpresaRegimenFiscales1.Participacion
EmpresaRegimenFiscales1.Participacion=(Fin)

[Lista.EmpresaRegimenFiscales1.FiscalRegimen]
Carpeta=Lista
Clave=EmpresaRegimenFiscales1.FiscalRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
