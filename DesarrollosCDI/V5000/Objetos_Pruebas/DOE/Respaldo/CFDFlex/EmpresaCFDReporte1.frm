
[Forma]
Clave=EmpresaCFDReporte1
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Reporte CFD por Empresa
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Aceptar
Comentarios=Lista(Info.Empresa)
ListaCarpetas=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
CarpetaPrincipal=Lista
PosicionInicialIzquierda=176
PosicionInicialArriba=231
PosicionInicialAlturaCliente=437
PosicionInicialAncho=570
[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFDReporte1
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
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
PermiteEditar=S

FiltroGeneral=EmpresaCFDReporte1.Empresa = {Comillas(Info.Empresa)}
[Lista.EmpresaCFDReporte1.Modulo]
Carpeta=Lista
Clave=EmpresaCFDReporte1.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Lista.EmpresaCFDReporte1.Mov]
Carpeta=Lista
Clave=EmpresaCFDReporte1.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.EmpresaCFDReporte1.Reporte]
Carpeta=Lista
Clave=EmpresaCFDReporte1.Reporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.Columnas]
Modulo=56
Mov=166
Reporte=242





ReporteJasper=304
[Lista.ListaEnCaptura]
(Inicio)=EmpresaCFDReporte1.Modulo
EmpresaCFDReporte1.Modulo=EmpresaCFDReporte1.Mov
EmpresaCFDReporte1.Mov=EmpresaCFDReporte1.Reporte
EmpresaCFDReporte1.Reporte=EmpresaCFDReporte1.ReporteJasper
EmpresaCFDReporte1.ReporteJasper=(Fin)

[Lista.EmpresaCFDReporte1.ReporteJasper]
Carpeta=Lista
Clave=EmpresaCFDReporte1.ReporteJasper
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
