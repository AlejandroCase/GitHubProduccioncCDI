[Forma]
Clave=CteCFD
Nombre=Datos CFD del Cliente
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=378
PosicionInicialArriba=211
PosicionInicialAlturaCliente=310
PosicionInicialAncho=610
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Cliente, Info.Nombre)
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
Vista=CteCFD
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

FiltroGeneral=CteCFD.Cliente=<T>{Info.Cliente}<T>
[Ficha.CteCFD.ReceptorID]
Carpeta=Ficha
Clave=CteCFD.ReceptorID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFD.TipoAddenda]
Carpeta=Ficha
Clave=CteCFD.TipoAddenda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFD.Version]
Carpeta=Ficha
Clave=CteCFD.Version
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=25

[Ficha.CteCFD.VersionFecha]
Carpeta=Ficha
Clave=CteCFD.VersionFecha
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFD.VersionAnterior]
Carpeta=Ficha
Clave=CteCFD.VersionAnterior
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

[Ficha.CteCFD.Validar]
Carpeta=Ficha
Clave=CteCFD.Validar
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco
Tamano=14

[Ficha.CteCFD.Almacenar]
Carpeta=Ficha
Clave=CteCFD.Almacenar
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
Tamano=14

[Ficha.CteCFD.Enviar]
Carpeta=Ficha
Clave=CteCFD.Enviar
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
Vista=CteCFD
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
ListaEnCaptura=CteCFD.ValidarSchema
CondicionVisible=CteCFD:CteCFD.Validar

[Validar.CteCFD.ValidarSchema]
Carpeta=Validar
Clave=CteCFD.ValidarSchema
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco
ColorFuente=Negro

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
Vista=CteCFD
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
CondicionVisible=CteCFD:CteCFD.Almacenar

[Almacenar.CteCFD.AlmacenarXML]
Carpeta=Almacenar
Clave=CteCFD.AlmacenarXML
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Almacenar.CteCFD.AlmacenarPDF]
Carpeta=Almacenar
Clave=CteCFD.AlmacenarPDF
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Almacenar.CteCFD.AlmacenarRuta]
Carpeta=Almacenar
Clave=CteCFD.AlmacenarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro
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
Vista=CteCFD
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
CondicionVisible=CteCFD:CteCFD.Enviar

[Enviar.CteCFD.EnviarXML]
Carpeta=Enviar
Clave=CteCFD.EnviarXML
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Enviar.CteCFD.EnviarPDF]
Carpeta=Enviar
Clave=CteCFD.EnviarPDF
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Enviar.CteCFD.EnviarMedio]
Carpeta=Enviar
Clave=CteCFD.EnviarMedio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.CteCFD.ValidarTipo]
Carpeta=Ficha
Clave=CteCFD.ValidarTipo
Editar=S
LineaNueva=N
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFD.AlmacenarTipo]
Carpeta=Ficha
Clave=CteCFD.AlmacenarTipo
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.CteCFD.EnviarTipo]
Carpeta=Ficha
Clave=CteCFD.EnviarTipo
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Almacenar.CteCFD.Nombre]
Carpeta=Almacenar
Clave=CteCFD.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

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
Vista=CteCFD
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
CondicionVisible=CteCFD:CteCFD.Enviar y (CteCFD:CteCFD.EnviarMedio=<T>FTP<T>)

[FTP.CteCFD.EnviarDireccion]
Carpeta=FTP
Clave=CteCFD.EnviarDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[FTP.CteCFD.EnviarRuta]
Carpeta=FTP
Clave=CteCFD.EnviarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[FTP.CteCFD.EnviarUsuario]
Carpeta=FTP
Clave=CteCFD.EnviarUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[FTP.CteCFD.EnviarContrasena]
Carpeta=FTP
Clave=CteCFD.EnviarContrasena
Editar=S
ValidaNombre=S
3D=S
Tamano=29
ColorFondo=Blanco
ColorFuente=Negro

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
Vista=CteCFD
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
CondicionVisible=CteCFD:CteCFD.Enviar y (CteCFD:CteCFD.EnviarMedio=<T>SMTP<T>)

[SMTP.CteCFD.EnviarDireccion]
Carpeta=SMTP
Clave=CteCFD.EnviarDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[SMTP.CteCFD.EnviarDe]
Carpeta=SMTP
Clave=CteCFD.EnviarDe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[SMTP.CteCFD.EnviarAsunto]
Carpeta=SMTP
Clave=CteCFD.EnviarAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[SMTP.CteCFD.EnviarMensaje]
Carpeta=SMTP
Clave=CteCFD.EnviarMensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60x3
ColorFondo=Blanco
ColorFuente=Negro

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
Vista=CteCFD
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
CondicionVisible=CteCFD:CteCFD.Enviar y (CteCFD:CteCFD.EnviarMedio=<T>SQL Mail<T>)

[SQLMail.CteCFD.EnviarAsunto]
Carpeta=SQLMail
Clave=CteCFD.EnviarAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[SQLMail.CteCFD.EnviarMensaje]
Carpeta=SQLMail
Clave=CteCFD.EnviarMensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60x3
ColorFondo=Blanco
ColorFuente=Negro

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

[SMTP.CteCFD.EnviarUsuario]
Carpeta=SMTP
Clave=CteCFD.EnviarUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[SMTP.CteCFD.EnviarContrasena]
Carpeta=SMTP
Clave=CteCFD.EnviarContrasena
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=29
ColorFondo=Blanco
ColorFuente=Negro




[Almacenar.ListaEnCaptura]
(Inicio)=CteCFD.AlmacenarXML
CteCFD.AlmacenarXML=CteCFD.AlmacenarPDF
CteCFD.AlmacenarPDF=CteCFD.Nombre
CteCFD.Nombre=CteCFD.AlmacenarRuta
CteCFD.AlmacenarRuta=(Fin)

[Enviar.ListaEnCaptura]
(Inicio)=CteCFD.EnviarXML
CteCFD.EnviarXML=CteCFD.EnviarPDF
CteCFD.EnviarPDF=CteCFD.EnviarMedio
CteCFD.EnviarMedio=(Fin)

[FTP.ListaEnCaptura]
(Inicio)=CteCFD.EnviarDireccion
CteCFD.EnviarDireccion=CteCFD.EnviarRuta
CteCFD.EnviarRuta=CteCFD.EnviarUsuario
CteCFD.EnviarUsuario=CteCFD.EnviarContrasena
CteCFD.EnviarContrasena=(Fin)

[SMTP.ListaEnCaptura]
(Inicio)=CteCFD.EnviarDireccion
CteCFD.EnviarDireccion=CteCFD.EnviarDe
CteCFD.EnviarDe=CteCFD.EnviarAsunto
CteCFD.EnviarAsunto=CteCFD.EnviarMensaje
CteCFD.EnviarMensaje=CteCFD.EnviarUsuario
CteCFD.EnviarUsuario=CteCFD.EnviarContrasena
CteCFD.EnviarContrasena=(Fin)

[SQLMail.ListaEnCaptura]
(Inicio)=CteCFD.EnviarAsunto
CteCFD.EnviarAsunto=CteCFD.EnviarMensaje
CteCFD.EnviarMensaje=(Fin)







[Ficha.ListaEnCaptura]
(Inicio)=CteCFD.ReceptorID
CteCFD.ReceptorID=CteCFD.TipoAddenda
CteCFD.TipoAddenda=CteCFD.Version
CteCFD.Version=CteCFD.VersionFecha
CteCFD.VersionFecha=CteCFD.VersionAnterior
CteCFD.VersionAnterior=CteCFD.Validar
CteCFD.Validar=CteCFD.ValidarTipo
CteCFD.ValidarTipo=CteCFD.Almacenar
CteCFD.Almacenar=CteCFD.AlmacenarTipo
CteCFD.AlmacenarTipo=CteCFD.Enviar
CteCFD.Enviar=CteCFD.EnviarTipo
CteCFD.EnviarTipo=(Fin)



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
DatosEmpresa=(Fin)
