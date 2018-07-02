


[Forma]
Clave=CFDINominaEmpresaV12
Icono=0
Modulos=(Todos)
PosicionInicialAlturaCliente=554
PosicionInicialAncho=732
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
ListaCarpetas=(Lista)
CarpetaPrincipal=General
PosicionInicialIzquierda=348
PosicionInicialArriba=88
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
Nombre=CFDI Nómina - Configuración Empresa
Menus=S
Comentarios=Empresa
MenuPrincipal=&Maestros
[Acciones.GuardarCerrar]
Nombre=GuardarCerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



[Lista.Columnas]
CFDIClaveRiesgo=66

Clave=64
Descripcion=185


OrigenRecurso=113
[Acciones.CFDINominaRiesgoPuesto]
Nombre=CFDINominaRiesgoPuesto
Boton=0
Menu=&Maestros
NombreDesplegar=&Riesgos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CFDINominaRiesgoPuesto
Activo=S
Visible=S
















[Lista.ListaEnCaptura]
(Inicio)=CFDINominaEmpresa.CFDIClaveRiesgo
CFDINominaEmpresa.CFDIClaveRiesgo=CFDINominaRiesgoPuesto.Descripcion
CFDINominaRiesgoPuesto.Descripcion=CFDINominaEmpresa.RutaGenerarQRCode
CFDINominaEmpresa.RutaGenerarQRCode=CFDINominaEmpresa.NominaAlmacenarRuta
CFDINominaEmpresa.NominaAlmacenarRuta=CFDINominaEmpresa.NominaNombre
CFDINominaEmpresa.NominaNombre=(Fin)




[General]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=General
Clave=General
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaEmpresaV12
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=232
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S


FiltroGeneral=CFDINominaEmpresaV12.Empresa = <T>{Empresa}<T>
[General.CFDINominaRiesgoPuesto.Descripcion]
Carpeta=General
Clave=CFDINominaRiesgoPuesto.Descripcion
3D=S
Tamano=40
ColorFondo=Blanco


[Timbrar]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Timbrar
Clave=Timbrar
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDINominaEmpresaV12
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco





ListaEnCaptura=(Lista)
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CondicionVisible=Falso
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
Vista=CFDINominaEmpresaV12
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

ListaEnCaptura=(Lista)
FichaEspacioEntreLineas=6
FichaEspacioNombres=67
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S



[Almacenar.Columnas]
NominaAlmacenarRuta=604
NominaNombre=604












[Timbrar.Columnas]
Llave=604
RutaCertificado=604
RutaANSIToUTF=604
RutaTimbrarCFDI=604
TimbrarCFDIPassword=604
TimbrarCFDIServidor=604
TimbrarCFDIUsuario=604
ContrasenakeyCSD=604
TimeOutTimbrado=94
ModoPruebas=72
RutaGenerarQRCode=604


























[Acciones.CFDINominaTipoOrigenRecurso]
Nombre=CFDINominaTipoOrigenRecurso
Boton=0
Menu=&Maestros
NombreDesplegar=Tipo de Origen Recurso
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CFDINominaTipoOrigenRecursoV12

Activo=S
Visible=S





[Acciones.CFDINominaTipoOrigenRecurso.CFDINominaTipoOrigenRecurso]
Nombre=CFDINominaTipoOrigenRecurso
Boton=0
TipoAccion=Formas
Activo=S
Visible=S
ClaveAccion=CFDINominaTipoOrigenRecurso

[Acciones.CFDINominaTipoOrigenRecurso.ListaAccionesMultiples]
(Inicio)=CFDINominaTipoOrigenRecurso
CFDINominaTipoOrigenRecurso=Refrescar
Refrescar=(Fin)
































































[General.CFDINominaEmpresaV12.CFDIClaveRiesgo]
Carpeta=General
Clave=CFDINominaEmpresaV12.CFDIClaveRiesgo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[General.CFDINominaEmpresaV12.EnviarNomina]
Carpeta=General
Clave=CFDINominaEmpresaV12.EnviarNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[General.CFDINominaEmpresaV12.OrigenRecurso]
Carpeta=General
Clave=CFDINominaEmpresaV12.OrigenRecurso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Almacenar.CFDINominaEmpresaV12.NominaAlmacenarRuta]
Carpeta=Almacenar
Clave=CFDINominaEmpresaV12.NominaAlmacenarRuta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=71
ColorFondo=Blanco

[Almacenar.CFDINominaEmpresaV12.NominaNombre]
Carpeta=Almacenar
Clave=CFDINominaEmpresaV12.NominaNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=71
ColorFondo=Blanco

[Almacenar.CFDINominaEmpresaV12.EnviarXMLNomina]
Carpeta=Almacenar
Clave=CFDINominaEmpresaV12.EnviarXMLNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Almacenar.CFDINominaEmpresaV12.EnviarPDFNomina]
Carpeta=Almacenar
Clave=CFDINominaEmpresaV12.EnviarPDFNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Almacenar.CFDINominaEmpresaV12.EnviarAsuntoNomina]
Carpeta=Almacenar
Clave=CFDINominaEmpresaV12.EnviarAsuntoNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[Almacenar.CFDINominaEmpresaV12.EnviarMensajeNomina]
Carpeta=Almacenar
Clave=CFDINominaEmpresaV12.EnviarMensajeNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80X15
ColorFondo=Blanco









[Timbrar.CFDINominaEmpresaV12.Llave]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.Llave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.RutaCertificado]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.RutaCertificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.RutaANSIToUTF]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.RutaANSIToUTF
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.RutaIntelisisCFDI]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.RutaIntelisisCFDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.RutaGenerarQRCode]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.RutaGenerarQRCode
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.TimbrarCFDIServidor]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.TimbrarCFDIServidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.TimbrarCFDIUsuario]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.TimbrarCFDIUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.TimbrarCFDIPassword]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.TimbrarCFDIPassword
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.CancelarCFDIUsuario]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.CancelarCFDIUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.CancelarCFDIPassword]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.CancelarCFDIPassword
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.CancelarCFDIToken]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.CancelarCFDIToken
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.CancelarCFDICuenta]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.CancelarCFDICuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.noCertificado]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.noCertificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.ContrasenaLlave]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.ContrasenaLlave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.TimeOutTimbrado]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.TimeOutTimbrado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco

[Timbrar.CFDINominaEmpresaV12.ModoPruebas]
Carpeta=Timbrar
Clave=CFDINominaEmpresaV12.ModoPruebas
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

LineaNueva=S


[Almacenar.ListaEnCaptura]
(Inicio)=CFDINominaEmpresaV12.NominaAlmacenarRuta
CFDINominaEmpresaV12.NominaAlmacenarRuta=CFDINominaEmpresaV12.NominaNombre
CFDINominaEmpresaV12.NominaNombre=CFDINominaEmpresaV12.EnviarXMLNomina
CFDINominaEmpresaV12.EnviarXMLNomina=CFDINominaEmpresaV12.EnviarPDFNomina
CFDINominaEmpresaV12.EnviarPDFNomina=CFDINominaEmpresaV12.EnviarAsuntoNomina
CFDINominaEmpresaV12.EnviarAsuntoNomina=CFDINominaEmpresaV12.EnviarMensajeNomina
CFDINominaEmpresaV12.EnviarMensajeNomina=(Fin)


[General.CFDINominaEmpresaV12.NominaEditarFechaPago]
Carpeta=General
Clave=CFDINominaEmpresaV12.NominaEditarFechaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco























[General.CFDINominaEmpresaV12.UsarTimbrarNomina]
Carpeta=General
Clave=CFDINominaEmpresaV12.UsarTimbrarNomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[Acciones.TimbreNomina]
Nombre=TimbreNomina
Boton=0
NombreDesplegar=Timbre Nómina
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CFDINominaEmpresaTimbre
Activo=S















NombreEnBoton=S
VisibleCondicion=CFDINominaEmpresaV12.UsarTimbrarNomina
[Timbrar.ListaEnCaptura]
(Inicio)=CFDINominaEmpresaV12.Llave
CFDINominaEmpresaV12.Llave=CFDINominaEmpresaV12.RutaCertificado
CFDINominaEmpresaV12.RutaCertificado=CFDINominaEmpresaV12.RutaANSIToUTF
CFDINominaEmpresaV12.RutaANSIToUTF=CFDINominaEmpresaV12.RutaIntelisisCFDI
CFDINominaEmpresaV12.RutaIntelisisCFDI=CFDINominaEmpresaV12.RutaGenerarQRCode
CFDINominaEmpresaV12.RutaGenerarQRCode=CFDINominaEmpresaV12.TimbrarCFDIServidor
CFDINominaEmpresaV12.TimbrarCFDIServidor=CFDINominaEmpresaV12.TimbrarCFDIUsuario
CFDINominaEmpresaV12.TimbrarCFDIUsuario=CFDINominaEmpresaV12.TimbrarCFDIPassword
CFDINominaEmpresaV12.TimbrarCFDIPassword=CFDINominaEmpresaV12.CancelarCFDIUsuario
CFDINominaEmpresaV12.CancelarCFDIUsuario=CFDINominaEmpresaV12.CancelarCFDIPassword
CFDINominaEmpresaV12.CancelarCFDIPassword=CFDINominaEmpresaV12.CancelarCFDIToken
CFDINominaEmpresaV12.CancelarCFDIToken=CFDINominaEmpresaV12.CancelarCFDICuenta
CFDINominaEmpresaV12.CancelarCFDICuenta=CFDINominaEmpresaV12.noCertificado
CFDINominaEmpresaV12.noCertificado=CFDINominaEmpresaV12.ContrasenaLlave
CFDINominaEmpresaV12.ContrasenaLlave=CFDINominaEmpresaV12.TimeOutTimbrado
CFDINominaEmpresaV12.TimeOutTimbrado=CFDINominaEmpresaV12.ModoPruebas
CFDINominaEmpresaV12.ModoPruebas=(Fin)





[General.CFDINominaEmpresaV12.MontoRecursoPropio]
Carpeta=General
Clave=CFDINominaEmpresaV12.MontoRecursoPropio
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco






[General.ListaEnCaptura]
(Inicio)=CFDINominaEmpresaV12.CFDIClaveRiesgo
CFDINominaEmpresaV12.CFDIClaveRiesgo=CFDINominaRiesgoPuesto.Descripcion
CFDINominaRiesgoPuesto.Descripcion=CFDINominaEmpresaV12.EnviarNomina
CFDINominaEmpresaV12.EnviarNomina=CFDINominaEmpresaV12.NominaEditarFechaPago
CFDINominaEmpresaV12.NominaEditarFechaPago=CFDINominaEmpresaV12.UsarTimbrarNomina
CFDINominaEmpresaV12.UsarTimbrarNomina=CFDINominaEmpresaV12.OrigenRecurso
CFDINominaEmpresaV12.OrigenRecurso=CFDINominaEmpresaV12.MontoRecursoPropio
CFDINominaEmpresaV12.MontoRecursoPropio=CFDINominaEmpresaV12.NominaAnexo20
CFDINominaEmpresaV12.NominaAnexo20=(Fin)

[General.CFDINominaEmpresaV12.NominaAnexo20]
Carpeta=General
Clave=CFDINominaEmpresaV12.NominaAnexo20
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[Forma.ListaCarpetas]
(Inicio)=General
General=Timbrar
Timbrar=Almacenar
Almacenar=(Fin)

[Forma.ListaAcciones]
(Inicio)=GuardarCerrar
GuardarCerrar=TimbreNomina
TimbreNomina=CFDINominaRiesgoPuesto
CFDINominaRiesgoPuesto=CFDINominaTipoOrigenRecurso
CFDINominaTipoOrigenRecurso=(Fin)
