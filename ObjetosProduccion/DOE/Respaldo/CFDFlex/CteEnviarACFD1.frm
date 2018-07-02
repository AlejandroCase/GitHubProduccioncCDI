[Forma]
Clave=CteEnviarACFD1
Nombre=Datos CFD de la Sucursal del Cliente
Icono=0
Modulos=(Todos)
ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=489
PosicionInicialArriba=260
PosicionInicialAlturaCliente=310
PosicionInicialAncho=619
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.ID)
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
Vista=CteEnviarACFD1
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

FiltroGeneral=CteEnviarACFD1.Cliente=<T>{Info.Cliente}<T> AND<BR>CteEnviarACFD1.EnviarA={Info.ID}
[Ficha.CteEnviarACFD1.ReceptorID]
Carpeta=Ficha
Clave=CteEnviarACFD1.ReceptorID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco





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




[Validar.CteEnviarACFD1.ValidarSchema]
Carpeta=Validar
Clave=CteEnviarACFD1.ValidarSchema
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco


[Almacenar.CteEnviarACFD1.AlmacenarXML]
Carpeta=Almacenar
Clave=CteEnviarACFD1.AlmacenarXML
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco

[Almacenar.CteEnviarACFD1.AlmacenarPDF]
Carpeta=Almacenar
Clave=CteEnviarACFD1.AlmacenarPDF
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco

[Almacenar.CteEnviarACFD1.AlmacenarRuta]
Carpeta=Almacenar
Clave=CteEnviarACFD1.AlmacenarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
EspacioPrevio=N


[Enviar.CteEnviarACFD1.EnviarXML]
Carpeta=Enviar
Clave=CteEnviarACFD1.EnviarXML
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco

[Enviar.CteEnviarACFD1.EnviarPDF]
Carpeta=Enviar
Clave=CteEnviarACFD1.EnviarPDF
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco

[Enviar.CteEnviarACFD1.EnviarMedio]
Carpeta=Enviar
Clave=CteEnviarACFD1.EnviarMedio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
EspacioPrevio=S




[Almacenar.CteEnviarACFD1.Nombre]
Carpeta=Almacenar
Clave=CteEnviarACFD1.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=50
ColorFondo=Blanco


[FTP.CteEnviarACFD1.EnviarDireccion]
Carpeta=FTP
Clave=CteEnviarACFD1.EnviarDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[FTP.CteEnviarACFD1.EnviarRuta]
Carpeta=FTP
Clave=CteEnviarACFD1.EnviarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[FTP.CteEnviarACFD1.EnviarUsuario]
Carpeta=FTP
Clave=CteEnviarACFD1.EnviarUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FTP.CteEnviarACFD1.EnviarContrasena]
Carpeta=FTP
Clave=CteEnviarACFD1.EnviarContrasena
Editar=S
ValidaNombre=S
3D=S
Tamano=29
ColorFondo=Blanco


[SMTP.CteEnviarACFD1.EnviarDireccion]
Carpeta=SMTP
Clave=CteEnviarACFD1.EnviarDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[SMTP.CteEnviarACFD1.EnviarDe]
Carpeta=SMTP
Clave=CteEnviarACFD1.EnviarDe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[SMTP.CteEnviarACFD1.EnviarAsunto]
Carpeta=SMTP
Clave=CteEnviarACFD1.EnviarAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[SMTP.CteEnviarACFD1.EnviarMensaje]
Carpeta=SMTP
Clave=CteEnviarACFD1.EnviarMensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60x3
ColorFondo=Blanco


[SQLMail.CteEnviarACFD1.EnviarAsunto]
Carpeta=SQLMail
Clave=CteEnviarACFD1.EnviarAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[SQLMail.CteEnviarACFD1.EnviarMensaje]
Carpeta=SQLMail
Clave=CteEnviarACFD1.EnviarMensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60x3
ColorFondo=Blanco


[SMTP.CteEnviarACFD1.EnviarUsuario]
Carpeta=SMTP
Clave=CteEnviarACFD1.EnviarUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[SMTP.CteEnviarACFD1.EnviarContrasena]
Carpeta=SMTP
Clave=CteEnviarACFD1.EnviarContrasena
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=29
ColorFondo=Blanco









[Almacenar.ListaEnCaptura]
(Inicio)=CteEnviarACFD1.AlmacenarXML
CteEnviarACFD1.AlmacenarXML=CteEnviarACFD1.AlmacenarPDF
CteEnviarACFD1.AlmacenarPDF=CteEnviarACFD1.Nombre
CteEnviarACFD1.Nombre=CteEnviarACFD1.AlmacenarRuta
CteEnviarACFD1.AlmacenarRuta=(Fin)




[FTP.ListaEnCaptura]
(Inicio)=CteEnviarACFD1.EnviarDireccion
CteEnviarACFD1.EnviarDireccion=CteEnviarACFD1.EnviarRuta
CteEnviarACFD1.EnviarRuta=CteEnviarACFD1.EnviarUsuario
CteEnviarACFD1.EnviarUsuario=CteEnviarACFD1.EnviarContrasena
CteEnviarACFD1.EnviarContrasena=(Fin)

[SMTP.ListaEnCaptura]
(Inicio)=CteEnviarACFD1.EnviarDireccion
CteEnviarACFD1.EnviarDireccion=CteEnviarACFD1.EnviarDe
CteEnviarACFD1.EnviarDe=CteEnviarACFD1.EnviarAsunto
CteEnviarACFD1.EnviarAsunto=CteEnviarACFD1.EnviarMensaje
CteEnviarACFD1.EnviarMensaje=CteEnviarACFD1.EnviarUsuario
CteEnviarACFD1.EnviarUsuario=CteEnviarACFD1.EnviarContrasena
CteEnviarACFD1.EnviarContrasena=(Fin)






[Enviar.ListaEnCaptura]
(Inicio)=CteEnviarACFD1.EnviarXML
CteEnviarACFD1.EnviarXML=CteEnviarACFD1.EnviarPDF
CteEnviarACFD1.EnviarPDF=CteEnviarACFD1.EnviarMedio
CteEnviarACFD1.EnviarMedio=(Fin)









[SQLMail.ListaEnCaptura]
(Inicio)=CteEnviarACFD1.EnviarAsunto
CteEnviarACFD1.EnviarAsunto=CteEnviarACFD1.EnviarMensaje
CteEnviarACFD1.EnviarMensaje=(Fin)










[Ficha.CteEnviarACFD1.Cta]
Carpeta=Ficha
Clave=CteEnviarACFD1.Cta
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco





[Ficha.CteEnviarACFD1.InfoPago]
Carpeta=Ficha
Clave=CteEnviarACFD1.InfoPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteEnviarACFD1.InfoFormaPago]
Carpeta=Ficha
Clave=CteEnviarACFD1.InfoFormaPago
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco



























[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Validar
Validar=Almacenar
Almacenar=Enviar
Enviar=SQLMail
SQLMail=FTP
FTP=SMTP
SMTP=(Fin)



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










[Ficha.ListaEnCaptura]
(Inicio)=CteEnviarACFD1.ReceptorID
CteEnviarACFD1.ReceptorID=CteEnviarACFD1.Cta
CteEnviarACFD1.Cta=CteEnviarACFD1.InfoPago
CteEnviarACFD1.InfoPago=CteEnviarACFD1.InfoFormaPago
CteEnviarACFD1.InfoFormaPago=(Fin)







[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=CteCFDInfoPago
CteCFDInfoPago=(Fin)
