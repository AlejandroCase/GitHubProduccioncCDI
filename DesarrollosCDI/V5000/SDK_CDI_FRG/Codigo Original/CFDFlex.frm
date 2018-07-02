
[Forma]
Clave=CFDFlex
Icono=256
BarraHerramientas=S
Modulos=(Todos)
MovModulo=CFDFlex
Nombre=Si(General.CFDI,<T>Monitor CFDI<T>, <T>Generar CFDI<T>)
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=208
PosicionInicialArriba=99
PosicionInicialAlturaCliente=514
PosicionInicialAncho=914
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=(Lista)
ExpresionesAlMostrar=Asigna(Info.Accion, <T>Todos<T>)
[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDFlex
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CFDFlex.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
ElementosPorPaginaEsp=500
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S
ListaEnCaptura=(Lista)

FiltroFechas=S
FiltroFechasCampo=CFDFlex.FechaSinHora
FiltroFechasDefault=Este Mes
BusquedaRapida=S
BusquedaEnLinea=S
IconosSubTitulo=<T>Empresa<T>

FiltroGrupo1=CFDFlex.Serie
FiltroValida1=CFDFlex.Serie
FiltroTodo=S
IconosConSenales=S
FiltroEstatus=S
IconosSeleccionMultiple=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PENDIENTE
IconosConPaginas=S
MenuLocal=S
ListaAcciones=(Lista)
PestanaOtroNombre=S
PestanaNombre=CFDI
IconosNombre=CFDFlex:CFDFlex.Empresa
FiltroGeneral=CFDFlex.Empresa = {Comillas(Empresa)}  {SI Info.Accion = <T>Timbrados<T> ENTONCES <T> AND Timbrado = 1<T> SINO <T><T>}  {SI Info.Accion = <T>Cancelados<T> ENTONCES <T> AND Cancelado = 1 <T> SINO <T><T>} {SI Info.Accion = <T>No Timbrados<T> ENTONCES <T> AND Timbrado = 0<T> SINO <T><T>}
[Lista.CFDFlex.Modulo]
Carpeta=Lista
Clave=CFDFlex.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Lista.CFDFlex.Fecha]
Carpeta=Lista
Clave=CFDFlex.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Lista.CFDFlex.Serie]
Carpeta=Lista
Clave=CFDFlex.Serie
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CFDFlex.Folio]
Carpeta=Lista
Clave=CFDFlex.Folio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDFlex.Importe]
Carpeta=Lista
Clave=CFDFlex.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Lista.Columnas]
0=74
1=71
2=75
3=61
4=68
5=106
6=62
7=-2










8=-2
9=-2
10=-2
11=-2
12=212
13=-2
14=-2
15=-2
16=-2
17=-2
18=-2
[Lista.CFDFlex.RFC]
Carpeta=Lista
Clave=CFDFlex.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

















[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=&Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S


[Acciones.Preeliminar]
Nombre=Preeliminar
Boton=6
NombreDesplegar=&Vista Previa
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S


[Acciones.Excel]
Nombre=Excel
Boton=115
NombreDesplegar=&Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S




[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=&Personalizar Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S




[Acciones.GenerarPDF]
Nombre=GenerarPDF
Boton=69
NombreEnBoton=S
NombreDesplegar=&Generar y Enviar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura




ClaveAccion=Actualizar Forma
Antes=S
ActivoCondicion=Empresa.CFD o General.CFDI
AntesExpresiones=Si<BR> Empresa.CFD <BR>Entonces<BR>  CFD.Enviar(CFDFlex:CFDFlex.Modulo,CFDFlex:CFDFlex.ModuloID)<BR>Sino<BR> RegistrarSeleccionModuloID(<T>Lista<T>,<T>CFDFlex.Modulo<T>,<T>CFDFlex.ModuloID<T> )<BR>EjecutarSQL(<T>spCFDFlexGenerarPDFS :nEstacion, :tEmpresa, :tUsuario<T>, EstacionTrabajo, Empresa, Usuario)<BR>Fin
VisibleCondicion=SQL( <T>SELECT Enviar from empresacfd where Empresa=:t<T>,Empresa )
[Lista.CFDFlex.Impuesto1]
Carpeta=Lista
Clave=CFDFlex.Impuesto1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDFlex.Impuesto2]
Carpeta=Lista
Clave=CFDFlex.Impuesto2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Lista.ImporteTotal]
Carpeta=Lista
Clave=ImporteTotal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


































[Acciones.Timbrar]
Nombre=Timbrar
Boton=70
NombreEnBoton=S
NombreDesplegar=&Timbrar CFDI
EnBarraHerramientas=S
EspacioPrevio=S





Antes=S










TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma


Activo=S
AntesExpresiones=RegistrarSeleccionModuloID(<T>Lista<T>,<T>CFDFlex.Modulo<T>,<T>CFDFlex.ModuloID<T> )<BR>ProcesarSQL(<T>spCFDFlexTimbrarCFDILote :nEstacion, :tEmpresa, :tUsuario<T>, EstacionTrabajo, Empresa, Usuario)
VisibleCondicion=General.CFDI
[Lista.CFDFlex.Timbrado]
Carpeta=Lista
Clave=CFDFlex.Timbrado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










[Lista.CFDFlex.FechaTimbrado]
Carpeta=Lista
Clave=CFDFlex.FechaTimbrado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDFlex.OrigenSerie]
Carpeta=Lista
Clave=CFDFlex.OrigenSerie
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CFDFlex.OrigenFolio]
Carpeta=Lista
Clave=CFDFlex.OrigenFolio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDFlex.ParcialidadNumero]
Carpeta=Lista
Clave=CFDFlex.ParcialidadNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[Acciones.Seleccionar Todo]
Nombre=Seleccionar Todo
Boton=0
NombreDesplegar=Seleccionar Todo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Seleccionar Todo
Activo=S
Visible=S

[Acciones.Quitar Seleccion]
Nombre=Quitar Seleccion
Boton=0
NombreDesplegar=Quitar Selección
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Quitar Seleccion
Activo=S
Visible=S

[Acciones.PDFIntelisis.Generar]
Nombre=Generar
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=SI (General.CFDI o Empresa.CFD) Entonces<BR>Asigna(Info.Mensaje,<T>No es posible generar PDF revisar configuración del Movimiento<T>)<BR>  Si SQL(<T>spMovReporteIntelisis :tEmpresa, :tModulo, :tMov, :nID, :nAfectar<T>, Empresa, CFDFlex:CFDFlex.Modulo, <T><T>, CFDFlex:CFDFlex.ModuloID, 0) Entonces<BR>    Asigna(Info.Reporte, SQL(<T>spMovFormatoIntelisis :tEmpresa, :tModulo, :tMov, :nID<T>, Empresa, CFDFlex:CFDFlex.Modulo, <T><T>, CFDFlex:CFDFlex.ModuloID))<BR>    Asigna(Info.Ruta, SQL(<T>spMovRutaIntelisis :tEmpresa, :tModulo, :tMov, :nID<T>, Empresa,CFDFlex:CFDFlex.Modulo,<T><T>, CFDFlex:CFDFlex.ModuloID))<BR>    ReportePDF(Info.Reporte,CFDFlex:CFDFlex.ModuloID,Info.Ruta)<BR>    EjecutarSQL(<T>spMovEnviarIntelisis :tEmpresa,:tModulo,:tMov,:nID<T>,Empresa, CFDFlex:CFDFlex.Modulo, <T><T>, CFDFlex:CFDFlex.ModuloID)<BR>    Asigna(Info.Mensaje,<T>Proceso Concluido<T>)<BR>  Fin<BR>Informacion(Info.Mensaje)<BR>Fin
[Acciones.PDFIntelisis]
Nombre=PDFIntelisis
Boton=0
NombreDesplegar=Generar PDF
Multiple=S
EnMenu=S
ListaAccionesMultiples=Generar

EnLote=S
RefrescarDespues=S
ActivoCondicion=CFDFlex:CFDFlex.Cancelado = 0
VisibleCondicion=SQL(<T>SELECT CASE WHEN Reporteador = :tReporteador THEN 1 ELSE 0 END FROM EmpresaCFD WHERE Empresa=:tEmpresa<T>,<T>Reporteador Intelisis<T>,Empresa)
[Acciones.GenerarEnviar]
Nombre=GenerarEnviar
Boton=0
NombreDesplegar=Generar CFDI
EnMenu=S
TipoAccion=Expresion
Antes=S
RefrescarIconos=S
EnLote=S
Visible=S

Expresion=Si SQL(<T>SELECT ISNULL(eDoc, 0) FROM EmpresaGral WHERE ISNULL(eDoc, 0) = 1 AND ISNULL(CFDFlex, 0) =1 AND Empresa = :tEmpresa<T>, Empresa) = 1<BR>Entonces<BR>  ProcesarSQL(<T>EXEC spRegenerarCFDFlex :nEstacion, :tEmpresa, :tModulo, :nID, :tEstatus<T>, EstacionTrabajo, Empresa, CFDFlex:CFDFlex.Modulo, CFDFlex:CFDFlex.ModuloID,CFDFlex:CFDFlex.Estatus)<BR>Sino<BR>  Si Empresa.CFD y SQL(<T>spVerMovTipoCFD :tEmpresa, :tModulo, :tMov, :nID<T>, Empresa,CFDFlex:CFDFlex.Modulo,CFDFlex:CFDFlex.Mov, CFDFlex:CFDFlex.ModuloID)<BR>  Entonces<BR>    Si(no CFD.Generar(CFDFlex:CFDFlex.Modulo, CFDFlex:CFDFlex.ModuloID),  )<BR>    Asigna(Afectar.EnviarCFD, SQL(<T>SELECT EnviarAlAfectar FROM EmpresaCFD WHERE Empresa=:tEmpresa<T>, Empresa))<BR>  Sino<BR>   EjecutarSQL(<T>spMovEnviarIntelisis :tEmpresa,:tModulo,:tMov,:nID<T>,Empresa, CFDFlex:CFDFlex.Modulo, <T><T>, CFDFlex:CFDFlex.ModuloID)<BR>  Fin<BR>EjecutarSQL(<T>EXEC spCFDIBorrarListaID :tModulo, :nID, :nEstacion<T>,CFDFlex:CFDFlex.Modulo, CFDFlex:CFDFlex.ModuloID,  EstacionTrabajo )<BR>SI Vacio(SQL(<T>SELECT top 1 ID FROM ListaModuloID WHERE Estacion = :nEstacion<T>, EstacionTrabajo))  <BR>Entonces<BR>Informacion(<T>Proceso Concluido<T>)<BR><BR>Fin
ActivoCondicion=CFDFlex:CFDFlex.Cancelado = 0
AntesExpresiones=RegistrarSeleccionModuloID(<T>Lista<T>,<T>CFDFlex.Modulo<T>, <T>CFDFlex.ModuloID<T>)
[Acciones.Todos]
Nombre=Todos
Boton=71
NombreEnBoton=S
NombreDesplegar=Todos
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Visible=S


ActivoCondicion=Info.Accion <> <T>Todos<T>
Antes=S
AntesExpresiones=Asigna(Info.Accion,<T>Todos<T>)
[Acciones.Timbrados]
Nombre=Timbrados
Boton=71
NombreEnBoton=S
NombreDesplegar=Timbrados
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Visible=S


Antes=S
ActivoCondicion=Info.Accion <> <T>Timbrados<T>
AntesExpresiones=Asigna(Info.Accion, <T>Timbrados<T>)
[Acciones.Cancelados]
Nombre=Cancelados
Boton=71
NombreDesplegar=Cancelados
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Visible=S



NombreEnBoton=S


























ActivoCondicion=Info.Accion <>  <T>Cancelados<T>
Antes=S
AntesExpresiones=Asigna(Info.Accion, <T>Cancelados<T>)
























[Lista.CFDFlex.Cancelado]
Carpeta=Lista
Clave=CFDFlex.Cancelado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=Cancelar
RefrescarIconos=S
EnLote=S
EnMenu=S
TipoAccion=Expresion

Visible=S





















Expresion=SI Vacio(CFDFlex:CFDFlex.RutaAcuse,<T>0<T>)=<T>0<T> y CFDFlex:CFDFlex.Timbrado y (CFDFlex:CFDFlex.Cancelado=0)  ENTONCES<BR>      Informacion(<T>Es necesario anexar el acuse antes de cancelar <T>+CFDFlex:CFDFlex.Mov+<T> <T>+CFDFlex:CFDFlex.MovID)<BR>FIN<BR>SI Vacio(CFDFlex:CFDFlex.RutaAcuse,<T>0<T>)<><T>0<T> y CFDFlex:CFDFlex.Timbrado y (CFDFlex:CFDFlex.Cancelado=0) ENTONCES<BR>  Cancelar(CFDFlex:CFDFlex.Modulo, CFDFlex:CFDFlex.ModuloID, CFDFlex:CFDFlex.Mov, CFDFlex:CFDFlex.MovID, <T>TODO<T>, <T><T>, <T>ProcesarVenta<T>)<BR>  EjecutarSQL(<T>spCancelarCFD :tModulo, :nID<T>,CFDFlex:CFDFlex.Modulo, CFDFlex:CFDFlex.ModuloID )<BR>FIN<BR>SI (CFDFlex:CFDFlex.Timbrado=0) ENTONCES<BR>  Cancelar(CFDFlex:CFDFlex.Modulo, CFDFlex:CFDFlex.ModuloID, CFDFlex:CFDFlex.Mov, CFDFlex:CFDFlex.MovID, <T>TODO<T>, <T><T>, <T>ProcesarVenta<T>)<BR>  EjecutarSQL(<T>spCancelarCFD :tModulo, :nID<T>,CFDFlex:CFDFlex.Modulo, CFDFlex:CFDFlex.ModuloID )<BR>FIN
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs,Usuario) y ConDatos(CFDFlex:CFDFlex.ModuloID) y ConDatos(CFDFlex:CFDFlex.MovID) y CFDFlex:CFDFlex.Cancelado = 0
[Acciones.Acuse]
Nombre=Acuse
Boton=0
NombreDesplegar=Acuse Recibo
EnMenu=S
Antes=S








RefrescarDespues=S
Multiple=S
ListaAccionesMultiples=(Lista)
ActivoCondicion=CFDFlex:CFDFlex.Cancelado = 0
AntesExpresiones=Asigna(Info.Modulo,CFDFlex:CFDFlex.Modulo)<BR>Asigna(Info.ID,CFDFlex:CFDFlex.ModuloID)<BR>Asigna(Info.Ruta,CFDFlex:CFDFlex.RutaAcuse)<BR>EjecutarSQL(<T>EXEC spLimpiarRutaCFD :nEstacion,:tRuta<T>,EstacionTrabajo,CFDFlex:CFDFlex.RutaAcuse)
VisibleCondicion=CFDFlex:CFDFlex.Timbrado
[Lista.CFDFlex.RutaAcuse]
Carpeta=Lista
Clave=CFDFlex.RutaAcuse
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco









































[Acciones.Acuse.Refrescar]
Nombre=Refrescar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S






[Acciones.Acuse.RutaAcuse]
Nombre=RutaAcuse
Boton=0
TipoAccion=Formas
ClaveAccion=RutaAcuse
Activo=S
Visible=S


















[Acciones.NoTimbrados]
Nombre=NoTimbrados
Boton=71
NombreEnBoton=S
NombreDesplegar=No Timbrados
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
ActivoCondicion=Info.Accion <>  <T>No Timbrados<T>
Antes=S
AntesExpresiones=Asigna(Info.Accion, <T>No Timbrados<T>)
Visible=S















[Acciones.Acuse.ListaAccionesMultiples]
(Inicio)=RutaAcuse
RutaAcuse=Refrescar
Refrescar=(Fin)


[Lista.CFDFlex.OrigenUUID]
Carpeta=Lista
Clave=CFDFlex.OrigenUUID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco

[Lista.CFDFlex.UUIDTexto]
Carpeta=Lista
Clave=CFDFlex.UUIDTexto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco





















































































































































































[Acciones.PDFIntelisis.ListaAccionesMultiples]
(Inicio)=Generar
Generar=Refrescar
Refrescar=(Fin)













[Acciones.GeneraPDF]
Nombre=GeneraPDF
Boton=0
NombreDesplegar=Genera Archivo PDF
EnMenu=S
TipoAccion=Expresion
Activo=S

Expresion=Asigna(Info.Reporte, SQL(<T>spMovFormatoCFDPDF :tEmpresa, :tModulo, :tMov, :nID<T>, Empresa, CFDFlex:CFDFlex.Modulo,CFDFlex:CFDFlex.Mov, CFDFlex:CFDFlex.ModuloID))<BR>Asigna(Info.Ruta, SQL(<T>spCFDRutaArchivos :tEmpresa, :tModulo, :tMov, :nID<T>, Empresa,CFDFlex:CFDFlex.Modulo,CFDFlex:CFDFlex.Mov, CFDFlex:CFDFlex.ModuloID))<BR>              <BR>Si<BR>Vacio(Info.Ruta)<BR>Entonces<BR> informacion(<T>La ruta de Almacenamiento no existe<T>)         <BR>Sino<BR>Directorio.Verificar(Info.Ruta,Verdadero)<BR>Asigna(Info.Ruta, SQL(<T>spCFDRutaArchivos :tEmpresa, :tModulo, :tMov, :nID,:tTipo<T>, Empresa,CFDFlex:CFDFlex.Modulo,CFDFlex:CFDFlex.Mov, CFDFlex:CFDFlex.ModuloID,<T>PDF<T>))<BR>ReportePDF(Info.Reporte,CFDFlex:CFDFlex.ModuloID,Info.Ruta)<BR>Informacion(<T>Proceso Concluido<T>)                                     <BR>Fin
VisibleCondicion=Empresa.CFD  y SQL(<T>SELECT ISNULL(Timbrado,0) FROM CFD WHERE ModuloID = :tModuloID AND Modulo = :tModulo<T>, CFDFlex:CFDFlex.ModuloID,CFDFlex:CFDFlex.Modulo) y  SQL(<T>SELECT ISNULL(AlmacenarPDF,0) FROM EmpresaCFD WHERE Empresa = :tEmpresa<T>,Empresa)
[Acciones.GeneraXML]
Nombre=GeneraXML
Boton=0
NombreDesplegar=Genera Archivo XML
EnMenu=S
TipoAccion=Expresion
Activo=S









Expresion=<BR>Asigna(Info.Ruta, SQL(<T>spCFDRutaArchivos :tEmpresa, :tModulo, :tMov, :nID<T>, Empresa,CFDFlex:CFDFlex.Modulo,CFDFlex:CFDFlex.Mov, CFDFlex:CFDFlex.ModuloID))<BR>              <BR>Si<BR>Vacio(Info.Ruta)<BR>Entonces<BR> informacion(<T>La ruta de Almacenamiento no existe<T>)         <BR>Sino<BR>Directorio.Verificar(Info.Ruta,Verdadero)<BR>Asigna(Info.Ruta, SQL(<T>spCFDRutaArchivos :tEmpresa, :tModulo, :tMov, :nID,:tTipo<T>, Empresa,CFDFlex:CFDFlex.Modulo,CFDFlex:CFDFlex.Mov, CFDFlex:CFDFlex.ModuloID,<T>XML<T>))<BR>EjecutarSQL(<T>spCFDIRegenerarXml :tEmpresa, :tMov, :tModuloId, :tModulo, :tRuta<T>,Empresa,CFDFlex:CFDFlex.Mov,CFDFlex:CFDFlex.ModuloID,CFDFlex:CFDFlex.Modulo,Info.Ruta)<BR>Informacion(<T>Proceso Concluido<T>)<BR>Fin
VisibleCondicion=Empresa.CFD  y SQL(<T>SELECT ISNULL(Timbrado,0) FROM CFD WHERE ModuloID = :tModuloID AND Modulo = :tModulo<T>, CFDFlex:CFDFlex.ModuloID,CFDFlex:CFDFlex.Modulo) y  SQL(<T>SELECT ISNULL(AlmacenarPDF,0) FROM EmpresaCFD WHERE Empresa = :tEmpresa<T>,Empresa)
















[Lista.ListaEnCaptura]
(Inicio)=CFDFlex.Modulo
CFDFlex.Modulo=CFDFlex.Fecha
CFDFlex.Fecha=CFDFlex.Serie
CFDFlex.Serie=CFDFlex.Folio
CFDFlex.Folio=CFDFlex.RFC
CFDFlex.RFC=CFDFlex.Importe
CFDFlex.Importe=CFDFlex.Impuesto1
CFDFlex.Impuesto1=CFDFlex.Impuesto2
CFDFlex.Impuesto2=ImporteTotal
ImporteTotal=CFDFlex.Timbrado
CFDFlex.Timbrado=CFDFlex.Cancelado
CFDFlex.Cancelado=CFDFlex.RutaAcuse
CFDFlex.RutaAcuse=CFDFlex.FechaTimbrado
CFDFlex.FechaTimbrado=CFDFlex.OrigenSerie
CFDFlex.OrigenSerie=CFDFlex.OrigenFolio
CFDFlex.OrigenFolio=CFDFlex.ParcialidadNumero
CFDFlex.ParcialidadNumero=CFDFlex.OrigenUUID
CFDFlex.OrigenUUID=CFDFlex.UUIDTexto
CFDFlex.UUIDTexto=(Fin)

[Lista.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=PENDIENTE
PENDIENTE=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=(Fin)

[Lista.ListaAcciones]
(Inicio)=Seleccionar Todo
Seleccionar Todo=Quitar Seleccion
Quitar Seleccion=PDFIntelisis
PDFIntelisis=GenerarEnviar
GenerarEnviar=Cancelar
Cancelar=Acuse
Acuse=GeneraPDF
GeneraPDF=GeneraXML
GeneraXML=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preeliminar
Preeliminar=Excel
Excel=Personalizar
Personalizar=Timbrados
Timbrados=NoTimbrados
NoTimbrados=Cancelados
Cancelados=Todos
Todos=Timbrar
Timbrar=GenerarPDF
GenerarPDF=(Fin)
