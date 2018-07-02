
[Forma]
Clave=EmpresaCFDFlex1
Icono=0
Modulos=(Todos)
Nombre=Configuración CFD Flexible

ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=187
PosicionInicialArriba=65
PosicionInicialAlturaCliente=598
PosicionInicialAncho=992
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
Comentarios=Lista(Info.Empresa)
[Ficha]
Estilo=Ficha
Clave=Ficha
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFDFlex1
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
ListaEnCaptura=(Lista)


Pestana=S
PestanaOtroNombre=S
PestanaNombre=General
FiltroGeneral=EmpresaCFDFlex1.Empresa = {Comillas(Info.Empresa)}
[Ficha.EmpresaCFDFlex1.noCertificado]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.noCertificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.EmpresaCFDFlex1.CertificadoBase64]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.CertificadoBase64
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=100x6
[Ficha.EmpresaCFDFlex1.ContrasenaSello]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.ContrasenaSello
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.EmpresaCFDFlex1.Llave]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.Llave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Ficha.EmpresaCFDFlex1.RutaFirmaSAT]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.RutaFirmaSAT
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Ficha.EmpresaCFDFlex1.RutaCertificado]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.RutaCertificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Ficha.EmpresaCFDFlex1.RutaTemporal]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.RutaTemporal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S




[Acciones.Registrar]
Nombre=Registrar
Boton=83
NombreEnBoton=S
NombreDesplegar=&Registrar Certificado
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S



























Expresion=ProcesarSQL(<T>EXEC spCFDFlexRegistrarCertificadoXML :nEstacion, :tEmpresa, :tSucursal, :tTipo, 0<T>,EstacionTrabajo,Info.Empresa, Sucursal, <T>Empresa<T>)<BR>ActualizarForma
[Ficha.EmpresaCFDFlex1.RutaANSIToUTF]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.RutaANSIToUTF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





[Ficha.EmpresaCFDFlex1.EAN13]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.EAN13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



















[Ficha.EmpresaCFDFlex1.EnviarAlAfectar]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.EnviarAlAfectar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Mensaje]
Estilo=Ficha
Pestana=S
Clave=Mensaje
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFDFlex1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=148
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
PestanaOtroNombre=S
PestanaNombre=Almacenar y Enviar

FiltroGeneral=EmpresaCFDFlex1.Empresa = {Comillas(Empresa)}
CondicionVisible=EmpresaCFDFlex1:EmpresaCFDFlex1.EnviarAlAfectar
[Mensaje.EmpresaCFDFlex1.EnviarAsunto]
Carpeta=Mensaje
Clave=EmpresaCFDFlex1.EnviarAsunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

EspacioPrevio=N
[Mensaje.EmpresaCFDFlex1.EnviarMensaje]
Carpeta=Mensaje
Clave=EmpresaCFDFlex1.EnviarMensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100x3
ColorFondo=Blanco







[Acciones.ReportesEspecificos]
Nombre=ReportesEspecificos
Boton=57
NombreEnBoton=S
NombreDesplegar=&Reportes Especificos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=EmpresaCFDReporte1
Activo=S
Antes=S
Visible=S






































GuardarAntes=S
[Ficha.EmpresaCFDFlex1.SAT_MN]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.SAT_MN
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco










[Mensaje.EmpresaCFDFlex1.AlmacenarRuta]
Carpeta=Mensaje
Clave=EmpresaCFDFlex1.AlmacenarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco






EspacioPrevio=N
[Mensaje.EmpresaCFDFlex1.AlmacenarXML]
Carpeta=Mensaje
Clave=EmpresaCFDFlex1.AlmacenarXML
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Mensaje.EmpresaCFDFlex1.AlmacenarPDF]
Carpeta=Mensaje
Clave=EmpresaCFDFlex1.AlmacenarPDF
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco




Tamano=25
[Mensaje.EmpresaCFDFlex1.Nombre]
Carpeta=Mensaje
Clave=EmpresaCFDFlex1.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=100
ColorFondo=Blanco
















[Acciones.eMailAutoCampo]
Nombre=eMailAutoCampo
Boton=101
NombreEnBoton=S
NombreDesplegar=&Ayuda Campos eMail
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CFDFlexAyuda1
Activo=S
Visible=S



EspacioPrevio=S









Antes=S
AntesExpresiones=Asigna(Info.Tipo,<T>Correo<T>)
[Mensaje.EmpresaCFDFlex1.EnviarXML]
Carpeta=Mensaje
Clave=EmpresaCFDFlex1.EnviarXML
Editar=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Mensaje.EmpresaCFDFlex1.EnviarPDF]
Carpeta=Mensaje
Clave=EmpresaCFDFlex1.EnviarPDF
Editar=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco











[Ficha.EmpresaCFDFlex1.RutaTimbrarCFDI]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.RutaTimbrarCFDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco







[CFDI]
Estilo=Ficha
Pestana=S
Clave=CFDI
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFDFlex1
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


PestanaOtroNombre=S
PestanaNombre=CFDI
CondicionVisible=SQL(<T>SELECT ISNULL(CFDI, 0) FROM EmpresaGral WHERE Empresa = :tEmpresa<T>, EmpresaCFDFlex1:EmpresaCFDFlex1.Empresa)

[CFDI.EmpresaCFDFlex1.TimbrarCFDIServidor]
Carpeta=CFDI
Clave=EmpresaCFDFlex1.TimbrarCFDIServidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CFDI.EmpresaCFDFlex1.TimbrarCFDIUsuario]
Carpeta=CFDI
Clave=EmpresaCFDFlex1.TimbrarCFDIUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CFDI.EmpresaCFDFlex1.TimbrarCFDIPassword]
Carpeta=CFDI
Clave=EmpresaCFDFlex1.TimbrarCFDIPassword
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco










[Jasper]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Jasper Reports
Clave=Jasper
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFDFlex1
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


CondicionVisible=EmpresaCFDFlex1:EmpresaCFDFlex1.Jasper
[Jasper.EmpresaCFDFlex1.RutaGenerarQRCode]
Carpeta=Jasper
Clave=EmpresaCFDFlex1.RutaGenerarQRCode
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[Ficha.EmpresaCFDFlex1.Jasper]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.Jasper
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco











[Acciones.Jasper]
Nombre=Jasper
Boton=51
NombreEnBoton=S
NombreDesplegar=Reportes Jasper
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=EmpresaCFDJasperReports1









GuardarAntes=S





































Visible=S
ActivoCondicion=EmpresaCFDFlex1:EmpresaCFDFlex1.Jasper
[Jasper.EmpresaCFDFlex1.RutaJasper]
Carpeta=Jasper
Clave=EmpresaCFDFlex1.RutaJasper
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Jasper.EmpresaCFDFlex1.JasperFueraLinea]
Carpeta=Jasper
Clave=EmpresaCFDFlex1.JasperFueraLinea
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Jasper.EmpresaCFDFlex1.Nailgun]
Carpeta=Jasper
Clave=EmpresaCFDFlex1.Nailgun
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





















[Acciones.Trabajo]
Nombre=Trabajo
Boton=102
NombreEnBoton=S
NombreDesplegar=Trabajo Jasper
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=JasperTrabajo1
Activo=S













GuardarAntes=S
EspacioPrevio=S
VisibleCondicion=EmpresaCFDFlex1:EmpresaCFDFlex1.Jasper y EmpresaCFDFlex1:EmpresaCFDFlex1.JasperFueraLinea





[Ficha.EmpresaCFDFlex1.MostrarAnexoPDF]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.MostrarAnexoPDF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Ficha.EmpresaCFDFlex1.NoValidarOrigenDocumento]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.NoValidarOrigenDocumento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Ficha.EmpresaCFDFlex1.ToleranciaCalculo]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.ToleranciaCalculo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Acciones.ContratoTimbradoAspel]
Nombre=ContratoTimbradoAspel
Boton=56
NombreEnBoton=S
NombreDesplegar=Contrato Timbrado Aspel
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CFDFLexContratoCFDISinFirma1
Activo=S





GuardarAntes=S








Multiple=S
ListaAccionesMultiples=Expresion


ConCondicion=S
EspacioPrevio=S
EjecucionCondicion=Asigna(Info.Mensaje,SQL(<T>SELECT ISNULL(ContatoFirmadoAspel, :tVacio) FROM EmpresaCFD WHERE Empresa = :tEmpresa<T>, <T><T>, Info.empresa))
VisibleCondicion=EmpresaCFDFlex1.TimbrarCFDIServidor=<T>Aspel<T>
[Acciones.ContratoTimbradoAspel.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S



























































































































































Expresion=Si Info.Mensaje = <T> <T><BR>Entonces<BR>  FormaModal(<T>CFDFLexContratoAspel1<T>)<BR>Sino<BR>  FormaModal(<T>CFDFLexContratoFirmadoAspel1<T>)<BR>Fin

















[CFDI.EmpresaCFDFlex1.RutaFirmarContratoAspel]
Carpeta=CFDI
Clave=EmpresaCFDFlex1.RutaFirmarContratoAspel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco






[CFDI.ListaEnCaptura]
(Inicio)=EmpresaCFDFlex1.TimbrarCFDIServidor
EmpresaCFDFlex1.TimbrarCFDIServidor=EmpresaCFDFlex1.TimbrarCFDIUsuario
EmpresaCFDFlex1.TimbrarCFDIUsuario=EmpresaCFDFlex1.TimbrarCFDIPassword
EmpresaCFDFlex1.TimbrarCFDIPassword=EmpresaCFDFlex1.RutaFirmarContratoAspel
EmpresaCFDFlex1.RutaFirmarContratoAspel=(Fin)







[Ficha.ListaEnCaptura]
(Inicio)=EmpresaCFDFlex1.EAN13
EmpresaCFDFlex1.EAN13=EmpresaCFDFlex1.noCertificado
EmpresaCFDFlex1.noCertificado=EmpresaCFDFlex1.ContrasenaSello
EmpresaCFDFlex1.ContrasenaSello=EmpresaCFDFlex1.CertificadoBase64
EmpresaCFDFlex1.CertificadoBase64=EmpresaCFDFlex1.Llave
EmpresaCFDFlex1.Llave=EmpresaCFDFlex1.RutaFirmaSAT
EmpresaCFDFlex1.RutaFirmaSAT=EmpresaCFDFlex1.RutaCertificado
EmpresaCFDFlex1.RutaCertificado=EmpresaCFDFlex1.RutaTemporal
EmpresaCFDFlex1.RutaTemporal=EmpresaCFDFlex1.RutaANSIToUTF
EmpresaCFDFlex1.RutaANSIToUTF=EmpresaCFDFlex1.RutaTimbrarCFDI
EmpresaCFDFlex1.RutaTimbrarCFDI=EmpresaCFDFlex1.EnviarAlAfectar
EmpresaCFDFlex1.EnviarAlAfectar=EmpresaCFDFlex1.ToleranciaCalculo
EmpresaCFDFlex1.ToleranciaCalculo=EmpresaCFDFlex1.SAT_MN
EmpresaCFDFlex1.SAT_MN=EmpresaCFDFlex1.NoValidarOrigenDocumento
EmpresaCFDFlex1.NoValidarOrigenDocumento=EmpresaCFDFlex1.Jasper
EmpresaCFDFlex1.Jasper=EmpresaCFDFlex1.ReportBuilder
EmpresaCFDFlex1.ReportBuilder=EmpresaCFDFlex1.MostrarAnexoPDF
EmpresaCFDFlex1.MostrarAnexoPDF=(Fin)

[Ficha.EmpresaCFDFlex1.ReportBuilder]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.ReportBuilder
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco















[ReportBuilder]
Estilo=Ficha
Clave=ReportBuilder
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFDFlex1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Report Builder
PermiteEditar=S



ListaEnCaptura=(Lista)


FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CondicionVisible=EmpresaCFDFlex1:EmpresaCFDFlex1.ReportBuilder
[ReportBuilder.EmpresaCFDFlex1.RutaGenerarQRCode]
Carpeta=ReportBuilder
Clave=EmpresaCFDFlex1.RutaGenerarQRCode
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[ReportBuilder.EmpresaCFDFlex1.RutaReportBuilder]
Carpeta=ReportBuilder
Clave=EmpresaCFDFlex1.RutaReportBuilder
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[ReportBuilder.Columnas]
RutaGenerarQRCode=604
RutaReportBuilder=604




[Acciones.ReportesBuilder]
Nombre=ReportesBuilder
Boton=51
NombreDesplegar=Reportes &Builder
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=EmpresaCFDBuilder1











NombreEnBoton=S




EspacioPrevio=S








Visible=S
ActivoCondicion=EmpresaCFDFlex1:EmpresaCFDFlex1.ReportBuilder

[Mensaje.EmpresaCFDFlex1.GenerarPdfAfectar]
Carpeta=Mensaje
Clave=EmpresaCFDFlex1.GenerarPdfAfectar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





















































[ReportBuilder.ListaEnCaptura]
(Inicio)=EmpresaCFDFlex1.RutaGenerarQRCode
EmpresaCFDFlex1.RutaGenerarQRCode=EmpresaCFDFlex1.RutaReportBuilder
EmpresaCFDFlex1.RutaReportBuilder=(Fin)

[Jasper.ListaEnCaptura]
(Inicio)=EmpresaCFDFlex1.RutaGenerarQRCode
EmpresaCFDFlex1.RutaGenerarQRCode=EmpresaCFDFlex1.RutaJasper
EmpresaCFDFlex1.RutaJasper=EmpresaCFDFlex1.JasperFueraLinea
EmpresaCFDFlex1.JasperFueraLinea=EmpresaCFDFlex1.Nailgun
EmpresaCFDFlex1.Nailgun=(Fin)











[Mensaje.ListaEnCaptura]
(Inicio)=EmpresaCFDFlex1.AlmacenarXML
EmpresaCFDFlex1.AlmacenarXML=EmpresaCFDFlex1.EnviarXML
EmpresaCFDFlex1.EnviarXML=EmpresaCFDFlex1.AlmacenarPDF
EmpresaCFDFlex1.AlmacenarPDF=EmpresaCFDFlex1.EnviarPDF
EmpresaCFDFlex1.EnviarPDF=EmpresaCFDFlex1.GenerarPdfAfectar
EmpresaCFDFlex1.GenerarPdfAfectar=EmpresaCFDFlex1.AlmacenarRuta
EmpresaCFDFlex1.AlmacenarRuta=EmpresaCFDFlex1.Nombre
EmpresaCFDFlex1.Nombre=EmpresaCFDFlex1.EnviarAsunto
EmpresaCFDFlex1.EnviarAsunto=EmpresaCFDFlex1.EnviarMensaje
EmpresaCFDFlex1.EnviarMensaje=(Fin)



[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Mensaje
Mensaje=CFDI
CFDI=Jasper
Jasper=ReportBuilder
ReportBuilder=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Registrar
Registrar=ReportesEspecificos
ReportesEspecificos=eMailAutoCampo
eMailAutoCampo=Jasper
Jasper=ReportesBuilder
ReportesBuilder=Trabajo
Trabajo=ContratoTimbradoAspel
ContratoTimbradoAspel=(Fin)
