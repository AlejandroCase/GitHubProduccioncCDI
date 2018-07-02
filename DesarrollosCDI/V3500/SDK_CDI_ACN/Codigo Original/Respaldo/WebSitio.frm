[Forma]
Clave=WebSitio
Nombre=Sitios Web
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=536
PosicionInicialArriba=413
PosicionInicialAlturaCliente=338
PosicionInicialAncho=848
DialogoAbrir=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
Menus=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraAyuda=S
MenuPrincipal=(Lista)

[Ficha]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=WebSitio
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Ficha.WebSitio.Nombre]
Carpeta=Ficha
Clave=WebSitio.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.WebSitio.Descripcion]
Carpeta=Ficha
Clave=WebSitio.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100x3
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.WebSitio.Estatus]
Carpeta=Ficha
Clave=WebSitio.Estatus
Editar=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=WebSitioA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
IconosSubTitulo=<T>Clave<T>
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FiltroUsuarioDefault=(Todos)
PestanaOtroNombre=S
PestanaNombre=Sitios Web
IconosNombre=WebSitioA:WebSitio.Sitio
ListaEnCaptura=(Lista)

[(Carpeta Abrir).Columnas]
0=136
1=231

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+N

[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=E&liminar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S
EspacioPrevio=S
ActivoCondicion=SQL(<T>SELECT COUNT(*) FROM WebSitioD WHERE Sitio=:tSitio<T>, WebSitio:WebSitio.Sitio)=0

[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Cerrar
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S

[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Ficha.WebSitio.Sitio]
Carpeta=Ficha
Clave=WebSitio.Sitio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.WebSitio.URL_Sitio]
Carpeta=Ficha
Clave=WebSitio.URL_Sitio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Menu]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Menú
Clave=Menu
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=WebSitio
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Menu.WebSitio.MenuPosicion]
Carpeta=Menu
Clave=WebSitio.MenuPosicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Menu.WebSitio.MenuPosicionNivelDetalle]
Carpeta=Menu
Clave=WebSitio.MenuPosicionNivelDetalle
Editar=S
LineaNueva=N
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Encabezado]
Nombre=Encabezado
Boton=35
NombreEnBoton=S
Menu=&Edición
NombreDesplegar=&Encabezado
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S
Expresion=Asigna(WebSitio:WebSitio.EncabezadoHTML, EditorHTML.Directo(<T>Encabezado - <T>+WebSitio:WebSitio.Nombre, WebSitio:WebSitio.EncabezadoHTML))

[Acciones.Pie]
Nombre=Pie
Boton=35
NombreEnBoton=S
Menu=&Edición
NombreDesplegar=&Pie
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Expresion=Asigna(WebSitio:WebSitio.PieHTML, EditorHTML.Directo(<T>Pie - <T>+WebSitio:WebSitio.Nombre, WebSitio:WebSitio.PieHTML))
Activo=S
Visible=S

[Acciones.Contenido]
Nombre=Contenido
Boton=47
NombreEnBoton=S
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F7
NombreDesplegar=&Contenido
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=WebSitioD
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(WebSitio:WebSitio.Sitio)
AntesExpresiones=Asigna(Info.Sitio, WebSitio:WebSitio.Sitio)<BR>Asigna(Info.Nombre, WebSitio:WebSitio.Nombre)<BR>Asigna(Info.Posicion, WebSitio:WebSitio.MenuPosicion)<BR>Asigna(Ver.Posicion, WebSitio:WebSitio.MenuPosicionNivelDetalle)<BR>Asigna(Info.PuedeEditar, WebSitio:WebSitio.Estatus<>EstatusPublicado)

[(Carpeta Abrir).WebSitio.Nombre]
Carpeta=(Carpeta Abrir)
Clave=WebSitio.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[(Carpeta Abrir).WebSitio.Descripcion]
Carpeta=(Carpeta Abrir)
Clave=WebSitio.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Estilo.WebSitio.PaginaInicio]
Carpeta=Estilo
Clave=WebSitio.PaginaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Estilo.WebPagina.Nombre]
Carpeta=Estilo
Clave=WebPagina.Nombre
Editar=S
3D=S
Tamano=50
ColorFondo=Plata
ColorFuente=Negro

[Estilo.WebSitio.Estilo]
Carpeta=Estilo
Clave=WebSitio.Estilo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.WebSitio.Estilo]
Carpeta=Ficha
Clave=WebSitio.Estilo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=46
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S

[Ficha.WebSitio.PaginaInicio]
Carpeta=Ficha
Clave=WebSitio.PaginaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.WebPagina.Nombre]
Carpeta=Ficha
Clave=WebPagina.Nombre
Editar=S
3D=S
Tamano=79
ColorFondo=Plata
ColorFuente=Negro

[Menu.WebSitio.MenuFondoColor]
Carpeta=Menu
Clave=WebSitio.MenuFondoColor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.WebSitio.URL_Documentos]
Carpeta=Ficha
Clave=WebSitio.URL_Documentos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.WebSitio.RutaDocumentos]
Carpeta=Ficha
Clave=WebSitio.RutaDocumentos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Documentos]
Nombre=Documentos
Boton=47
NombreEnBoton=S
Menu=&Edición
NombreDesplegar=&Documentos
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=WebSitioDoc
Activo=S
Visible=S
ConCondicion=S
EjecucionCondicion=ConDatos(WebSitio:WebSitio.Sitio)
Antes=S
AntesExpresiones=Asigna(Info.Sitio, WebSitio:WebSitio.Sitio)<BR>Asigna(Info.Nombre, WebSitio:WebSitio.Nombre)<BR>Asigna(Info.Directorio, WebSitio:WebSitio.RutaDocumentos)<BR>Si(Medio(Info.Directorio, Longitud(Info.Directorio), 1)<><T>\<T>, Asigna(Info.Directorio, Info.Directorio+<T>\<T>))

[Menu.WebSitio.BotonAcceso]
Carpeta=Menu
Clave=WebSitio.BotonAcceso
Editar=S
ValidaNombre=N
3D=S
EspacioPrevio=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S

[Menu.WebSitio.LeyendaAcceso]
Carpeta=Menu
Clave=WebSitio.LeyendaAcceso
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S

[Menu.WebSitio.VerExplorador]
Carpeta=Menu
Clave=WebSitio.VerExplorador
Editar=S
LineaNueva=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Menu.WebSitio.VerCalendario]
Carpeta=Menu
Clave=WebSitio.VerCalendario
Editar=S
LineaNueva=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[Menu.WebSitio.PaginaCalendario]
Carpeta=Menu
Clave=WebSitio.PaginaCalendario
Editar=S
ValidaNombre=N
3D=S
Pegado=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Menu
Menu=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=Eliminar
Eliminar=Cerrar
Cerrar=Encabezado
Encabezado=Pie
Pie=Contenido
Contenido=Documentos
Documentos=Navegador
Navegador=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=WebSitio.Sitio
WebSitio.Sitio=WebSitio.Estilo
WebSitio.Estilo=WebSitio.Estatus
WebSitio.Estatus=WebSitio.Nombre
WebSitio.Nombre=WebSitio.Descripcion
WebSitio.Descripcion=WebSitio.PaginaInicio
WebSitio.PaginaInicio=WebPagina.Nombre
WebPagina.Nombre=WebSitio.URL_Sitio
WebSitio.URL_Sitio=WebSitio.URL_Documentos
WebSitio.URL_Documentos=WebSitio.RutaDocumentos
WebSitio.RutaDocumentos=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=PUBLICADO
PUBLICADO=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=WebSitio.Nombre
WebSitio.Nombre=WebSitio.Descripcion
WebSitio.Descripcion=(Fin)

[Menu.ListaEnCaptura]
(Inicio)=WebSitio.MenuPosicion
WebSitio.MenuPosicion=WebSitio.MenuPosicionNivelDetalle
WebSitio.MenuPosicionNivelDetalle=WebSitio.MenuFondoColor
WebSitio.MenuFondoColor=WebSitio.BotonAcceso
WebSitio.BotonAcceso=WebSitio.LeyendaAcceso
WebSitio.LeyendaAcceso=WebSitio.VerExplorador
WebSitio.VerExplorador=WebSitio.VerCalendario
WebSitio.VerCalendario=WebSitio.PaginaCalendario
WebSitio.PaginaCalendario=(Fin)
