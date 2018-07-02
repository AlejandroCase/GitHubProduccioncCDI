[Forma]
Clave=CteEmpresaCFD
Nombre=Datos CFD del Cliente - Nivel Empresa
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=491
PosicionInicialArriba=402
PosicionInicialAlturaCliente=211
PosicionInicialAncho=697
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
Comentarios=Lista(Info.Cliente, Info.Nombre)

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteEmpresaCFD
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
FiltroGeneral=CteEmpresaCFD.Cliente=<T>{Info.Cliente}<T>

[Lista.CteEmpresaCFD.Empresa]
Carpeta=Lista
Clave=CteEmpresaCFD.Empresa
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
Editar=S

[Lista.Empresa.Nombre]
Carpeta=Lista
Clave=Empresa.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Gris

[Lista.CteEmpresaCFD.EmisorID]
Carpeta=Lista
Clave=CteEmpresaCFD.EmisorID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CteEmpresaCFD.ProveedorID]
Carpeta=Lista
Clave=CteEmpresaCFD.ProveedorID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Empresa=67
Nombre=255
EmisorID=124
ProveedorID=117
InformacionCompra=101

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

[Lista.CteEmpresaCFD.InformacionCompra]
Carpeta=Lista
Clave=CteEmpresaCFD.InformacionCompra
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.ListaEnCaptura]
(Inicio)=CteEmpresaCFD.Empresa
CteEmpresaCFD.Empresa=Empresa.Nombre
Empresa.Nombre=CteEmpresaCFD.EmisorID
CteEmpresaCFD.EmisorID=CteEmpresaCFD.ProveedorID
CteEmpresaCFD.ProveedorID=CteEmpresaCFD.InformacionCompra
CteEmpresaCFD.InformacionCompra=(Fin)
