
[Forma]
Clave=EmpresaCFDBuilder1
Icono=0
BarraHerramientas=S
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Reportes Builder
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=685
PosicionInicialArriba=305
PosicionInicialAlturaCliente=273
PosicionInicialAncho=538
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Cancela]
Nombre=Cancela
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S




[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFDBuilder1
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=Empresa = {comillas(Info.Empresa)}
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
[Lista.ListaEnCaptura]
(Inicio)=EmpresaCFDBuilder1.Modulo
EmpresaCFDBuilder1.Modulo=EmpresaCFDBuilder1.Reporte
EmpresaCFDBuilder1.Reporte=EmpresaCFDBuilder1.Descripcion
EmpresaCFDBuilder1.Descripcion=(Fin)

[Lista.EmpresaCFDBuilder1.Modulo]
Carpeta=Lista
Clave=EmpresaCFDBuilder1.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.EmpresaCFDBuilder1.Reporte]
Carpeta=Lista
Clave=EmpresaCFDBuilder1.Reporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.EmpresaCFDBuilder1.Descripcion]
Carpeta=Lista
Clave=EmpresaCFDBuilder1.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[Lista.Columnas]
Modulo=55
Reporte=179
Descripcion=262

















[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cancela
Cancela=(Fin)
