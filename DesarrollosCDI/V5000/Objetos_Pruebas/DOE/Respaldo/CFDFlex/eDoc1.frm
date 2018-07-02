
[Forma]
Clave=eDoc1
Icono=0
Modulos=(Todos)
Nombre=Documento Electrónico

ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Comentarios=Lista(Info.Modulo,Info.Descripcion)
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=414
PosicionInicialArriba=185
PosicionInicialAlturaCliente=465
PosicionInicialAncho=787
PosicionCol1=260
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=eDoc1
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
ListaEnCaptura=eDoc1.eDoc

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

HojaMantenerSeleccion=S
FiltroGeneral=eDoc1.Modulo = {Comillas(Info.Modulo)}
[Lista.eDoc1.eDoc]
Carpeta=Lista
Clave=eDoc1.eDoc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

GuardarAntes=S
[Lista.ListaEnCaptura]
(Inicio)=eDoc1.eDoc
eDoc1.eDoc=eDoc1.TipoXML
eDoc1.TipoXML=eDoc1.XSD
eDoc1.XSD=(Fin)

[Lista.Columnas]
eDoc=226
TipoXML=121

[Detalle]
Estilo=Ficha
Clave=Detalle
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=eDoc1
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

FiltroGeneral=eDoc1.Modulo = {Comillas(Info.Modulo)}
[Detalle.eDoc1.eDoc]
Carpeta=Detalle
Clave=eDoc1.eDoc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=43
ColorFondo=Blanco

[Detalle.eDoc1.TipoXML]
Carpeta=Detalle
Clave=eDoc1.TipoXML
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10
[Detalle.eDoc1.XSD]
Carpeta=Detalle
Clave=eDoc1.XSD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco












[Acciones.Documento]
Nombre=Documento
Boton=124
NombreDesplegar=&Plantilla
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=eDocDocumento1
Activo=S
Visible=S





EspacioPrevio=S








GuardarAntes=S






ConCondicion=S
Antes=S
EjecucionCondicion=No Vacio(eDoc1:eDoc1.eDoc)
AntesExpresiones=Asigna(Info.Descripcion,eDoc1:eDoc1.eDoc)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S



























































NombreEnBoton=S
[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S







[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S





GuardarAntes=S












ConfirmarAntes=S
DialogoMensaje=EstaSeguro




















Expresion=Informacion(SQL(<T>EXEC speDocEliminar :nEstacion, :tModulo, :teDoc<T>,EstacionTrabajo, eDoc1:eDoc1.Modulo, eDoc1:eDoc1.eDoc))<BR>ActualizarForma
[Acciones.Detalle]
Nombre=Detalle
Boton=47
NombreDesplegar=&Detalle
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=eDocD1
Activo=S
ConCondicion=S
Antes=S
Visible=S

































EjecucionCondicion=No Vacio(eDoc1:eDoc1.eDoc)
AntesExpresiones=Asigna(Info.Descripcion,eDoc1:eDoc1.eDoc)
[Acciones.Copiar]
Nombre=Copiar
Boton=65
NombreDesplegar=&Copiar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S

















































































































































Antes=S

















Expresion=Si Forma(<T>eDocCopiar1<T>) Entonces<BR>  Informacion(SQL(<T>EXEC speDocCopiar :nEstacion, :tOModulo, :tOeDoc, :tDModulo, :tDeDoc<T>,EstacionTrabajo, eDoc1:eDoc1.Modulo, eDoc1:eDoc1.eDoc, Temp.Modulo, Info.eDoc))       <BR>  ActualizarForma<BR>Fin
AntesExpresiones=Asigna(Info.Descripcion,eDoc1:eDoc1.eDoc)
[Detalle.eDoc1.TipoCFD]
Carpeta=Detalle
Clave=eDoc1.TipoCFD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










Tamano=10
[Detalle.eDoc1.DecimalesPorOmision]
Carpeta=Detalle
Clave=eDoc1.DecimalesPorOmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



Tamano=15









[Detalle.eDoc1.TipoCFDI]
Carpeta=Detalle
Clave=eDoc1.TipoCFDI
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco




[Detalle.eDoc1.TimbrarEnTransaccion]
Carpeta=Detalle
Clave=eDoc1.TimbrarEnTransaccion
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco












[Detalle.eDoc1.CaracterExtendidoAASCII]
Carpeta=Detalle
Clave=eDoc1.CaracterExtendidoAASCII
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Detalle.eDoc1.ConvertirPaginaCodigo437]
Carpeta=Detalle
Clave=eDoc1.ConvertirPaginaCodigo437
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Detalle.eDoc1.ConvertirComillaDobleAASCII]
Carpeta=Detalle
Clave=eDoc1.ConvertirComillaDobleAASCII
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Detalle.eDoc1.Sellar]
Carpeta=Detalle
Clave=eDoc1.Sellar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


















[Detalle.ListaEnCaptura]
(Inicio)=eDoc1.eDoc
eDoc1.eDoc=eDoc1.TipoXML
eDoc1.TipoXML=eDoc1.XSD
eDoc1.XSD=eDoc1.TipoCFD
eDoc1.TipoCFD=eDoc1.TipoCFDI
eDoc1.TipoCFDI=eDoc1.TimbrarEnTransaccion
eDoc1.TimbrarEnTransaccion=eDoc1.DecimalesPorOmision
eDoc1.DecimalesPorOmision=eDoc1.CaracterExtendidoAASCII
eDoc1.CaracterExtendidoAASCII=eDoc1.ConvertirPaginaCodigo437
eDoc1.ConvertirPaginaCodigo437=eDoc1.ConvertirComillaDobleAASCII
eDoc1.ConvertirComillaDobleAASCII=eDoc1.Sellar
eDoc1.Sellar=(Fin)





















[Orden.Columnas]
0=-2
1=538

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=Nuevo
Nuevo=Eliminar
Eliminar=Documento
Documento=Detalle
Detalle=Copiar
Copiar=(Fin)
