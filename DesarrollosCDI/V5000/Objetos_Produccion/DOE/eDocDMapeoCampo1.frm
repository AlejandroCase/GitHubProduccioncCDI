
[Forma]
Clave=eDocDMapeoCampo1
Icono=0
Modulos=(Todos)
Nombre=<T>Mapeo Campos<T>

ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=185
PosicionInicialArriba=139
PosicionInicialAlturaCliente=428
PosicionInicialAncho=910
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionCol1=518
Comentarios=Lista(Info.Modulo,Info.Descripcion,Info.Categoria)
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=eDocDMapeoCampo1
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

HojaAjustarColumnas=S
FiltroGeneral=eDocDMapeoCampo1.Modulo = {Comillas(Info.Modulo)} AND eDocDMapeoCampo1.eDoc = {Comillas(Info.Descripcion)} AND eDocDMapeoCampo1.IDSeccion = {Info.RID}
[Lista.eDocDMapeoCampo1.CampoXML]
Carpeta=Lista
Clave=eDocDMapeoCampo1.CampoXML
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.eDocDMapeoCampo1.CampoVista]
Carpeta=Lista
Clave=eDocDMapeoCampo1.CampoVista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Detalle]
Estilo=Ficha
Clave=Detalle
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=eDocDMapeoCampo1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
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

FiltroGeneral=eDocDMapeoCampo1.Modulo = {Comillas(Info.Modulo)} AND eDocDMapeoCampo1.eDoc = {Comillas(Info.Descripcion)} AND eDocDMapeoCampo1.IDSeccion = {Info.RID}
[Detalle.eDocDMapeoCampo1.CampoXML]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.CampoXML
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.eDocDMapeoCampo1.CampoVista]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.CampoVista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.eDocDMapeoCampo1.FormatoOpcional]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.FormatoOpcional
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.eDocDMapeoCampo1.Traducir]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.Traducir
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.eDocDMapeoCampo1.Opcional]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.Opcional
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Detalle.eDocDMapeoCampo1.BorrarSiOpcional]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.BorrarSiOpcional
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco



[Lista.Columnas]
CampoXML=241
CampoVista=242


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








[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo Registro
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S











[Lista.ListaEnCaptura]
(Inicio)=eDocDMapeoCampo1.CampoXML
eDocDMapeoCampo1.CampoXML=eDocDMapeoCampo1.CampoVista
eDocDMapeoCampo1.CampoVista=(Fin)





[Detalle.eDocDMapeoCampo1.TablaSt]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.TablaSt
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

























[Acciones.Sugerir]
Nombre=Sugerir
Boton=12
NombreEnBoton=S
NombreDesplegar=&Sugerir Campos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S









ConfirmarAntes=S
DialogoMensaje=EstaSeguro










Expresion=EJECUTARSQL(<T>EXEC speDocInsertarCamposXML :tModulo, :teDoc, :nSeccionID<T>,Info.Modulo,Info.Descripcion,Info.RID)<BR>ActualizarForma
[Acciones.Ayuda]
Nombre=Ayuda
Boton=101
NombreEnBoton=S
NombreDesplegar=&Ayuda Campos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=eDocModuloVistaAyuda1
Activo=S
Visible=S





Antes=S




AntesExpresiones=Asigna(Info.Campo,eDocDMapeoCampo1:eDocDMapeoCampo1.CampoVista)





[Detalle.eDocDMapeoCampo1.Decimales]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.Decimales
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco









[Detalle.eDocDMapeoCampo1.CaracterExtendidoAASCII]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.CaracterExtendidoAASCII
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Detalle.eDocDMapeoCampo1.ConvertirPaginaCodigo437]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.ConvertirPaginaCodigo437
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Detalle.eDocDMapeoCampo1.ConvertirComillaDobleAASCII]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.ConvertirComillaDobleAASCII
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

























[Detalle.eDocDMapeoCampo1.NumericoNuloACero]
Carpeta=Detalle
Clave=eDocDMapeoCampo1.NumericoNuloACero
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco









[Detalle.ListaEnCaptura]
(Inicio)=eDocDMapeoCampo1.CampoXML
eDocDMapeoCampo1.CampoXML=eDocDMapeoCampo1.CampoVista
eDocDMapeoCampo1.CampoVista=eDocDMapeoCampo1.FormatoOpcional
eDocDMapeoCampo1.FormatoOpcional=eDocDMapeoCampo1.Decimales
eDocDMapeoCampo1.Decimales=eDocDMapeoCampo1.NumericoNuloACero
eDocDMapeoCampo1.NumericoNuloACero=eDocDMapeoCampo1.Traducir
eDocDMapeoCampo1.Traducir=eDocDMapeoCampo1.TablaSt
eDocDMapeoCampo1.TablaSt=eDocDMapeoCampo1.Opcional
eDocDMapeoCampo1.Opcional=eDocDMapeoCampo1.BorrarSiOpcional
eDocDMapeoCampo1.BorrarSiOpcional=eDocDMapeoCampo1.CaracterExtendidoAASCII
eDocDMapeoCampo1.CaracterExtendidoAASCII=eDocDMapeoCampo1.ConvertirPaginaCodigo437
eDocDMapeoCampo1.ConvertirPaginaCodigo437=eDocDMapeoCampo1.ConvertirComillaDobleAASCII
eDocDMapeoCampo1.ConvertirComillaDobleAASCII=(Fin)





[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Nuevo
Nuevo=Sugerir
Sugerir=Ayuda
Ayuda=(Fin)
