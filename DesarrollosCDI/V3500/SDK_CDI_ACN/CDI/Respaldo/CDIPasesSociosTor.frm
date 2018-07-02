
[Forma]
Clave=CDIPasesSociosTor
Icono=0
Modulos=(Todos)
Nombre=Pase Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIPasesSociosTor
PosicionInicialIzquierda=443
PosicionInicialArriba=58
PosicionInicialAlturaCliente=613
PosicionInicialAncho=480
PosicionCol1=248
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraAcciones=S
PosicionSec1=194
IniciarAgregando=S
BarraAyuda1=CDIPasesSociosTor:Cte.Cliente
BarraAyuda2=CDIPasesSociosTor:Cte.Nombre
BarraHerramientas=S
SinTransacciones=S
[CDIPasesSociosTor]
Estilo=Ficha
Clave=CDIPasesSociosTor
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPasesSociosTor
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
[CDIPasesSociosTor.CDIPasesSociosTor.Socio]
Carpeta=CDIPasesSociosTor
Clave=CDIPasesSociosTor.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

IgnoraFlujo=N
EditarConBloqueo=S
[CDIPasesSociosTor2]
Estilo=Ficha
Clave=CDIPasesSociosTor2
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIPasesSociosTor
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

[CDIPasesSociosTor2.Cte.RutaImagen]
Carpeta=CDIPasesSociosTor2
Clave=Cte.RutaImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDIPasesSociosTor2.Columnas]
RutaImagen=604





[CDIPasesSociosTor2.Foto]
Carpeta=CDIPasesSociosTor2
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


Expresion=ASigna(CDIPasesSociosTor:CDIPasesSociosTor.Socio,Info.Socio)

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=25
NombreEnBoton=S
NombreDesplegar=Pase
GuardarAntes=S
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
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



















[CDIPasesSociosTor.NombreC]
Carpeta=CDIPasesSociosTor
Clave=NombreC
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDIPasesSociosTor.EstatusC]
Carpeta=CDIPasesSociosTor
Clave=EstatusC
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco











[CDIPasesSociosTor.Bloqueado]
Carpeta=CDIPasesSociosTor
Clave=Bloqueado
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIPasesSociosTor.Causa]
Carpeta=CDIPasesSociosTor
Clave=Causa
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPasesSociosTor.MembresiaC]
Carpeta=CDIPasesSociosTor
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







Expresion=asigna(Info.mensaje,Sql(<T>xpCDIPASE :nI<T>, CDIPasesSociosTor:CDIPasesSociosTor.id))<BR>si(info.mensaje<><T>1<T>,informacion(info.mensaje))<BR>fin
[Acciones.Guardar Cambios.Documento Nuevo]
Nombre=Documento Nuevo
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S












[CDIPasesSociosTor.ListaEnCaptura]
(Inicio)=CDIPasesSociosTor.Socio
CDIPasesSociosTor.Socio=NombreC
NombreC=EstatusC
EstatusC=Bloqueado
Bloqueado=Causa
Causa=MembresiaC
MembresiaC=(Fin)






[Acciones.vee]
Nombre=vee
Boton=0
NombreEnBoton=S
BotonDefault=S
NombreDesplegar=acep
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S









GuardarAntes=S
Multiple=S
ListaAccionesMultiples=(Lista)


RefrescarDespues=S
EspacioPrevio=S
[Acciones.vee.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

[Acciones.vee.Documento Nuevo]
Nombre=Documento Nuevo
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S




[Acciones.vee.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Documento Nuevo
Documento Nuevo=(Fin)









[CDIPasesSociosTor2.ListaEnCaptura]
(Inicio)=Foto
Foto=Cte.RutaImagen
Cte.RutaImagen=(Fin)





[Acciones.Guardar Cambios.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=Documento Nuevo
Documento Nuevo=(Fin)







[Forma.ListaCarpetas]
(Inicio)=CDIPasesSociosTor
CDIPasesSociosTor=CDIPasesSociosTor2
CDIPasesSociosTor2=(Fin)

[Forma.ListaAcciones]
(Inicio)=vee
vee=Guardar Cambios
Guardar Cambios=(Fin)
