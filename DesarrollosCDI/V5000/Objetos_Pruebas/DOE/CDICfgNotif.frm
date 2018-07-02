
[Forma]
Clave=CDICfgNotif
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Configuración notificaciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICfgNotif
CarpetaPrincipal=CDICfgNotif
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
DialogoAbrir=S
PosicionInicialIzquierda=433
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
[CDICfgNotif]
Estilo=Ficha
Clave=CDICfgNotif
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICfgNotif
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

[CDICfgNotif.CDICfgNotif.Modulo]
Carpeta=CDICfgNotif
Clave=CDICfgNotif.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICfgNotif.CDICfgNotif.Movimiento]
Carpeta=CDICfgNotif
Clave=CDICfgNotif.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICfgNotif.CDICfgNotif.CampoAEvaluar]
Carpeta=CDICfgNotif
Clave=CDICfgNotif.CampoAEvaluar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICfgNotif.CDICfgNotif.Valor]
Carpeta=CDICfgNotif
Clave=CDICfgNotif.Valor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICfgNotif.CDICfgNotif.IDCorreoEnviar]
Carpeta=CDICfgNotif
Clave=CDICfgNotif.IDCorreoEnviar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S

[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S


[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S


[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDICfgNotif
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=Modulo
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Configuración Notificaciones
IconosNombre=CDICfgNotif:CDICfgNotif.Modulo

[(Carpeta Abrir).CDICfgNotif.Movimiento]
Carpeta=(Carpeta Abrir)
Clave=CDICfgNotif.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir).CDICfgNotif.CampoAEvaluar]
Carpeta=(Carpeta Abrir)
Clave=CDICfgNotif.CampoAEvaluar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir).CDICfgNotif.Valor]
Carpeta=(Carpeta Abrir)
Clave=CDICfgNotif.Valor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDICfgNotif.IDCorreoEnviar]
Carpeta=(Carpeta Abrir)
Clave=CDICfgNotif.IDCorreoEnviar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[(Carpeta Abrir).Columnas]
0=-2
1=125
2=-2
3=180
4=-2




[CDICorreoLista.Columnas]
IdCorreo=64
Modulo=76
Titulo=297
Descripcion=396






















[CDICfgNotif.ListaEnCaptura]
(Inicio)=CDICfgNotif.Modulo
CDICfgNotif.Modulo=CDICfgNotif.Movimiento
CDICfgNotif.Movimiento=CDICfgNotif.EstatusMov
CDICfgNotif.EstatusMov=CDICfgNotif.CampoAEvaluar
CDICfgNotif.CampoAEvaluar=CDICfgNotif.Valor
CDICfgNotif.Valor=CDICfgNotif.IDCorreoEnviar
CDICfgNotif.IDCorreoEnviar=(Fin)

[CDICfgNotif.CDICfgNotif.EstatusMov]
Carpeta=CDICfgNotif
Clave=CDICfgNotif.EstatusMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco












































































































































[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDICfgNotif.Movimiento
CDICfgNotif.Movimiento=CDICfgNotif.CampoAEvaluar
CDICfgNotif.CampoAEvaluar=CDICfgNotif.Valor
CDICfgNotif.Valor=CDICfgNotif.IDCorreoEnviar
CDICfgNotif.IDCorreoEnviar=(Fin)





[Forma.ListaAcciones]
(Inicio)=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=(Fin)
