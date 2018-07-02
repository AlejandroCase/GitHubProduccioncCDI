
[Forma]
Clave=CDIMensajeCoordinacion
Icono=0
CarpetaPrincipal=CDIMensajeCoordinacion
Modulos=(Todos)
MovModulo=CDIMensajeCoordinacion
Nombre=Enviar Correo

ListaCarpetas=(Lista)
PosicionInicialIzquierda=1623
PosicionInicialArriba=160
PosicionInicialAlturaCliente=360
PosicionInicialAncho=941
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
ListaAcciones=(Lista)
DialogoAbrir=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
ExpresionesAlMostrar=asigna(info.usuario,usuario)
PosicionCol1=404
[CDIMensajeCoordinacion]
Estilo=Ficha
Clave=CDIMensajeCoordinacion
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIMensajeCoordinacion
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

Pestana=S
PestanaOtroNombre=S
PestanaNombre=Mensaje
[CDIMensajeCoordinacion.CDIMensajeCoordinacion.Consecutivo]
Carpeta=CDIMensajeCoordinacion
Clave=CDIMensajeCoordinacion.Consecutivo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=5
[CDIMensajeCoordinacion.CDIMensajeCoordinacion.Saludo]
Carpeta=CDIMensajeCoordinacion
Clave=CDIMensajeCoordinacion.Saludo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=40x3
[CDIMensajeCoordinacion.CDIMensajeCoordinacion.Cuerpo]
Carpeta=CDIMensajeCoordinacion
Clave=CDIMensajeCoordinacion.Cuerpo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=40x3
[CDIMensajeCoordinacion.CDIMensajeCoordinacion.Despedida]
Carpeta=CDIMensajeCoordinacion
Clave=CDIMensajeCoordinacion.Despedida
Editar=N
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


GuardarAntes=S
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
Vista=CDIMensajeCoordinacion
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


BusquedaRapidaControles=S
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=SINAFECTAR
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
BusquedaRapida=S
BusquedaEnLinea=S
IconosNombre=CDIMensajeCoordinacion:CDIMensajeCoordinacion.Consecutivo
[(Carpeta Abrir).Columnas]
0=-2
1=135






2=414
3=-2
[Acciones.Parametros]
Nombre=Parametros
Boton=25
NombreEnBoton=S
NombreDesplegar=&Parametros
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDISemanaCoordina







































Antes=S
Visible=S
GuardarAntes=S
ActivoCondicion=CDIMensajeCoordinacion:CDIMensajeCoordinacion.Estatus=<T>SINAFECTAR<T>
AntesExpresiones=GuardarCambios<BR>ASIGNA(INFO.ID,CDIMensajeCoordinacion:CDIMensajeCoordinacion.Id)
[CDIMensajeCoordinacion.CDIMensajeCoordinacion.Descripcion]
Carpeta=CDIMensajeCoordinacion
Clave=CDIMensajeCoordinacion.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco




[(Carpeta Abrir).CDIMensajeCoordinacion.Descripcion]
Carpeta=(Carpeta Abrir)
Clave=CDIMensajeCoordinacion.Descripcion
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

Multiple=S
ListaAccionesMultiples=(Lista)
ActivoCondicion=CDIMensajeCoordinacion:CDIMensajeCoordinacion.Estatus=<T>SINAFECTAR<T>
[CDIMensajeCoordinacion.CDIMensajeCoordinacion.Estatus]
Carpeta=CDIMensajeCoordinacion
Clave=CDIMensajeCoordinacion.Estatus
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



























































[(Carpeta Abrir).CDIMensajeCoordinacion.Estatus]
Carpeta=(Carpeta Abrir)
Clave=CDIMensajeCoordinacion.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


































































































[Acciones.Saludos]
Nombre=Saludos
Boton=69
NombreDesplegar=&Saludos
EnBarraHerramientas=S
TipoAccion=expresion
Visible=S





NombreEnBoton=S








EspacioPrevio=S
GuardarAntes=S
Expresion=EditorHTML( CDIMensajeCoordinacion:CDIMensajeCoordinacion.Saludo,Saludo)
ActivoCondicion=CDIMensajeCoordinacion:CDIMensajeCoordinacion.Estatus=<T>SINAFECTAR<T>
[Acciones.Cuerpo]
Nombre=Cuerpo
Boton=69
NombreDesplegar=&Cuerpo
EnBarraHerramientas=S
TipoAccion=expresion
Visible=S

NombreEnBoton=S
EspacioPrevio=S



GuardarAntes=S
Expresion=EditorHTML( CDIMensajeCoordinacion:CDIMensajeCoordinacion.Cuerpo,Cuerpo)
ActivoCondicion=CDIMensajeCoordinacion:CDIMensajeCoordinacion.Estatus=<T>SINAFECTAR<T>
[Acciones.Despedida]
Nombre=Despedida
Boton=69
NombreDesplegar=&Despedida
EnBarraHerramientas=S
TipoAccion=expresion
Visible=S







NombreEnBoton=S
EspacioPrevio=S











GuardarAntes=S
Expresion=EditorHTML( CDIMensajeCoordinacion:CDIMensajeCoordinacion.Despedida,Despedida)
ActivoCondicion=CDIMensajeCoordinacion:CDIMensajeCoordinacion.Estatus=<T>SINAFECTAR<T>
[Acciones.VistaPrevia]
Nombre=VistaPrevia
Boton=73
NombreDesplegar=&Vista Previa
EnBarraHerramientas=S
TipoAccion=expresion
Activo=S
Visible=S



NombreEnBoton=S

































































































































































































EspacioPrevio=S



Antes=S
GuardarAntes=S
Expresion=BrowserMensajeHTML(SQLEnLista(<T>EXEC CDIVistaPreviaWeb :nID<T>,CDIMensajeCoordinacion:CDIMensajeCoordinacion.Id),CDIMensajeCoordinacion:CDIMensajeCoordinacion.Descripcion)
AntesExpresiones=GuardarCambios

[Acciones.Enviar.EnviE]
Nombre=EnviE
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=EjecutarSQL( <T>exec CDIComunicadosCoordinaciones :nId<T>,CDIMensajeCoordinacion:CDIMensajeCoordinacion.Id)<BR>asigna(Info.Campo,CDIMensajeCoordinacion:CDIMensajeCoordinacion.Consecutivo)
[Acciones.Enviar.ActuaEn]
Nombre=ActuaEn
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S


[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIMensajeCoordinacion.Descripcion
CDIMensajeCoordinacion.Descripcion=CDIMensajeCoordinacion.Estatus
CDIMensajeCoordinacion.Estatus=CDIMensajeCoordinacion.Usuario
CDIMensajeCoordinacion.Usuario=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=CONCLUIDO
CONCLUIDO=(Fin)

[(Carpeta Abrir).CDIMensajeCoordinacion.Usuario]
Carpeta=(Carpeta Abrir)
Clave=CDIMensajeCoordinacion.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




































[Acciones.Parametros.guarda]
Nombre=guarda
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Parametros.Fecha]
Nombre=Fecha
Boton=0
TipoAccion=formas
ClaveAccion=CDISemanaCoordina
Activo=S
Visible=S

[Acciones.Parametros.ListaAccionesMultiples]
(Inicio)=guarda
guarda=Fecha
Fecha=(Fin)

































































[Acciones.Eliminar]
Nombre=Eliminar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S











ActivoCondicion=CDIMensajeCoordinacion:CDIMensajeCoordinacion.Estatus=<T>SINAFECTAR<T>









[CDIEnviaviadosComunicadosGral]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Enviados
Clave=CDIEnviaviadosComunicadosGral
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEnviaviadosComunicadosGral
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)


Detalle=S
VistaMaestra=CDIMensajeCoordinacion
LlaveLocal=CDIEnviaviadosComunicadosGral.Comunicado
LlaveMaestra=CDIMensajeCoordinacion.Consecutivo
CondicionVisible=CDIMensajeCoordinacion:CDIMensajeCoordinacion.Estatus=<T>CONCLUIDO<T>
[CDIEnviaviadosComunicadosGral.CDIEnviaviadosComunicadosGral.Socio]
Carpeta=CDIEnviaviadosComunicadosGral
Clave=CDIEnviaviadosComunicadosGral.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIEnviaviadosComunicadosGral.CDIEnviaviadosComunicadosGral.Email]
Carpeta=CDIEnviaviadosComunicadosGral
Clave=CDIEnviaviadosComunicadosGral.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIEnviaviadosComunicadosGral.CDIEnviaviadosComunicadosGral.Emailtitular]
Carpeta=CDIEnviaviadosComunicadosGral
Clave=CDIEnviaviadosComunicadosGral.Emailtitular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIEnviaviadosComunicadosGral.CDIEnviaviadosComunicadosGral.EmailConyuge]
Carpeta=CDIEnviaviadosComunicadosGral
Clave=CDIEnviaviadosComunicadosGral.EmailConyuge
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIEnviaviadosComunicadosGral.CDIEnviaviadosComunicadosGral.emailEnviado]
Carpeta=CDIEnviaviadosComunicadosGral
Clave=CDIEnviaviadosComunicadosGral.emailEnviado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIEnviaviadosComunicadosGral.CDIEnviaviadosComunicadosGral.Comunicado]
Carpeta=CDIEnviaviadosComunicadosGral
Clave=CDIEnviaviadosComunicadosGral.Comunicado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco




[CDIEnviaviadosComunicadosGral.Columnas]
Socio=64
Email=172
Emailtitular=158
EmailConyuge=150
emailEnviado=147
Comunicado=62













[CDIMensajeCoordinacion.ListaEnCaptura]
(Inicio)=CDIMensajeCoordinacion.Consecutivo
CDIMensajeCoordinacion.Consecutivo=CDIMensajeCoordinacion.Descripcion
CDIMensajeCoordinacion.Descripcion=CDIMensajeCoordinacion.Saludo
CDIMensajeCoordinacion.Saludo=CDIMensajeCoordinacion.Cuerpo
CDIMensajeCoordinacion.Cuerpo=CDIMensajeCoordinacion.Despedida
CDIMensajeCoordinacion.Despedida=CDIMensajeCoordinacion.Estatus
CDIMensajeCoordinacion.Estatus=(Fin)




[Acciones.Enviar.ListaAccionesMultiples]
(Inicio)=EnviE
EnviE=ActuaEn
ActuaEn=(Fin)







[CDINoEnviaviadosComunicadosGral]
Estilo=Hoja
Pestana=S
Clave=CDINoEnviaviadosComunicadosGral
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDINoEnviaviadosComunicadosGral
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIMensajeCoordinacion
LlaveLocal=CDINoEnviaviadosComunicadosGral.Comunicado
LlaveMaestra=CDIMensajeCoordinacion.Consecutivo
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)


PestanaOtroNombre=S
PestanaNombre=No Enviados
CondicionVisible=CDIMensajeCoordinacion:CDIMensajeCoordinacion.Estatus=<T>CONCLUIDO<T>
[CDINoEnviaviadosComunicadosGral.CDINoEnviaviadosComunicadosGral.Socio]
Carpeta=CDINoEnviaviadosComunicadosGral
Clave=CDINoEnviaviadosComunicadosGral.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDINoEnviaviadosComunicadosGral.CDINoEnviaviadosComunicadosGral.Email]
Carpeta=CDINoEnviaviadosComunicadosGral
Clave=CDINoEnviaviadosComunicadosGral.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDINoEnviaviadosComunicadosGral.CDINoEnviaviadosComunicadosGral.Emailtitular]
Carpeta=CDINoEnviaviadosComunicadosGral
Clave=CDINoEnviaviadosComunicadosGral.Emailtitular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDINoEnviaviadosComunicadosGral.CDINoEnviaviadosComunicadosGral.EmailConyuge]
Carpeta=CDINoEnviaviadosComunicadosGral
Clave=CDINoEnviaviadosComunicadosGral.EmailConyuge
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDINoEnviaviadosComunicadosGral.CDINoEnviaviadosComunicadosGral.Comunicado]
Carpeta=CDINoEnviaviadosComunicadosGral
Clave=CDINoEnviaviadosComunicadosGral.Comunicado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco






[CDINoEnviaviadosComunicadosGral.Columnas]
Socio=64
Email=161
Emailtitular=156
EmailConyuge=156
Comunicado=62

[CDINoEnviaviadosComunicadosGral.ListaEnCaptura]
(Inicio)=CDINoEnviaviadosComunicadosGral.Socio
CDINoEnviaviadosComunicadosGral.Socio=CDINoEnviaviadosComunicadosGral.Email
CDINoEnviaviadosComunicadosGral.Email=CDINoEnviaviadosComunicadosGral.Emailtitular
CDINoEnviaviadosComunicadosGral.Emailtitular=CDINoEnviaviadosComunicadosGral.EmailConyuge
CDINoEnviaviadosComunicadosGral.EmailConyuge=CDINoEnviaviadosComunicadosGral.Comunicado
CDINoEnviaviadosComunicadosGral.Comunicado=(Fin)

[CDIEnviaviadosComunicadosGral.ListaEnCaptura]
(Inicio)=CDIEnviaviadosComunicadosGral.Socio
CDIEnviaviadosComunicadosGral.Socio=CDIEnviaviadosComunicadosGral.Email
CDIEnviaviadosComunicadosGral.Email=CDIEnviaviadosComunicadosGral.Emailtitular
CDIEnviaviadosComunicadosGral.Emailtitular=CDIEnviaviadosComunicadosGral.EmailConyuge
CDIEnviaviadosComunicadosGral.EmailConyuge=CDIEnviaviadosComunicadosGral.emailEnviado
CDIEnviaviadosComunicadosGral.emailEnviado=CDIEnviaviadosComunicadosGral.Comunicado
CDIEnviaviadosComunicadosGral.Comunicado=(Fin)





[Acciones.Navega]
Nombre=Navega
Boton=0
NombreDesplegar=&Navega
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S























[Forma.ListaCarpetas]
(Inicio)=CDIMensajeCoordinacion
CDIMensajeCoordinacion=CDIEnviaviadosComunicadosGral
CDIEnviaviadosComunicadosGral=CDINoEnviaviadosComunicadosGral
CDINoEnviaviadosComunicadosGral=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Enviar
Enviar=Parametros
Parametros=Saludos
Saludos=Cuerpo
Cuerpo=Despedida
Despedida=VistaPrevia
VistaPrevia=Eliminar
Eliminar=Navega
Navega=(Fin)
