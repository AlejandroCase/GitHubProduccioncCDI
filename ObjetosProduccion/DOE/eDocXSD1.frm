
[Forma]
Clave=eDocXSD1
Icono=389
Modulos=(Todos)
Nombre=Lista XSD<T>s

ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Modulo)
PosicionInicialAlturaCliente=488
PosicionInicialAncho=723
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=446
PosicionInicialArriba=174
PosicionCol1=214
[Lista]
Estilo=Iconos
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=eDocXSD1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General

ListaEnCaptura=eDocXSD1.Clave
IconosCampo=Estatus
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
FiltroGeneral=eDocXSD1.Modulo = {Comillas(Info.Modulo)}

[Lista.Columnas]
Clave=304

Estatus=94
0=192
1=62
[Acciones.XSD]
Nombre=XSD
Boton=125
NombreDesplegar=&XSD
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Antes=S
Visible=S



GuardarAntes=S













NombreEnBoton=S
Expresion=FormaModal(<T>eDocXSDDocumento1<T>)<BR>ActualizarForma
AntesExpresiones=Asigna(Info.Clave,eDocXSD1:eDocXSD1.Clave)
[Lista.eDocXSD1.Clave]
Carpeta=Lista
Clave=eDocXSD1.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco






[Lista.ListaEnCaptura]
(Inicio)=eDocXSD1.Clave
eDocXSD1.Clave=Estatus
Estatus=(Fin)
















[Detalle]
Estilo=Ficha
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=eDocXSD1
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
ListaEnCaptura=eDocXSD1.Clave
CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=eDocXSD1.Modulo = {Comillas(Info.Modulo)}
[Detalle.eDocXSD1.Clave]
Carpeta=Detalle
Clave=eDocXSD1.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



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













NombreEnBoton=S
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S



EspacioPrevio=S
NombreEnBoton=S
Expresion=GuardarCambios<BR>ActualizarForma
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S







NombreEnBoton=S


















[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S





NombreEnBoton=S
EspacioPrevio=S
























































[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=Nuevo
Nuevo=Eliminar
Eliminar=XSD
XSD=(Fin)
