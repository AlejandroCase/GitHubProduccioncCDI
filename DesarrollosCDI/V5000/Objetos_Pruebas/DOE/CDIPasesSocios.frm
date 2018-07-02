
[Forma]
Clave=CDIPasesSocios
Icono=0
Modulos=(Todos)
Nombre=Pase Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIPasesSocios
PosicionInicialIzquierda=438
PosicionInicialArriba=44
PosicionInicialAlturaCliente=641
PosicionInicialAncho=490
PosicionCol1=248
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraAcciones=S
PosicionSec1=292
IniciarAgregando=S
BarraAyuda1=CDIPasesSocios:Cte.Cliente
BarraAyuda2=CDIPasesSocios:Cte.Nombre
BarraHerramientas=S
SinTransacciones=S
[CDIPasesSocios]
Estilo=Ficha
Clave=CDIPasesSocios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPasesSocios
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

PermiteEditar=S
[CDIPasesSocios.CDIPasesSocios.Socio]
Carpeta=CDIPasesSocios
Clave=CDIPasesSocios.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

IgnoraFlujo=N
EditarConBloqueo=S
[CDIPasesSocios2]
Estilo=Ficha
Clave=CDIPasesSocios2
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIPasesSocios
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S









ListaEnCaptura=(Lista)

FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76

[CDIPasesSocios2.Cte.RutaImagen]
Carpeta=CDIPasesSocios2
Clave=Cte.RutaImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDIPasesSocios2.Columnas]
RutaImagen=604





[CDIPasesSocios2.Foto]
Carpeta=CDIPasesSocios2
Clave=Foto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ConScroll=S
Tamano=30x15
ColorFondo=Blanco








SinRecapitular=S
[(Variables).Info.Socio]
Carpeta=(Variables)
Clave=Info.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco








AccionAlEnter=Guardar
AccionAlEnterBloquearAvance=S

[Acciones.Guardar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=ASigna(CDIPasesSocios:CDIPasesSocios.Socio,Info.Socio)

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=25
NombreEnBoton=S
NombreDesplegar=Pase
GuardarAntes=S
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S







DocNuevo=S
EspacioPrevio=S









Multiple=S
ListaAccionesMultiples=(Lista)
RefrescarDespues=S

[Acciones.Guardar Cambios.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[RolesCDI.Columnas]
NIPCDI=147
Catalogo=174
Rol=136

[(Carpeta Abrir).Columnas]
0=106
1=283
2=137
3=-2
4=-2



















[CDIPasesSocios.NombreC]
Carpeta=CDIPasesSocios
Clave=NombreC
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDIPasesSocios.EstatusC]
Carpeta=CDIPasesSocios
Clave=EstatusC
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco











[CDIPasesSocios.Bloqueado]
Carpeta=CDIPasesSocios
Clave=Bloqueado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIPasesSocios.Causa]
Carpeta=CDIPasesSocios
Clave=Causa
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPasesSocios.MembresiaC]
Carpeta=CDIPasesSocios
Clave=MembresiaC
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco





[Acciones.Guardar Cambios.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S







Expresion=asigna(Info.mensaje,Sql(<T>xpCDIPASE :nI<T>, CDIPasesSocios:CDIPasesSocios.id))<BR>si(info.mensaje<><T>1<T>,informacion(info.mensaje))<BR>fin
[Acciones.Guardar Cambios.Documento Nuevo]
Nombre=Documento Nuevo
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S









[CDIPasesSocios.CDIPasesSocios.Referencia]
Carpeta=CDIPasesSocios
Clave=CDIPasesSocios.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco























[Acciones.CteInfo]
Nombre=CteInfo
Boton=34
NombreDesplegar=cA
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CteInfo
Activo=S
Antes=S
Visible=S





AntesExpresiones=Asigna(Info.Origen,<T>VTAS<T>)<BR>Asigna(Info.Cliente,CDIPasesSocios:CDIPasesSocios.Socio)







[CDIPasesSocios2.ListaEnCaptura]
(Inicio)=Foto
Foto=Cte.RutaImagen
Cte.RutaImagen=(Fin)











[CDIPasesSocios.CDIPasesSocios.Observaciones]
Carpeta=CDIPasesSocios
Clave=CDIPasesSocios.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50x5
ColorFondo=Blanco





[CDIPasesSocios.ListaEnCaptura]
(Inicio)=CDIPasesSocios.Socio
CDIPasesSocios.Socio=CDIPasesSocios.Referencia
CDIPasesSocios.Referencia=NombreC
NombreC=EstatusC
EstatusC=Bloqueado
Bloqueado=Causa
Causa=MembresiaC
MembresiaC=CDIPasesSocios.Observaciones
CDIPasesSocios.Observaciones=(Fin)






[Acciones.Guardar Cambios.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=Documento Nuevo
Documento Nuevo=Pago
Pago=(Fin)






















[Acciones.PagoPendiente]
Nombre=PagoPendiente
Boton=61
NombreEnBoton=S
NombreDesplegar=$Pagos Pendientes
EnBarraHerramientas=S
TipoAccion=formas
ClaveAccion=CDIPagosBitacora
Activo=S
Visible=S









Antes=S
















AntesExpresiones=Asigna(Info.Cliente,CDIPasesSocios:CDIPasesSocios.Socio)
[Acciones.TarjetoCte]
Nombre=TarjetoCte
Boton=38
NombreEnBoton=S
NombreDesplegar=&Tarjeton
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=formas
ClaveAccion=CDIExpTarjeton
Activo=S
Visible=S



Antes=S
AntesExpresiones=Asigna(Info.Cliente,CDIPasesSocios:CDIPasesSocios.Socio)




[Forma.ListaCarpetas]
(Inicio)=CDIPasesSocios
CDIPasesSocios=CDIPasesSocios2
CDIPasesSocios2=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=CteInfo
CteInfo=PagoPendiente
PagoPendiente=TarjetoCte
TarjetoCte=(Fin)
