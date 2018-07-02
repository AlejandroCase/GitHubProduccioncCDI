[Forma]
Clave=EmpresaCFD
Nombre=Configuración - CFD
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=262
PosicionInicialArriba=292
PosicionInicialAlturaCliente=413
PosicionInicialAncho=756
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
Comentarios=Info.Empresa

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
Vista=EmpresaCFD
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
FiltroGeneral=EmpresaCFD.Empresa=<T>{Info.Empresa}<T>

[Ficha.EmpresaCFD.EAN13]
Carpeta=Ficha
Clave=EmpresaCFD.EAN13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Ficha.EmpresaCFD.DUN14]
Carpeta=Ficha
Clave=EmpresaCFD.DUN14
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.EmpresaCFD.SKU]
Carpeta=Ficha
Clave=EmpresaCFD.SKU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.EmpresaCFD.Almacenar]
Carpeta=Ficha
Clave=EmpresaCFD.Almacenar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.EmpresaCFD.Enviar]
Carpeta=Ficha
Clave=EmpresaCFD.Enviar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

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

[Validar.EmpresaCFD.ValidarSchema]
Carpeta=Validar
Clave=EmpresaCFD.ValidarSchema
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
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
Vista=EmpresaCFD
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
CondicionVisible=EmpresaCFD:EmpresaCFD.Almacenar

[Almacenar.EmpresaCFD.AlmacenarXML]
Carpeta=Almacenar
Clave=EmpresaCFD.AlmacenarXML
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Almacenar.EmpresaCFD.AlmacenarPDF]
Carpeta=Almacenar
Clave=EmpresaCFD.AlmacenarPDF
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Almacenar.EmpresaCFD.AlmacenarRuta]
Carpeta=Almacenar
Clave=EmpresaCFD.AlmacenarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
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
Vista=EmpresaCFD
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
CondicionVisible=EmpresaCFD:EmpresaCFD.Enviar

[Enviar.EmpresaCFD.EnviarXML]
Carpeta=Enviar
Clave=EmpresaCFD.EnviarXML
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Enviar.EmpresaCFD.EnviarPDF]
Carpeta=Enviar
Clave=EmpresaCFD.EnviarPDF
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Enviar.EmpresaCFD.EnviarMedio]
Carpeta=Enviar
Clave=EmpresaCFD.EnviarMedio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Almacenar.EmpresaCFD.Nombre]
Carpeta=Almacenar
Clave=EmpresaCFD.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
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
Vista=EmpresaCFD
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
CondicionVisible=EmpresaCFD:EmpresaCFD.Enviar y (EmpresaCFD:EmpresaCFD.EnviarMedio=<T>FTP<T>)

[FTP.EmpresaCFD.EnviarDireccion]
Carpeta=FTP
Clave=EmpresaCFD.EnviarDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[FTP.EmpresaCFD.EnviarRuta]
Carpeta=FTP
Clave=EmpresaCFD.EnviarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[FTP.EmpresaCFD.EnviarUsuario]
Carpeta=FTP
Clave=EmpresaCFD.EnviarUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[FTP.EmpresaCFD.EnviarContrasena]
Carpeta=FTP
Clave=EmpresaCFD.EnviarContrasena
Editar=S
ValidaNombre=S
3D=S
Tamano=39
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
Vista=EmpresaCFD
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
CondicionVisible=EmpresaCFD:EmpresaCFD.Enviar y (EmpresaCFD:EmpresaCFD.EnviarMedio=<T>SMTP<T>)

[SMTP.EmpresaCFD.EnviarDireccion]
Carpeta=SMTP
Clave=EmpresaCFD.EnviarDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SMTP.EmpresaCFD.EnviarDe]
Carpeta=SMTP
Clave=EmpresaCFD.EnviarDe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SMTP.EmpresaCFD.EnviarAsunto]
Carpeta=SMTP
Clave=EmpresaCFD.EnviarAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SMTP.EmpresaCFD.EnviarMensaje]
Carpeta=SMTP
Clave=EmpresaCFD.EnviarMensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80x3
ColorFondo=Blanco
ColorFuente=Negro

[Opciones]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Opciones Generales
Clave=Opciones
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFD
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
CarpetaVisible=S

[Opciones.EmpresaCFD.EnviarAlAfectar]
Carpeta=Opciones
Clave=EmpresaCFD.EnviarAlAfectar
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Opciones.EmpresaCFD.ModoPruebas]
Carpeta=Opciones
Clave=EmpresaCFD.ModoPruebas
Editar=S
LineaNueva=S
3D=S
Tamano=30
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
Vista=EmpresaCFD
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
CondicionVisible=EmpresaCFD:EmpresaCFD.Enviar y (EmpresaCFD:EmpresaCFD.EnviarMedio=<T>SQL Mail<T>)

[SQLMail.EmpresaCFD.EnviarAsunto]
Carpeta=SQLMail
Clave=EmpresaCFD.EnviarAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

[SQLMail.EmpresaCFD.EnviarMensaje]
Carpeta=SQLMail
Clave=EmpresaCFD.EnviarMensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80x3
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.EmpresaCFD.SKUEmpresa]
Carpeta=Ficha
Clave=EmpresaCFD.SKUEmpresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Opciones.EmpresaCFD.SKUCodigoInterno]
Carpeta=Opciones
Clave=EmpresaCFD.SKUCodigoInterno
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Certificado]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=SAT - Certificado (Sello Digital)
Clave=Certificado
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFD
Fuente={Fixedsys, 9, Negro, []}
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
CarpetaVisible=S

[Certificado.EmpresaCFD.CertificadoBase64]
Carpeta=Certificado
Clave=EmpresaCFD.CertificadoBase64
Editar=S
3D=S
Tamano=100x16
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S
ValidaNombre=S

[Certificado.EmpresaCFD.noCertificado]
Carpeta=Certificado
Clave=EmpresaCFD.noCertificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Certificado.EmpresaCFD.Certificado]
Carpeta=Certificado
Clave=EmpresaCFD.Certificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[SMTP.EmpresaCFD.EnviarUsuario]
Carpeta=SMTP
Clave=EmpresaCFD.EnviarUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[SMTP.EmpresaCFD.EnviarContrasena]
Carpeta=SMTP
Clave=EmpresaCFD.EnviarContrasena
Editar=S
ValidaNombre=S
3D=S
Tamano=39
ColorFondo=Blanco
ColorFuente=Negro

[SAT]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=SAT - Datos Generales
Clave=SAT
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFD
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
CarpetaVisible=S

[SAT.EmpresaCFD.version]
Carpeta=SAT
Clave=EmpresaCFD.version
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[SAT.EmpresaCFD.versionFecha]
Carpeta=SAT
Clave=EmpresaCFD.versionFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[SAT.EmpresaCFD.versionAnterior]
Carpeta=SAT
Clave=EmpresaCFD.versionAnterior
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[SAT.EmpresaCFD.XSL]
Carpeta=SAT
Clave=EmpresaCFD.XSL
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[SAT.EmpresaCFD.XSLAnterior]
Carpeta=SAT
Clave=EmpresaCFD.XSLAnterior
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[SAT.EmpresaCFD.ValidarSchema]
Carpeta=SAT
Clave=EmpresaCFD.ValidarSchema
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[SAT.EmpresaCFD.ValidarSchemaAnterior]
Carpeta=SAT
Clave=EmpresaCFD.ValidarSchemaAnterior
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[SAT.EmpresaCFD.Llave]
Carpeta=SAT
Clave=EmpresaCFD.Llave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=102
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[SAT.EmpresaCFD.ContrasenaSello]
Carpeta=SAT
Clave=EmpresaCFD.ContrasenaSello
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=102
ColorFondo=Blanco
ColorFuente=Negro

[SAT.EmpresaCFD.SAT_MN]
Carpeta=SAT
Clave=EmpresaCFD.SAT_MN
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=N
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[SAT.EmpresaCFD.Validar]
Carpeta=SAT
Clave=EmpresaCFD.Validar
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=SAT
SAT=Certificado
Certificado=Opciones
Opciones=Almacenar
Almacenar=Enviar
Enviar=SQLMail
SQLMail=FTP
FTP=SMTP
SMTP=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=EmpresaCFD.EAN13
EmpresaCFD.EAN13=EmpresaCFD.DUN14
EmpresaCFD.DUN14=EmpresaCFD.SKU
EmpresaCFD.SKU=EmpresaCFD.SKUEmpresa
EmpresaCFD.SKUEmpresa=EmpresaCFD.Almacenar
EmpresaCFD.Almacenar=EmpresaCFD.Enviar
EmpresaCFD.Enviar=(Fin)

[Almacenar.ListaEnCaptura]
(Inicio)=EmpresaCFD.AlmacenarXML
EmpresaCFD.AlmacenarXML=EmpresaCFD.AlmacenarPDF
EmpresaCFD.AlmacenarPDF=EmpresaCFD.Nombre
EmpresaCFD.Nombre=EmpresaCFD.AlmacenarRuta
EmpresaCFD.AlmacenarRuta=(Fin)

[Enviar.ListaEnCaptura]
(Inicio)=EmpresaCFD.EnviarXML
EmpresaCFD.EnviarXML=EmpresaCFD.EnviarPDF
EmpresaCFD.EnviarPDF=EmpresaCFD.EnviarMedio
EmpresaCFD.EnviarMedio=(Fin)

[FTP.ListaEnCaptura]
(Inicio)=EmpresaCFD.EnviarDireccion
EmpresaCFD.EnviarDireccion=EmpresaCFD.EnviarRuta
EmpresaCFD.EnviarRuta=EmpresaCFD.EnviarUsuario
EmpresaCFD.EnviarUsuario=EmpresaCFD.EnviarContrasena
EmpresaCFD.EnviarContrasena=(Fin)

[SMTP.ListaEnCaptura]
(Inicio)=EmpresaCFD.EnviarDireccion
EmpresaCFD.EnviarDireccion=EmpresaCFD.EnviarDe
EmpresaCFD.EnviarDe=EmpresaCFD.EnviarAsunto
EmpresaCFD.EnviarAsunto=EmpresaCFD.EnviarMensaje
EmpresaCFD.EnviarMensaje=EmpresaCFD.EnviarUsuario
EmpresaCFD.EnviarUsuario=EmpresaCFD.EnviarContrasena
EmpresaCFD.EnviarContrasena=(Fin)

[Opciones.ListaEnCaptura]
(Inicio)=EmpresaCFD.SKUCodigoInterno
EmpresaCFD.SKUCodigoInterno=EmpresaCFD.EnviarAlAfectar
EmpresaCFD.EnviarAlAfectar=EmpresaCFD.ModoPruebas
EmpresaCFD.ModoPruebas=(Fin)

[SQLMail.ListaEnCaptura]
(Inicio)=EmpresaCFD.EnviarAsunto
EmpresaCFD.EnviarAsunto=EmpresaCFD.EnviarMensaje
EmpresaCFD.EnviarMensaje=(Fin)

[Certificado.ListaEnCaptura]
(Inicio)=EmpresaCFD.noCertificado
EmpresaCFD.noCertificado=EmpresaCFD.Certificado
EmpresaCFD.Certificado=EmpresaCFD.CertificadoBase64
EmpresaCFD.CertificadoBase64=(Fin)

[SAT.ListaEnCaptura]
(Inicio)=EmpresaCFD.version
EmpresaCFD.version=EmpresaCFD.XSL
EmpresaCFD.XSL=EmpresaCFD.ValidarSchema
EmpresaCFD.ValidarSchema=EmpresaCFD.versionFecha
EmpresaCFD.versionFecha=EmpresaCFD.versionAnterior
EmpresaCFD.versionAnterior=EmpresaCFD.XSLAnterior
EmpresaCFD.XSLAnterior=EmpresaCFD.ValidarSchemaAnterior
EmpresaCFD.ValidarSchemaAnterior=EmpresaCFD.Llave
EmpresaCFD.Llave=EmpresaCFD.ContrasenaSello
EmpresaCFD.ContrasenaSello=EmpresaCFD.Validar
EmpresaCFD.Validar=EmpresaCFD.SAT_MN
EmpresaCFD.SAT_MN=(Fin)
