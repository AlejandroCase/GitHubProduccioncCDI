[Forma]
Clave=CxcAnticiposPendientes
Nombre=Anticipos Facturados Pendientes
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=303
PosicionInicialArriba=362
PosicionInicialAlturaCliente=273
PosicionInicialAncho=674
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Cliente, Info.Nombre)
VentanaExclusiva=S

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CxcAnticiposPendientes
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
MenuLocal=S
ListaAcciones=Copiar
FiltroGeneral=Cxc.Empresa=<T>{Empresa}<T> <BR>AND Cxc.Estatus IN (<T>PENDIENTE<T>, <T>CONCLUIDO<T>) <BR>AND Cxc.AnticipoSaldo>0<BR>AND Cxc.Cliente=<T>{Info.Cliente}<T>

[Lista.Cxc.Mov]
Carpeta=Lista
Clave=Cxc.Mov
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.MovID]
Carpeta=Lista
Clave=Cxc.MovID
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.FechaEmision]
Carpeta=Lista
Clave=Cxc.FechaEmision
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.Concepto]
Carpeta=Lista
Clave=Cxc.Concepto
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.AnticipoSaldo]
Carpeta=Lista
Clave=Cxc.AnticipoSaldo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cxc.AnticipoAplicar]
Carpeta=Lista
Clave=Cxc.AnticipoAplicar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=S

[Lista.Columnas]
Mov=124
MovID=64
FechaEmision=74
Concepto=94
AnticipoSaldo=96
AnticipoAplicar=91
Referencia=96

[Lista.Cxc.Referencia]
Carpeta=Lista
Clave=Cxc.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
GuardarAntes=S
Antes=S
AntesExpresiones=EjecutarSQL(<T>spCxcAnticiposPendientesAceptar :tModulo, :nID<T>, Info.Modulo, Info.ID)
DespuesGuardar=S

[Acciones.Copiar]
Nombre=Copiar
Boton=0
UsaTeclaRapida=S
TeclaRapida=F5
NombreDesplegar=Copiar
EnMenu=S
TipoAccion=Expresion
Expresion=Asigna(CxcAnticiposPendientes:Cxc.AnticipoAplicar, CxcAnticiposPendientes:Cxc.AnticipoSaldo)
Activo=S
Visible=S

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

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=<T>&Cancelar<T>
Multiple=S
EnBarraHerramientas=S
TipoAccion=Ventana
ListaAccionesMultiples=Cancelar Cambios<BR>Cancelar
Activo=S
Visible=S

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=Cxc.Mov
Cxc.Mov=Cxc.MovID
Cxc.MovID=Cxc.FechaEmision
Cxc.FechaEmision=Cxc.Referencia
Cxc.Referencia=Cxc.Concepto
Cxc.Concepto=Cxc.AnticipoSaldo
Cxc.AnticipoSaldo=Cxc.AnticipoAplicar
Cxc.AnticipoAplicar=(Fin)
