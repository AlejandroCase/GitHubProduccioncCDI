
[Forma]
Clave=CDIAccSocios
Icono=0
Modulos=(Todos)
Nombre=Acceso Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIAccSocios
PosicionInicialIzquierda=437
PosicionInicialArriba=27
PosicionInicialAlturaCliente=674
PosicionInicialAncho=492
PosicionCol1=464
AccionesTamanoBoton=30X5
ListaAcciones=(Lista)
BarraAcciones=S
PosicionSec1=177
IniciarAgregando=S
BarraAyuda1=CDIAccSocios:Cte.Cliente
BarraAyuda2=CDIAccSocios:Cte.Nombre
BarraHerramientas=S
SinTransacciones=S
AccionesCentro=S
[CDIAccSocios]
Estilo=Ficha
Clave=CDIAccSocios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAccSocios
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
[CDIAccSocios.CDIAccSocios.Socio]
Carpeta=CDIAccSocios
Clave=CDIAccSocios.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

IgnoraFlujo=N
EditarConBloqueo=S
[CDIAccSocios2]
Estilo=Ficha
Clave=CDIAccSocios2
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIAccSocios
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

[CDIAccSocios2.Cte.RutaImagen]
Carpeta=CDIAccSocios2
Clave=Cte.RutaImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco


[CDIAccSocios2.Columnas]
RutaImagen=604





[CDIAccSocios2.Foto]
Carpeta=CDIAccSocios2
Clave=Foto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ConScroll=S
Tamano=40x25
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


Expresion=ASigna(CDIAccSocios:CDIAccSocios.Socio,Info.Socio)

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=25
NombreEnBoton=S
NombreDesplegar=Acceso
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

BotonDefault=S
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
























[Acciones.Guardar Cambios.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S







Expresion=asigna(Info.mensaje,Sql(<T>spAccesoSocio :tS, :nI<T>,CDIAccSocios:CDIAccSocios.Socio, CDIAccSocios:CDIAccSocios.id))<BR>si(info.mensaje<><T>1<T>,informacion(info.mensaje))<BR>fin
[Acciones.Guardar Cambios.Documento Nuevo]
Nombre=Documento Nuevo
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S










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





AntesExpresiones=Asigna(Info.Origen,<T>VTAS<T>)<BR>Asigna(Info.Cliente,CDIAccSocios:CDIAccSocios.Socio)










[CDIAccSociosMsg.CDIAccSociosMsg.Nombre]
Carpeta=CDIAccSociosMsg
Clave=CDIAccSociosMsg.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDIAccSociosMsg.CDIAccSociosMsg.Color]
Carpeta=CDIAccSociosMsg
Clave=CDIAccSociosMsg.Color
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIAccSociosMsg.CDIAccSociosMsg.FechaHora]
Carpeta=CDIAccSociosMsg
Clave=CDIAccSociosMsg.FechaHora
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIAccSociosMsg.CDIAccSociosMsg.Mensaje]
Carpeta=CDIAccSociosMsg
Clave=CDIAccSociosMsg.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50x2
ColorFondo=Blanco







[CDIAccSociosMsg.ListaEnCaptura]
(Inicio)=CDIAccSociosMsg.Nombre
CDIAccSociosMsg.Nombre=CDIAccSociosMsg.Color
CDIAccSociosMsg.Color=CDIAccSociosMsg.FechaHora
CDIAccSociosMsg.FechaHora=CDIAccSociosMsg.Mensaje
CDIAccSociosMsg.Mensaje=(Fin)












[CDIAccSocios.NombreC]
Carpeta=CDIAccSocios
Clave=NombreC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIAccSocios.EstatusC]
Carpeta=CDIAccSocios
Clave=EstatusC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIAccSocios.Bloqueado]
Carpeta=CDIAccSocios
Clave=Bloqueado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIAccSocios.Causa]
Carpeta=CDIAccSocios
Clave=Causa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIAccSocios.MembresiaC]
Carpeta=CDIAccSocios
Clave=MembresiaC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDIAccSocios.ListaEnCaptura]
(Inicio)=CDIAccSocios.Socio
CDIAccSocios.Socio=NombreC
NombreC=EstatusC
EstatusC=Bloqueado
Bloqueado=Causa
Causa=MembresiaC
MembresiaC=(Fin)

[CDIAccSocios2.ListaEnCaptura]
(Inicio)=Foto
Foto=Cte.RutaImagen
Cte.RutaImagen=(Fin)





































[Acciones.Guardar Cambios.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=Documento Nuevo
Documento Nuevo=(Fin)







[Forma.ListaCarpetas]
(Inicio)=CDIAccSocios
CDIAccSocios=CDIAccSocios2
CDIAccSocios2=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=CteInfo
CteInfo=(Fin)
