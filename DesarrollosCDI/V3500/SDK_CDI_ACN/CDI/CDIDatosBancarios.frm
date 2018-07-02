
[Forma]
Clave=CDIDatosBancarios
Icono=0
Modulos=(Todos)
Nombre=Datos Bancarios de Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialIzquierda=404
PosicionInicialArriba=71
PosicionInicialAlturaCliente=588
PosicionInicialAncho=557
PosicionSec1=231
Comentarios=Info.Cliente
ListaAcciones=(Lista)
AutoGuardar=S
ExpresionesAlMostrar=asigna(info.cliente,<T>1288100<T>)
[Lista]
Estilo=Hoja
Clave=Lista
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIDatosBancarios
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
GuardarPorRegistro=S
MenuLocal=S
ListaAcciones=ConsultaNoSeguridad
FiltroGeneral=CDIDatosBancarios.Cliente = <T>{Info.Cliente}<T>
[Lista.CDIDatosBancarios.NoTarjeta]
Carpeta=Lista
Clave=CDIDatosBancarios.NoTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIDatosBancarios.Vigencia]
Carpeta=Lista
Clave=CDIDatosBancarios.Vigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIDatosBancarios.Institucion]
Carpeta=Lista
Clave=CDIDatosBancarios.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco










[Detalle]
Estilo=Ficha
Clave=Detalle
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIDatosBancarios
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Rojo
ListaEnCaptura=(Lista)

CarpetaVisible=S

[Detalle.CDIDatosBancarios.NoTarjeta]
Carpeta=Detalle
Clave=CDIDatosBancarios.NoTarjeta
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[Detalle.CDIDatosBancarios.Vigencia]
Carpeta=Detalle
Clave=CDIDatosBancarios.Vigencia
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[Detalle.CDIDatosBancarios.Institucion]
Carpeta=Detalle
Clave=CDIDatosBancarios.Institucion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[Detalle.CDIDatosBancarios.CtaBancariaDom]
Carpeta=Detalle
Clave=CDIDatosBancarios.CtaBancariaDom
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.CDIDatosBancarios.VigenciaDom]
Carpeta=Detalle
Clave=CDIDatosBancarios.VigenciaDom
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[Detalle.CDIDatosBancarios.InstitucionDom]
Carpeta=Detalle
Clave=CDIDatosBancarios.InstitucionDom
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[Detalle.CDIDatosBancarios.NombreTarjeta]
Carpeta=Detalle
Clave=CDIDatosBancarios.NombreTarjeta
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[Lista.Columnas]
NoTarjeta=104
Vigencia=68
Institucion=102



Nombre=190
Ciudad=63
Estado=48


AMEX=135
VigenciaAMEX=94

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S






[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 2 (Registros)
Activo=S
Visible=S












[Detalle.CDIDatosBancarios.DefCargAuto]
Carpeta=Detalle
Clave=CDIDatosBancarios.DefCargAuto
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S







ColorFondo=Plata
EspacioPrevio=S
[Detalle.CDIDatosBancarios.Estatus]
Carpeta=Detalle
Clave=CDIDatosBancarios.Estatus
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Rojo




Efectos=[Negritas]





EspacioPrevio=S
[Acciones.ConsultaNoSeguridad]
Nombre=ConsultaNoSeguridad
Boton=0
NombreDesplegar=Consultar No. Seguridad
EnMenu=S
TipoAccion=Formas
ClaveAccion=CDIAutoConsultaNoS
Activo=S
Visible=S
Antes=S





AntesExpresiones=Asigna(Info.cliente,CDIDatosBancarios:CDIDatosBancarios.Cliente)<BR>ASigna(Info.CDICilindro,<BR> caso CDIDatosBancarios:CDIDatosBancarios.NoTarjeta es nulo<BR>  entonces CDIDatosBancarios:CDIDatosBancarios.AMEX<BR>  sino<BR>  CDIDatosBancarios:CDIDatosBancarios.NoTarjeta<BR>  fin<BR> )<BR>asigna(info.id,CDIDatosBancarios:CDIDatosBancarios.ID)
[Detalle.CDIDatosBancarios.AMEX]
Carpeta=Detalle
Clave=CDIDatosBancarios.AMEX
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Detalle.CDIDatosBancarios.VigenciaAMEX]
Carpeta=Detalle
Clave=CDIDatosBancarios.VigenciaAMEX
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Detalle.ListaEnCaptura]
(Inicio)=CDIDatosBancarios.Institucion
CDIDatosBancarios.Institucion=CDIDatosBancarios.NoTarjeta
CDIDatosBancarios.NoTarjeta=CDIDatosBancarios.Vigencia
CDIDatosBancarios.Vigencia=CDIDatosBancarios.CtaBancariaDom
CDIDatosBancarios.CtaBancariaDom=CDIDatosBancarios.VigenciaDom
CDIDatosBancarios.VigenciaDom=CDIDatosBancarios.InstitucionDom
CDIDatosBancarios.InstitucionDom=CDIDatosBancarios.NombreTarjeta
CDIDatosBancarios.NombreTarjeta=CDIDatosBancarios.AMEX
CDIDatosBancarios.AMEX=CDIDatosBancarios.VigenciaAMEX
CDIDatosBancarios.VigenciaAMEX=CDIDatosBancarios.DefCargAuto
CDIDatosBancarios.DefCargAuto=CDIDatosBancarios.Estatus
CDIDatosBancarios.Estatus=(Fin)




[Lista.CDIDatosBancarios.AMEX]
Carpeta=Lista
Clave=CDIDatosBancarios.AMEX
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.CDIDatosBancarios.VigenciaAMEX]
Carpeta=Lista
Clave=CDIDatosBancarios.VigenciaAMEX
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







































[Lista.ListaEnCaptura]
(Inicio)=CDIDatosBancarios.Institucion
CDIDatosBancarios.Institucion=CDIDatosBancarios.NoTarjeta
CDIDatosBancarios.NoTarjeta=CDIDatosBancarios.Vigencia
CDIDatosBancarios.Vigencia=CDIDatosBancarios.AMEX
CDIDatosBancarios.AMEX=CDIDatosBancarios.VigenciaAMEX
CDIDatosBancarios.VigenciaAMEX=(Fin)













[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Navegador
Navegador=(Fin)
