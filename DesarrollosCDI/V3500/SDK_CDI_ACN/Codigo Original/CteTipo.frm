[Forma]
Clave=CteTipo
Nombre=Tipos Clientes
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=603
PosicionInicialArriba=224
PosicionInicialAlturaCliente=425
PosicionInicialAncho=234
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
ListaAcciones=(Lista)

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteTipo
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
CarpetaVisible=S
OtroOrden=S
ListaOrden=CteTipo.Orden<TAB>(Acendente)

[Lista.CteTipo.Tipo]
Carpeta=Lista
Clave=CteTipo.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CteTipo.Orden]
Carpeta=Lista
Clave=CteTipo.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Columnas]
Tipo=165
Orden=38

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

[Acciones.CampoExtra]
Nombre=CampoExtra
Boton=104
NombreEnBoton=S
NombreDesplegar=&Campos Extras
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CtoTipoCampoExtra
Activo=S
ConCondicion=S
Antes=S
Visible=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(CteTipo:CteTipo.Tipo)
AntesExpresiones=Asigna(Info.Tipo, <T>Cliente<T>)<BR>Asigna(Info.SubTipo, CteTipo:CteTipo.Tipo)



[Lista.CteTipo.INFORDescripcion]
Carpeta=Lista
Clave=CteTipo.INFORDescripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco




[Lista.ListaEnCaptura]
(Inicio)=CteTipo.Tipo
CteTipo.Tipo=CteTipo.INFORDescripcion
CteTipo.INFORDescripcion=CteTipo.Orden
CteTipo.Orden=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=CampoExtra
CampoExtra=(Fin)
