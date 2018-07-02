
[Forma]
Clave=CDIMensajeCom
Icono=0
CarpetaPrincipal=CDIMensajeCom
Modulos=(Todos)
MovModulo=CDIMensajeCom
Nombre=Enviar Correo

ListaCarpetas=CDIMensajeCom
PosicionInicialIzquierda=277
PosicionInicialArriba=156
PosicionInicialAlturaCliente=417
PosicionInicialAncho=811
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
ListaAcciones=(Lista)
DialogoAbrir=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
[CDIMensajeCom]
Estilo=Ficha
Clave=CDIMensajeCom
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMensajeCom
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

[CDIMensajeCom.CDIMensajeCom.Consecutivo]
Carpeta=CDIMensajeCom
Clave=CDIMensajeCom.Consecutivo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=5
[CDIMensajeCom.CDIMensajeCom.Saludo]
Carpeta=CDIMensajeCom
Clave=CDIMensajeCom.Saludo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=40x3
[CDIMensajeCom.CDIMensajeCom.Cuerpo]
Carpeta=CDIMensajeCom
Clave=CDIMensajeCom.Cuerpo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=40x3
[CDIMensajeCom.CDIMensajeCom.Despedida]
Carpeta=CDIMensajeCom
Clave=CDIMensajeCom.Despedida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=40x3



[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=&Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S

EspacioPrevio=S
[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=&Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S



EspacioPrevio=S






[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



















[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDIMensajeCom
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=Consecutivo
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S


IconosNombre=CDIMensajeCom:CDIMensajeCom.Consecutivo
[(Carpeta Abrir).Columnas]
0=-2
1=-2






2=-2
[Acciones.Parametros]
Nombre=Parametros
Boton=25
NombreEnBoton=S
NombreDesplegar=&Parametros
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDISemE
Activo=S
Visible=S







































[CDIMensajeCom.CDIMensajeCom.Descripcion]
Carpeta=CDIMensajeCom
Clave=CDIMensajeCom.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco




[(Carpeta Abrir).CDIMensajeCom.Descripcion]
Carpeta=(Carpeta Abrir)
Clave=CDIMensajeCom.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[Acciones.Enviar]
Nombre=Enviar
Boton=81
NombreDesplegar=&Enviar
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S

















GuardarAntes=S
EspacioPrevio=S



NombreEnBoton=S
Expresion=EjecutarSQL( <T>exec CDIEnvioComunicados :nid<T>,CDIMensajeCom:CDIMensajeCom.Id )
ActivoCondicion=CDIMensajeCom:CDIMensajeCom.Estatus<><T>CONCLUIDO<T>
[Acciones.Plantilla]
Nombre=Plantilla
Boton=56
NombreDesplegar=&Plantilla
EnBarraHerramientas=S
TipoAccion=Controles Captura
Visible=S

NombreEnBoton=S




EspacioPrevio=S








ClaveAccion=Actualizar Vista
Antes=S
DespuesGuardar=S




GuardarAntes=S







ActivoCondicion=CDIMensajeCom:CDIMensajeCom.Estatus<><T>CONCLUIDO<T>
AntesExpresiones=EjecutarSQL( <T>CDIPlantillasEmail :nid<T>,CDIMensajeCom:CDIMensajeCom.Id )
[CDIMensajeCom.ListaEnCaptura]
(Inicio)=CDIMensajeCom.Consecutivo
CDIMensajeCom.Consecutivo=CDIMensajeCom.Descripcion
CDIMensajeCom.Descripcion=CDIMensajeCom.Saludo
CDIMensajeCom.Saludo=CDIMensajeCom.Cuerpo
CDIMensajeCom.Cuerpo=CDIMensajeCom.Despedida
CDIMensajeCom.Despedida=CDIMensajeCom.Estatus
CDIMensajeCom.Estatus=(Fin)

[CDIMensajeCom.CDIMensajeCom.Estatus]
Carpeta=CDIMensajeCom
Clave=CDIMensajeCom.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


























































[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIMensajeCom.Descripcion
CDIMensajeCom.Descripcion=CDIMensajeCom.Estatus
CDIMensajeCom.Estatus=(Fin)

[(Carpeta Abrir).CDIMensajeCom.Estatus]
Carpeta=(Carpeta Abrir)
Clave=CDIMensajeCom.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



























[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Enviar
Enviar=Parametros
Parametros=Plantilla
Plantilla=(Fin)
