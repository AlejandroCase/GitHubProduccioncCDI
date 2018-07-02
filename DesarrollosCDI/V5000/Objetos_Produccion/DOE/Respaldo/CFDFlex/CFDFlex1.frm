
[Forma]
Clave=CFDFlex1
Icono=256
BarraHerramientas=S
Modulos=(Todos)
MovModulo=CFDFlex1
Nombre=Si(General.CFDI,<T>Monitor CFDI<T>, <T>Generar CFDI<T>)
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=226
PosicionInicialArriba=106
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
Vista=CFDFlex1
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CFDFlex1.Icono
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
PestanaOtroNombre=S
PestanaNombre=CFDI
FiltroFechas=S
FiltroFechasCampo=CFDFlex1.Fecha
FiltroFechasDefault=(Todo)
BusquedaRapida=S
BusquedaEnLinea=S
IconosSubTitulo=<T>Empresa<T>

FiltroGrupo1=CFDFlex1.Serie
FiltroValida1=CFDFlex1.Serie
FiltroTodo=S
IconosConSenales=S
FiltroEstatus=S
IconosSeleccionMultiple=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=PENDIENTE
IconosConPaginas=S
MenuLocal=S
ListaAcciones=(Lista)
IconosNombre=CFDFlex1:CFDFlex1.Empresa
FiltroGeneral=Empresa = {Comillas(Empresa)}  {SI Info.Accion = <T>Timbrados<T> ENTONCES <T> AND Timbrado = 1<T> SINO <T><T>}  {SI Info.Accion = <T>Cancelados<T> ENTONCES <T> AND Cancelado = 1 <T> SINO <T><T>} {SI Info.Accion = <T>No Timbrados<T> ENTONCES <T> AND Timbrado = 0<T> SINO <T><T>}
[Lista.CFDFlex1.Modulo]
Carpeta=Lista
Clave=CFDFlex1.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Lista.CFDFlex1.Fecha]
Carpeta=Lista
Clave=CFDFlex1.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Lista.CFDFlex1.Serie]
Carpeta=Lista
Clave=CFDFlex1.Serie
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CFDFlex1.Folio]
Carpeta=Lista
Clave=CFDFlex1.Folio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDFlex1.Importe]
Carpeta=Lista
Clave=CFDFlex1.Importe
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
[Lista.CFDFlex1.RFC]
Carpeta=Lista
Clave=CFDFlex1.RFC
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
Activo=S
AntesExpresiones=RegistrarSeleccionModuloID(<T>Lista<T>,<T>CFDFlex1.Modulo<T>,<T>CFDFlex1.ModuloID<T> )<BR>EjecutarSQL(<T>spCFDFlexGenerarPDFS :nEstacion, :tEmpresa, :tUsuario<T>, EstacionTrabajo, Empresa, Usuario)
VisibleCondicion=General.CFDI
[Lista.CFDFlex1.Impuesto1]
Carpeta=Lista
Clave=CFDFlex1.Impuesto1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDFlex1.Impuesto2]
Carpeta=Lista
Clave=CFDFlex1.Impuesto2
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
AntesExpresiones=RegistrarSeleccionModuloID(<T>Lista<T>,<T>CFDFlex1.Modulo<T>,<T>CFDFlex1.ModuloID<T> )<BR>ProcesarSQL(<T>spCFDFlexTimbrarCFDILote :nEstacion, :tEmpresa, :tUsuario<T>, EstacionTrabajo, Empresa, Usuario)
VisibleCondicion=General.CFDI
[Lista.CFDFlex1.Timbrado]
Carpeta=Lista
Clave=CFDFlex1.Timbrado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










[Lista.CFDFlex1.FechaTimbrado]
Carpeta=Lista
Clave=CFDFlex1.FechaTimbrado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDFlex1.OrigenSerie]
Carpeta=Lista
Clave=CFDFlex1.OrigenSerie
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CFDFlex1.OrigenFolio]
Carpeta=Lista
Clave=CFDFlex1.OrigenFolio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDFlex1.ParcialidadNumero]
Carpeta=Lista
Clave=CFDFlex1.ParcialidadNumero
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

Expresion=SI Empresa.CFD Entonces<BR>  RegistrarSeleccionModuloID(<T>Lista<T>, <T>Modulo<T>, <T>moduloID<T>)<BR>  CFD.Generar(CFDFlex1:CFDFlex1.Modulo, CFDFlex1:CFDFlex1.ModuloID)<BR>  EjecutarSQL(<T>EXEC spCFDIBorrarListaID :tModulo, :nID, :nEstacion<T>, CFDFlex1:CFDFlex1.Modulo, CFDFlex1:CFDFlex1.ModuloID,  EstacionTrabajo )<BR>  SI Vacio(SQL(<T>SELECT top 1 ID FROM ListaModuloID WHERE Estacion = :nEstacion<T>, EstacionTrabajo))<BR>    Entonces<BR>     Informacion(<T>Proceso Concluido<T>)<BR>     ActualizarVista<BR>  Fin<BR>Fin
[Acciones.PDFIntelisis.Refrescar]
Nombre=Refrescar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.PDFIntelisis]
Nombre=PDFIntelisis
Boton=0
NombreDesplegar=Generar PDF
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

EnLote=S
ActivoCondicion=CFDFlex1:CFDFlex1.Cancelado = 0
VisibleCondicion=Empresa.CFD
[Acciones.GenerarEnviar]
Nombre=GenerarEnviar
Boton=0
NombreDesplegar=Generar &XML y Enviar
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Antes=S








ActivoCondicion=CFDFlex1:CFDFlex1.Cancelado = 0
AntesExpresiones=Si SQL(<T>SELECT ISNULL(eDoc, 0) FROM EmpresaGral WHERE Empresa = :tEmpresa<T>, Empresa) y (SQL(<T>SELECT ISNULL(CFDFlex, 0) FROM EmpresaGral WHERE Empresa = :tEmpresa<T>, Empresa))<BR>Entonces<BR>  ProcesarSQL(<T>EXEC spRegenerarCFDFlex1 :nEstacion, :tEmpresa, :tModulo, :nID, :tEstatus<T>, EstacionTrabajo, Empresa, CFDFlex1:CFDFlex1.Modulo, CFDFlex1:CFDFlex1.ModuloID,CFDFlex1:CFDFlex1.Estatus)<BR>Sino<BR>  Si Empresa.CFD y SQL(<T>spVerMovTipoCFD :tEmpresa, :tModulo, :tMov, :nID<T>, Empresa,CFDFlex1:CFDFlex1.Modulo,CFDFlex1:CFDFlex1.Mov, CFDFlex1:CFDFlex1.ModuloID)<BR>  Entonces<BR>    Si(no CFD.Generar(CFDFlex1:CFDFlex1.Modulo, CFDFlex1:CFDFlex1.ModuloID),  Forma.ActualizarForma AbortarOperacion)<BR>    Asigna(Afectar.EnviarCFD, SQL(<T>SELECT EnviarAlAfectar FROM EmpresaCFD WHERE Empresa=:tEmpresa<T>, Empresa))<BR>  Fin<BR>    CFD.Confirmar<BR>    Si(Afectar.EnviarCFD, CFD.Enviar(CFDFlex1:CFDFlex1.Modulo, CFDFlex1:CFDFlex1.ModuloID))<BR>Fin<BR><BR>ActualizarVista<BR>ActualizarForma
VisibleCondicion=Empresa.CFD
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
























[Lista.CFDFlex1.Cancelado]
Carpeta=Lista
Clave=CFDFlex1.Cancelado
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





















Expresion=SI Vacio(CFDFlex1:CFDFlex1.RutaAcuse,<T>0<T>)=<T>0<T> y CFDFlex1:CFDFlex1.Timbrado y (CFDFlex1:CFDFlex1.Cancelado=0)  ENTONCES<BR>      Informacion(<T>Es necesario anexar el acuse antes de cancelar <T>+CFDFlex1:CFDFlex1.Mov+<T> <T>+CFDFlex1:CFDFlex1.MovID)<BR>FIN<BR>SI Vacio(CFDFlex1:CFDFlex1.RutaAcuse,<T>0<T>)<><T>0<T> y CFDFlex1:CFDFlex1.Timbrado y (CFDFlex1:CFDFlex1.Cancelado=0) ENTONCES<BR>  Cancelar(CFDFlex1:CFDFlex1.Modulo, CFDFlex1:CFDFlex1.ModuloID, CFDFlex1:CFDFlex1.Mov, CFDFlex1:CFDFlex1.MovID, <T>TODO<T>, <T><T>, <T>ProcesarVenta<T>)<BR>  EjecutarSQL(<T>spCancelarCFD :tModulo, :nID<T>,CFDFlex1:CFDFlex1.Modulo, CFDFlex1:CFDFlex1.ModuloID )<BR>FIN<BR>SI (CFDFlex1:CFDFlex1.Timbrado=0) ENTONCES<BR>  Cancelar(CFDFlex1:CFDFlex1.Modulo, CFDFlex1:CFDFlex1.ModuloID, CFDFlex1:CFDFlex1.Mov, CFDFlex1:CFDFlex1.MovID, <T>TODO<T>, <T><T>, <T>ProcesarVenta<T>)<BR>  EjecutarSQL(<T>spCancelarCFD :tModulo, :nID<T>,CFDFlex1:CFDFlex1.Modulo, CFDFlex1:CFDFlex1.ModuloID )<BR>FIN
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs,Usuario) y ConDatos(CFDFlex1:CFDFlex1.ModuloID) y ConDatos(CFDFlex1:CFDFlex1.MovID) y CFDFlex1:CFDFlex1.Cancelado = 0
[Acciones.Acuse]
Nombre=Acuse
Boton=0
NombreDesplegar=Acuse Recibo
EnMenu=S
Antes=S








RefrescarDespues=S
Multiple=S
ListaAccionesMultiples=(Lista)
ActivoCondicion=CFDFlex1:CFDFlex1.Cancelado = 0
AntesExpresiones=Asigna(Info.Modulo,CFDFlex1:CFDFlex1.Modulo)<BR>Asigna(Info.ID,CFDFlex1:CFDFlex1.ModuloID)<BR>Asigna(Info.Ruta,CFDFlex1:CFDFlex1.RutaAcuse)<BR>EjecutarSQL(<T>EXEC spLimpiarRutaCFD :nEstacion,:tRuta<T>,EstacionTrabajo,CFDFlex1:CFDFlex1.RutaAcuse)
VisibleCondicion=CFDFlex1:CFDFlex1.Timbrado
[Lista.CFDFlex1.RutaAcuse]
Carpeta=Lista
Clave=CFDFlex1.RutaAcuse
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
ClaveAccion=RutaAcuse1
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
















[Lista.CFDFlex1.UUIDTexto]
Carpeta=Lista
Clave=CFDFlex1.UUIDTexto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CFDFlex1.OrigenUUIDTexto]
Carpeta=Lista
Clave=CFDFlex1.OrigenUUIDTexto
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





[Acciones.Acuse.ListaAccionesMultiples]
(Inicio)=RutaAcuse
RutaAcuse=Refrescar
Refrescar=(Fin)









[Lista.ListaEnCaptura]
(Inicio)=CFDFlex1.Modulo
CFDFlex1.Modulo=CFDFlex1.Fecha
CFDFlex1.Fecha=CFDFlex1.Serie
CFDFlex1.Serie=CFDFlex1.Folio
CFDFlex1.Folio=CFDFlex1.RFC
CFDFlex1.RFC=CFDFlex1.Importe
CFDFlex1.Importe=CFDFlex1.Impuesto1
CFDFlex1.Impuesto1=CFDFlex1.Impuesto2
CFDFlex1.Impuesto2=ImporteTotal
ImporteTotal=CFDFlex1.Timbrado
CFDFlex1.Timbrado=CFDFlex1.Cancelado
CFDFlex1.Cancelado=CFDFlex1.RutaAcuse
CFDFlex1.RutaAcuse=CFDFlex1.FechaTimbrado
CFDFlex1.FechaTimbrado=CFDFlex1.UUIDTexto
CFDFlex1.UUIDTexto=CFDFlex1.OrigenUUIDTexto
CFDFlex1.OrigenUUIDTexto=CFDFlex1.OrigenSerie
CFDFlex1.OrigenSerie=CFDFlex1.OrigenFolio
CFDFlex1.OrigenFolio=CFDFlex1.ParcialidadNumero
CFDFlex1.ParcialidadNumero=(Fin)

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
Acuse=(Fin)

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
