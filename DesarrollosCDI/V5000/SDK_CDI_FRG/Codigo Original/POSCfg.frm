
[Forma]
Clave=POSCfg
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Configuración POS
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Campos
PosicionInicialAlturaCliente=706
PosicionInicialAncho=1382
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=29
PosicionInicialArriba=0
ListaAcciones=(Lista)
Comentarios=Empresa.Empresa
VentanaColor=Plata
[Campos]
Estilo=Ficha
Clave=Campos
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=POSCfg
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

Pestana=S
PestanaOtroNombre=S
PestanaNombre=General
FiltroGeneral=POSCFG.Empresa = <T>{Empresa}<T>
[Campos.POSCFG.ImagenNombreAnexo]
Carpeta=Campos
Clave=POSCFG.ImagenNombreAnexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Campos.POSCFG.AgruparArticulos]
Carpeta=Campos
Clave=POSCFG.AgruparArticulos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Campos.POSCFG.CantidadNotasEnProceso]
Carpeta=Campos
Clave=POSCFG.CantidadNotasEnProceso
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S


[Campos.POSCFG.DefFormaPagoCambio]
Carpeta=Campos
Clave=POSCFG.DefFormaPagoCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco





[Campos.POSCFG.ValidarDevolucion]
Carpeta=Campos
Clave=POSCFG.ValidarDevolucion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco




EspacioPrevio=S
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S



[Campos.POSCFG.RedondeoVenta]
Carpeta=Campos
Clave=POSCFG.RedondeoVenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco




[Campos.POSCFG.RedondeosMonetarios]
Carpeta=Campos
Clave=POSCFG.RedondeosMonetarios
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20

LineaNueva=N
EspacioPrevio=S
[Campos.POSCFG.JuegoComponentes]
Carpeta=Campos
Clave=POSCFG.JuegoComponentes
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Campos.POSCFG.CajaOmision]
Carpeta=Campos
Clave=POSCFG.CajaOmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Campos.POSCFG.PuertoTorreta]
Carpeta=Campos
Clave=POSCFG.PuertoTorreta
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[Campos.POSCFG.TieneTorreta]
Carpeta=Campos
Clave=POSCFG.TieneTorreta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Campos.POSCFG.Publicidad]
Carpeta=Campos
Clave=POSCFG.Publicidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75
ColorFondo=Blanco





[Acciones.POSSucursal]
Nombre=POSSucursal
Boton=16
NombreEnBoton=S
NombreDesplegar=&Sucursales
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=POSSucursal
Activo=S
Visible=S



EspacioPrevio=S












[Monedero]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Monedero
Clave=Monedero
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=PosCfg
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=POSCFG.Empresa = <T>{Empresa}<T>
[Monedero.POSCFG.TipoMonedero]
Carpeta=Monedero
Clave=POSCFG.TipoMonedero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Monedero.POSCFG.MonederoLDI]
Carpeta=Monedero
Clave=POSCFG.MonederoLDI
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco




Tamano=50

[Monedero.POSCFG.MovEmision]
Carpeta=Monedero
Clave=POSCFG.MovEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






[Monedero.POSCFG.MovCancelacion]
Carpeta=Monedero
Clave=POSCFG.MovCancelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco













[Campos.POSCFG.ImpuestoIncluido]
Carpeta=Campos
Clave=POSCFG.ImpuestoIncluido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







[Campos.POSCFG.ArtOfertaFP]
Carpeta=Campos
Clave=POSCFG.ArtOfertaFP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco



[Lista.Columnas]
Articulo=131
Descripcion1=244














0=181
1=111
2=-2
[Campos.POSCFG.MatrizOpciones]
Carpeta=Campos
Clave=POSCFG.MatrizOpciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco













[Campos.POSCFG.MovFactura]
Carpeta=Campos
Clave=POSCFG.MovFactura
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




















LineaNueva=S
[Campos.POSCFG.MovSustitutos]
Carpeta=Campos
Clave=POSCFG.MovSustitutos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco














[Monedero.POSCFG.ConsecutivoMonedero]
Carpeta=Monedero
Clave=POSCFG.ConsecutivoMonedero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco














[Campos.POSCFG.ArtOfertaImporte]
Carpeta=Campos
Clave=POSCFG.ArtOfertaImporte
Editar=S
ValidaNombre=S
3D=S
Tamano=23
ColorFondo=Blanco
















[Web Service.ListaEnCaptura]
(Inicio)=POSCFG.WSServidorSQL
POSCFG.WSServidorSQL=POSCFG.WSPuertoSQL
POSCFG.WSPuertoSQL=POSCFG.WSUsuarioSQL
POSCFG.WSUsuarioSQL=POSCFG.WSContrasenaSQL
POSCFG.WSContrasenaSQL=POSCFG.WSUbicacion
POSCFG.WSUbicacion=(Fin)







[Campos.POSCFG.WebService]
Carpeta=Campos
Clave=POSCFG.WebService
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[WebService]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Web Service
Clave=WebService
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=POSCfg
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


PermiteEditar=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=POSCFG.Empresa = <T>{Empresa}<T>
CondicionVisible=POSCfg:POSCFG.WebService
[WebService.POSCFG.WSServidorSQL]
Carpeta=WebService
Clave=POSCFG.WSServidorSQL
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[WebService.POSCFG.WSPuertoSQL]
Carpeta=WebService
Clave=POSCFG.WSPuertoSQL
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[WebService.POSCFG.WSUsuarioSQL]
Carpeta=WebService
Clave=POSCFG.WSUsuarioSQL
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[WebService.POSCFG.WSContrasenaSQL]
Carpeta=WebService
Clave=POSCFG.WSContrasenaSQL
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[WebService.POSCFG.WSUbicacion]
Carpeta=WebService
Clave=POSCFG.WSUbicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco













[WebService.POSCFG.WSBaseDatos]
Carpeta=WebService
Clave=POSCFG.WSBaseDatos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
































[Campos.POSCFG.DesgloseCC]
Carpeta=Campos
Clave=POSCFG.DesgloseCC
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco

Tamano=50









[Campos.POSCFG.RefPedidoSinWS]
Carpeta=Campos
Clave=POSCFG.RefPedidoSinWS
Editar=S
3D=S
ColorFondo=Blanco

ValidaNombre=S








[CodigoExtendido]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Código Extendido
Clave=CodigoExtendido
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=POSCfg
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
CarpetaVisible=S

ListaEnCaptura=(Lista)

[CodigoExtendido.POSCFG.CodigoExtendido]
Carpeta=CodigoExtendido
Clave=POSCFG.CodigoExtendido
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=30
[CodigoExtendido.POSCFG.CodigoExtendidoLetraCodigo]
Carpeta=CodigoExtendido
Clave=POSCFG.CodigoExtendidoLetraCodigo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=3
ColorFondo=Blanco

[CodigoExtendido.POSCFG.CodigoExtendidoLetraPeso]
Carpeta=CodigoExtendido
Clave=POSCFG.CodigoExtendidoLetraPeso
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=3
ColorFondo=Blanco

[CodigoExtendido.POSCFG.CodigoExtendidoDecimalesPeso]
Carpeta=CodigoExtendido
Clave=POSCFG.CodigoExtendidoDecimalesPeso
Editar=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[CodigoExtendido.POSCFG.CodigoExtendidoMascara]
Carpeta=CodigoExtendido
Clave=POSCFG.CodigoExtendidoMascara
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=38
ColorFondo=Blanco

















[Campos.POSCFG.CondicionPedidoContado]
Carpeta=Campos
Clave=POSCFG.CondicionPedidoContado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco















[CodigoExtendido.ListaEnCaptura]
(Inicio)=POSCFG.CodigoExtendido
POSCFG.CodigoExtendido=POSCFG.CodigoExtendidoLetraCodigo
POSCFG.CodigoExtendidoLetraCodigo=POSCFG.CodigoExtendidoLetraPeso
POSCFG.CodigoExtendidoLetraPeso=POSCFG.CodigoExtendidoDecimalesPeso
POSCFG.CodigoExtendidoDecimalesPeso=POSCFG.CodigoExtendidoMascara
POSCFG.CodigoExtendidoMascara=(Fin)












































































[Campos.POSCFG.FormaPagoSaldoAFavor]
Carpeta=Campos
Clave=POSCFG.FormaPagoSaldoAFavor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



















[Monedero.ListaEnCaptura]
(Inicio)=POSCFG.TipoMonedero
POSCFG.TipoMonedero=POSCFG.MonederoLDI
POSCFG.MonederoLDI=POSCFG.MovEmision
POSCFG.MovEmision=POSCFG.MovCancelacion
POSCFG.MovCancelacion=POSCFG.MovTraspasoVale
POSCFG.MovTraspasoVale=POSCFG.ConsecutivoMonedero
POSCFG.ConsecutivoMonedero=(Fin)

[Monedero.POSCFG.MovTraspasoVale]
Carpeta=Monedero
Clave=POSCFG.MovTraspasoVale
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




























[Campos.POSCFG.CfgCierreDia]
Carpeta=Campos
Clave=POSCFG.CfgCierreDia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CierreDia]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cierre Dia
Clave=CierreDia
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=POSCfg
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


CondicionVisible=POSCfg:POSCFG.CfgCierreDia
[CierreDia.POSCFG.ValidarCajasCerradas]
Carpeta=CierreDia
Clave=POSCFG.ValidarCajasCerradas
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=20

[CierreDia.POSCFG.HoraCierreDia]
Carpeta=CierreDia
Clave=POSCFG.HoraCierreDia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CierreDia.POSCFG.SugerirFechaCierre]
Carpeta=CierreDia
Clave=POSCFG.SugerirFechaCierre
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=20
[CierreDia.POSCFG.DiasHabiles]
Carpeta=CierreDia
Clave=POSCFG.DiasHabiles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco














[Campos.POSCFG.CierreiSyncNivel]
Carpeta=Campos
Clave=POSCFG.CierreiSyncNivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[Campos.POSCFG.POSDiasDev]
Carpeta=Campos
Clave=POSCFG.POSDiasDev
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










[Campos.POSCFG.POSDefMovServ]
Carpeta=Campos
Clave=POSCFG.POSDefMovServ
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

LineaNueva=S






[Campos.POSCFG.POSMonedaAct]
Carpeta=Campos
Clave=POSCFG.POSMonedaAct
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco







[Campos.POSCFG.POSDefMovDev]
Carpeta=Campos
Clave=POSCFG.POSDefMovDev
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


































[Campos.POSCFG.POSAgenteDetalle]
Carpeta=Campos
Clave=POSCFG.POSAgenteDetalle
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



Pegado=N






LineaNueva=N
[Campos.POSCFG.POSDutyFree]
Carpeta=Campos
Clave=POSCFG.POSDutyFree
Editar=S
ValidaNombre=S
3D=S
Pegado=S
ColorFondo=Blanco







LineaNueva=S

[Otros]
Estilo=Ficha
Pestana=S
Clave=Otros
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=POSCfg
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
CarpetaVisible=S

PestanaOtroNombre=S
PestanaNombre=Otros
ListaEnCaptura=(Lista)


PermiteEditar=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=POSCFG.Empresa = <T>{Empresa}<T>
[Otros.POSCFG.AutoAjuste]
Carpeta=Otros
Clave=POSCFG.AutoAjuste
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
[Otros.POSCFG.VenderSinExistencia]
Carpeta=Otros
Clave=POSCFG.VenderSinExistencia
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Otros.POSCFG.AutoAjusteUsuario]
Carpeta=Otros
Clave=POSCFG.AutoAjusteUsuario
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

LineaNueva=S
[Otros.POSCFG.AutoAjusteConcepto]
Carpeta=Otros
Clave=POSCFG.AutoAjusteConcepto
Editar=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco











[Campos.POSCFG.ActivaBascula]
Carpeta=Campos
Clave=POSCFG.ActivaBascula
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco








































[Campos.POSCFG.PanelAMostrar]
Carpeta=Campos
Clave=POSCFG.PanelAMostrar
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

























































































[Campos.POSCFG.CodigoArtComision]
Carpeta=Campos
Clave=POSCFG.CodigoArtComision
Editar=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco







[Otros.POSCFG.MensajeLimiteCajaT]
Carpeta=Otros
Clave=POSCFG.MensajeLimiteCajaT
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



EspacioPrevio=S



[Campos.POSCFG.POSAgenteDetMaestro]
Carpeta=Campos
Clave=POSCFG.POSAgenteDetMaestro
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco












[Redondeo]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Redondeo
Clave=Redondeo
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
PermiteEditar=S
Vista=POSCfg
ListaEnCaptura=(Lista)

Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=POSCFG.Empresa = <T>{Empresa}<T>
CondicionVisible=POSCfg:POSCFG.RedondeoVenta
[Redondeo.POSCFG.RedondeoVentaCodigo]
Carpeta=Redondeo
Clave=POSCFG.RedondeoVentaCodigo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Redondeo.POSCFG.RedondeoVentaProv]
Carpeta=Redondeo
Clave=POSCFG.RedondeoVentaProv
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Redondeo.RedondeoVentaProvNombre]
Carpeta=Redondeo
Clave=RedondeoVentaProvNombre
Editar=S
ValidaNombre=N
3D=S
Tamano=70
ColorFondo=Plata

[Redondeo.POSCFG.RedondeoVentaConcepto]
Carpeta=Redondeo
Clave=POSCFG.RedondeoVentaConcepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[WebService.ListaEnCaptura]
(Inicio)=POSCFG.WSServidorSQL
POSCFG.WSServidorSQL=POSCFG.WSPuertoSQL
POSCFG.WSPuertoSQL=POSCFG.WSUsuarioSQL
POSCFG.WSUsuarioSQL=POSCFG.WSContrasenaSQL
POSCFG.WSContrasenaSQL=POSCFG.WSBaseDatos
POSCFG.WSBaseDatos=POSCFG.WSUbicacion
POSCFG.WSUbicacion=(Fin)

[CierreDia.ListaEnCaptura]
(Inicio)=POSCFG.HoraCierreDia
POSCFG.HoraCierreDia=POSCFG.DiasHabiles
POSCFG.DiasHabiles=POSCFG.ValidarCajasCerradas
POSCFG.ValidarCajasCerradas=POSCFG.SugerirFechaCierre
POSCFG.SugerirFechaCierre=(Fin)



[Redondeo.POSCFG.RedondeoVentaMov]
Carpeta=Redondeo
Clave=POSCFG.RedondeoVentaMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco











[Redondeo.ListaEnCaptura]
(Inicio)=POSCFG.RedondeoVentaCodigo
POSCFG.RedondeoVentaCodigo=POSCFG.RedondeoVentaMov
POSCFG.RedondeoVentaMov=POSCFG.RedondeoVentaProv
POSCFG.RedondeoVentaProv=RedondeoVentaProvNombre
RedondeoVentaProvNombre=POSCFG.RedondeoVentaConcepto
POSCFG.RedondeoVentaConcepto=POSCFG.RedondeoVentaCtaDinero
POSCFG.RedondeoVentaCtaDinero=POSCFG.RedondeoVentaCondicion
POSCFG.RedondeoVentaCondicion=(Fin)

[Redondeo.POSCFG.RedondeoVentaCtaDinero]
Carpeta=Redondeo
Clave=POSCFG.RedondeoVentaCtaDinero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Redondeo.POSCFG.RedondeoVentaCondicion]
Carpeta=Redondeo
Clave=POSCFG.RedondeoVentaCondicion
Editar=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco








[Campos.POSCFG.MultiMoneda]
Carpeta=Campos
Clave=POSCFG.MultiMoneda
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[Campos.ListaEnCaptura]
(Inicio)=POSCFG.ImagenNombreAnexo
POSCFG.ImagenNombreAnexo=POSCFG.AgruparArticulos
POSCFG.AgruparArticulos=POSCFG.CantidadNotasEnProceso
POSCFG.CantidadNotasEnProceso=POSCFG.DefFormaPagoCambio
POSCFG.DefFormaPagoCambio=POSCFG.CodigoArtComision
POSCFG.CodigoArtComision=POSCFG.ImpuestoIncluido
POSCFG.ImpuestoIncluido=POSCFG.ValidarDevolucion
POSCFG.ValidarDevolucion=POSCFG.MovFactura
POSCFG.MovFactura=POSCFG.MovSustitutos
POSCFG.MovSustitutos=POSCFG.POSDefMovServ
POSCFG.POSDefMovServ=POSCFG.POSDefMovDev
POSCFG.POSDefMovDev=POSCFG.RedondeoVenta
POSCFG.RedondeoVenta=POSCFG.RedondeosMonetarios
POSCFG.RedondeosMonetarios=POSCFG.JuegoComponentes
POSCFG.JuegoComponentes=POSCFG.CajaOmision
POSCFG.CajaOmision=POSCFG.PanelAMostrar
POSCFG.PanelAMostrar=POSCFG.Publicidad
POSCFG.Publicidad=POSCFG.TieneTorreta
POSCFG.TieneTorreta=POSCFG.PuertoTorreta
POSCFG.PuertoTorreta=POSCFG.ArtOfertaFP
POSCFG.ArtOfertaFP=POSCFG.ArtOfertaImporte
POSCFG.ArtOfertaImporte=POSCFG.MatrizOpciones
POSCFG.MatrizOpciones=POSCFG.DesgloseCC
POSCFG.DesgloseCC=POSCFG.RefPedidoSinWS
POSCFG.RefPedidoSinWS=POSCFG.WebService
POSCFG.WebService=POSCFG.CondicionPedidoContado
POSCFG.CondicionPedidoContado=POSCFG.FormaPagoSaldoAFavor
POSCFG.FormaPagoSaldoAFavor=POSCFG.CierreiSyncNivel
POSCFG.CierreiSyncNivel=POSCFG.CfgCierreDia
POSCFG.CfgCierreDia=POSCFG.POSDiasDev
POSCFG.POSDiasDev=POSCFG.POSMonedaAct
POSCFG.POSMonedaAct=POSCFG.MultiMoneda
POSCFG.MultiMoneda=POSCFG.POSDutyFree
POSCFG.POSDutyFree=POSCFG.ActivaBascula
POSCFG.ActivaBascula=POSCFG.POSAgenteDetalle
POSCFG.POSAgenteDetalle=POSCFG.POSAgenteDetMaestro
POSCFG.POSAgenteDetMaestro=(Fin)











[Otros.ListaEnCaptura]
(Inicio)=POSCFG.POSSeriesLotesAutoOrden
POSCFG.POSSeriesLotesAutoOrden=POSCFG.AutoAjuste
POSCFG.AutoAjuste=POSCFG.VenderSinExistencia
POSCFG.VenderSinExistencia=POSCFG.AutoAjusteUsuario
POSCFG.AutoAjusteUsuario=POSCFG.AutoAjusteConcepto
POSCFG.AutoAjusteConcepto=POSCFG.MensajeLimiteCajaT
POSCFG.MensajeLimiteCajaT=(Fin)

[Otros.POSCFG.POSSeriesLotesAutoOrden]
Carpeta=Otros
Clave=POSCFG.POSSeriesLotesAutoOrden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco























[Forma.ListaCarpetas]
(Inicio)=Campos
Campos=Redondeo
Redondeo=Monedero
Monedero=CodigoExtendido
CodigoExtendido=WebService
WebService=CierreDia
CierreDia=Otros
Otros=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=POSSucursal
POSSucursal=(Fin)
