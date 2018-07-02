[Forma]
Clave=CteCFDFlexible1
Nombre=Datos CFD del Cliente
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=489
PosicionInicialArriba=260
PosicionInicialAlturaCliente=310
PosicionInicialAncho=619
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Cliente)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado

[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteCFDFlexible1
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
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales

FiltroGeneral=CteCFDFlexible1.Cliente=<T>{Info.Cliente}<T>
[Ficha.CteCFDFlexible1.ReceptorID]
Carpeta=Ficha
Clave=CteCFDFlexible1.ReceptorID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFDFlexible1.Cta]
Carpeta=Ficha
Clave=CteCFDFlexible1.Cta
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFDFlexible1.TipoAddenda]
Carpeta=Ficha
Clave=CteCFDFlexible1.TipoAddenda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFDFlexible1.Version]
Carpeta=Ficha
Clave=CteCFDFlexible1.Version
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=25

[Ficha.CteCFDFlexible1.VersionFecha]
Carpeta=Ficha
Clave=CteCFDFlexible1.VersionFecha
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFDFlexible1.VersionAnterior]
Carpeta=Ficha
Clave=CteCFDFlexible1.VersionAnterior
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=25

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

[Ficha.CteCFDFlexible1.Validar]
Carpeta=Ficha
Clave=CteCFDFlexible1.Validar
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco
Tamano=14

[Ficha.CteCFDFlexible1.Almacenar]
Carpeta=Ficha
Clave=CteCFDFlexible1.Almacenar
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
Tamano=14

[Ficha.CteCFDFlexible1.Enviar]
Carpeta=Ficha
Clave=CteCFDFlexible1.Enviar
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
Tamano=14

[Validar]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Validar
Clave=Validar
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteCFDFlexible1
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
ListaEnCaptura=CteCFDFlexible1.ValidarSchema

CondicionVisible=CteCFDFlexible1:CteCFDFlexible1.Validar  y Empresa.CFD
[Validar.CteCFDFlexible1.ValidarSchema]
Carpeta=Validar
Clave=CteCFDFlexible1.ValidarSchema
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco

[Almacenar]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Almacenar
Clave=Almacenar
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteCFDFlexible1
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

CondicionVisible=CteCFDFlexible1:CteCFDFlexible1.Almacenar
[Almacenar.CteCFDFlexible1.AlmacenarXML]
Carpeta=Almacenar
Clave=CteCFDFlexible1.AlmacenarXML
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco

[Almacenar.CteCFDFlexible1.AlmacenarPDF]
Carpeta=Almacenar
Clave=CteCFDFlexible1.AlmacenarPDF
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco

[Almacenar.CteCFDFlexible1.AlmacenarRuta]
Carpeta=Almacenar
Clave=CteCFDFlexible1.AlmacenarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
EspacioPrevio=N

[Enviar]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Enviar
Clave=Enviar
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteCFDFlexible1
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

CondicionVisible=CteCFDFlexible1:CteCFDFlexible1.Enviar
[Enviar.CteCFDFlexible1.EnviarXML]
Carpeta=Enviar
Clave=CteCFDFlexible1.EnviarXML
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco

[Enviar.CteCFDFlexible1.EnviarPDF]
Carpeta=Enviar
Clave=CteCFDFlexible1.EnviarPDF
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco

[Enviar.CteCFDFlexible1.EnviarMedio]
Carpeta=Enviar
Clave=CteCFDFlexible1.EnviarMedio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
EspacioPrevio=S

[Ficha.CteCFDFlexible1.ValidarTipo]
Carpeta=Ficha
Clave=CteCFDFlexible1.ValidarTipo
Editar=S
LineaNueva=N
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFDFlexible1.AlmacenarTipo]
Carpeta=Ficha
Clave=CteCFDFlexible1.AlmacenarTipo
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFDFlexible1.EnviarTipo]
Carpeta=Ficha
Clave=CteCFDFlexible1.EnviarTipo
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Almacenar.CteCFDFlexible1.Nombre]
Carpeta=Almacenar
Clave=CteCFDFlexible1.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=50
ColorFondo=Blanco

[FTP]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=FTP
Clave=FTP
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteCFDFlexible1
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

CondicionVisible=CteCFDFlexible1:CteCFDFlexible1.Enviar y (CteCFDFlexible1:CteCFDFlexible1.EnviarMedio=<T>FTP<T>)  y Empresa.CFD
[FTP.CteCFDFlexible1.EnviarDireccion]
Carpeta=FTP
Clave=CteCFDFlexible1.EnviarDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[FTP.CteCFDFlexible1.EnviarRuta]
Carpeta=FTP
Clave=CteCFDFlexible1.EnviarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[FTP.CteCFDFlexible1.EnviarUsuario]
Carpeta=FTP
Clave=CteCFDFlexible1.EnviarUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FTP.CteCFDFlexible1.EnviarContrasena]
Carpeta=FTP
Clave=CteCFDFlexible1.EnviarContrasena
Editar=S
ValidaNombre=S
3D=S
Tamano=29
ColorFondo=Blanco

[SMTP]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=SMTP
Clave=SMTP
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteCFDFlexible1
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

CondicionVisible=CteCFDFlexible1:CteCFDFlexible1.Enviar y (CteCFDFlexible1:CteCFDFlexible1.EnviarMedio=<T>SMTP<T>) y Empresa.CFD
[SMTP.CteCFDFlexible1.EnviarDireccion]
Carpeta=SMTP
Clave=CteCFDFlexible1.EnviarDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[SMTP.CteCFDFlexible1.EnviarDe]
Carpeta=SMTP
Clave=CteCFDFlexible1.EnviarDe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[SMTP.CteCFDFlexible1.EnviarAsunto]
Carpeta=SMTP
Clave=CteCFDFlexible1.EnviarAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[SMTP.CteCFDFlexible1.EnviarMensaje]
Carpeta=SMTP
Clave=CteCFDFlexible1.EnviarMensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60x3
ColorFondo=Blanco

[SQLMail]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=SQL Mail
Clave=SQLMail
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteCFDFlexible1
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

CondicionVisible=CteCFDFlexible1:CteCFDFlexible1.Enviar y ((CteCFDFlexible1:CteCFDFlexible1.EnviarMedio=<T>SQL Mail<T>) o (General.CFDFlex))
[SQLMail.CteCFDFlexible1.EnviarAsunto]
Carpeta=SQLMail
Clave=CteCFDFlexible1.EnviarAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[SQLMail.CteCFDFlexible1.EnviarMensaje]
Carpeta=SQLMail
Clave=CteCFDFlexible1.EnviarMensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60x3
ColorFondo=Blanco

[Acciones.DatosEmpresa]
Nombre=DatosEmpresa
Boton=47
NombreEnBoton=S
NombreDesplegar=Datos Nivel &Empresa
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteEmpresaCFD
Activo=S
Visible=S

[SMTP.CteCFDFlexible1.EnviarUsuario]
Carpeta=SMTP
Clave=CteCFDFlexible1.EnviarUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[SMTP.CteCFDFlexible1.EnviarContrasena]
Carpeta=SMTP
Clave=CteCFDFlexible1.EnviarContrasena
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=29
ColorFondo=Blanco









[Almacenar.ListaEnCaptura]
(Inicio)=CteCFDFlexible1.AlmacenarXML
CteCFDFlexible1.AlmacenarXML=CteCFDFlexible1.AlmacenarPDF
CteCFDFlexible1.AlmacenarPDF=CteCFDFlexible1.Nombre
CteCFDFlexible1.Nombre=CteCFDFlexible1.AlmacenarRuta
CteCFDFlexible1.AlmacenarRuta=(Fin)




[FTP.ListaEnCaptura]
(Inicio)=CteCFDFlexible1.EnviarDireccion
CteCFDFlexible1.EnviarDireccion=CteCFDFlexible1.EnviarRuta
CteCFDFlexible1.EnviarRuta=CteCFDFlexible1.EnviarUsuario
CteCFDFlexible1.EnviarUsuario=CteCFDFlexible1.EnviarContrasena
CteCFDFlexible1.EnviarContrasena=(Fin)

[SMTP.ListaEnCaptura]
(Inicio)=CteCFDFlexible1.EnviarDireccion
CteCFDFlexible1.EnviarDireccion=CteCFDFlexible1.EnviarDe
CteCFDFlexible1.EnviarDe=CteCFDFlexible1.EnviarAsunto
CteCFDFlexible1.EnviarAsunto=CteCFDFlexible1.EnviarMensaje
CteCFDFlexible1.EnviarMensaje=CteCFDFlexible1.EnviarUsuario
CteCFDFlexible1.EnviarUsuario=CteCFDFlexible1.EnviarContrasena
CteCFDFlexible1.EnviarContrasena=(Fin)







[Acciones.AyudaCamposeMail]
Nombre=AyudaCamposeMail
Boton=101
NombreEnBoton=S
NombreDesplegar=&Ayuda Campos eMail
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CFDFlexAyuda1
Activo=S
Antes=S

EspacioPrevio=S
















AntesExpresiones=Asigna(Info.Tipo,<T>Correo<T>)
VisibleCondicion=General.CFDFlex
[SQLMail.ListaEnCaptura]
(Inicio)=CteCFDFlexible1.EnviarAsunto
CteCFDFlexible1.EnviarAsunto=CteCFDFlexible1.EnviarMensaje
CteCFDFlexible1.EnviarMensaje=(Fin)










[Ficha.CteCFDFlexible1.Cta]
Carpeta=Ficha
Clave=CteCFDFlexible1.Cta
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco




[Acciones.CteCFDInfoPago]
Nombre=CteCFDInfoPago
Boton=57
NombreEnBoton=S
NombreDesplegar=Información de Pago
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteCFDInfoPago1
Activo=S
Visible=S










































































[Ficha.CteCFDFlexible1.InfoPago]
Carpeta=Ficha
Clave=CteCFDFlexible1.InfoPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFDFlexible1.InfoFormaPago]
Carpeta=Ficha
Clave=CteCFDFlexible1.InfoFormaPago
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco



















[Ficha.ListaEnCaptura]
(Inicio)=CteCFDFlexible1.ReceptorID
CteCFDFlexible1.ReceptorID=CteCFDFlexible1.Cta
CteCFDFlexible1.Cta=CteCFDFlexible1.InfoPago
CteCFDFlexible1.InfoPago=CteCFDFlexible1.InfoFormaPago
CteCFDFlexible1.InfoFormaPago=CteCFDFlexible1.TipoAddenda
CteCFDFlexible1.TipoAddenda=CteCFDFlexible1.Version
CteCFDFlexible1.Version=CteCFDFlexible1.VersionFecha
CteCFDFlexible1.VersionFecha=CteCFDFlexible1.VersionAnterior
CteCFDFlexible1.VersionAnterior=CteCFDFlexible1.Validar
CteCFDFlexible1.Validar=CteCFDFlexible1.ValidarTipo
CteCFDFlexible1.ValidarTipo=CteCFDFlexible1.Almacenar
CteCFDFlexible1.Almacenar=CteCFDFlexible1.AlmacenarTipo
CteCFDFlexible1.AlmacenarTipo=CteCFDFlexible1.Enviar
CteCFDFlexible1.Enviar=CteCFDFlexible1.EnviarTipo
CteCFDFlexible1.EnviarTipo=(Fin)

[Enviar.ListaEnCaptura]
(Inicio)=CteCFDFlexible1.EnviarXML
CteCFDFlexible1.EnviarXML=CteCFDFlexible1.EnviarPDF
CteCFDFlexible1.EnviarPDF=CteCFDFlexible1.EnviarMedio
CteCFDFlexible1.EnviarMedio=(Fin)



















[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Validar
Validar=Almacenar
Almacenar=Enviar
Enviar=SQLMail
SQLMail=FTP
FTP=SMTP
SMTP=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=DatosEmpresa
DatosEmpresa=AyudaCamposeMail
AyudaCamposeMail=CteCFDInfoPago
CteCFDInfoPago=(Fin)
